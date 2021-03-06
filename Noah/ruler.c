/*
*********************************************************************************************************
*                               iSAM TEST BENCH AUDIO BRIDGE BOARD APP PACKAGE
*
*                            (c) Copyright 2013 - 2016; Fortemedia Inc.; Nanjing, China
*
*                   All rights reserved.  Protected by international copyright laws.
*                   Knowledge of the source code may not be used to write a similar
*                   product.  This file may only be used in accordance with a license
*                   and should not be redistributed in any way.
*********************************************************************************************************
*/

/*
*********************************************************************************************************
*
*                                        RULER RELATED OPERATIONS REALIZATION
*
*                                          Atmel AT91SAM7A3
*                                               on the
*                                      iSAM Audio Bridge Board
*
* Filename      : ruler.c
* Version       : V1.0.0
* Programmer(s) : PQ
*********************************************************************************************************
* Note(s)       :
*********************************************************************************************************
*/

#include <includes.h>


volatile unsigned int   Global_Mic_Mask[4] ;      //MIC sellection status
volatile unsigned char  Global_Ruler_Index = 0 ;  //the ruler index for UART comm NOW
volatile unsigned char  Global_Bridge_POST = 0 ;  //audio bridge POST status
volatile unsigned char  Global_Ruler_State[4];    //ruler status
volatile unsigned char  Global_Ruler_Type[4];     //ruler type
volatile unsigned char  Global_Mic_State[4];      //MIC (8*4=32) status(calib info error or not)
unsigned char           Audio_Version[12];        //fixed size
unsigned char           Ruler_CMD_Result;
volatile unsigned char  Ruler_Setup_Sync_Data;

extern EMB_BUF   Emb_Buf_Data;
extern EMB_BUF   Emb_Buf_Cmd;



/*
*********************************************************************************************************
*                                           Init_Global_Var()
*
* Description : Initialize Ruler and MIC related global variables to defalut value.
* Argument(s) : None.
* Return(s)   : None.
*
* Note(s)     : None.
*********************************************************************************************************
*/
void Init_Global_Var( void )
{
    unsigned char ruler_id;    
    
    for( ruler_id = 0; ruler_id < 4; ruler_id++ ) {        
        Global_Ruler_State[ruler_id] = RULER_STATE_DETACHED;
        Global_Ruler_Type[ruler_id]  = 0;
        Global_Mic_State[ruler_id]   = 0 ;
        Global_Mic_Mask[ruler_id]    = 0 ;        
    }   
}


/*
*********************************************************************************************************
*                                           Check_Actived_Mic_Number()
*
* Description : Check MIC mask global variable to get the total actived MICs number.
* Argument(s) : None.
* Return(s)   : mic_counter : the total actived MICs number.
*
* Note(s)     : None.
*********************************************************************************************************
*/
static unsigned char Check_Actived_Mic_Number( void )
{
    unsigned char mic_counter = 0;
    unsigned char i, j;    

    for( i = 0; i < 4 ; i++ ) { //scan 4 slots
        for( j = 0; j < 32; j++ ) { //scan max 32mics per slot
            if( (Global_Mic_Mask[i]>>j)&1) {
                mic_counter++;
            }
        }
    } 
   
    return mic_counter;
}



/*
*********************************************************************************************************
*                                           Watch_Mic_Revert()
*
* Description : Revert Mics in FPGA mask For MIC revert issue on W01 mockup
* Argument(s) : unsigned int *p_mask: pointer to mask data
* Return(s)   : None.
*
* Note(s)     : Toggle_Mic() use
*********************************************************************************************************
*/       
void Watch_Mic_Revert( unsigned int *p_mask )
{
    unsigned char i;
    unsigned char mask, temp; 

    mask   = *(unsigned char *)p_mask;    
    for( i = 0; i < 4 ; i++ ) { //4 pairs mic       
        temp = (mask>>(i<<1)) & 3;
        if( temp == 1 ) {
            mask &= ~(3<<(i<<1));
            mask |= 2<<(i<<1); 
        } else if(temp == 2) {
            mask &= ~(3<<(i<<1));
            mask |= 1<<(i<<1); 
        }
    }
    *p_mask = mask;
   
}


/*
*********************************************************************************************************
*                                           Check_Watch_Mic_Mask_State()
*
* Description : Check if Mics on Watch ruler is used. For MIC revert issue on W01 mickup
* Argument(s) : None.
* Return(s)   : 0   : OK.
*               err : not support.
* Note(s)     : pass this info for revert mic in FM36 PDM input.
*********************************************************************************************************
*/
unsigned char Check_Watch_Mic_Mask_State( unsigned int mask, unsigned char *p_revert_mic )
{
    unsigned char i;
    unsigned char temp;
    unsigned char flag1, flag2;    
    flag1  = 0;
    flag2  = 0;     
    for( i = 0; i < 4 ; i++ ) { //4 pairs mic       
        temp = (mask>>(i<<1)) & 3;
        switch( temp ) {
            case  1 :           
            case  2 :
                flag2++;              
            break;
            case  3 : //both mic seleced in one pair mic
                flag1++;
                *p_revert_mic = 1;
            break;
        }
    }        
    if( flag1 && flag2 ) {        
        return W01_MIC_NOT_SUPPORT_ERR;
    }        
    return 0;    
}


/*
*********************************************************************************************************
*                                           Check_Watch_Attach_State()
*
* Description : Check if Mics on Watch ruler is used. For MIC revert issue on W01 mickup
* Argument(s) : None.
* Return(s)   : 0 : no watch attachd or Mics on watch not used.
*               1 : Mics on watch used, no need revert mic.
*               2 : Mics on watch used, need revert mic.
*
* Note(s)     : pass this info for revert mic in FM36 PDM input.
*********************************************************************************************************
*/
unsigned char Check_Watch_Attach_State( void )
{
    unsigned char err;
    unsigned char ruler_id;
    unsigned char revert_mic;
    
    revert_mic = 0;
    
    for( ruler_id = 0; ruler_id < 4; ruler_id++ ) {
        
        if( Global_Ruler_State[ruler_id] < RULER_STATE_SELECTED ) {
            continue;
        }
        
        if( Global_Ruler_Type[ruler_id] == RULER_TYPE_W01 ) {
            err = Check_Watch_Mic_Mask_State( Global_Mic_Mask[ruler_id], &revert_mic );
            if( OS_ERR_NONE != err ) {
                APP_TRACE_INFO_T(("ERROR: Toggled W01 Mic group NOT support!\r\n")); 
                return err; 
            }         
            if( revert_mic ) {
                return 2;
            } else {
                return 1;
            }
        }   
        
        
    }
    
    return 0;    
}



         


/*
*********************************************************************************************************
*                                           Check_UART_Mixer_Ready()
*
* Description : Check and wait until all data transmission inbuffer for current channel ruler is done .
*               To make sure ruler channels will not be mix up.
*               HW switch is important for this !
* Argument(s) : None.
* Return(s)   : mic_counter : the total actived MICs number.
*
* Note(s)     : If HW switch fast enough, no need this routine.
*********************************************************************************************************
*/
void Check_UART_Mixer_Ready( void )
{
    unsigned char err; 
    unsigned int  counter;
    
    counter = 0;
    while( OSQGet( EVENT_MsgQ_Noah2RulerUART, &err ) ) {
        OSTimeDly(1);
        counter++;        
    } 
    if( counter) {
        APP_TRACE_INFO_T(("Check_UART_Mixer_Ready, stage 1 : wait %d ms",counter));  
    }
        
    counter = 0;
    while( Queue_NData((void*)pUART_Send_Buf[RULER_UART]) ) {
        OSTimeDly(1);
        counter++;  
    } 
    if( counter) {
        APP_TRACE_INFO_T(("Check_UART_Mixer_Ready, stage 2 : wait %d ms",counter));  
    }
    OSTimeDly(5);   
    
}


