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
*                                           TASK PACKAGE
*
*                                          Atmel AT91SAM7A3
*                                               on the
*                                      iSAM Audio Bridge Board
*
* Filename      : task_uart_tx.c
* Version       : V1.0.0
* Programmer(s) : PQ
*********************************************************************************************************
* Note(s)       :
*********************************************************************************************************
*/

#include <includes.h>

//Mem
CPU_INT08U    MemPartition_MsgUART[MsgUARTQueue_SIZE][MsgUARTBody_SIZE];
OS_MEM      * pMEM_Part_MsgUART; //global
//Queue
void        * MsgQ_PCUART2Noah[MsgUARTQueue_SIZE];
void        * MsgQ_Noah2PCUART[MsgUARTQueue_SIZE];
//Event
OS_EVENT    * EVENT_MsgQ_PCUART2Noah;
OS_EVENT    * EVENT_MsgQ_Noah2PCUART;


CPU_INT32U  Tx_ReSend_Happens = 0;   // debug use, resend happen times, NOTE: only writable in this task
CPU_INT08U PcCmdTxID          = 0;   // Frame TXD ID
   

/*
*********************************************************************************************************
*                                    App_TaskUART_Tx()
*
* Description : Process UART Transmit related process between Audio Bridge and PC.
*               Wait for data message from other task that want to send to PC.
*
* Argument(s) : p_arg   Argument passed to 'App_TaskUART_Tx()' by 'OSTaskCreate()'.
*
* Return(s)   : none.
*
* Note(s)     : (1) The first line of code is used to prevent a compiler warning because 'p_arg' is not
*                   used.  The compiler should not generate any code for this statement.
*********************************************************************************************************
*/
void App_TaskUART_Tx( void *p_arg )
{    
    (void)p_arg;
    
    CPU_INT08U       errCode ; 
    CPU_INT08U       sum ; 
    CPU_INT08U      *pTaskMsgIN ;
    NOAH_CMD        *pPcCmd ; 
    CPU_INT08U       resend_index;  

    pTaskMsgIN  = NULL;
    pPcCmd      = NULL;	
	sum         = 0;
    errCode     = UNKOW_ERR_RPT ;     
    

    pcSendDateToBuf( EVENT_MsgQ_Noah2PCUART, SET_FRAME_HEAD(PcCmdTxID,FRAM_TYPE_EST),  NULL, 0, 0, NULL, 0 ) ;  // send a EST package on startup   
    
	while (DEF_TRUE) { 

        // Noah to Uart transmit
        pTaskMsgIN   = (INT8U *)OSQPend( EVENT_MsgQ_Noah2PCUART, 0, &errCode );
        
        if( pTaskMsgIN != NULL && OS_ERR_NONE == errCode )   {  
          
            pPcCmd  = (NOAH_CMD *)pTaskMsgIN ;             
            if( GET_FRAME_TYPE(pPcCmd->head) == FRAM_TYPE_DATA  ) {  //data frame
                
                for( resend_index = 0; resend_index < MAX_RESEND_TIMES; resend_index++ ) {     
                  
                    Queue_Write( (void*)pUART_Send_Buf[PC_UART] , CMD_DATA_SYNC1   ); //Sync1
                    Queue_Write( (void*)pUART_Send_Buf[PC_UART], CMD_DATA_SYNC2_1 ); //Sync2        
              
                    pPcCmd->head  = SET_FRAME_HEAD( PcCmdTxID, FRAM_TYPE_DATA ) ; //set frame ID for data transmit                                
                    sum  =  CheckSum(   pPcCmd->head, &(pPcCmd->DataLen), pPcCmd->DataLen + 1); //calculate checksum      
                    
                    Queue_WriteBuf( pTaskMsgIN,  (void*)pUART_Send_Buf[PC_UART], pPcCmd->DataLen + 2 ); //3Bytes = head(1Bytes) + len(1Bytes)
                    Queue_Write( (void*)pUART_Send_Buf[PC_UART], sum   ); //  check sum(1Bytes)
                    UART_WriteStart( PC_UART ); //send data  
                    
                    OSSemPend(ACK_Sem_PCUART, 500, &errCode);//pending 500ms for ACK back                     
                    if( OS_ERR_NONE == errCode )   {               
                        OSMemPut( pMEM_Part_MsgUART, pTaskMsgIN );    //release mem 
                        PcCmdTxID += 0x40;// this frame send out ok, frame ++,   //0xC0 
                        break;                        
                    } 
                    
                }
                
                if(  resend_index >= MAX_RESEND_TIMES ) {   // reach max send times                    
                    OSMemPut( pMEM_Part_MsgUART, pTaskMsgIN );    //release mem a space at least
                    pcSendDateToBuf( EVENT_MsgQ_Noah2PCUART, SET_FRAME_HEAD(PcCmdTxID+1,FRAM_TYPE_EST), NULL, 0, 1, NULL, 0) ;   //insert EST  package 
                    Global_Conn_Ready = 0;
                } 
                
                if(  resend_index > 1 ) {   // resend happens, debug use      
                    Tx_ReSend_Happens ++ ;
                }
                
            } else { //ACK / NAK  frame, no resend action  
              
                    Queue_Write( (void*)pUART_Send_Buf[PC_UART], CMD_DATA_SYNC1   ); //Sync1
                    Queue_Write( (void*)pUART_Send_Buf[PC_UART], CMD_DATA_SYNC2_1 ); //Sync2   
                    Queue_WriteBuf( pTaskMsgIN,(void*)pUART_Send_Buf[PC_UART], 2 );
                    //OSQAccept( EVENT_MsgQ_Noah2PCUART, &errCode ); //delete message from queue
                    OSMemPut( pMEM_Part_MsgUART, pTaskMsgIN );    //release mem 
                    UART_WriteStart( PC_UART ); //send data 
                    APP_TRACE_DBG(("\r\n>ACK"));
            }                       
         
        }  
        
        ////OSTimeDly(5);		                                     	
	}
       
    
    
    
}




    