/*
*********************************************************************************************************
*                                           Setup_Audio()
*
* Description : Send command to configure USB audio.
* Argument(s) : pAudioCfg : pointer to AUDIO_CFG type data.
* Return(s)   : NO_ERR :   execute successfully
*               others :   refer to error code defines.           
*
* Note(s)     : None.
*********************************************************************************************************
*/
unsigned char Setup_Audio( AUDIO_CFG *pAudioCfg )
{
    unsigned char err; 
    unsigned char mic_num; 
    unsigned char data  = 0xFF;
    unsigned char buf[] = { 
        CMD_DATA_SYNC1, CMD_DATA_SYNC2, RULER_CMD_SET_AUDIO_CFG,\
        pAudioCfg->type, pAudioCfg->channels,\
       (pAudioCfg->sr)&0xFF, ((pAudioCfg->sr)>>8)&0xFF
    };
    
    //APP_TRACE_INFO_T(("Setup_Audio [%s]:[%d SR]:[%d CH]: %s",(pAudioCfg->type == 0) ? "REC " : "PLAY", pAudioCfg->sr, pAudioCfg->channels,((pAudioCfg->type == 0) && (pAudioCfg->lin_ch_mask == 0)) ? "LIN Disabled" : "LIN Enabled"));
    if( pAudioCfg->type == 0 ) {
        APP_TRACE_INFO_T(("Setup_Audio [REC]:[%d SR]:[%d CH]: %s", pAudioCfg->sr, pAudioCfg->channels, pAudioCfg->lin_ch_mask == 0 ? "LIN Disabled" : "LIN Enabled" ));
    } else {
        APP_TRACE_INFO_T(("Setup_Audio [PLAY]:[%d SR]:[%d CH]", pAudioCfg->sr, pAudioCfg->channels ));
    }
    
    err = Check_SR_Support( pAudioCfg->sr );
    if( err != NO_ERR ) { 
        APP_TRACE_INFO_T(("Setup_Audio ERROR: Sample rate NOT support!")); 
        return err;
    }    
    mic_num = Check_Actived_Mic_Number();
    if( mic_num > 6 ) {
        APP_TRACE_INFO_T(("ERROR: Check_Actived_Mic_Number = %d > 6",mic_num));
        return AUD_CFG_MIC_NUM_MAX_ERR;//if report err, need UI support!  
    } 
    //check rec mic num    
    if( (pAudioCfg->type == 0) && ( mic_num != pAudioCfg->channels) ) {
        APP_TRACE_INFO_T(("WARN:(Setup_Audio Rec)pAudioCfg->channels(%d) !=  Active MICs Num(%d)",pAudioCfg->channels,mic_num));
        buf[4] = mic_num;
        return AUD_CFG_MIC_NUM_DISMATCH_ERR;
    }
    //check channel num    
    if( (pAudioCfg->type == 1) && (pAudioCfg->channels == 0) ) {
        APP_TRACE_INFO_T(("WARN:(Setup_Audio Play)pAudioCfg->channels =  0" ));        
        //return AUD_CFG_PLAY_CH_ZERO_ERR;  UI not support
    }  
    if( (pAudioCfg->type == 0) && (pAudioCfg->channels == 0) && (pAudioCfg->lin_ch_mask == 0) ) {
        APP_TRACE_INFO_T(("WARN:(Setup_Audio Rec)pAudioCfg->channels + ch_lin =  0" ));        
        //return AUD_CFG_PLAY_CH_ZERO_ERR; UI not support
    }
    //check sample rate
    //No add here!
    //
    //
 #ifdef BOARD_TYPE_AB03    
    //check play ch num
    if(  (pAudioCfg->type == 1) && ( pAudioCfg->channels > 4 ) ) { //for AB03
        APP_TRACE_INFO_T(("ERROR:(Setup_Audio Play)pAudioCfg->channels(=%d) > 4 NOT allowed for AB03",pAudioCfg->channels));
        return AUD_CFG_PLAY_CH_ERR ;
    }
#endif
    if ( (pAudioCfg->type == 0) && (pAudioCfg->lin_ch_mask != 0) ) {         
         buf[4] += 2; //add 2 channel  
         APP_TRACE_INFO_T(("Lin 2 channels added...%d",buf[4])); 
    }
    UART2_Mixer(3); 
    USART_SendBuf( AUDIO_UART, buf, sizeof(buf)) ; 
    err = USART_Read_Timeout( AUDIO_UART, &data, 1, TIMEOUT_AUDIO_COM);
    if( err != NO_ERR ) { 
        APP_TRACE_INFO_T(("Setup_Audio ERROR: timeout")); 
        return err;
    }
    if( data != NO_ERR ) {
        APP_TRACE_INFO_T(("Setup_Audio ERROR: %d\r\n ",data)); 
        return data; 
    }
    err = Init_CODEC( pAudioCfg->sr );
    if( err != NO_ERR ) {
        APP_TRACE_INFO_T(("Setup_Audio Init_CODEC ERROR: %d",err)); 
    } 
#ifdef BOARD_TYPE_AB03    
    err = Init_FM36_AB03( pAudioCfg->sr, mic_num, 1, 0 ); //Lin from SP1_RX, slot0~1
#else
    err = ReInit_FM36( pAudioCfg->sr ); 
#endif
    if( err != NO_ERR ) {
        APP_TRACE_INFO_T(("Setup_Audio ReInit_FM36 ERROR: %d",err)); 
    }
    data = Check_Watch_Attach_State();
    if( data == 1 ) { 
        APP_TRACE_INFO_T(("No need revert DMIC polarity for W01.")); 
    } else if(data == 2 ) { 
        APP_TRACE_INFO_T(("Revert DMIC polarity for W01.")); 
    }
    err = DMIC_Ploarity_Control( data == 2 );
    if( err != NO_ERR ) {
        APP_TRACE_INFO_T(("DMIC_Ploarity_Control ERROR: %d",err)); 
    }
//    if ( pAudioCfg->lin_ch_mask != 0 ) {
//        err = Set_AIC3204_DSP_Offset( mic_num );
//        if( err != NO_ERR ) {
//            APP_TRACE_INFO_T(("\r\nSetup_Audio Init AIC3204 ERROR: %d",err)); 
//        }
//    }
    
    return err ; 
}


/*
*********************************************************************************************************
*                                           Start_Audio()
*
* Description : Send command to start USB audio play/record.
* Argument(s) : cmd_type : record��== 1��/play��== 2��/record & play ��== 3��
*               padding :  used for usb audio BI/BO first package padding
* Return(s)   : NO_ERR :   execute successfully
*               others :   refer to error code defines.           
*
* Note(s)     : None.
*********************************************************************************************************
*/
unsigned char Start_Audio( START_AUDIO start_audio )
{   
    unsigned char err   = 0xFF;  
    unsigned char data  = 0xFF; 
    unsigned char ruler_id;    
    unsigned char buf[] = { CMD_DATA_SYNC1, CMD_DATA_SYNC2, RULER_CMD_START_AUDIO, start_audio.type&0x03, start_audio.padding }; 
    
#if OS_CRITICAL_METHOD == 3u
    OS_CPU_SR  cpu_sr = 0u;                                 /* Storage for CPU status register         */
#endif 
    APP_TRACE_INFO_T(("Start_Audio : type = [%d], padding = [0x%X]", start_audio.type, start_audio.padding));
    UART2_Mixer(3); 
    USART_SendBuf( AUDIO_UART, buf,  sizeof(buf) );    
    err = USART_Read_Timeout( AUDIO_UART, &data, 1, TIMEOUT_AUDIO_COM );  
    if( err != NO_ERR ) { 
        APP_TRACE_INFO_T(("Start_Audio ERROR: Timeout : %d",err));
        return err;
    }
    if( data != NO_ERR ) {
        APP_TRACE_INFO_T(("Start_Audio ERROR: Data : %d\r\n ",data)); 
        return data; 
    } else {
        OS_ENTER_CRITICAL(); 
        for( ruler_id = 0 ; ruler_id < 4 ; ruler_id++ ) {       
            if( Global_Ruler_State[ruler_id] ==  RULER_STATE_SELECTED ) {//given: if mic selected, then ruler used
                Global_Ruler_State[ruler_id] = RULER_STATE_RUN;                 
            }      
        }
        OS_EXIT_CRITICAL();  
        
    }
    return 0 ;   
}


/*
*********************************************************************************************************
*                                           Stop_Audio()
*
* Description : Send command to stop USB audio play/record.
* Argument(s) : None.
* Return(s)   : NO_ERR :   execute successfully
*               others :   refer to error code defines.           
*
* Note(s)     : None.
*********************************************************************************************************
*/
unsigned char Stop_Audio( void )
{  
    unsigned char err   = 0xFF;  
    unsigned char data  = 0xFF; 
    unsigned char ruler_id;     
    unsigned char buf[] = { CMD_DATA_SYNC1, CMD_DATA_SYNC2, RULER_CMD_STOP_AUDIO };
    
#if OS_CRITICAL_METHOD == 3u
    OS_CPU_SR  cpu_sr = 0u;                                 /* Storage for CPU status register         */
#endif 
    APP_TRACE_INFO_T(("Stop_Audio"));
    UART2_Mixer(3); 
    USART_SendBuf( AUDIO_UART, buf,  sizeof(buf)) ;    
    err = USART_Read_Timeout( AUDIO_UART, &data, 1, TIMEOUT_AUDIO_COM); 
    if( err != NO_ERR ) { 
        APP_TRACE_INFO_T(("Stop_Audio ERROR: timeout")); 
        return err;
    }
    if( data != NO_ERR ) {
        APP_TRACE_INFO_T(("Stop_Audio ERROR: %d\r\n ",data)); 
        return data; 
    } 
   
    err = Init_CODEC( 0 );
    if( err != NO_ERR ) {
        APP_TRACE_INFO_T(("Stop_Audio Power Down CODEC ERROR: %d",err)); 
    }
    
    OS_ENTER_CRITICAL(); 
    for( ruler_id = 0 ; ruler_id < 4 ; ruler_id++ ) {       
        if( Global_Ruler_State[ruler_id] ==  RULER_STATE_RUN ) {//given: if mic selected, then ruler used
            Global_Ruler_State[ruler_id] = RULER_STATE_SELECTED;            
        }                   
    }
    OS_EXIT_CRITICAL();
      
//clear mic toggle after each audio stop to avoid issues in scripts test using USBTEST.exe
#ifdef FOR_USE_USBTEST_EXE    
    for( ruler_id = 0; ruler_id < 4; ruler_id++ ) {
        Global_Mic_Mask[ruler_id] = 0 ;
    }
#endif
    
    return 0 ;    
}


/*
*********************************************************************************************************
*                                           Reset_Audio()
*
* Description : Send command to reset USB audio data stream.
* Argument(s) : None.
* Return(s)   : NO_ERR :   execute successfully
*               others :   refer to error code defines.           
*
* Note(s)     : None.
*********************************************************************************************************
*/
unsigned char Reset_Audio( void )
{  
    unsigned char err   = 0xFF;  
    unsigned char data  = 0xFF;    
    unsigned char buf[] = { CMD_DATA_SYNC1, CMD_DATA_SYNC2, RULER_CMD_RESET_AUDIO };
    
    APP_TRACE_INFO_T(("Reset_Audio"));
    UART2_Mixer(3); 
    USART_SendBuf( AUDIO_UART, buf,  sizeof(buf)) ;    
    err = USART_Read_Timeout( AUDIO_UART, &data, 1, TIMEOUT_AUDIO_COM); 
    if( err != NO_ERR ) { 
        APP_TRACE_INFO_T(("Reset_Audio ERROR: timeout")); 
        return err;
    }
    if( data != NO_ERR ) {
        APP_TRACE_INFO_T(("Reset_Audio ERROR: %d\r\n ",data)); 
        return data; 
    } 
     
    return 0 ;    
}


/*
*********************************************************************************************************
*                                       Get_Audio_Version()
*
* Description : Get USB audio MCU firmware version info, and stored in a global variable.
* Argument(s) : None.
* Return(s)   : NO_ERR :   execute successfully
*               others :   refer to error code defines.           
*
* Note(s)     : None.
*********************************************************************************************************
*/
unsigned char Get_Audio_Version( void )
{  
    unsigned char err;      
    unsigned char buf[] = { CMD_DATA_SYNC1, CMD_DATA_SYNC2, RULER_CMD_GET_AUDIO_VERSION };
   
    UART2_Mixer(3); 
    USART_SendBuf( AUDIO_UART, buf,  sizeof(buf)) ;    
    err = USART_Read_Timeout( AUDIO_UART, &Audio_Version, sizeof(Audio_Version), TIMEOUT_AUDIO_COM); 
    if( err != NO_ERR ) { 
        APP_TRACE_INFO_T(("Get_Audio_Version ERROR: timeout")); 
        return err;        
    } else {        
        APP_TRACE_INFO_T(("USB Audio FW Version: %s ",Audio_Version));
    }     
    return 0 ;   
}





/*
*********************************************************************************************************
*                                       Init_Ruler()
*
* Description : Communicate with ruler to check connected or not
*    
* Argument(s) : ruler_slot_id: 0~ 3.
* Return(s)   : NO_ERR :   ruler connected
*               others :   =error code . ruler connection error,           
*
* Note(s)     : None.
*********************************************************************************************************
*/
unsigned char Init_Ruler( unsigned char ruler_slot_id ) //0 ~ 3
{
    unsigned char err ;

#if OS_CRITICAL_METHOD == 3u
    //OS_CPU_SR  cpu_sr = 0u;                                 /* Storage for CPU status register         */
#endif 
      
    //check ruler connection state 
    if( Global_Ruler_State[ruler_slot_id] < RULER_STATE_ATTACHED ) {      
        return RULER_STATE_ERR ;         
    } 
    OSSemPend( UART_MUX_Sem_lock, 0, &err );
    if( Global_Ruler_Index != ruler_slot_id ) {
        Check_UART_Mixer_Ready();
        //OS_ENTER_CRITICAL(); 
        Global_Ruler_Index = ruler_slot_id ; //for ruler status switch in TX/RX/Noah 
        //OS_EXIT_CRITICAL();  
        UART1_Mixer( ruler_slot_id );
    } 
    
    err = pcSendDateToBuf( EVENT_MsgQ_Noah2RulerUART, FRAM_TYPE_EST, NULL, 0, 0, NULL, 0 ) ; 
    if( OS_ERR_NONE == err ) {
        OSSemPend( Done_Sem_RulerUART, TIMEOUT_RULER_COM, &err );  
        if( OS_ERR_TIMEOUT == err ) {
            APP_TRACE_INFO_T(("Init ruler[%d] timeout!",ruler_slot_id));            
        } else {
            err = Ruler_CMD_Result; //exe result from GACK
            if(OS_ERR_NONE != err ){
                APP_TRACE_INFO_T(("Init_Ruler[%d] err = %d",ruler_slot_id,err));
            }
        }
        
    } else {
        APP_TRACE_INFO_T(("Ruler[%d] pcSendDateToBuf failed: %d",ruler_slot_id,err));        
    }    
    OSSemPost( UART_MUX_Sem_lock );    
    return err ;    
}
                

/*
*********************************************************************************************************
*                                       Setup_Ruler()
*
* Description : Send ruler slot id to ruler for identification.
*             
* Argument(s) : ruler_slot_id: 0~ 3.
* Return(s)   : NO_ERR :   execute successfully
*               others :   =error code . ruler connection error,           
*
* Note(s)     : None.
*********************************************************************************************************
*/
unsigned char Setup_Ruler( unsigned char ruler_slot_id ) //0 ~ 3
{    
    unsigned char err ;
    EMB_BUF        *pEBuf_Data; 
    unsigned char buf[] = { RULER_CMD_SET_RULER, ruler_slot_id };
    
#if OS_CRITICAL_METHOD == 3u
    //OS_CPU_SR  cpu_sr = 0u;                                 /* Storage for CPU status register         */
#endif 
    
    pEBuf_Data  = &Emb_Buf_Data; //Golbal var
    //check ruler connection state 
    if( Global_Ruler_State[ruler_slot_id] < RULER_STATE_ATTACHED ) {      
        return RULER_STATE_ERR ;         
    } 
    
    OSSemPend( UART_MUX_Sem_lock, 0, &err );
    if( Global_Ruler_Index != ruler_slot_id ) {
        Check_UART_Mixer_Ready();
        //OS_ENTER_CRITICAL(); 
        Global_Ruler_Index = ruler_slot_id ; //for ruler status switch in TX/RX/Noah 
        //OS_EXIT_CRITICAL();  
        UART1_Mixer( ruler_slot_id );
    }
    
    err = pcSendDateToBuf( EVENT_MsgQ_Noah2RulerUART, FRAM_TYPE_DATA, buf, sizeof(buf), 0, NULL, 0 ) ; 
    if( OS_ERR_NONE == err ) {
        OSSemPend( Done_Sem_RulerUART, TIMEOUT_RULER_COM, &err );  
        if( OS_ERR_TIMEOUT == err ) {
            APP_TRACE_INFO_T(("Setup_Ruler[%d] timeout",ruler_slot_id));
        } else {            
            Ruler_Setup_Sync_Data = pEBuf_Data->data[0] ;
            APP_TRACE_INFO_T(("Get Ruler_Setup_Sync_Data : 0x%X",Ruler_Setup_Sync_Data));
            err = Ruler_CMD_Result; //exe result from GACK
            if(OS_ERR_NONE != err ){
                APP_TRACE_INFO_T(("Setup_Ruler[%d] err = %d",ruler_slot_id,err));
            }
        }
        
    } else {
        APP_TRACE_INFO_T(("Ruler[%d] pcSendDateToBuf failed: %d",ruler_slot_id,err));
    }    
    OSSemPost( UART_MUX_Sem_lock );    
    return err ;    
}


/*
*********************************************************************************************************
*                                       Get_Ruler_Type()
*
* Description : Get the specified ruler's type, and stored in a global variable, in which
*               bit7: 0-ruler, 1- handset. Other bits reserved.
* Argument(s) : ruler_slot_id: 0~ 3.
* Return(s)   : NO_ERR :   execute successfully
*               others :   refer to error code defines.           
*
* Note(s)     : None.
*********************************************************************************************************
*/
unsigned char Get_Ruler_Type(  unsigned char ruler_slot_id )
{  
    unsigned char err ;
    EMB_BUF        *pEBuf_Data; 
    unsigned char buf[] = { RULER_CMD_GET_RULER_TYPE };
    
#if OS_CRITICAL_METHOD == 3u
    //OS_CPU_SR  cpu_sr = 0u;                                 /* Storage for CPU status register         */
#endif 
    
    pEBuf_Data  = &Emb_Buf_Data; //Golbal var
    //check ruler connection state 
    if( Global_Ruler_State[ruler_slot_id] < RULER_STATE_ATTACHED ) {      
        return RULER_STATE_ERR ;         
    } 

    OSSemPend( UART_MUX_Sem_lock, 0, &err ); 
    if( Global_Ruler_Index != ruler_slot_id ) {
        Check_UART_Mixer_Ready();
        //OS_ENTER_CRITICAL(); 
        Global_Ruler_Index = ruler_slot_id ; //for ruler status switch in TX/RX/Noah 
        //OS_EXIT_CRITICAL();  
        UART1_Mixer( ruler_slot_id );
    }
    err = pcSendDateToBuf( EVENT_MsgQ_Noah2RulerUART, FRAM_TYPE_DATA, buf, sizeof(buf), 0, NULL, 0 ) ; 
    if( OS_ERR_NONE == err ) {
        OSSemPend( Done_Sem_RulerUART, TIMEOUT_RULER_COM, &err );  
        if( OS_ERR_TIMEOUT == err ) {
            APP_TRACE_INFO_T(("Read_Ruler_Type[%d] timeout",ruler_slot_id));
        } else {
            Global_Ruler_Type[ruler_slot_id] =  pEBuf_Data->data[0] ;
            if( Global_Ruler_Type[ruler_slot_id]==0x30) {Global_Ruler_Type[ruler_slot_id] = 0x90;} //bugfix
            err = Ruler_CMD_Result; //exe result from GACK 
            if(OS_ERR_NONE != err ){
                APP_TRACE_INFO_T(("Get_Ruler_Type[%d] err = %d",ruler_slot_id,err));
            }
        }          
        
    } else {
        APP_TRACE_INFO_T(("Ruler[%d] pcSendDateToBuf failed: %d",ruler_slot_id,err));        
    }       
    OSSemPost( UART_MUX_Sem_lock );    
    return err ;    
}


/*
*********************************************************************************************************
*                                       Read_Ruler_Status()
*
* Description : Get back specified ruler's POST status.
*             
* Argument(s) : ruler_slot_id: 0~ 3.
*               status_data:   pointer to the address that store the read status data 
* Return(s)   : NO_ERR :   execute successfully
*               others :   =error code .           
*
* Note(s)     : None.
*********************************************************************************************************
*/
unsigned char Read_Ruler_Status( unsigned char ruler_slot_id, unsigned short *status_data )
{    
    unsigned char err ;
    EMB_BUF        *pEBuf_Data; 
    unsigned char buf[] = { RULER_CMD_RAED_RULER_STATUS };
    
#if OS_CRITICAL_METHOD == 3u
    //OS_CPU_SR  cpu_sr = 0u;                                 /* Storage for CPU status register         */
#endif 
    
    pEBuf_Data  = &Emb_Buf_Data; //Golbal var
    //check ruler connection state 
    if( Global_Ruler_State[ruler_slot_id] < RULER_STATE_ATTACHED ) {      
        return RULER_STATE_ERR ;         
    } 
    OSSemPend( UART_MUX_Sem_lock, 0, &err ); 
    if( Global_Ruler_Index != ruler_slot_id ) {
        Check_UART_Mixer_Ready();
        //OS_ENTER_CRITICAL(); 
        Global_Ruler_Index = ruler_slot_id ; //for ruler status switch in TX/RX/Noah 
        //OS_EXIT_CRITICAL();  
        UART1_Mixer( ruler_slot_id );
    }
    
    err = pcSendDateToBuf( EVENT_MsgQ_Noah2RulerUART, FRAM_TYPE_DATA, buf, sizeof(buf), 0, NULL, 0 ) ; 
    if( OS_ERR_NONE == err ) {
        OSSemPend( Done_Sem_RulerUART, TIMEOUT_RULER_COM, &err );  
        if( OS_ERR_TIMEOUT == err ) {
            APP_TRACE_INFO_T(("Read_Ruler_Status[%d] timeout",ruler_slot_id));
        } else {
            *status_data = (pEBuf_Data->data[1] << 8) + pEBuf_Data->data[0] ;       
            err = Ruler_CMD_Result; //exe result from GACK
            if(OS_ERR_NONE != err ){
                APP_TRACE_INFO_T(("Read_Ruler_Status[%d] err = %d",ruler_slot_id,err));
            } 
        }   
        
    } else {
        APP_TRACE_INFO_T(("Ruler[%d] pcSendDateToBuf failed: %d",ruler_slot_id,err));
    }        
    OSSemPost( UART_MUX_Sem_lock );    
    return err ;    
}


/*
*********************************************************************************************************
*                                       Read_Ruler_Info()
*
* Description : Get back specified ruler's infomation data.
*               And the read back data is stored in global varies : Emb_Buf_Data
* Argument(s) : ruler_slot_id: 0~ 3.
* Return(s)   : NO_ERR :   execute successfully
*               others :   =error code . ruler connection error,           
*
* Note(s)     : None.
*********************************************************************************************************
*/
unsigned char Read_Ruler_Info( unsigned char ruler_slot_id )
{    
    unsigned char  err ; 
    unsigned char  buf[] = { RULER_CMD_RAED_RULER_INFO }; 
    
#if OS_CRITICAL_METHOD == 3u
    //OS_CPU_SR  cpu_sr = 0u;                                 /* Storage for CPU status register         */
#endif 
 
    //check ruler connection state 
    if( Global_Ruler_State[ruler_slot_id] < RULER_STATE_CONFIGURED ) {      
        return RULER_STATE_ERR ;         
    }    
    OSSemPend( UART_MUX_Sem_lock, 0, &err );  
    if( Global_Ruler_Index != ruler_slot_id ) {
        Check_UART_Mixer_Ready();
        //OS_ENTER_CRITICAL(); 
        Global_Ruler_Index = ruler_slot_id ; //for ruler status switch in TX/RX/Noah 
        //OS_EXIT_CRITICAL();  
        UART1_Mixer( ruler_slot_id );
    }
    
    err = pcSendDateToBuf( EVENT_MsgQ_Noah2RulerUART, FRAM_TYPE_DATA, buf, sizeof(buf), 0, NULL, 0 ) ; 
    if( OS_ERR_NONE == err ) {
        OSSemPend( Done_Sem_RulerUART, TIMEOUT_RULER_COM, &err );  
        if( OS_ERR_TIMEOUT == err ) {
            APP_TRACE_INFO_T(("Read_Ruler_Info[%d] timeout",ruler_slot_id));
        } else {
            err = Ruler_CMD_Result;
            if(OS_ERR_NONE != err ){
                APP_TRACE_INFO_T(("Read_Ruler_Info[%d] err = %d",ruler_slot_id,err));
            }
        }
        
    } else {
        APP_TRACE_INFO_T(("Ruler[%d] pcSendDateToBuf failed: %d",ruler_slot_id,err));
    }    
    OSSemPost( UART_MUX_Sem_lock );    
    return err ;    
}


/*
*********************************************************************************************************
*                                       Write_Ruler_Info()
*
* Description : Write infomation data to specified ruler.
*               And before this function is called, the data to be written need have been stored in global varies : Emb_Buf_Cmd
* Argument(s) : ruler_slot_id: 0~ 3.
* Return(s)   : NO_ERR :   execute successfully
*               others :   =error code .       
*
* Note(s)     : None.
*********************************************************************************************************
*/
unsigned char Write_Ruler_Info( unsigned char ruler_slot_id )
{
    unsigned char   err;
    unsigned short  data_length;
    unsigned char   temp;
    unsigned char  *pdata;
    unsigned char   buf[4];  
    EMB_BUF        *pEBuf_Cmd;        
  
 #if OS_CRITICAL_METHOD == 3u
    //OS_CPU_SR  cpu_sr = 0u;                                 /* Storage for CPU status register         */
#endif 
    
    pEBuf_Cmd  = &Emb_Buf_Cmd; //Golbal var
    buf[0] =  RULER_CMD_WRITE_RULER_INFO;
    buf[1] =  EMB_DATA_FRAME;  
    buf[2] = (pEBuf_Cmd->length) & 0xFF;    
    buf[3] = ((pEBuf_Cmd->length)>>8) & 0xFF;     

    //check ruler connection state 
    if( Global_Ruler_State[ruler_slot_id] < RULER_STATE_CONFIGURED ) {      
        return RULER_STATE_ERR ;         
    } 
    OSSemPend( UART_MUX_Sem_lock, 0, &err );    
    if( Global_Ruler_Index != ruler_slot_id ) {
        Check_UART_Mixer_Ready();
        //OS_ENTER_CRITICAL(); 
        Global_Ruler_Index = ruler_slot_id ; //for ruler status switch in TX/RX/Noah 
        //OS_EXIT_CRITICAL();  
        UART1_Mixer( ruler_slot_id );
    }  
    
    err = pcSendDateToBuf( EVENT_MsgQ_Noah2RulerUART, FRAM_TYPE_DATA, buf, sizeof(buf), 0, NULL, 0 ) ; 
    if( OS_ERR_NONE != err ) { return err ; }
    pdata = pEBuf_Cmd->data;
    data_length = pEBuf_Cmd->length;
    while( data_length > 0 ){ 
        temp = data_length > (NOAH_CMD_DATA_MLEN-1) ? (NOAH_CMD_DATA_MLEN-1) : data_length ;  
        err = pcSendDateToBuf( EVENT_MsgQ_Noah2RulerUART, FRAM_TYPE_DATA, pdata, temp, 0, buf, 1 ) ; 
        if( OS_ERR_NONE != err ) { break;}
        OSTimeDly(50); //wait for ruler operation
        data_length -= temp;
        pdata += temp;
    }
    if( OS_ERR_NONE == err ) {
        OSSemPend( Done_Sem_RulerUART, TIMEOUT_RULER_COM, &err );  
        if( OS_ERR_TIMEOUT == err ) {
            APP_TRACE_INFO_T(("Write_Ruler_Info[%d] timeout",ruler_slot_id));
        } else {
            err = Ruler_CMD_Result; //exe result from GACK
            if(OS_ERR_NONE != err ){
                APP_TRACE_INFO_T(("Write_Ruler_Info[%d] err = %d",ruler_slot_id,err));
            }
        }
        
    } else {
        APP_TRACE_INFO_T(("Ruler[%d] pcSendDateToBuf failed: %d",ruler_slot_id,err));
    }
    OSSemPost( UART_MUX_Sem_lock );
    
    return err ;
    
}


/*
*********************************************************************************************************
*                                       Read_Mic_Cali_Data()
*
* Description : Get back specified ruler specified mic's calibration data.
*               And the read back data is stored in global varies : Emb_Buf_Data
* Argument(s) : ruler_slot_id : 0~ 3.
*               mic_id        : 0~ 7
* Return(s)   : NO_ERR :   execute successfully
*               others :   =error code .  
*
* Note(s)     : None.
*********************************************************************************************************
*/
unsigned char Read_Mic_Cali_Data(unsigned char ruler_slot_id, unsigned char mic_id)
{    
    unsigned char  err ; 
    unsigned char  buf[] = { RULER_CMD_READ_MIC_CALI_DATA, mic_id }; 
    
#if OS_CRITICAL_METHOD == 3u
    //OS_CPU_SR  cpu_sr = 0u;                                 /* Storage for CPU status register         */
#endif 
 
    //check ruler connection state 
    if( Global_Ruler_State[ruler_slot_id] < RULER_STATE_CONFIGURED ) {      
        return RULER_STATE_ERR ;         
    }   
   
    OSSemPend( UART_MUX_Sem_lock, 0, &err );   
    if( Global_Ruler_Index != ruler_slot_id ) {
        Check_UART_Mixer_Ready();
        //OS_ENTER_CRITICAL(); 
        Global_Ruler_Index = ruler_slot_id ; //for ruler status switch in TX/RX/Noah 
        //OS_EXIT_CRITICAL();  
        UART1_Mixer( ruler_slot_id );
    }
    
    err = pcSendDateToBuf( EVENT_MsgQ_Noah2RulerUART, FRAM_TYPE_DATA, buf, sizeof(buf), 0, NULL, 0 ) ; 
    if( OS_ERR_NONE == err ) {
        OSSemPend( Done_Sem_RulerUART, TIMEOUT_RULER_COM, &err );  
        if( OS_ERR_TIMEOUT == err ) {
            APP_TRACE_INFO_T(("Read_Mic_Cali_Data[%d] timeout",ruler_slot_id));
        } else {
            err = Ruler_CMD_Result; 
            if(OS_ERR_NONE != err ){
                APP_TRACE_INFO_T(("Read_Mic_Cali_Data[%d] err = %d",ruler_slot_id,err));
            }
        }
        
    } else {
        APP_TRACE_INFO_T(("Ruler[%d] pcSendDateToBuf failed: %d",ruler_slot_id,err));
    }      
    OSSemPost( UART_MUX_Sem_lock );    
    return err ;    
}


/*
*********************************************************************************************************
*                                       Write_Mic_Cali_Data()
*
* Description : Write calibration data to specified ruler specified mic.
*               And before this function is called, the data to be written need have been stored in global varies : Emb_Buf_Cmd
* Argument(s) : ruler_slot_id : 0~ 3.
*               mic_id        : 0~ 7
* Return(s)   : NO_ERR :   execute successfully
*               others :   =error code .    
*
* Note(s)     : None.
*********************************************************************************************************
*/
unsigned char Write_Mic_Cali_Data(unsigned char ruler_slot_id, unsigned char mic_id)
{    
    unsigned char   err;
    unsigned short  data_length;
    unsigned char   temp;
    unsigned char  *pdata;
    unsigned char   buf[5];  
    EMB_BUF        *pEBuf_Cmd;        
  
 #if OS_CRITICAL_METHOD == 3u
    //OS_CPU_SR  cpu_sr = 0u;                                 /* Storage for CPU status register         */
#endif 
    
    pEBuf_Cmd  = &Emb_Buf_Cmd; //Golbal var
    buf[0] =  RULER_CMD_WRITE_MIC_CALI_DATA; 
    buf[1] =  mic_id;  
    buf[2] =  EMB_DATA_FRAME;  
    buf[3] = (pEBuf_Cmd->length) & 0xFF;    
    buf[4] = ((pEBuf_Cmd->length)>>8) & 0xFF;     

    //check ruler connection state 
    if( Global_Ruler_State[ruler_slot_id] < RULER_STATE_CONFIGURED ) {      
        return RULER_STATE_ERR ;         
    } 
    OSSemPend( UART_MUX_Sem_lock, 0, &err ); 
    if( Global_Ruler_Index != ruler_slot_id ) {
        Check_UART_Mixer_Ready();
        //OS_ENTER_CRITICAL(); 
        Global_Ruler_Index = ruler_slot_id ; //for ruler status switch in TX/RX/Noah 
        //OS_EXIT_CRITICAL();  
        UART1_Mixer( ruler_slot_id );
    } 
    
    err = pcSendDateToBuf( EVENT_MsgQ_Noah2RulerUART, FRAM_TYPE_DATA, buf, sizeof(buf), 0, NULL, 0 ) ; 
    if( OS_ERR_NONE != err ) { return err ; }
    pdata = pEBuf_Cmd->data;
    data_length = pEBuf_Cmd->length;
    while( data_length > 0 ){ 
        temp = data_length > (NOAH_CMD_DATA_MLEN-2) ? (NOAH_CMD_DATA_MLEN-2) : data_length ;  
        err = pcSendDateToBuf( EVENT_MsgQ_Noah2RulerUART, FRAM_TYPE_DATA, pdata, temp, 0, buf, 2 ) ; 
        if( OS_ERR_NONE != err ) { break;}
        OSTimeDly(50); //wait for ruler operation       
        data_length -= temp;
        pdata += temp;        
    }
    if( OS_ERR_NONE == err ) {
        OSSemPend( Done_Sem_RulerUART, TIMEOUT_RULER_COM, &err );  
        if( OS_ERR_TIMEOUT == err ) {
            APP_TRACE_INFO_T(("Write_Mic_Cali_Data[%d][%d] timeout",ruler_slot_id, mic_id));
        } else {
            err = Ruler_CMD_Result; //exe result from GACK
            if(OS_ERR_NONE != err ){
                APP_TRACE_INFO_T(("Write_Mic_Cali_Data[%d] err = %d",ruler_slot_id,err));
            }
        }
    } else {
        APP_TRACE_INFO_T(("Ruler[%d] pcSendDateToBuf failed: %d",ruler_slot_id,err));
    }
    OSSemPost( UART_MUX_Sem_lock );
    
    return err ;
    
}


/*
*********************************************************************************************************
*                                       Update_Mic_Mask()
*
* Description : Update specified ruler's all mic's active state.
* Argument(s) : ruler_slot_id : 0~ 3.
*               mic_mask      : bit[0..31]. 0 - deactive, 1 - active.
* Return(s)   : NO_ERR :   execute successfully
*               others :   =error code .    
*
* Note(s)     : Support: Ruler(8Mic) for Ruler
*                        Handset(16Mic) for H01/H02/H02A
*                        Handset(18Mic) for H03
*********************************************************************************************************
*/
unsigned char Update_Mic_Mask( unsigned char ruler_slot_id, unsigned int mic_mask )
{    
    unsigned char err ;
    unsigned char buf_size_send ;
    unsigned char buf[] = { RULER_CMD_TOGGLE_MIC, mic_mask&0xFF, (mic_mask>>8)&0xFF,
                            (mic_mask>>16)&0xFF,  (mic_mask>>24)&0xFF };
    
#if OS_CRITICAL_METHOD == 3u
    //OS_CPU_SR  cpu_sr = 0u;                                 /* Storage for CPU status register         */
#endif 
    //check ruler connection state 
    if( Global_Ruler_State[ruler_slot_id] < RULER_STATE_CONFIGURED ) {      
        return RULER_STATE_ERR ;         
    }  
    
    OSSemPend( UART_MUX_Sem_lock, 0, &err );  
    if( Global_Ruler_Index != ruler_slot_id ) {
        Check_UART_Mixer_Ready();
        //OS_ENTER_CRITICAL(); 
        Global_Ruler_Index = ruler_slot_id ; //for ruler status switch in TX/RX/Noah 
        //OS_EXIT_CRITICAL();  
        UART1_Mixer( ruler_slot_id );
    }
    if( Global_Ruler_Type[ruler_slot_id] == RULER_TYPE_H03 || Global_Ruler_Type[ruler_slot_id] == RULER_TYPE_C01 ) {
        buf_size_send = 5; //H03 cmd data size = 1+4 for 16> mic
    } else {
        buf_size_send = 3; //Default cmd data size = 1+2 for <16 mic
    }
    err = pcSendDateToBuf( EVENT_MsgQ_Noah2RulerUART, FRAM_TYPE_DATA, buf, buf_size_send, 0, NULL, 0 ) ; 
    if( OS_ERR_NONE == err ) {
        OSSemPend( Done_Sem_RulerUART, TIMEOUT_RULER_COM, &err );  
        if( OS_ERR_TIMEOUT == err ) {
            APP_TRACE_INFO_T(("Update_Mic_Mask for Ruler[%d] timeout",ruler_slot_id));
        }
    } else {
        APP_TRACE_INFO_T(("Ruler[%d] pcSendDateToBuf failed: %d",ruler_slot_id,err));
    }
    OSSemPost( UART_MUX_Sem_lock );    
    return err ;    
}

/*
*********************************************************************************************************
*                                       Ruler_Active_Control()
*
* Description : Active/Deactive ruler(LED)when play and record start/stop.  
* Argument(s) : active_state : 0 - deactive ruler (LED)
*                              1 - active ruler (LED).
* Return(s)   : NO_ERR :   execute successfully
*               others :   =error code .    
*
* Note(s)     : Support Ruler(8Mic) and Handset(16Mic)
*********************************************************************************************************
*/
unsigned char Ruler_Active_Control( unsigned char active_state )  
{    
    unsigned char err ;
    unsigned char ruler_id;
    unsigned char buf[] = { RULER_CMD_ACTIVE_CTR, active_state };

#if OS_CRITICAL_METHOD == 3u
    //OS_CPU_SR  cpu_sr = 0u;                                 /* Storage for CPU status register         */
#endif 
    
    err = 0;        
    
    for( ruler_id = 0 ; ruler_id < 4 ; ruler_id++ ) {   
        //check ruler connection state 
        if( //RULER_TYPE_MASK(Global_Ruler_Type[ruler_id]) == RULER_TYPE_HANDSET ||
            Global_Ruler_State[ruler_id] < RULER_STATE_CONFIGURED || 
            Global_Mic_Mask[ruler_id] == 0 ) {      
            continue;       
        } 
        APP_TRACE_INFO_T(("Ruler[%d]_Active_Control : [%d]",ruler_id,active_state));      
        OSSemPend( UART_MUX_Sem_lock, 0, &err );
        if( Global_Ruler_Index != ruler_id ) {
            Check_UART_Mixer_Ready();
            //OS_ENTER_CRITICAL(); 
            Global_Ruler_Index = ruler_id ; //for ruler status switch in TX/RX/Noah 
            //OS_EXIT_CRITICAL();  
            UART1_Mixer( ruler_id );
        }   
        err = pcSendDateToBuf( EVENT_MsgQ_Noah2RulerUART, FRAM_TYPE_DATA, buf, sizeof(buf), 0, NULL, 0 ) ; 
        if( OS_ERR_NONE == err ) {
            OSSemPend( Done_Sem_RulerUART, TIMEOUT_RULER_COM, &err );  
            if( OS_ERR_TIMEOUT == err ) {
                APP_TRACE_INFO_T(("Ruler[%d]_Active_Control timeout",ruler_id));
            } else {
                err = Ruler_CMD_Result; //exe result from GACK
                if(OS_ERR_NONE != err ){
                    APP_TRACE_INFO_T(("Ruler[%d]_Active_Control err = %d",ruler_id,err));
                }
            }
            
        } else {
            APP_TRACE_INFO_T(("Ruler[%d] pcSendDateToBuf failed: %d",ruler_id,err));
        }    
        OSSemPost( UART_MUX_Sem_lock );
        if( err != NO_ERR ) {
            break;
        }
    }        
    return err ;    
}


/*
*********************************************************************************************************
*                                       Get_Ruler_Version()
*
* Description : Get back specified ruler's version info.
*               And the version data is stored in global varies : Emb_Buf_Data
* Argument(s) : ruler_slot_id : 0~ 3.
* Return(s)   : NO_ERR :   execute successfully
*               others :   =error code .  
*
* Note(s)     : None.
*********************************************************************************************************
*/
unsigned char Get_Ruler_Version( unsigned char ruler_slot_id )
{  
    unsigned char err ;
    unsigned char buf[] = { RULER_CMD_GET_RULER_VERSION };
    EMB_BUF      *pEBuf_Data;         
      
    pEBuf_Data  = &Emb_Buf_Data;  //Global var   
    
#if OS_CRITICAL_METHOD == 3u
    //OS_CPU_SR  cpu_sr = 0u;                                 /* Storage for CPU status register         */
#endif 
    //check ruler connection state 
    if( Global_Ruler_State[ruler_slot_id] < RULER_STATE_ATTACHED ) {      
        return RULER_STATE_ERR ;         
    }  
    
    OSSemPend( UART_MUX_Sem_lock, 0, &err ); 
    if( Global_Ruler_Index != ruler_slot_id ) {
        Check_UART_Mixer_Ready();
        //OS_ENTER_CRITICAL(); 
        Global_Ruler_Index = ruler_slot_id ; //for ruler status switch in TX/RX/Noah 
        //OS_EXIT_CRITICAL();  
        UART1_Mixer( ruler_slot_id );
    }
    
    err = pcSendDateToBuf( EVENT_MsgQ_Noah2RulerUART, FRAM_TYPE_DATA, buf, sizeof(buf), 0, NULL, 0 ) ; 
    if( OS_ERR_NONE == err ) {
        OSSemPend( Done_Sem_RulerUART, TIMEOUT_RULER_COM, &err );  
        if( OS_ERR_TIMEOUT == err ) {
            APP_TRACE_INFO_T(("Get_Ruler_Version[%d] timeout",ruler_slot_id));
        } else {
            err = Ruler_CMD_Result;
            if(OS_ERR_NONE != err ){
                APP_TRACE_INFO_T(("Get_Ruler_Version[%d] err = %d",ruler_slot_id,err));
            }
        }
        if(err == OS_ERR_NONE ) {
            APP_TRACE_INFO_T(("Ruler[%d] FW Version: %s",ruler_slot_id, pEBuf_Data->data)); 
        }
        
    } else {
        APP_TRACE_INFO_T(("Ruler[%d] pcSendDateToBuf failed: %d",ruler_slot_id,err));
    }    
    OSSemPost( UART_MUX_Sem_lock );    
    return err ;        
}
  


/*
*********************************************************************************************************
*                                       FLASHD_Write_Safe()
*
* Description : Add code area protection for FLASHD_Write()
*               Writes a data buffer in the internal flash. This function works in polling
*               mode, and thus only returns when the data has been effectively written.    
* Argument(s) :  address  Write address.
*                pBuffer  Data buffer.
*                size     Size of data buffer in bytes.
* Return(s)   : NO_ERR :   execute successfully
*               others :   =error code .  
*
* Note(s)     : None.
*********************************************************************************************************
*/
unsigned char FLASHD_Write_Safe( unsigned int address, const void *pBuffer,  unsigned int size)
{
    unsigned char err;
    if( address < AT91C_IFLASH + AT91C_IFLASH_CODE_SIZE ) {
        APP_TRACE_INFO_T(("ERROR: this operation wanna flush code area!"));  
        return FW_BIN_SAVE_ADDR_ERR;
    }
    err = FLASHD_Write(  address, pBuffer, size );
    return err;  
    
}


/*
*********************************************************************************************************
*                                       Read_Flash_State()
*
* Description : Save ruler FW bin file to flash
*               
* Argument(s) : *pFlash_Info : pointer to FLASH_INFO type data where to save read data
*
* Return(s)   : None.
*
* Note(s)     : None.
*********************************************************************************************************
*/
void Read_Flash_State( FLASH_INFO  *pFlash_Info )
{
    
    *pFlash_Info = *(FLASH_INFO *)FLASH_ADDR_FW_STATE ;    
    
}


/*
*********************************************************************************************************
*                                       Write_Flash_State()
*
* Description : Save ruler FW bin file to flash
*               
* Argument(s) : *pFlash_Info : pointer to FLASH_INFO type data need to be saved
*
* Return(s)   : NO_ERR :   execute successfully
*               others :   =error code .  
*
* Note(s)     : None.
*********************************************************************************************************
*/
unsigned char Write_Flash_State( FLASH_INFO   *pFlash_Info )
{
    
    unsigned char err;   
    //save state to flash
    pFlash_Info->s_w_counter++ ;
    err = FLASHD_Write_Safe( FLASH_ADDR_FW_STATE, pFlash_Info, AT91C_IFLASH_PAGE_SIZE); 
    if(err != NO_ERR ) {                     
        APP_TRACE_INFO_T(("ERROR: Write flash state failed!"));  
    }
    
    return err;
    
}


/*
*********************************************************************************************************
*                                       Save_Ruler_FW()
*
* Description : Save ruler FW bin file to flash
*               
* Argument(s) :  cmd  :  1~ 3.
*               *pBin : pointer to bin file data packge to be wriiten to flash
*               *pStr : pointer to file name string
*                size : bin package file size 
*
* Return(s)   : NO_ERR :   execute successfully
*               others :   =error code .  
*
* Note(s)     : None.
*********************************************************************************************************
*/
unsigned char Save_Ruler_FW( unsigned int cmd, unsigned char *pBin, unsigned char *pStr, unsigned int size )
{  
    unsigned char err; 
    static unsigned int flash_addr = FLASH_ADDR_FW_BIN;
 
    FLASH_INFO    flash_info;
    
    err = NO_ERR;
    Read_Flash_State(&flash_info);
     
    switch( cmd ) {
        case FW_DOWNLAD_CMD_START :
            APP_TRACE_INFO_T(("Start loading ruler bin file to AB01 flash ... "));
            flash_addr = FLASH_ADDR_FW_BIN;                
            flash_info.f_w_state = FW_DOWNLAD_STATE_UNFINISHED ;
            flash_info.bin_size  = 0;
        break;   
        case FW_DOWNLAD_CMD_DOING :
            APP_TRACE_INFO_T(("> ")); 
            if( flash_info.f_w_state != FW_DOWNLAD_STATE_UNFINISHED ) {
                APP_TRACE_INFO_T(("ERROR: flash state not match!"));
                err  =  FW_BIN_STATE_0_ERR;                
            } 
        break;
        case FW_DOWNLAD_CMD_DONE :
            APP_TRACE_INFO_T((">")); 
            if( flash_info.f_w_state != FW_DOWNLAD_STATE_UNFINISHED ) {
                APP_TRACE_INFO_T(("ERROR: flash state not match!"));
                err  =  FW_BIN_STATE_1_ERR;
                break;
            }
            flash_info.f_w_state = FW_DOWNLAD_STATE_FINISHED ;
            flash_info.f_w_counter++;            
         break;
         
         default:
            APP_TRACE_INFO_T(("ERROR:  Save ruler FW bad cmd!"));
            err = FW_BIN_SAVE_CMD_ERR;    
         break;
        
    }
    if( err != NO_ERR ) {
        return err;
    }    
    Buzzer_OnOff(1);               
    LED_Toggle(LED_DS2);    
    err = FLASHD_Write_Safe( flash_addr, pBin, size ); 
    Buzzer_OnOff(0); 
    if(err != NO_ERR ) {                     
        APP_TRACE_INFO_T(("ERROR: Write MCU flash failed!"));
        return err;
    }
    flash_addr += size;
    flash_info.bin_size   = flash_addr - FLASH_ADDR_FW_BIN ;
    strcpy(flash_info.bin_name, (char const*)pStr);  
    if( cmd != FW_DOWNLAD_CMD_DOING ) {        
        err = Write_Flash_State( &flash_info ); 
        if( err == NO_ERR && cmd == FW_DOWNLAD_CMD_DONE ) { 
              APP_TRACE_INFO_T(("Bin file[%d Btyes] saved successfully!",flash_info.bin_size));     
        }   
    } 
    return err;  
    
}



/*
*********************************************************************************************************
*                                       Update_Ruler_FW()
*
* Description :  Write firmware to specified ruler's MCU flash
*               
* Argument(s) :  ruler_slot_id :  0~ 3.     
*
* Return(s)   : NO_ERR :   execute successfully
*               others :   =error code .  
*
* Note(s)     : Do not care if ruler is attached or not.Because host can not detect ruler if FW was crashed.
*********************************************************************************************************
*/
unsigned char Update_Ruler_FW( unsigned char ruler_slot_id )
{
    unsigned char err;
    unsigned int  flash_addr; 
    FLASH_INFO   *pFlash_Info;
    unsigned char Buf[9];
    unsigned char i;
    
    err = NO_ERR;
    flash_addr  = FLASH_ADDR_FW_BIN;
    pFlash_Info = (FLASH_INFO *)FLASH_ADDR_FW_STATE ;
        
    if( pFlash_Info->f_w_state != FW_DOWNLAD_STATE_FINISHED ) {
        APP_TRACE_INFO_T(("ERROR: FW bin file missed!"));        
        return FW_BIN_STATE_ERR;
    }
    
    APP_TRACE_INFO_T(("Start updating ruler[%d] firmware to \"%s\" version ...",ruler_slot_id,pFlash_Info->bin_name)); 
    memset(Buf,'d',sizeof(Buf)); //send 'd' to start download  
    Ruler_Power_Switch(0);   //power off ruler  
    OSTimeDly(200);   
    for( i = 0; i < 4; i++ ) {
        Global_Ruler_State[i] = RULER_STATE_DETACHED ;
    }
    UART_Init(RULER_UART,  NULL,  115200 );   //Init Ruler to inquire mode
    Port_Detect_Enable(0); //disable ruler detect
    
    OSSemPend( UART_MUX_Sem_lock, 0, &err ); 
    if( Global_Ruler_Index != ruler_slot_id ) {
        Check_UART_Mixer_Ready();
        //OS_ENTER_CRITICAL(); 
        Global_Ruler_Index = ruler_slot_id ; //for ruler status switch in TX/RX/Noah 
        //OS_EXIT_CRITICAL();  
        UART1_Mixer( ruler_slot_id );
    }
    
    Ruler_Power_Switch(1);   //power on ruler
    OSTimeDly(200);
    err = USART_SendBuf( RULER_UART, Buf,  sizeof(Buf));
    if( OS_ERR_NONE == err ) {     
        OSTimeDly(800);
        err = USART_Read_Timeout( RULER_UART, Buf, 3, 5000 );
        if( OS_ERR_NONE == err && ( Buf[0] == 'c' || Buf[0] == 'C' )) {
            Global_Ruler_State[ruler_slot_id] = RULER_STATE_RUN ;
            err = Xmodem_Transmit( (unsigned char *)flash_addr, pFlash_Info->bin_size );
            Global_Ruler_State[ruler_slot_id] = RULER_STATE_DETACHED ;            
        }         
    }
    if( OS_ERR_NONE != err ) {
        APP_TRACE_INFO_T(("Failed to init ruler bootloader. Err Code = [0x%X]", err));        
    } else {
        APP_TRACE_INFO_T(("Update ruler[%d] firmware successfully!", ruler_slot_id));   
    }
    Port_Detect_Enable(1); //enable ruler detect
    UART_Init(RULER_UART,  ISR_Ruler_UART,  115200 );  //Init Ruler back to interuption mode
    Ruler_Power_Switch(0);   //power off ruler  
    OSTimeDly(500);    
    Ruler_Power_Switch(1);   //power on ruler
    OSSemPost( UART_MUX_Sem_lock ); 
    return err ;    
    
}
//unsigned char Update_Ruler_FW( unsigned char ruler_slot_id )
//{
//    unsigned char err;
//    unsigned int  flash_addr; 
//    FLASH_INFO   *pFlash_Info;
//    
//    err = NO_ERR;
//    flash_addr  = FLASH_ADDR_FW_BIN;
//    pFlash_Info = (FLASH_INFO *)FLASH_ADDR_FW_STATE ;
//        
//    if( pFlash_Info->f_w_state != FW_DOWNLAD_STATE_FINISHED ) {
//        APP_TRACE_INFO_T(("ERROR: FW bin file missed!"));        
//        return FW_BIN_STATE_ERR;
//    }
//    
//    APP_TRACE_INFO_T(("Start updating MCU FW to [%s] on ruler[%d]...",pFlash_Info->bin_name,ruler_slot_id)); 
//    
//    UART_Init(RULER_UART,  NULL,  115200 );    //Init Ruler as no ISR  
//    
//    UART1_Mixer( ruler_slot_id );
//    Check_UART_Mixer_Ready();
//    if( USART_Start_Ruler_Bootloader() ) {  
//        APP_TRACE_INFO_T(("Failed to init ruler bootloader!"));     
//    }
//    
//    err = Xmodem_Transmit( (unsigned char *)flash_addr, pFlash_Info->bin_size);      
//         
//    UART_Init(RULER_UART,  ISR_Ruler_UART,  115200 );    //Init Ruler back to ISR 
//    
//    return err ;    
//    
//}



unsigned int Revert_Bit_Order(unsigned int data,unsigned char bit_len )
{
    signed char i;
    unsigned int Temp1 = 0;
    unsigned int Temp2 = 0;
    
    for( i = bit_len - 1; i >= 0; i-- )  {
        Temp1 = data & 0x01;
        Temp1 <<= i;
        Temp2 |= Temp1;
        data >>= 1;
    }
    
    return Temp2;
    
}

/*
*********************************************************************************************************
*                                       Toggle_Mic()
*
* Description : Toggle specified mic's active state by sending command to related ruler and updating 
*               FPGA mic signal switch array. 
*               One mic One time.
* Argument(s) : pdata : pointer to TOGGLE_MIC structure data
* Return(s)   : NO_ERR :   execute successfully
*               others :   =error code .  
*
* Note(s)     : None.
*********************************************************************************************************
*/
unsigned char Toggle_Mic(  TOGGLE_MIC *pdata )
{  
    unsigned char  err ;
    unsigned char  id;
    unsigned int   mic_mask;  
    unsigned int   fpga_mask;
    unsigned char  temp;
    
#if OS_CRITICAL_METHOD == 3u
    OS_CPU_SR  cpu_sr = 0u;                                 /* Storage for CPU status register         */
#endif 
    fpga_mask = 0;
    APP_TRACE_INFO_T(("Toggle Ruler[%d]-Mic[%d] : %d  : ", pdata->ruler_id, pdata->mic_id, pdata->on_off )); 
    //check ruler connection state 
    if( Global_Ruler_State[pdata->ruler_id] < RULER_STATE_CONFIGURED ) {      
        return RULER_STATE_ERR ;         
    }  
    OS_ENTER_CRITICAL(); 
    mic_mask = Global_Mic_Mask[pdata->ruler_id];
    OS_EXIT_CRITICAL();  
    mic_mask &= ~( 1<<(pdata->mic_id));
    mic_mask |=  (pdata->on_off&0x01)<<( pdata->mic_id);
    err = Update_Mic_Mask( pdata->ruler_id, mic_mask );
    APP_TRACE_INFO((" %s [0x%X]", err == OS_ERR_NONE ? "OK" : "FAIL" , err )); 
    if( OS_ERR_NONE != err ) {        
        return err;    
    }
    OS_ENTER_CRITICAL(); 
    Global_Mic_Mask[pdata->ruler_id] = mic_mask; 
    //APP_TRACE_INFO_T(("Update Ruler[%d] Mic_Mask:  %d",pdata->ruler_id,Global_Mic_Mask[pdata->ruler_id]));   
    if( mic_mask == 0 ) {      
        Global_Ruler_State[pdata->ruler_id] = RULER_STATE_CONFIGURED;         
    } else {
        Global_Ruler_State[pdata->ruler_id] = RULER_STATE_SELECTED;  
    }
    OS_EXIT_CRITICAL();
    if( RULER_TYPE_MASK( Global_Ruler_Type[pdata->ruler_id] ) == RULER_TYPE_RULER ) { //ruler
        if( Global_Ruler_Type[pdata->ruler_id] == RULER_TYPE_W01 ) { //fix W01 mic revert bug       
            Watch_Mic_Revert( &mic_mask );        
            fpga_mask = mic_mask << ((pdata->ruler_id)<<3);            
        } else {
            for( id = 0; id < 4; id++ ) {
                fpga_mask += (Global_Mic_Mask[id]&0xFF) << (id<<3);
            }    
        }
    } else { //handset
       fpga_mask = 0x3F << ((pdata->ruler_id)<<3);
       
    }
    Init_FPGA(fpga_mask);
    return err;  
}


/*
*********************************************************************************************************
*                                       Set_Volume()
*
* Description : Set DMIC PGA gain, LOUT and SPKOUT attenuation gain at the same time
*             
* Argument(s) : pdata : pointer to SET_VOLUME structure data
* Return(s)   : NO_ERR :   execute successfully
*               others :   =error code .  
*
* Note(s)     : None.
*********************************************************************************************************
*/
unsigned char Set_Volume(  SET_VOLUME *pdata )
{  
    unsigned char  err ;
    
    APP_TRACE_INFO_T(( "Set Volume :: " ));
    if( pdata->mic == SET_VOLUME_MUTE ) {
        APP_TRACE_INFO(( "Mute MIC :  " ));
    } else {
        APP_TRACE_INFO(( "Mic_Gain = %2d dB :  ", pdata->mic )); 
    }
    
    if( pdata->lout == SET_VOLUME_MUTE ) {
        APP_TRACE_INFO(( "Mute LOUT :  " ));
    } else {
        APP_TRACE_INFO(( "LOUT_Gain = -%2d.%1d dB :  ", pdata->lout/10, pdata->lout%10 )); 
    }
    
    if( pdata->spk == SET_VOLUME_MUTE ) {
        APP_TRACE_INFO(( "Mute SPK :  " ));
    } else {
        APP_TRACE_INFO(( "SPK_Gain = -%2d.%1d dB :  ", pdata->spk/10, pdata->spk%10 )); 
    }
    
    //APP_TRACE_INFO_T(("Set Volume : Mic_Gain[%d]dB, LOUT_Gain[-%d.%d]dB, SPKOUT_Gain[-%d.%d]dB : ", 
    //                     pdata->mic, pdata->lout/10, pdata->lout%10, pdata->spk/10, pdata->spk%10 )); 
    //APP_TRACE_INFO_T(("\r\n%6.6f, %6.6f",2.31,0.005));
    err = DMIC_PGA_Control( pdata->mic ); 
    //APP_TRACE_INFO_T((" %s [0x%X]", err == OS_ERR_NONE ? "OK" : "FAIL" , err )); 
    if( OS_ERR_NONE != err ) {  
        APP_TRACE_INFO(( "FAIL [0x%X]", err )); 
        return err;    
    }
    err = CODEC_Set_Volume( pdata->spk, pdata->lout );
    if( OS_ERR_NONE != err ) {    
        APP_TRACE_INFO(( "FAIL [0x%X]", err )); 
        return err;    
    }
    APP_TRACE_INFO(( "OK" )); 
    return err;  
}



/*
*********************************************************************************************************
*                                       Reset_Mic_Mask()
*
* Description : Reset all mics to deactived state on the specified rulers and update FPGA mic signal switch array.
* Argument(s) : pInt : pointer to a int data, the 4 bytes of wihch control 4 ruler's all mic need be 
*               reset to deactive state or not.
*                      1 - deactive all mics on this ruler
*                      0 - do nothing. ignore the reset operation
* Return(s)   : NO_ERR :   execute successfully
*               others :   =error code .  
*
* Note(s)     : None.
*********************************************************************************************************
*/
unsigned char Reset_Mic_Mask(  unsigned int *pInt )
{  
    unsigned char  err ;
    unsigned char  id;
    unsigned char  *pChar;  
    unsigned int   fpga_mask;
    
    fpga_mask = 0;    
    pChar     = (unsigned char *)pInt;
    err       = 0;

    for( id = 0; id < 4; id++ ) {        
        if( *(pChar+id) == 0 ) { 
            continue;
        }
        if( Global_Ruler_State[id] < RULER_STATE_CONFIGURED ) { //why not RULER_STATE_SELECTED  ? Because UI need reset mic in any case
            continue;
        }
        Global_Ruler_State[id] = RULER_STATE_CONFIGURED ;
        err = Update_Mic_Mask( id, 0 );
        if( OS_ERR_NONE != err ) {        
            return err;    
        } 
        Global_Mic_Mask[id] = 0;  
        if( RULER_TYPE_MASK( Global_Ruler_Type[id] ) == RULER_TYPE_RULER ) {//ruler 
            fpga_mask += (Global_Mic_Mask[id]&0xFF) << (id<<3);
            
        } else {
            fpga_mask += 0x3F << (id<<3); //handset choose the lowest slot H01
        }        
    }
    
    Init_FPGA(fpga_mask);    
    return err;  
}


/*
*********************************************************************************************************
*                                       Ruler_Port_LED_Service()
*
* Description : Control the ruler port identify LED state:  
*               turn on LED after ruler configured, blink LED during recording
* Argument(s) : None.
* Return(s)   : None.
* Note(s)     : None.
*********************************************************************************************************
*/
void Ruler_Port_LED_Service( void )
{    
    static unsigned int counter; 
    static unsigned int counter_buz;    
    unsigned char ruler_id;
    unsigned char ruler_state;    
    unsigned char LED_Freq;
    unsigned char post_err_flag;

    LED_Freq      = 0x3F; 
    post_err_flag = 0;
    
    for( ruler_id = 0 ; ruler_id < 4 ; ruler_id++ ) {
      
        ruler_state = Global_Ruler_State[ruler_id];  
        if( Global_Bridge_POST != NO_ERR ) { //if POST err, start all LED 
            ruler_state = RULER_STATE_RUN ;
            post_err_flag = 1;
        }
        switch( ruler_state ) {
          
            case RULER_STATE_DETACHED :
            case RULER_STATE_ATTACHED :
                LED_Clear( LED_P0 + ruler_id );
            break;            
            case RULER_STATE_CONFIGURED :
            case RULER_STATE_SELECTED :  
                LED_Set( LED_P0 + ruler_id );
            break;            
            case RULER_STATE_RUN :
                if( (counter & LED_Freq) == 0 ) {
                    LED_Toggle( LED_P0 + ruler_id );   
                    if( post_err_flag== 1 && ruler_id == 0 && (counter_buz++ < 6 ) ) {
                        //Buzzer_Toggle(); //buzzer off id POST err 
                        Buzzer_OnOff( counter_buz&0x01 );   //fix long buz issue in some case                  
                    }
                }
            
            default:              
            break;
        }
  
    }    
    counter++;    
}



/*
*********************************************************************************************************
*                                       AB_POST()
*
* Description : Audio bridge Power-On-Self-Test use. 
*
* Argument(s) : None.
* Return(s)   : None.
* Note(s)     : None.
*********************************************************************************************************
*/
void AB_POST( void )
{
    unsigned char  err;
    
    APP_TRACE_INFO_T(("Start Audio Bridge POST :"));    
    Enable_FPGA();

    APP_TRACE_INFO_T(("1. CODEC... "));
    err = Init_CODEC( SAMPLE_RATE_DEF );    
    if( err != NO_ERR ) {
        Global_Bridge_POST = POST_ERR_CODEC;
        APP_TRACE_INFO_T(("---Error : %d\r\n",err));
        return ;
    } else {
        APP_TRACE_INFO_T(("---OK\r\n"));
    }
    
    APP_TRACE_INFO_T(("2. FM36 DSP... "));
#ifdef BOARD_TYPE_AB03     
    err = Init_FM36_AB03( SAMPLE_RATE_DEF, 0, 1, 0 ); //Lin from SP1.Slot0
    //err = Init_FM36( SAMPLE_RATE_DEF );
#else 
    err = Init_FM36( SAMPLE_RATE_DEF );
#endif
    if( err != NO_ERR ) {
        Global_Bridge_POST = POST_ERR_FM36;
        APP_TRACE_INFO_T(("---Error : %d\r\n",err));
        return ;
    } else {
        APP_TRACE_INFO_T(("---OK\r\n"));
    }  
    
    APP_TRACE_INFO_T(("3. AUDIO MCU... "));
    err = Get_Audio_Version();
    if( err != NO_ERR ) {
        Global_Bridge_POST = POST_ERR_AUDIO;
        APP_TRACE_INFO_T(("---Error : %d\r\n",err));
        return ;
    } else {
        APP_TRACE_INFO_T(("---OK\r\n"));
    }    
   
    
    
//    APP_TRACE_INFO_T(("\r\n4. external CODEC... "));
//    err = Init_CODEC_AIC3204( SAMPLE_RATE_DEF );    
//    if( err != NO_ERR ) {
//        Global_Bridge_POST = POST_ERR_CODEC;
//        APP_TRACE_INFO(("\r\n---Error : %d",err));
//        return ;
//    } else {
//        APP_TRACE_INFO(("\r\n---OK"));
//    }
    
    //Disable_FPGA(); 
    //Ruler_Power_Switch(1); 
    
    err = Init_CODEC( 0 );
    if( err != NO_ERR ) {
        Global_Bridge_POST = POST_ERR_CODEC ;
        APP_TRACE_INFO_T(("Power Down CODEC ERROR: %d",err)); 
    }
    
}



/*
*********************************************************************************************************
*                                       Ruler_POST()
*
* Description : Get back specified ruler Power-On-Self-Test status. 
*
* Argument(s) : ruler_id :  0~ 3
* Return(s)   : NO_ERR :   execute successfully
*               others :   =error code . 
* Note(s)     : None.
*********************************************************************************************************
*/
unsigned char Ruler_POST( unsigned char ruler_id )
{
    unsigned char  err;
    unsigned short result;   
    
    APP_TRACE_INFO_T(("Ruler[%d] POST status check... ",ruler_id)); 

    err = Read_Ruler_Status( ruler_id, &result);
    if( err == RULER_STATE_ERR ) { //no ruler attached
        return err;;
    }      
    if( err != NO_ERR ) {
       return err;
    }
    if( result != 0 ) {
        if( result != 0x8000 ) {        
            APP_TRACE_INFO_T(("---Error Ruler[%d]: %d-0x%X\r\n",ruler_id,err,result));
            return 1; 
        } else {
            APP_TRACE_INFO_T(("---WARNING Ruler[%d]: Mic calibration data NOT Initialized!\r\n",ruler_id));  
        }
    } else {
        APP_TRACE_INFO_T(("---OK\r\n"));  
    } 
         
    return err;
}


/*
*********************************************************************************************************
*                                       simple_test_use()
*
* Description : debug use.
*
* Argument(s) : None.
* Return(s)   : None.
* Note(s)     : None.
*********************************************************************************************************
*/
void simple_test_use( void )
{      
    APP_TRACE_INFO_T(("\r\nHi,man. Simple play/rec test triggered..."));   
    
#if 0  
    
 //R01      
    TOGGLE_MIC toggle_mic[6] = {    
                                    {0, 6, 1 }, {0, 7, 1 }, {0, 8, 1 },
                                    {0, 12, 1 }, {0, 13, 1 }, {0, 14, 1 }  
                                }; 
  
    for (unsigned char i = 0; i< 6 ; i++ ) {
        Toggle_Mic(&toggle_mic[i]); 
    } 
    
#else
    
//H01
    Update_Mic_Mask( 0, 0x3f); 
    Init_FPGA(0x3F);
    Global_Ruler_State[0] = RULER_STATE_RUN; 
        
    AUDIO_CFG audio_config_play = {SAMPLE_RATE_DEF, AUDIO_TYPE_PLAY, 6 };
    AUDIO_CFG audio_config_rec  = {SAMPLE_RATE_DEF, AUDIO_TYPE_REC,  6 };
    Setup_Audio( &audio_config_play );                   
    Setup_Audio( &audio_config_rec );                 
    //Start_Audio( AUDIO_START_PALYREC ); 
    
#endif
    
}


unsigned char Ruler_Setup_Sync( unsigned char ruler_slot_id )
{
    unsigned char err ;
    unsigned char buf[] = { RULER_CMD_SETUP_SYNC, Ruler_Setup_Sync_Data, ruler_slot_id };

#if OS_CRITICAL_METHOD == 3u
    //OS_CPU_SR  cpu_sr = 0u;                                 /* Storage for CPU status register         */
#endif 
    
    //check ruler connection state 
    if( Global_Ruler_State[ruler_slot_id] < RULER_STATE_ATTACHED ) {      
        return RULER_STATE_ERR ;         
    } 
    
    OSSemPend( UART_MUX_Sem_lock, 0, &err );
    if( Global_Ruler_Index != ruler_slot_id ) {
        Check_UART_Mixer_Ready();
        //OS_ENTER_CRITICAL(); 
        Global_Ruler_Index = ruler_slot_id ; //for ruler status switch in TX/RX/Noah 
        //OS_EXIT_CRITICAL();  
        UART1_Mixer( ruler_slot_id );
    }
    
    err = pcSendDateToBuf( EVENT_MsgQ_Noah2RulerUART, FRAM_TYPE_DATA, buf, sizeof(buf), 0, NULL, 0 ) ; 
    if( OS_ERR_NONE == err ) {
        OSSemPend( Done_Sem_RulerUART, TIMEOUT_RULER_COM, &err );  
        if( OS_ERR_TIMEOUT == err ) {
            APP_TRACE_INFO_T(("Ruler_Setup_Sync[%d] timeout",ruler_slot_id));
        } else {
            err = Ruler_CMD_Result; //exe result from GACK
            if(OS_ERR_NONE != err ){
                APP_TRACE_INFO_T(("Ruler_Setup_Sync[%d] err = %d",ruler_slot_id,err));
            }
        }
        
    } else {
        APP_TRACE_INFO_T(("Ruler[%d] pcSendDateToBuf failed: %d",ruler_slot_id,err));
    }    
    OSSemPost( UART_MUX_Sem_lock );    
    return err ;    
    
    
}

