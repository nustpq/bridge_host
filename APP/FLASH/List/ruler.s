///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       19/Aug/2014  09:38:02
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Noah\ruler.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Noah\ruler.c" -lcN
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\" -lb
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\" -o
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\Obj\"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=ARM7TDMI -e --fpu=None --dlib_config "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Full.h" -I "E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\" -I "E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\..\uC-CPU\ARM\IAR\" -I "E:\SVN Dir\PQ\iSAM
//        Test Bench\Bridge_Host_OS\APP\..\BSP\" -I "E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\..\Driver\" -I "E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\..\Noah\" -I "E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\..\Shell\" -I "E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\..\uCOS-II\Source\" -I "E:\SVN Dir\PQ\iSAM
//        Test Bench\Bridge_Host_OS\APP\..\uC-CPU\" -I "E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\..\uC-LIB\" -I "E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\..\uC-CPU\ARM\IAR\" -I "E:\SVN Dir\PQ\iSAM
//        Test Bench\Bridge_Host_OS\APP\..\uCOS-II\Ports\ARM\Generic\IAR\" -I
//        "E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\..\uC-Probe\Target\Communication\Generic\RS-232\Source\"
//        -I "E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\..\uC-Probe\Target\Communication\Generic\RS-232\Ports\Atmel\AT91SAM7X\"
//        -I "E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\..\uC-Probe\Target\Communication\Generic\Source\"
//        -I "E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\..\uC-Probe\Target\Plugins\uCOS-II\" -I
//        "E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\..\uC-Probe\Target\Demos\Intro\Source\"
//        --interwork --cpu_mode arm -On --use_c++_inline
//    List file    =  
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\ruler.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN BSP_Ser_Printf
        EXTERN Buzzer_OnOff
        EXTERN CODEC_Set_Volume
        EXTERN DMIC_PGA_Control
        EXTERN Done_Sem_RulerUART
        EXTERN EVENT_MsgQ_Noah2RulerUART
        EXTERN Emb_Buf_Cmd
        EXTERN Emb_Buf_Data
        EXTERN Enable_FPGA
        EXTERN FLASHD_Write
        EXTERN ISR_Ruler_UART
        EXTERN Init_CODEC
        EXTERN Init_FM36_AB03
        EXTERN Init_FPGA
        EXTERN LED_Clear
        EXTERN LED_Set
        EXTERN LED_Toggle
        EXTERN OSQGet
        EXTERN OSSemPend
        EXTERN OSSemPost
        EXTERN OSTimeDly
        EXTERN OS_CPU_SR_Restore
        EXTERN OS_CPU_SR_Save
        EXTERN Port_Detect_Enable
        EXTERN Queue_NData
        EXTERN Ruler_Power_Switch
        EXTERN UART1_Mixer
        EXTERN UART2_Mixer
        EXTERN UART_Init
        EXTERN UART_MUX_Sem_lock
        EXTERN USART_Read_Timeout
        EXTERN USART_SendBuf
        EXTERN Xmodem_Transmit
        EXTERN __aeabi_memcpy4
        EXTERN __aeabi_uidiv
        EXTERN __aeabi_uidivmod
        EXTERN memset
        EXTERN pUART_Send_Buf
        EXTERN pcSendDateToBuf
        EXTERN strcpy

        PUBLIC AB_POST
        PUBLIC Audio_Version
        PUBLIC Check_UART_Mixer_Ready
        PUBLIC FLASHD_Write_Safe
        PUBLIC Get_Audio_Version
        PUBLIC Get_Ruler_Type
        PUBLIC Get_Ruler_Version
        PUBLIC Global_Bridge_POST
        PUBLIC Global_Mic_Mask
        PUBLIC Global_Mic_State
        PUBLIC Global_Ruler_Index
        PUBLIC Global_Ruler_State
        PUBLIC Global_Ruler_Type
        PUBLIC Init_Global_Var
        PUBLIC Init_Ruler
        PUBLIC Read_Flash_State
        PUBLIC Read_Mic_Cali_Data
        PUBLIC Read_Ruler_Info
        PUBLIC Read_Ruler_Status
        PUBLIC Reset_Audio
        PUBLIC Reset_Mic_Mask
        PUBLIC Ruler_Active_Control
        PUBLIC Ruler_CMD_Result
        PUBLIC Ruler_POST
        PUBLIC Ruler_Port_LED_Service
        PUBLIC Ruler_Setup_Sync
        PUBLIC Ruler_Setup_Sync_Data
        PUBLIC Save_Ruler_FW
        PUBLIC Set_Volume
        PUBLIC Setup_Audio
        PUBLIC Setup_Ruler
        PUBLIC Start_Audio
        PUBLIC Stop_Audio
        PUBLIC Toggle_Mic
        PUBLIC Update_Mic_Mask
        PUBLIC Update_Ruler_FW
        PUBLIC Write_Flash_State
        PUBLIC Write_Mic_Cali_Data
        PUBLIC Write_Ruler_Info
        PUBLIC simple_test_use


        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Global_Mic_Mask:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
Global_Ruler_Index:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
Global_Bridge_POST:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Global_Ruler_State:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Global_Ruler_Type:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Global_Mic_State:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Audio_Version:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
Ruler_CMD_Result:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
Ruler_Setup_Sync_Data:
        DS8 1

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Init_Global_Var:
        MOV      R1,#+0
        MOVS     R0,R1
??Init_Global_Var_0:
        MOVS     R1,R0
        ANDS     R1,R1,#0xFF      ;; Zero extend
        CMP      R1,#+4
        BGE      ??Init_Global_Var_1
        MOV      R1,#+0
        MOVS     R2,R0
        ANDS     R2,R2,#0xFF      ;; Zero extend
        LDR      R3,??DataTable11
        STRB     R1,[R2, +R3]
        MOV      R1,#+0
        MOVS     R2,R0
        ANDS     R2,R2,#0xFF      ;; Zero extend
        LDR      R3,??DataTable11_1
        STRB     R1,[R2, +R3]
        MOV      R1,#+0
        MOVS     R2,R0
        ANDS     R2,R2,#0xFF      ;; Zero extend
        LDR      R3,??DataTable11_2
        STRB     R1,[R2, +R3]
        MOV      R1,#+0
        MOVS     R2,R0
        ANDS     R2,R2,#0xFF      ;; Zero extend
        LSLS     R2,R2,#+2
        LDR      R3,??DataTable12
        STR      R1,[R2, +R3]
        ADDS     R0,R0,#+1
        B        ??Init_Global_Var_0
??Init_Global_Var_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Check_Actived_Mic_Number:
        MOV      R0,#+0
        MOV      R3,#+0
        MOVS     R1,R3
??Check_Actived_Mic_Number_0:
        MOVS     R3,R1
        ANDS     R3,R3,#0xFF      ;; Zero extend
        CMP      R3,#+4
        BGE      ??Check_Actived_Mic_Number_1
        MOV      R3,#+0
        MOVS     R2,R3
??Check_Actived_Mic_Number_2:
        MOVS     R3,R2
        ANDS     R3,R3,#0xFF      ;; Zero extend
        CMP      R3,#+32
        BGE      ??Check_Actived_Mic_Number_3
        MOVS     R3,R1
        ANDS     R3,R3,#0xFF      ;; Zero extend
        LSLS     R3,R3,#+2
        LDR      R12,??DataTable12
        LDR      R3,[R3, +R12]
        MOV      R12,#+1
        TST      R12,R3, LSR R2
        BEQ      ??Check_Actived_Mic_Number_4
        ADDS     R0,R0,#+1
??Check_Actived_Mic_Number_4:
        ADDS     R2,R2,#+1
        B        ??Check_Actived_Mic_Number_2
??Check_Actived_Mic_Number_3:
        ADDS     R1,R1,#+1
        B        ??Check_Actived_Mic_Number_0
??Check_Actived_Mic_Number_1:
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Check_UART_Mixer_Ready:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOV      R0,#+0
        MOVS     R4,R0
??Check_UART_Mixer_Ready_0:
        MOVS     R1,SP
        LDR      R0,??DataTable12_1
        LDR      R0,[R0, #+0]
        BL       OSQGet
        CMP      R0,#+0
        BEQ      ??Check_UART_Mixer_Ready_1
        MOV      R0,#+1
        BL       OSTimeDly
        ADDS     R4,R4,#+1
        B        ??Check_UART_Mixer_Ready_0
??Check_UART_Mixer_Ready_1:
        CMP      R4,#+0
        BEQ      ??Check_UART_Mixer_Ready_2
        MOVS     R1,R4
        LDR      R0,??DataTable12_2
        BL       BSP_Ser_Printf
??Check_UART_Mixer_Ready_2:
        MOV      R0,#+0
        MOVS     R4,R0
??Check_UART_Mixer_Ready_3:
        LDR      R0,??DataTable12_3
        LDR      R0,[R0, #+4]
        BL       Queue_NData
        CMP      R0,#+0
        BEQ      ??Check_UART_Mixer_Ready_4
        MOV      R0,#+1
        BL       OSTimeDly
        ADDS     R4,R4,#+1
        B        ??Check_UART_Mixer_Ready_3
??Check_UART_Mixer_Ready_4:
        CMP      R4,#+0
        BEQ      ??Check_UART_Mixer_Ready_5
        MOVS     R1,R4
        LDR      R0,??DataTable12_4
        BL       BSP_Ser_Printf
??Check_UART_Mixer_Ready_5:
        MOV      R0,#+5
        BL       OSTimeDly
        POP      {R0,R1,R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Setup_Audio:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+16
        MOVS     R4,R0
        MOV      R0,#+255
        STRB     R0,[SP, #+0]
        ADD      R0,SP,#+4
        LDR      R1,??DataTable12_5
        LDM      R1!,{R2,R3}
        STM      R0!,{R2,R3}
        SUBS     R1,R1,#+8
        SUBS     R0,R0,#+8
        LDRB     R0,[R4, #+2]
        STRB     R0,[SP, #+7]
        LDRB     R0,[R4, #+3]
        STRB     R0,[SP, #+8]
        LDRH     R0,[R4, #+0]
        STRB     R0,[SP, #+9]
        LDRH     R0,[R4, #+0]
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        LSRS     R0,R0,#+8
        STRB     R0,[SP, #+10]
        LDRB     R0,[R4, #+2]
        CMP      R0,#+0
        BNE      ??Setup_Audio_0
        LDRB     R0,[R4, #+4]
        CMP      R0,#+0
        BNE      ??Setup_Audio_1
        LDR      R3,??DataTable12_6
        B        ??Setup_Audio_2
??Setup_Audio_1:
        LDR      R3,??DataTable12_7
??Setup_Audio_2:
        LDRB     R2,[R4, #+3]
        LDRH     R1,[R4, #+0]
        LDR      R0,??DataTable12_8
        BL       BSP_Ser_Printf
        B        ??Setup_Audio_3
??Setup_Audio_0:
        LDRB     R2,[R4, #+3]
        LDRH     R1,[R4, #+0]
        LDR      R0,??DataTable12_9
        BL       BSP_Ser_Printf
??Setup_Audio_3:
        BL       Check_Actived_Mic_Number
        MOVS     R6,R0
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+7
        BLT      ??Setup_Audio_4
        MOVS     R1,R6
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable12_10
        BL       BSP_Ser_Printf
        MOV      R0,#+199
        B        ??Setup_Audio_5
??Setup_Audio_4:
        LDRB     R0,[R4, #+2]
        CMP      R0,#+0
        BNE      ??Setup_Audio_6
        LDRB     R0,[R4, #+3]
        ANDS     R6,R6,#0xFF      ;; Zero extend
        CMP      R6,R0
        BEQ      ??Setup_Audio_6
        MOVS     R2,R6
        ANDS     R2,R2,#0xFF      ;; Zero extend
        LDRB     R1,[R4, #+3]
        LDR      R0,??DataTable12_11
        BL       BSP_Ser_Printf
        STRB     R6,[SP, #+8]
        MOV      R0,#+201
        B        ??Setup_Audio_5
??Setup_Audio_6:
        LDRB     R0,[R4, #+2]
        CMP      R0,#+1
        BNE      ??Setup_Audio_7
        LDRB     R0,[R4, #+3]
        CMP      R0,#+5
        BLT      ??Setup_Audio_7
        LDRB     R1,[R4, #+3]
        LDR      R0,??DataTable12_12
        BL       BSP_Ser_Printf
        MOV      R0,#+200
        B        ??Setup_Audio_5
??Setup_Audio_7:
        LDRB     R0,[R4, #+2]
        CMP      R0,#+0
        BNE      ??Setup_Audio_8
        LDRB     R0,[R4, #+4]
        CMP      R0,#+0
        BEQ      ??Setup_Audio_8
        LDRB     R0,[SP, #+8]
        ADDS     R0,R0,#+2
        STRB     R0,[SP, #+8]
        LDRB     R1,[SP, #+8]
        LDR      R0,??DataTable12_13
        BL       BSP_Ser_Printf
??Setup_Audio_8:
        MOV      R0,#+3
        BL       UART2_Mixer
        MOV      R2,#+7
        ADD      R1,SP,#+4
        MOV      R0,#+2
        BL       USART_SendBuf
        MOV      R3,#+2000
        MOV      R2,#+1
        MOVS     R1,SP
        MOV      R0,#+2
        BL       USART_Read_Timeout
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Setup_Audio_9
        LDR      R0,??DataTable12_14
        BL       BSP_Ser_Printf
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Setup_Audio_5
??Setup_Audio_9:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BEQ      ??Setup_Audio_10
        LDRB     R1,[SP, #+0]
        LDR      R0,??DataTable13
        BL       BSP_Ser_Printf
        LDRB     R0,[SP, #+0]
        B        ??Setup_Audio_5
??Setup_Audio_10:
        LDRH     R0,[R4, #+0]
        BL       Init_CODEC
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Setup_Audio_11
        MOVS     R1,R5
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable13_1
        BL       BSP_Ser_Printf
??Setup_Audio_11:
        MOV      R3,#+0
        MOV      R2,#+1
        MOVS     R1,R6
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDRH     R0,[R4, #+0]
        BL       Init_FM36_AB03
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Setup_Audio_12
        MOVS     R1,R5
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable14
        BL       BSP_Ser_Printf
??Setup_Audio_12:
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
??Setup_Audio_5:
        ADD      SP,SP,#+16       ;; stack cleaning
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Start_Audio:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+12
        MOVS     R4,R0
        MOV      R5,#+255
        MOV      R0,#+255
        STRB     R0,[SP, #+0]
        ADD      R0,SP,#+4
        LDR      R1,??DataTable13_2
        LDR      R2,[R1, #0]
        STR      R2,[R0, #+0]
        ANDS     R0,R4,#0x3
        STRB     R0,[SP, #+7]
        MOV      R7,#+0
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable13_3
        BL       BSP_Ser_Printf
        MOV      R0,#+3
        BL       UART2_Mixer
        MOV      R2,#+4
        ADD      R1,SP,#+4
        MOV      R0,#+2
        BL       USART_SendBuf
        MOV      R3,#+2000
        MOV      R2,#+1
        MOVS     R1,SP
        MOV      R0,#+2
        BL       USART_Read_Timeout
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Start_Audio_0
        MOVS     R1,R5
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable13_4
        BL       BSP_Ser_Printf
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Start_Audio_1
??Start_Audio_0:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BEQ      ??Start_Audio_2
        LDRB     R1,[SP, #+0]
        LDR      R0,??DataTable13_5
        BL       BSP_Ser_Printf
        LDRB     R0,[SP, #+0]
        B        ??Start_Audio_1
??Start_Audio_2:
        BL       OS_CPU_SR_Save
        MOVS     R7,R0
        MOV      R0,#+0
        MOVS     R6,R0
??Start_Audio_3:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+4
        BGE      ??Start_Audio_4
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable11
        LDRB     R0,[R0, +R1]
        CMP      R0,#+3
        BNE      ??Start_Audio_5
        MOV      R0,#+4
        MOVS     R1,R6
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R2,??DataTable11
        STRB     R0,[R1, +R2]
??Start_Audio_5:
        ADDS     R6,R6,#+1
        B        ??Start_Audio_3
??Start_Audio_4:
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
??Start_Audio_1:
        POP      {R1-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Stop_Audio:
        PUSH     {R2-R6,LR}
        MOV      R4,#+255
        MOV      R0,#+255
        STRB     R0,[SP, #+0]
        ADD      R0,SP,#+4
        LDR      R1,??DataTable14_1
        LDR      R2,[R1, #0]
        STR      R2,[R0, #+0]
        MOV      R6,#+0
        LDR      R0,??DataTable14_2
        BL       BSP_Ser_Printf
        MOV      R0,#+3
        BL       UART2_Mixer
        MOV      R2,#+3
        ADD      R1,SP,#+4
        MOV      R0,#+2
        BL       USART_SendBuf
        MOV      R3,#+2000
        MOV      R2,#+1
        MOVS     R1,SP
        MOV      R0,#+2
        BL       USART_Read_Timeout
        MOVS     R4,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Stop_Audio_0
        LDR      R0,??DataTable14_3
        BL       BSP_Ser_Printf
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Stop_Audio_1
??Stop_Audio_0:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BEQ      ??Stop_Audio_2
        LDRB     R1,[SP, #+0]
        LDR      R0,??DataTable14_4
        BL       BSP_Ser_Printf
        LDRB     R0,[SP, #+0]
        B        ??Stop_Audio_1
??Stop_Audio_2:
        MOV      R0,#+0
        BL       Init_CODEC
        MOVS     R4,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Stop_Audio_3
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable14_5
        BL       BSP_Ser_Printf
??Stop_Audio_3:
        BL       OS_CPU_SR_Save
        MOVS     R6,R0
        MOV      R0,#+0
        MOVS     R5,R0
??Stop_Audio_4:
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+4
        BGE      ??Stop_Audio_5
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable11
        LDRB     R0,[R0, +R1]
        CMP      R0,#+4
        BNE      ??Stop_Audio_6
        MOV      R0,#+3
        MOVS     R1,R5
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R2,??DataTable11
        STRB     R0,[R1, +R2]
??Stop_Audio_6:
        ADDS     R5,R5,#+1
        B        ??Stop_Audio_4
??Stop_Audio_5:
        MOVS     R0,R6
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
??Stop_Audio_1:
        POP      {R1,R2,R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Reset_Audio:
        PUSH     {R2-R4,LR}
        MOV      R4,#+255
        MOV      R0,#+255
        STRB     R0,[SP, #+0]
        ADD      R0,SP,#+4
        LDR      R1,??DataTable14_6
        LDR      R2,[R1, #0]
        STR      R2,[R0, #+0]
        LDR      R0,??DataTable14_7
        BL       BSP_Ser_Printf
        MOV      R0,#+3
        BL       UART2_Mixer
        MOV      R2,#+3
        ADD      R1,SP,#+4
        MOV      R0,#+2
        BL       USART_SendBuf
        MOV      R3,#+2000
        MOV      R2,#+1
        MOVS     R1,SP
        MOV      R0,#+2
        BL       USART_Read_Timeout
        MOVS     R4,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Reset_Audio_0
        LDR      R0,??DataTable14_8
        BL       BSP_Ser_Printf
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Reset_Audio_1
??Reset_Audio_0:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BEQ      ??Reset_Audio_2
        LDRB     R1,[SP, #+0]
        LDR      R0,??DataTable15
        BL       BSP_Ser_Printf
        LDRB     R0,[SP, #+0]
        B        ??Reset_Audio_1
??Reset_Audio_2:
        MOV      R0,#+0
??Reset_Audio_1:
        POP      {R1,R2,R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Get_Audio_Version:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R0,SP
        LDR      R1,??DataTable14_9
        LDR      R2,[R1, #0]
        STR      R2,[R0, #+0]
        MOV      R0,#+3
        BL       UART2_Mixer
        MOV      R2,#+3
        MOVS     R1,SP
        MOV      R0,#+2
        BL       USART_SendBuf
        MOV      R3,#+2000
        MOV      R2,#+12
        LDR      R1,??DataTable14_10
        MOV      R0,#+2
        BL       USART_Read_Timeout
        MOVS     R4,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Get_Audio_Version_0
        LDR      R0,??DataTable15_1
        BL       BSP_Ser_Printf
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Get_Audio_Version_1
??Get_Audio_Version_0:
        LDR      R1,??DataTable14_10
        LDR      R0,??DataTable16
        BL       BSP_Ser_Printf
        MOV      R0,#+0
??Get_Audio_Version_1:
        POP      {R1,R2,R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Init_Ruler:
        PUSH     {R0-R4,LR}
        MOVS     R4,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable11
        LDRB     R0,[R0, +R1]
        CMP      R0,#+0
        BNE      ??Init_Ruler_0
        MOV      R0,#+193
        B        ??Init_Ruler_1
??Init_Ruler_0:
        ADD      R2,SP,#+12
        MOV      R1,#+0
        LDR      R0,??DataTable16_1
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        LDR      R0,??DataTable15_2
        LDRB     R0,[R0, #+0]
        ANDS     R4,R4,#0xFF      ;; Zero extend
        CMP      R0,R4
        BEQ      ??Init_Ruler_2
        BL       Check_UART_Mixer_Ready
        LDR      R0,??DataTable15_2
        STRB     R4,[R0, #+0]
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       UART1_Mixer
??Init_Ruler_2:
        MOV      R0,#+0
        STR      R0,[SP, #+8]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+0
        STR      R0,[SP, #+0]
        MOV      R3,#+0
        MOV      R2,#+0
        MOV      R1,#+62
        LDR      R0,??DataTable12_1
        LDR      R0,[R0, #+0]
        BL       pcSendDateToBuf
        STRB     R0,[SP, #+12]
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BNE      ??Init_Ruler_3
        ADD      R2,SP,#+12
        MOV      R1,#+136
        ORR      R1,R1,#0x1300
        LDR      R0,??DataTable15_3
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        LDRB     R0,[SP, #+12]
        CMP      R0,#+10
        BNE      ??Init_Ruler_4
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable15_4
        BL       BSP_Ser_Printf
        B        ??Init_Ruler_5
??Init_Ruler_4:
        LDR      R0,??DataTable15_5
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+12]
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BEQ      ??Init_Ruler_5
        LDRB     R2,[SP, #+12]
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable15_6
        BL       BSP_Ser_Printf
        B        ??Init_Ruler_5
??Init_Ruler_3:
        LDRB     R2,[SP, #+12]
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable15_7
        BL       BSP_Ser_Printf
??Init_Ruler_5:
        LDR      R0,??DataTable16_1
        LDR      R0,[R0, #+0]
        BL       OSSemPost
        LDRB     R0,[SP, #+12]
??Init_Ruler_1:
        ADD      SP,SP,#+16       ;; stack cleaning
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Setup_Ruler:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+20
        MOVS     R5,R0
        ADD      R0,SP,#+14
        LDR      R1,??DataTable15_8
        LDRH     R2,[R1, #0]
        STRH     R2,[R0, #+0]
        STRB     R5,[SP, #+15]
        LDR      R0,??DataTable16_2
        MOVS     R4,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable11
        LDRB     R0,[R0, +R1]
        CMP      R0,#+0
        BNE      ??Setup_Ruler_0
        MOV      R0,#+193
        B        ??Setup_Ruler_1
??Setup_Ruler_0:
        ADD      R2,SP,#+12
        MOV      R1,#+0
        LDR      R0,??DataTable16_1
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        LDR      R0,??DataTable15_2
        LDRB     R0,[R0, #+0]
        ANDS     R5,R5,#0xFF      ;; Zero extend
        CMP      R0,R5
        BEQ      ??Setup_Ruler_2
        BL       Check_UART_Mixer_Ready
        LDR      R0,??DataTable15_2
        STRB     R5,[R0, #+0]
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       UART1_Mixer
??Setup_Ruler_2:
        MOV      R0,#+0
        STR      R0,[SP, #+8]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+0
        STR      R0,[SP, #+0]
        MOV      R3,#+2
        ADD      R2,SP,#+14
        MOV      R1,#+2
        LDR      R0,??DataTable12_1
        LDR      R0,[R0, #+0]
        BL       pcSendDateToBuf
        STRB     R0,[SP, #+12]
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BNE      ??Setup_Ruler_3
        ADD      R2,SP,#+12
        MOV      R1,#+136
        ORR      R1,R1,#0x1300
        LDR      R0,??DataTable15_3
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        LDRB     R0,[SP, #+12]
        CMP      R0,#+10
        BNE      ??Setup_Ruler_4
        MOVS     R1,R5
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable16_3
        BL       BSP_Ser_Printf
        B        ??Setup_Ruler_5
??Setup_Ruler_4:
        LDRB     R0,[R4, #+12]
        LDR      R1,??DataTable16_4
        STRB     R0,[R1, #+0]
        LDR      R0,??DataTable16_4
        LDRB     R1,[R0, #+0]
        LDR      R0,??DataTable16_5
        BL       BSP_Ser_Printf
        LDR      R0,??DataTable15_5
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+12]
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BEQ      ??Setup_Ruler_5
        LDRB     R2,[SP, #+12]
        MOVS     R1,R5
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable16_6
        BL       BSP_Ser_Printf
        B        ??Setup_Ruler_5
??Setup_Ruler_3:
        LDRB     R2,[SP, #+12]
        MOVS     R1,R5
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable15_7
        BL       BSP_Ser_Printf
??Setup_Ruler_5:
        LDR      R0,??DataTable16_1
        LDR      R0,[R0, #+0]
        BL       OSSemPost
        LDRB     R0,[SP, #+12]
??Setup_Ruler_1:
        ADD      SP,SP,#+20       ;; stack cleaning
        POP      {R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Get_Ruler_Type:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+20
        MOVS     R4,R0
        ADD      R0,SP,#+13
        LDR      R1,??DataTable16_7
        LDRB     R2,[R1, #0]
        STRB     R2,[R0, #+0]
        LDR      R0,??DataTable16_2
        MOVS     R5,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable11
        LDRB     R0,[R0, +R1]
        CMP      R0,#+0
        BNE      ??Get_Ruler_Type_0
        MOV      R0,#+193
        B        ??Get_Ruler_Type_1
??Get_Ruler_Type_0:
        ADD      R2,SP,#+12
        MOV      R1,#+0
        LDR      R0,??DataTable16_1
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        LDR      R0,??DataTable15_2
        LDRB     R0,[R0, #+0]
        ANDS     R4,R4,#0xFF      ;; Zero extend
        CMP      R0,R4
        BEQ      ??Get_Ruler_Type_2
        BL       Check_UART_Mixer_Ready
        LDR      R0,??DataTable15_2
        STRB     R4,[R0, #+0]
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       UART1_Mixer
??Get_Ruler_Type_2:
        MOV      R0,#+0
        STR      R0,[SP, #+8]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+0
        STR      R0,[SP, #+0]
        MOV      R3,#+1
        ADD      R2,SP,#+13
        MOV      R1,#+2
        LDR      R0,??DataTable12_1
        LDR      R0,[R0, #+0]
        BL       pcSendDateToBuf
        STRB     R0,[SP, #+12]
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BNE      ??Get_Ruler_Type_3
        ADD      R2,SP,#+12
        MOV      R1,#+136
        ORR      R1,R1,#0x1300
        LDR      R0,??DataTable15_3
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        LDRB     R0,[SP, #+12]
        CMP      R0,#+10
        BNE      ??Get_Ruler_Type_4
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable17
        BL       BSP_Ser_Printf
        B        ??Get_Ruler_Type_5
??Get_Ruler_Type_4:
        LDRB     R0,[R5, #+12]
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R2,??DataTable11_1
        STRB     R0,[R1, +R2]
        LDR      R0,??DataTable15_5
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+12]
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BEQ      ??Get_Ruler_Type_5
        LDRB     R2,[SP, #+12]
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable17_1
        BL       BSP_Ser_Printf
        B        ??Get_Ruler_Type_5
??Get_Ruler_Type_3:
        LDRB     R2,[SP, #+12]
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable15_7
        BL       BSP_Ser_Printf
??Get_Ruler_Type_5:
        LDR      R0,??DataTable16_1
        LDR      R0,[R0, #+0]
        BL       OSSemPost
        LDRB     R0,[SP, #+12]
??Get_Ruler_Type_1:
        ADD      SP,SP,#+20       ;; stack cleaning
        POP      {R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Read_Ruler_Status:
        PUSH     {R0-R6,LR}
        MOVS     R6,R0
        MOVS     R4,R1
        ADD      R0,SP,#+13
        LDR      R1,??DataTable17_2
        LDRB     R2,[R1, #0]
        STRB     R2,[R0, #+0]
        LDR      R0,??DataTable16_2
        MOVS     R5,R0
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable11
        LDRB     R0,[R0, +R1]
        CMP      R0,#+0
        BNE      ??Read_Ruler_Status_0
        MOV      R0,#+193
        B        ??Read_Ruler_Status_1
??Read_Ruler_Status_0:
        ADD      R2,SP,#+12
        MOV      R1,#+0
        LDR      R0,??DataTable16_1
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        LDR      R0,??DataTable15_2
        LDRB     R0,[R0, #+0]
        ANDS     R6,R6,#0xFF      ;; Zero extend
        CMP      R0,R6
        BEQ      ??Read_Ruler_Status_2
        BL       Check_UART_Mixer_Ready
        LDR      R0,??DataTable15_2
        STRB     R6,[R0, #+0]
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       UART1_Mixer
??Read_Ruler_Status_2:
        MOV      R0,#+0
        STR      R0,[SP, #+8]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+0
        STR      R0,[SP, #+0]
        MOV      R3,#+1
        ADD      R2,SP,#+13
        MOV      R1,#+2
        LDR      R0,??DataTable12_1
        LDR      R0,[R0, #+0]
        BL       pcSendDateToBuf
        STRB     R0,[SP, #+12]
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BNE      ??Read_Ruler_Status_3
        ADD      R2,SP,#+12
        MOV      R1,#+136
        ORR      R1,R1,#0x1300
        LDR      R0,??DataTable15_3
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        LDRB     R0,[SP, #+12]
        CMP      R0,#+10
        BNE      ??Read_Ruler_Status_4
        MOVS     R1,R6
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable19
        BL       BSP_Ser_Printf
        B        ??Read_Ruler_Status_5
??Read_Ruler_Status_4:
        LDRB     R0,[R5, #+13]
        LDRB     R1,[R5, #+12]
        ADDS     R0,R1,R0, LSL #+8
        STRH     R0,[R4, #+0]
        LDR      R0,??DataTable15_5
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+12]
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BEQ      ??Read_Ruler_Status_5
        LDRB     R2,[SP, #+12]
        MOVS     R1,R6
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable20
        BL       BSP_Ser_Printf
        B        ??Read_Ruler_Status_5
??Read_Ruler_Status_3:
        LDRB     R2,[SP, #+12]
        MOVS     R1,R6
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable15_7
        BL       BSP_Ser_Printf
??Read_Ruler_Status_5:
        LDR      R0,??DataTable16_1
        LDR      R0,[R0, #+0]
        BL       OSSemPost
        LDRB     R0,[SP, #+12]
??Read_Ruler_Status_1:
        ADD      SP,SP,#+16       ;; stack cleaning
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     Global_Ruler_State

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_1:
        DC32     Global_Ruler_Type

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_2:
        DC32     Global_Mic_State

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Read_Ruler_Info:
        PUSH     {R0-R4,LR}
        MOVS     R4,R0
        ADD      R0,SP,#+13
        LDR      R1,??DataTable20_1
        LDRB     R2,[R1, #0]
        STRB     R2,[R0, #+0]
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable20_2
        LDRB     R0,[R0, +R1]
        CMP      R0,#+2
        BGE      ??Read_Ruler_Info_0
        MOV      R0,#+193
        B        ??Read_Ruler_Info_1
??Read_Ruler_Info_0:
        ADD      R2,SP,#+12
        MOV      R1,#+0
        LDR      R0,??DataTable16_1
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        LDR      R0,??DataTable15_2
        LDRB     R0,[R0, #+0]
        ANDS     R4,R4,#0xFF      ;; Zero extend
        CMP      R0,R4
        BEQ      ??Read_Ruler_Info_2
        BL       Check_UART_Mixer_Ready
        LDR      R0,??DataTable15_2
        STRB     R4,[R0, #+0]
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       UART1_Mixer
??Read_Ruler_Info_2:
        MOV      R0,#+0
        STR      R0,[SP, #+8]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+0
        STR      R0,[SP, #+0]
        MOV      R3,#+1
        ADD      R2,SP,#+13
        MOV      R1,#+2
        LDR      R0,??DataTable12_1
        LDR      R0,[R0, #+0]
        BL       pcSendDateToBuf
        STRB     R0,[SP, #+12]
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BNE      ??Read_Ruler_Info_3
        ADD      R2,SP,#+12
        MOV      R1,#+136
        ORR      R1,R1,#0x1300
        LDR      R0,??DataTable15_3
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        LDRB     R0,[SP, #+12]
        CMP      R0,#+10
        BNE      ??Read_Ruler_Info_4
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable20_3
        BL       BSP_Ser_Printf
        B        ??Read_Ruler_Info_5
??Read_Ruler_Info_4:
        LDR      R0,??DataTable15_5
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+12]
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BEQ      ??Read_Ruler_Info_5
        LDRB     R2,[SP, #+12]
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable20_4
        BL       BSP_Ser_Printf
        B        ??Read_Ruler_Info_5
??Read_Ruler_Info_3:
        LDRB     R2,[SP, #+12]
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable15_7
        BL       BSP_Ser_Printf
??Read_Ruler_Info_5:
        LDR      R0,??DataTable16_1
        LDR      R0,[R0, #+0]
        BL       OSSemPost
        LDRB     R0,[SP, #+12]
??Read_Ruler_Info_1:
        ADD      SP,SP,#+16       ;; stack cleaning
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     Global_Mic_Mask

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_1:
        DC32     EVENT_MsgQ_Noah2RulerUART

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_2:
        DC32     `?<Constant "Check_UART_Mixer_Read...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_3:
        DC32     pUART_Send_Buf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_4:
        DC32     `?<Constant "Check_UART_Mixer_Read...">_1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_5:
        DC32     `?<Constant {235, 144, 1, 0, 0, 0, 0}>`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_6:
        DC32     `?<Constant "LIN Disabled">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_7:
        DC32     `?<Constant "LIN Enabled">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_8:
        DC32     `?<Constant "Setup_Audio [REC]:[%d...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_9:
        DC32     `?<Constant "Setup_Audio [PLAY]:[%...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_10:
        DC32     `?<Constant "\\r\\nERROR: Check_Active...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_11:
        DC32     `?<Constant "WARN:(Setup_Audio Rec...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_12:
        DC32     `?<Constant "ERROR:(Setup_Audio Pl...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_13:
        DC32     `?<Constant "Lin 2 channels added....">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_14:
        DC32     `?<Constant "\\r\\nSetup_Audio ERROR: ...">`

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Write_Ruler_Info:
        PUSH     {R4-R8,LR}
        SUB      SP,SP,#+24
        MOVS     R4,R0
        LDR      R0,??DataTable21
        MOVS     R8,R0
        MOV      R0,#+7
        STRB     R0,[SP, #+16]
        MOV      R0,#+224
        STRB     R0,[SP, #+17]
        LDR      R0,[R8, #+4]
        STRB     R0,[SP, #+18]
        LDR      R0,[R8, #+4]
        LSRS     R0,R0,#+8
        STRB     R0,[SP, #+19]
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable20_2
        LDRB     R0,[R0, +R1]
        CMP      R0,#+2
        BGE      ??Write_Ruler_Info_0
        MOV      R0,#+193
        B        ??Write_Ruler_Info_1
??Write_Ruler_Info_0:
        ADD      R2,SP,#+12
        MOV      R1,#+0
        LDR      R0,??DataTable16_1
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        LDR      R0,??DataTable15_2
        LDRB     R0,[R0, #+0]
        ANDS     R4,R4,#0xFF      ;; Zero extend
        CMP      R0,R4
        BEQ      ??Write_Ruler_Info_2
        BL       Check_UART_Mixer_Ready
        LDR      R0,??DataTable15_2
        STRB     R4,[R0, #+0]
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       UART1_Mixer
??Write_Ruler_Info_2:
        MOV      R0,#+0
        STR      R0,[SP, #+8]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+0
        STR      R0,[SP, #+0]
        MOV      R3,#+4
        ADD      R2,SP,#+16
        MOV      R1,#+2
        LDR      R0,??DataTable21_2
        LDR      R0,[R0, #+0]
        BL       pcSendDateToBuf
        STRB     R0,[SP, #+12]
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BEQ      ??Write_Ruler_Info_3
        LDRB     R0,[SP, #+12]
        B        ??Write_Ruler_Info_1
??Write_Ruler_Info_3:
        ADDS     R0,R8,#+12
        MOVS     R7,R0
        LDR      R0,[R8, #+4]
        MOVS     R5,R0
??Write_Ruler_Info_4:
        MOVS     R0,R5
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+0
        BEQ      ??Write_Ruler_Info_5
        MOVS     R0,R5
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+255
        BLT      ??Write_Ruler_Info_6
        MOV      R6,#+254
        B        ??Write_Ruler_Info_7
??Write_Ruler_Info_6:
        MOVS     R6,R5
??Write_Ruler_Info_7:
        MOV      R0,#+1
        STR      R0,[SP, #+8]
        ADD      R0,SP,#+16
        STR      R0,[SP, #+4]
        MOV      R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,R6
        ANDS     R3,R3,#0xFF      ;; Zero extend
        MOVS     R2,R7
        MOV      R1,#+2
        LDR      R0,??DataTable21_2
        LDR      R0,[R0, #+0]
        BL       pcSendDateToBuf
        STRB     R0,[SP, #+12]
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BNE      ??Write_Ruler_Info_5
??Write_Ruler_Info_8:
        MOV      R0,#+50
        BL       OSTimeDly
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        SUBS     R5,R5,R0
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADDS     R7,R0,R7
        B        ??Write_Ruler_Info_4
??Write_Ruler_Info_5:
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BNE      ??Write_Ruler_Info_9
        ADD      R2,SP,#+12
        MOV      R1,#+136
        ORR      R1,R1,#0x1300
        LDR      R0,??DataTable15_3
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        LDRB     R0,[SP, #+12]
        CMP      R0,#+10
        BNE      ??Write_Ruler_Info_10
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable21_4
        BL       BSP_Ser_Printf
        B        ??Write_Ruler_Info_11
??Write_Ruler_Info_10:
        LDR      R0,??DataTable15_5
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+12]
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BEQ      ??Write_Ruler_Info_11
        LDRB     R2,[SP, #+12]
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable21_5
        BL       BSP_Ser_Printf
        B        ??Write_Ruler_Info_11
??Write_Ruler_Info_9:
        LDRB     R2,[SP, #+12]
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable15_7
        BL       BSP_Ser_Printf
??Write_Ruler_Info_11:
        LDR      R0,??DataTable16_1
        LDR      R0,[R0, #+0]
        BL       OSSemPost
        LDRB     R0,[SP, #+12]
??Write_Ruler_Info_1:
        ADD      SP,SP,#+24       ;; stack cleaning
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13:
        DC32     `?<Constant "\\r\\nSetup_Audio ERROR: ...">_1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_1:
        DC32     `?<Constant "\\r\\nSetup_Audio Init_CO...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_2:
        DC32     `?<Constant {235, 144, 2, 0}>`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_3:
        DC32     `?<Constant "Start_Audio : type = ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_4:
        DC32     `?<Constant "\\r\\nStart_Audio ERROR: ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_5:
        DC32     `?<Constant "\\r\\nStart_Audio ERROR: ...">_1`

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Read_Mic_Cali_Data:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+20
        MOVS     R4,R0
        MOVS     R5,R1
        ADD      R0,SP,#+14
        LDR      R1,??DataTable22
        LDRH     R2,[R1, #0]
        STRH     R2,[R0, #+0]
        STRB     R5,[SP, #+15]
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable20_2
        LDRB     R0,[R0, +R1]
        CMP      R0,#+2
        BGE      ??Read_Mic_Cali_Data_0
        MOV      R0,#+193
        B        ??Read_Mic_Cali_Data_1
??Read_Mic_Cali_Data_0:
        ADD      R2,SP,#+12
        MOV      R1,#+0
        LDR      R0,??DataTable16_1
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        LDR      R0,??DataTable15_2
        LDRB     R0,[R0, #+0]
        ANDS     R4,R4,#0xFF      ;; Zero extend
        CMP      R0,R4
        BEQ      ??Read_Mic_Cali_Data_2
        BL       Check_UART_Mixer_Ready
        LDR      R0,??DataTable15_2
        STRB     R4,[R0, #+0]
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       UART1_Mixer
??Read_Mic_Cali_Data_2:
        MOV      R0,#+0
        STR      R0,[SP, #+8]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+0
        STR      R0,[SP, #+0]
        MOV      R3,#+2
        ADD      R2,SP,#+14
        MOV      R1,#+2
        LDR      R0,??DataTable21_2
        LDR      R0,[R0, #+0]
        BL       pcSendDateToBuf
        STRB     R0,[SP, #+12]
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BNE      ??Read_Mic_Cali_Data_3
        ADD      R2,SP,#+12
        MOV      R1,#+136
        ORR      R1,R1,#0x1300
        LDR      R0,??DataTable15_3
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        LDRB     R0,[SP, #+12]
        CMP      R0,#+10
        BNE      ??Read_Mic_Cali_Data_4
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable22_1
        BL       BSP_Ser_Printf
        B        ??Read_Mic_Cali_Data_5
??Read_Mic_Cali_Data_4:
        LDR      R0,??DataTable15_5
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+12]
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BEQ      ??Read_Mic_Cali_Data_5
        LDRB     R2,[SP, #+12]
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable22_2
        BL       BSP_Ser_Printf
        B        ??Read_Mic_Cali_Data_5
??Read_Mic_Cali_Data_3:
        LDRB     R2,[SP, #+12]
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable15_7
        BL       BSP_Ser_Printf
??Read_Mic_Cali_Data_5:
        LDR      R0,??DataTable16_1
        LDR      R0,[R0, #+0]
        BL       OSSemPost
        LDRB     R0,[SP, #+12]
??Read_Mic_Cali_Data_1:
        ADD      SP,SP,#+20       ;; stack cleaning
        POP      {R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14:
        DC32     `?<Constant "\\r\\nSetup_Audio ReInit_...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_1:
        DC32     `?<Constant {235, 144, 3}>`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_2:
        DC32     `?<Constant "Stop_Audio\\r\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_3:
        DC32     `?<Constant "\\r\\nStop_Audio ERROR: t...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_4:
        DC32     `?<Constant "\\r\\nStop_Audio ERROR: %...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_5:
        DC32     `?<Constant "\\r\\nStop_Audio Power Do...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_6:
        DC32     `?<Constant {235, 144, 16}>`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_7:
        DC32     `?<Constant "Reset_Audio\\r\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_8:
        DC32     `?<Constant "\\r\\nReset_Audio ERROR: ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_9:
        DC32     `?<Constant {235, 144, 11}>`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_10:
        DC32     Audio_Version

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Write_Mic_Cali_Data:
        PUSH     {R4-R9,LR}
        SUB      SP,SP,#+28
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,??DataTable21
        MOVS     R9,R0
        MOV      R0,#+9
        STRB     R0,[SP, #+16]
        STRB     R5,[SP, #+17]
        MOV      R0,#+224
        STRB     R0,[SP, #+18]
        LDR      R0,[R9, #+4]
        STRB     R0,[SP, #+19]
        LDR      R0,[R9, #+4]
        LSRS     R0,R0,#+8
        STRB     R0,[SP, #+20]
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable20_2
        LDRB     R0,[R0, +R1]
        CMP      R0,#+2
        BGE      ??Write_Mic_Cali_Data_0
        MOV      R0,#+193
        B        ??Write_Mic_Cali_Data_1
??Write_Mic_Cali_Data_0:
        ADD      R2,SP,#+12
        MOV      R1,#+0
        LDR      R0,??DataTable16_1
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        LDR      R0,??DataTable15_2
        LDRB     R0,[R0, #+0]
        ANDS     R4,R4,#0xFF      ;; Zero extend
        CMP      R0,R4
        BEQ      ??Write_Mic_Cali_Data_2
        BL       Check_UART_Mixer_Ready
        LDR      R0,??DataTable15_2
        STRB     R4,[R0, #+0]
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       UART1_Mixer
??Write_Mic_Cali_Data_2:
        MOV      R0,#+0
        STR      R0,[SP, #+8]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+0
        STR      R0,[SP, #+0]
        MOV      R3,#+5
        ADD      R2,SP,#+16
        MOV      R1,#+2
        LDR      R0,??DataTable21_2
        LDR      R0,[R0, #+0]
        BL       pcSendDateToBuf
        STRB     R0,[SP, #+12]
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BEQ      ??Write_Mic_Cali_Data_3
        LDRB     R0,[SP, #+12]
        B        ??Write_Mic_Cali_Data_1
??Write_Mic_Cali_Data_3:
        ADDS     R0,R9,#+12
        MOVS     R8,R0
        LDR      R0,[R9, #+4]
        MOVS     R6,R0
??Write_Mic_Cali_Data_4:
        MOVS     R0,R6
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+0
        BEQ      ??Write_Mic_Cali_Data_5
        MOVS     R0,R6
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+254
        BLT      ??Write_Mic_Cali_Data_6
        MOV      R7,#+253
        B        ??Write_Mic_Cali_Data_7
??Write_Mic_Cali_Data_6:
        MOVS     R7,R6
??Write_Mic_Cali_Data_7:
        MOV      R0,#+2
        STR      R0,[SP, #+8]
        ADD      R0,SP,#+16
        STR      R0,[SP, #+4]
        MOV      R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,R7
        ANDS     R3,R3,#0xFF      ;; Zero extend
        MOVS     R2,R8
        MOV      R1,#+2
        LDR      R0,??DataTable21_2
        LDR      R0,[R0, #+0]
        BL       pcSendDateToBuf
        STRB     R0,[SP, #+12]
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BNE      ??Write_Mic_Cali_Data_5
??Write_Mic_Cali_Data_8:
        MOV      R0,#+50
        BL       OSTimeDly
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        SUBS     R6,R6,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADDS     R8,R0,R8
        B        ??Write_Mic_Cali_Data_4
??Write_Mic_Cali_Data_5:
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BNE      ??Write_Mic_Cali_Data_9
        ADD      R2,SP,#+12
        MOV      R1,#+136
        ORR      R1,R1,#0x1300
        LDR      R0,??DataTable15_3
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        LDRB     R0,[SP, #+12]
        CMP      R0,#+10
        BNE      ??Write_Mic_Cali_Data_10
        MOVS     R2,R5
        ANDS     R2,R2,#0xFF      ;; Zero extend
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable24_1
        BL       BSP_Ser_Printf
        B        ??Write_Mic_Cali_Data_11
??Write_Mic_Cali_Data_10:
        LDR      R0,??DataTable15_5
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+12]
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BEQ      ??Write_Mic_Cali_Data_11
        LDRB     R2,[SP, #+12]
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable24_2
        BL       BSP_Ser_Printf
        B        ??Write_Mic_Cali_Data_11
??Write_Mic_Cali_Data_9:
        LDRB     R2,[SP, #+12]
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable15_7
        BL       BSP_Ser_Printf
??Write_Mic_Cali_Data_11:
        LDR      R0,??DataTable16_1
        LDR      R0,[R0, #+0]
        BL       OSSemPost
        LDRB     R0,[SP, #+12]
??Write_Mic_Cali_Data_1:
        ADD      SP,SP,#+28       ;; stack cleaning
        POP      {R4-R9,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15:
        DC32     `?<Constant "\\r\\nReset_Audio ERROR: ...">_1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_1:
        DC32     `?<Constant "\\r\\nGet_Audio_Version E...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_2:
        DC32     Global_Ruler_Index

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_3:
        DC32     Done_Sem_RulerUART

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_4:
        DC32     `?<Constant "Init ruler[%d] timeou...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_5:
        DC32     Ruler_CMD_Result

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_6:
        DC32     `?<Constant "Init_Ruler[%d] err = ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_7:
        DC32     `?<Constant "Ruler[%d] pcSendDateT...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_8:
        DC32     `?<Constant {4, 0}>`

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Update_Mic_Mask:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+24
        MOVS     R4,R0
        MOVS     R5,R1
        ADD      R0,SP,#+16
        LDR      R1,??DataTable24_3
        LDM      R1!,{R2,R3}
        STM      R0!,{R2,R3}
        SUBS     R1,R1,#+8
        SUBS     R0,R0,#+8
        STRB     R5,[SP, #+17]
        LSRS     R0,R5,#+8
        STRB     R0,[SP, #+18]
        LSRS     R0,R5,#+16
        STRB     R0,[SP, #+19]
        LSRS     R0,R5,#+24
        STRB     R0,[SP, #+20]
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable20_2
        LDRB     R0,[R0, +R1]
        CMP      R0,#+2
        BGE      ??Update_Mic_Mask_0
        MOV      R0,#+193
        B        ??Update_Mic_Mask_1
??Update_Mic_Mask_0:
        ADD      R2,SP,#+12
        MOV      R1,#+0
        LDR      R0,??DataTable16_1
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        LDR      R0,??DataTable25
        LDRB     R0,[R0, #+0]
        ANDS     R4,R4,#0xFF      ;; Zero extend
        CMP      R0,R4
        BEQ      ??Update_Mic_Mask_2
        BL       Check_UART_Mixer_Ready
        LDR      R0,??DataTable25
        STRB     R4,[R0, #+0]
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       UART1_Mixer
??Update_Mic_Mask_2:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable25_1
        LDRB     R0,[R0, +R1]
        CMP      R0,#+130
        BNE      ??Update_Mic_Mask_3
        MOV      R0,#+5
        MOVS     R6,R0
        B        ??Update_Mic_Mask_4
??Update_Mic_Mask_3:
        MOV      R0,#+3
        MOVS     R6,R0
??Update_Mic_Mask_4:
        MOV      R0,#+0
        STR      R0,[SP, #+8]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,R6
        ANDS     R3,R3,#0xFF      ;; Zero extend
        ADD      R2,SP,#+16
        MOV      R1,#+2
        LDR      R0,??DataTable21_2
        LDR      R0,[R0, #+0]
        BL       pcSendDateToBuf
        STRB     R0,[SP, #+12]
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BNE      ??Update_Mic_Mask_5
        ADD      R2,SP,#+12
        MOV      R1,#+136
        ORR      R1,R1,#0x1300
        LDR      R0,??DataTable25_2
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        LDRB     R0,[SP, #+12]
        CMP      R0,#+10
        BNE      ??Update_Mic_Mask_6
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable25_3
        BL       BSP_Ser_Printf
        B        ??Update_Mic_Mask_6
??Update_Mic_Mask_5:
        LDRB     R2,[SP, #+12]
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable25_4
        BL       BSP_Ser_Printf
??Update_Mic_Mask_6:
        LDR      R0,??DataTable16_1
        LDR      R0,[R0, #+0]
        BL       OSSemPost
        LDRB     R0,[SP, #+12]
??Update_Mic_Mask_1:
        ADD      SP,SP,#+24       ;; stack cleaning
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16:
        DC32     `?<Constant "\\r\\nUSB Audio FW Versio...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_1:
        DC32     UART_MUX_Sem_lock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_2:
        DC32     Emb_Buf_Data

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_3:
        DC32     `?<Constant "Setup_Ruler[%d] timeo...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_4:
        DC32     Ruler_Setup_Sync_Data

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_5:
        DC32     `?<Constant "Get Ruler_Setup_Sync_...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_6:
        DC32     `?<Constant "Setup_Ruler[%d] err =...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_7:
        DC32     `?<Constant {12}>`

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Ruler_Active_Control:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+20
        MOVS     R4,R0
        ADD      R0,SP,#+14
        LDR      R1,??DataTable26
        LDRH     R2,[R1, #0]
        STRH     R2,[R0, #+0]
        STRB     R4,[SP, #+15]
        MOV      R0,#+0
        STRB     R0,[SP, #+12]
        MOV      R0,#+0
        MOVS     R5,R0
??Ruler_Active_Control_0:
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+4
        BGE      ??Ruler_Active_Control_1
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable20_2
        LDRB     R0,[R0, +R1]
        CMP      R0,#+2
        BLT      ??Ruler_Active_Control_2
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable26_1
        LDR      R0,[R0, +R1]
        CMP      R0,#+0
        BNE      ??Ruler_Active_Control_3
??Ruler_Active_Control_2:
        B        ??Ruler_Active_Control_4
??Ruler_Active_Control_3:
        MOVS     R2,R4
        ANDS     R2,R2,#0xFF      ;; Zero extend
        MOVS     R1,R5
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable26_2
        BL       BSP_Ser_Printf
        ADD      R2,SP,#+12
        MOV      R1,#+0
        LDR      R0,??DataTable27
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        LDR      R0,??DataTable25
        LDRB     R0,[R0, #+0]
        ANDS     R5,R5,#0xFF      ;; Zero extend
        CMP      R0,R5
        BEQ      ??Ruler_Active_Control_5
        BL       Check_UART_Mixer_Ready
        LDR      R0,??DataTable25
        STRB     R5,[R0, #+0]
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       UART1_Mixer
??Ruler_Active_Control_5:
        MOV      R0,#+0
        STR      R0,[SP, #+8]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+0
        STR      R0,[SP, #+0]
        MOV      R3,#+2
        ADD      R2,SP,#+14
        MOV      R1,#+2
        LDR      R0,??DataTable21_2
        LDR      R0,[R0, #+0]
        BL       pcSendDateToBuf
        STRB     R0,[SP, #+12]
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BNE      ??Ruler_Active_Control_6
        ADD      R2,SP,#+12
        MOV      R1,#+136
        ORR      R1,R1,#0x1300
        LDR      R0,??DataTable25_2
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        LDRB     R0,[SP, #+12]
        CMP      R0,#+10
        BNE      ??Ruler_Active_Control_7
        MOVS     R1,R5
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable27_1
        BL       BSP_Ser_Printf
        B        ??Ruler_Active_Control_8
??Ruler_Active_Control_7:
        LDR      R0,??DataTable27_2
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+12]
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BEQ      ??Ruler_Active_Control_8
        LDRB     R2,[SP, #+12]
        MOVS     R1,R5
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable27_3
        BL       BSP_Ser_Printf
        B        ??Ruler_Active_Control_8
??Ruler_Active_Control_6:
        LDRB     R2,[SP, #+12]
        MOVS     R1,R5
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable25_4
        BL       BSP_Ser_Printf
??Ruler_Active_Control_8:
        LDR      R0,??DataTable27
        LDR      R0,[R0, #+0]
        BL       OSSemPost
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BNE      ??Ruler_Active_Control_1
??Ruler_Active_Control_4:
        ADDS     R5,R5,#+1
        B        ??Ruler_Active_Control_0
??Ruler_Active_Control_1:
        LDRB     R0,[SP, #+12]
        ADD      SP,SP,#+20       ;; stack cleaning
        POP      {R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17:
        DC32     `?<Constant "Read_Ruler_Type[%d] t...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_1:
        DC32     `?<Constant "Get_Ruler_Type[%d] er...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_2:
        DC32     `?<Constant {5}>`

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Get_Ruler_Version:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+20
        MOVS     R4,R0
        ADD      R0,SP,#+13
        LDR      R1,??DataTable27_4
        LDRB     R2,[R1, #0]
        STRB     R2,[R0, #+0]
        LDR      R0,??DataTable27_5
        MOVS     R5,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable20_2
        LDRB     R0,[R0, +R1]
        CMP      R0,#+0
        BNE      ??Get_Ruler_Version_0
        MOV      R0,#+193
        B        ??Get_Ruler_Version_1
??Get_Ruler_Version_0:
        ADD      R2,SP,#+12
        MOV      R1,#+0
        LDR      R0,??DataTable27
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        LDR      R0,??DataTable25
        LDRB     R0,[R0, #+0]
        ANDS     R4,R4,#0xFF      ;; Zero extend
        CMP      R0,R4
        BEQ      ??Get_Ruler_Version_2
        BL       Check_UART_Mixer_Ready
        LDR      R0,??DataTable25
        STRB     R4,[R0, #+0]
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       UART1_Mixer
??Get_Ruler_Version_2:
        MOV      R0,#+0
        STR      R0,[SP, #+8]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+0
        STR      R0,[SP, #+0]
        MOV      R3,#+1
        ADD      R2,SP,#+13
        MOV      R1,#+2
        LDR      R0,??DataTable21_2
        LDR      R0,[R0, #+0]
        BL       pcSendDateToBuf
        STRB     R0,[SP, #+12]
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BNE      ??Get_Ruler_Version_3
        ADD      R2,SP,#+12
        MOV      R1,#+136
        ORR      R1,R1,#0x1300
        LDR      R0,??DataTable25_2
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        LDRB     R0,[SP, #+12]
        CMP      R0,#+10
        BNE      ??Get_Ruler_Version_4
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable29
        BL       BSP_Ser_Printf
        B        ??Get_Ruler_Version_5
??Get_Ruler_Version_4:
        LDR      R0,??DataTable27_2
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+12]
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BEQ      ??Get_Ruler_Version_5
        LDRB     R2,[SP, #+12]
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable29_1
        BL       BSP_Ser_Printf
??Get_Ruler_Version_5:
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BNE      ??Get_Ruler_Version_6
        ADDS     R2,R5,#+12
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable29_2
        BL       BSP_Ser_Printf
        B        ??Get_Ruler_Version_6
??Get_Ruler_Version_3:
        LDRB     R2,[SP, #+12]
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable25_4
        BL       BSP_Ser_Printf
??Get_Ruler_Version_6:
        LDR      R0,??DataTable27
        LDR      R0,[R0, #+0]
        BL       OSSemPost
        LDRB     R0,[SP, #+12]
??Get_Ruler_Version_1:
        ADD      SP,SP,#+20       ;; stack cleaning
        POP      {R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
FLASHD_Write_Safe:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        CMP      R4,#+1179648
        BCS      ??FLASHD_Write_Safe_0
        LDR      R0,??DataTable30
        BL       BSP_Ser_Printf
        MOV      R0,#+215
        B        ??FLASHD_Write_Safe_1
??FLASHD_Write_Safe_0:
        MOVS     R2,R6
        MOVS     R1,R5
        MOVS     R0,R4
        BL       FLASHD_Write
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
??FLASHD_Write_Safe_1:
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19:
        DC32     `?<Constant "Read_Ruler_Status[%d]...">`

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Read_Flash_State:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R0,R4
        MOV      R1,#+1179648
        MOV      R2,#+48
        BL       __aeabi_memcpy4
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Write_Flash_State:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        LDR      R0,[R4, #+8]
        ADDS     R0,R0,#+1
        STR      R0,[R4, #+8]
        MOV      R2,#+256
        MOVS     R1,R4
        MOV      R0,#+1179648
        BL       FLASHD_Write_Safe
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Write_Flash_State_0
        LDR      R0,??DataTable30_1
        BL       BSP_Ser_Printf
??Write_Flash_State_0:
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R1,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20:
        DC32     `?<Constant "Read_Ruler_Status[%d]...">_1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_1:
        DC32     `?<Constant {6}>`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_2:
        DC32     Global_Ruler_State

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_3:
        DC32     `?<Constant "Read_Ruler_Info[%d] t...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_4:
        DC32     `?<Constant "Read_Ruler_Info[%d] e...">`

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Save_Ruler_FW:
        PUSH     {R4-R8,LR}
        SUB      SP,SP,#+48
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOV      R0,#+0
        MOVS     R8,R0
        MOVS     R0,SP
        BL       Read_Flash_State
        CMP      R4,#+1
        BEQ      ??Save_Ruler_FW_0
        BCC      ??Save_Ruler_FW_1
        CMP      R4,#+3
        BEQ      ??Save_Ruler_FW_2
        BCC      ??Save_Ruler_FW_3
        B        ??Save_Ruler_FW_1
??Save_Ruler_FW_0:
        LDR      R0,??DataTable30_2
        BL       BSP_Ser_Printf
        MOV      R0,#+1179648
        ORR      R0,R0,#0x100
        LDR      R1,??DataTable30_3
        STR      R0,[R1, #+0]
        MOV      R0,#+170
        STR      R0,[SP, #+0]
        MOV      R0,#+0
        STR      R0,[SP, #+12]
        B        ??Save_Ruler_FW_4
??Save_Ruler_FW_3:
        ADR      R0,??DataTable21_1  ;; 0x3E, 0x20, 0x00, 0x00
        BL       BSP_Ser_Printf
        LDR      R0,[SP, #+0]
        CMP      R0,#+170
        BEQ      ??Save_Ruler_FW_5
        LDR      R0,??DataTable30_4
        BL       BSP_Ser_Printf
        MOV      R0,#+212
        MOVS     R8,R0
??Save_Ruler_FW_5:
        B        ??Save_Ruler_FW_4
??Save_Ruler_FW_2:
        ADR      R0,??DataTable21_3  ;; ">\r\n"
        BL       BSP_Ser_Printf
        LDR      R0,[SP, #+0]
        CMP      R0,#+170
        BEQ      ??Save_Ruler_FW_6
        LDR      R0,??DataTable30_4
        BL       BSP_Ser_Printf
        MOV      R0,#+213
        MOVS     R8,R0
        B        ??Save_Ruler_FW_4
??Save_Ruler_FW_6:
        MOV      R0,#+85
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+4]
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+4]
        B        ??Save_Ruler_FW_4
??Save_Ruler_FW_1:
        LDR      R0,??DataTable30_5
        BL       BSP_Ser_Printf
        MOV      R0,#+214
        MOVS     R8,R0
??Save_Ruler_FW_4:
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Save_Ruler_FW_7
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Save_Ruler_FW_8
??Save_Ruler_FW_7:
        MOV      R0,#+1
        BL       Buzzer_OnOff
        MOV      R0,#+1
        BL       LED_Toggle
        MOVS     R2,R7
        MOVS     R1,R5
        LDR      R0,??DataTable30_3
        LDR      R0,[R0, #+0]
        BL       FLASHD_Write_Safe
        MOVS     R8,R0
        MOV      R0,#+0
        BL       Buzzer_OnOff
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Save_Ruler_FW_9
        LDR      R0,??DataTable30_6
        BL       BSP_Ser_Printf
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Save_Ruler_FW_8
??Save_Ruler_FW_9:
        LDR      R0,??DataTable30_3
        LDR      R0,[R0, #+0]
        ADDS     R0,R7,R0
        LDR      R1,??DataTable30_3
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable30_3
        LDR      R0,[R0, #+0]
        MVN      R1,#+255
        BIC      R1,R1,#0x120000
        ADDS     R0,R1,R0
        STR      R0,[SP, #+12]
        MOVS     R1,R6
        ADD      R0,SP,#+16
        BL       strcpy
        CMP      R4,#+2
        BEQ      ??Save_Ruler_FW_10
        MOVS     R0,SP
        BL       Write_Flash_State
        MOVS     R8,R0
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??Save_Ruler_FW_10
        CMP      R4,#+3
        BNE      ??Save_Ruler_FW_10
        LDR      R1,[SP, #+12]
        LDR      R0,??DataTable30_7
        BL       BSP_Ser_Printf
??Save_Ruler_FW_10:
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
??Save_Ruler_FW_8:
        ADD      SP,SP,#+48       ;; stack cleaning
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21:
        DC32     Emb_Buf_Cmd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_1:
        DC8      0x3E, 0x20, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_2:
        DC32     EVENT_MsgQ_Noah2RulerUART

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_3:
        DC8      ">\r\n"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_4:
        DC32     `?<Constant "Write_Ruler_Info[%d] ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_5:
        DC32     `?<Constant "Write_Ruler_Info[%d] ...">_1`

        SECTION `.data`:DATA:REORDER:NOROOT(2)
??flash_addr:
        DATA
        DC32 1179904

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Update_Ruler_FW:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+20
        MOVS     R4,R0
        MOV      R0,#+0
        STRB     R0,[SP, #+0]
        MOV      R0,#+1179648
        ORR      R0,R0,#0x100
        MOVS     R5,R0
        MOV      R0,#+1179648
        MOVS     R6,R0
        LDR      R0,[R6, #+0]
        CMP      R0,#+85
        BEQ      ??Update_Ruler_FW_0
        LDR      R0,??DataTable30_8
        BL       BSP_Ser_Printf
        MOV      R0,#+211
        B        ??Update_Ruler_FW_1
??Update_Ruler_FW_0:
        ADDS     R2,R6,#+16
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable30_9
        BL       BSP_Ser_Printf
        MOV      R2,#+9
        MOV      R1,#+100
        ADD      R0,SP,#+4
        BL       memset
        MOV      R0,#+0
        BL       Ruler_Power_Switch
        MOV      R0,#+200
        BL       OSTimeDly
        MOV      R0,#+0
        MOVS     R7,R0
??Update_Ruler_FW_2:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+4
        BGE      ??Update_Ruler_FW_3
        MOV      R0,#+0
        MOVS     R1,R7
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R2,??DataTable30_10
        STRB     R0,[R1, +R2]
        ADDS     R7,R7,#+1
        B        ??Update_Ruler_FW_2
??Update_Ruler_FW_3:
        MOV      R2,#+65536
        ORR      R2,R2,#0xC200
        MOV      R1,#+0
        MOV      R0,#+1
        BL       UART_Init
        MOV      R0,#+0
        BL       Port_Detect_Enable
        MOVS     R2,SP
        MOV      R1,#+0
        LDR      R0,??DataTable27
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        LDR      R0,??DataTable25
        LDRB     R0,[R0, #+0]
        ANDS     R4,R4,#0xFF      ;; Zero extend
        CMP      R0,R4
        BEQ      ??Update_Ruler_FW_4
        BL       Check_UART_Mixer_Ready
        LDR      R0,??DataTable25
        STRB     R4,[R0, #+0]
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       UART1_Mixer
??Update_Ruler_FW_4:
        MOV      R0,#+1
        BL       Ruler_Power_Switch
        MOV      R0,#+200
        BL       OSTimeDly
        MOV      R2,#+9
        ADD      R1,SP,#+4
        MOV      R0,#+1
        BL       USART_SendBuf
        STRB     R0,[SP, #+0]
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BNE      ??Update_Ruler_FW_5
        MOV      R0,#+800
        BL       OSTimeDly
        MOV      R3,#+136
        ORR      R3,R3,#0x1300
        MOV      R2,#+3
        ADD      R1,SP,#+4
        MOV      R0,#+1
        BL       USART_Read_Timeout
        STRB     R0,[SP, #+0]
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BNE      ??Update_Ruler_FW_5
        LDRB     R0,[SP, #+4]
        CMP      R0,#+99
        BEQ      ??Update_Ruler_FW_6
        LDRB     R0,[SP, #+4]
        CMP      R0,#+67
        BNE      ??Update_Ruler_FW_5
??Update_Ruler_FW_6:
        MOV      R0,#+4
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R2,??DataTable30_10
        STRB     R0,[R1, +R2]
        LDR      R1,[R6, #+12]
        MOVS     R0,R5
        BL       Xmodem_Transmit
        STRB     R0,[SP, #+0]
        MOV      R0,#+0
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R2,??DataTable30_10
        STRB     R0,[R1, +R2]
??Update_Ruler_FW_5:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BEQ      ??Update_Ruler_FW_7
        LDRB     R1,[SP, #+0]
        LDR      R0,??DataTable30_11
        BL       BSP_Ser_Printf
        B        ??Update_Ruler_FW_8
??Update_Ruler_FW_7:
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable30_12
        BL       BSP_Ser_Printf
??Update_Ruler_FW_8:
        MOV      R0,#+1
        BL       Port_Detect_Enable
        MOV      R2,#+65536
        ORR      R2,R2,#0xC200
        LDR      R1,??DataTable30_13
        MOV      R0,#+1
        BL       UART_Init
        MOV      R0,#+0
        BL       Ruler_Power_Switch
        MOV      R0,#+500
        BL       OSTimeDly
        MOV      R0,#+1
        BL       Ruler_Power_Switch
        LDR      R0,??DataTable27
        LDR      R0,[R0, #+0]
        BL       OSSemPost
        LDRB     R0,[SP, #+0]
??Update_Ruler_FW_1:
        ADD      SP,SP,#+20       ;; stack cleaning
        POP      {R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22:
        DC32     `?<Constant {8, 0}>`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_1:
        DC32     `?<Constant "Read_Mic_Cali_Data[%d...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_2:
        DC32     `?<Constant "Read_Mic_Cali_Data[%d...">_1`

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Toggle_Mic:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOV      R9,#+0
        MOV      R0,#+0
        MOVS     R8,R0
        LDRB     R0,[R4, #+0]
        LDR      R1,??DataTable30_10
        LDRB     R0,[R0, +R1]
        CMP      R0,#+2
        BGE      ??Toggle_Mic_0
        MOV      R0,#+193
        B        ??Toggle_Mic_1
??Toggle_Mic_0:
        LDRB     R3,[R4, #+2]
        LDRB     R2,[R4, #+1]
        LDRB     R1,[R4, #+0]
        LDR      R0,??DataTable30_14
        BL       BSP_Ser_Printf
        BL       OS_CPU_SR_Save
        MOVS     R9,R0
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable26_1
        LDR      R0,[R0, +R1]
        MOVS     R7,R0
        MOVS     R0,R9
        BL       OS_CPU_SR_Restore
        MOV      R0,#+1
        LDRSB    R1,[R4, #+1]
        MVNS     R0,R0, LSL R1
        ANDS     R7,R0,R7
        LDRB     R0,[R4, #+2]
        ANDS     R0,R0,#0x1
        LDRSB    R1,[R4, #+1]
        ORRS     R7,R7,R0, LSL R1
        MOVS     R1,R7
        LDRB     R0,[R4, #+0]
        BL       Update_Mic_Mask
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??Toggle_Mic_2
        ADR      R1,??DataTable24  ;; 0x4F, 0x4B, 0x00, 0x00
        B        ??Toggle_Mic_3
??Toggle_Mic_2:
        LDR      R1,??DataTable30_15
??Toggle_Mic_3:
        MOVS     R2,R5
        ANDS     R2,R2,#0xFF      ;; Zero extend
        LDR      R0,??DataTable30_16
        BL       BSP_Ser_Printf
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Toggle_Mic_4
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Toggle_Mic_1
??Toggle_Mic_4:
        BL       OS_CPU_SR_Save
        MOVS     R9,R0
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable26_1
        STR      R7,[R0, +R1]
        CMP      R7,#+0
        BNE      ??Toggle_Mic_5
        MOV      R0,#+2
        LDRB     R1,[R4, #+0]
        LDR      R2,??DataTable30_10
        STRB     R0,[R1, +R2]
        B        ??Toggle_Mic_6
??Toggle_Mic_5:
        MOV      R0,#+3
        LDRB     R1,[R4, #+0]
        LDR      R2,??DataTable30_10
        STRB     R0,[R1, +R2]
??Toggle_Mic_6:
        MOVS     R0,R9
        BL       OS_CPU_SR_Restore
        LDRB     R0,[R4, #+0]
        LDR      R1,??DataTable25_1
        LDRB     R0,[R0, +R1]
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSRS     R0,R0,#+7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??Toggle_Mic_7
        MOV      R0,#+0
        MOVS     R6,R0
??Toggle_Mic_8:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+4
        BGE      ??Toggle_Mic_9
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable26_1
        LDR      R0,[R0, +R1]
        ANDS     R0,R0,#0xFF
        LSLS     R1,R6,#+3
        ADDS     R8,R8,R0, LSL R1
        ADDS     R6,R6,#+1
        B        ??Toggle_Mic_8
??Toggle_Mic_7:
        MOV      R0,#+63
        LDRB     R1,[R4, #+0]
        LSLS     R1,R1,#+3
        LSLS     R0,R0,R1
        MOVS     R8,R0
??Toggle_Mic_9:
        MOVS     R0,R8
        BL       Init_FPGA
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
??Toggle_Mic_1:
        POP      {R1,R4-R9,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Set_Volume:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        LDR      R0,??DataTable30_17
        BL       BSP_Ser_Printf
        LDR      R0,[R4, #+0]
        CMP      R0,#+1000
        BNE      ??Set_Volume_0
        LDR      R0,??DataTable30_18
        BL       BSP_Ser_Printf
        B        ??Set_Volume_1
??Set_Volume_0:
        LDR      R1,[R4, #+0]
        LDR      R0,??DataTable30_19
        BL       BSP_Ser_Printf
??Set_Volume_1:
        LDR      R0,[R4, #+4]
        CMP      R0,#+1000
        BNE      ??Set_Volume_2
        LDR      R0,??DataTable30_20
        BL       BSP_Ser_Printf
        B        ??Set_Volume_3
??Set_Volume_2:
        LDR      R0,[R4, #+4]
        MOV      R1,#+10
        BL       __aeabi_uidivmod
        MOVS     R2,R1
        MOVS     R6,R2
        LDR      R0,[R4, #+4]
        MOV      R1,#+10
        BL       __aeabi_uidiv
        MOVS     R1,R0
        MOVS     R2,R6
        LDR      R0,??DataTable30_21
        BL       BSP_Ser_Printf
??Set_Volume_3:
        LDR      R0,[R4, #+8]
        CMP      R0,#+1000
        BNE      ??Set_Volume_4
        LDR      R0,??DataTable30_22
        BL       BSP_Ser_Printf
        B        ??Set_Volume_5
??Set_Volume_4:
        LDR      R0,[R4, #+8]
        MOV      R1,#+10
        BL       __aeabi_uidivmod
        MOVS     R2,R1
        MOVS     R6,R2
        LDR      R0,[R4, #+8]
        MOV      R1,#+10
        BL       __aeabi_uidiv
        MOVS     R1,R0
        MOVS     R2,R6
        LDR      R0,??DataTable30_23
        BL       BSP_Ser_Printf
??Set_Volume_5:
        LDR      R0,[R4, #+0]
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        BL       DMIC_PGA_Control
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Set_Volume_6
        MOVS     R1,R5
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable30_24
        BL       BSP_Ser_Printf
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Set_Volume_7
??Set_Volume_6:
        LDR      R1,[R4, #+4]
        LDR      R0,[R4, #+8]
        BL       CODEC_Set_Volume
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Set_Volume_8
        MOVS     R1,R5
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable30_24
        BL       BSP_Ser_Printf
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Set_Volume_7
??Set_Volume_8:
        LDR      R0,??DataTable30_25
        BL       BSP_Ser_Printf
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
??Set_Volume_7:
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24:
        DC8      0x4F, 0x4B, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_1:
        DC32     `?<Constant "Write_Mic_Cali_Data[%...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_2:
        DC32     `?<Constant "Write_Mic_Cali_Data[%...">_1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_3:
        DC32     `?<Constant {10, 0, 0, 0, 0}>`

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Reset_Mic_Mask:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOV      R0,#+0
        MOVS     R7,R0
        MOVS     R6,R4
        MOV      R0,#+0
        MOVS     R5,R0
        MOV      R0,#+0
        MOVS     R8,R0
??Reset_Mic_Mask_0:
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+4
        BGE      ??Reset_Mic_Mask_1
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDRB     R0,[R0, +R6]
        CMP      R0,#+0
        BEQ      ??Reset_Mic_Mask_2
??Reset_Mic_Mask_3:
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable30_10
        LDRB     R0,[R0, +R1]
        CMP      R0,#+2
        BLT      ??Reset_Mic_Mask_2
??Reset_Mic_Mask_4:
        MOV      R0,#+2
        MOVS     R1,R8
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R2,??DataTable30_10
        STRB     R0,[R1, +R2]
        MOV      R1,#+0
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Update_Mic_Mask
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Reset_Mic_Mask_5
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Reset_Mic_Mask_6
??Reset_Mic_Mask_5:
        MOV      R0,#+0
        MOVS     R1,R8
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable26_1
        STR      R0,[R1, +R2]
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable25_1
        LDRB     R0,[R0, +R1]
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSRS     R0,R0,#+7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??Reset_Mic_Mask_7
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable26_1
        LDR      R0,[R0, +R1]
        ANDS     R0,R0,#0xFF
        LSLS     R1,R8,#+3
        ADDS     R7,R7,R0, LSL R1
        B        ??Reset_Mic_Mask_2
??Reset_Mic_Mask_7:
        MOV      R0,#+63
        LSLS     R1,R8,#+3
        ADDS     R7,R7,R0, LSL R1
??Reset_Mic_Mask_2:
        ADDS     R8,R8,#+1
        B        ??Reset_Mic_Mask_0
??Reset_Mic_Mask_1:
        MOVS     R0,R7
        BL       Init_FPGA
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
??Reset_Mic_Mask_6:
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25:
        DC32     Global_Ruler_Index

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_1:
        DC32     Global_Ruler_Type

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_2:
        DC32     Done_Sem_RulerUART

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_3:
        DC32     `?<Constant "Update_Mic_Mask for R...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_4:
        DC32     `?<Constant "Ruler[%d] pcSendDateT...">`

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Ruler_Port_LED_Service:
        PUSH     {R3-R7,LR}
        MOV      R0,#+63
        MOVS     R5,R0
        MOV      R0,#+0
        MOVS     R6,R0
        MOV      R0,#+0
        MOVS     R7,R0
??Ruler_Port_LED_Service_1:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+4
        BGE      ??Ruler_Port_LED_Service_2
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable30_10
        LDRB     R0,[R0, +R1]
        MOVS     R4,R0
        LDR      R0,??DataTable30_26
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??Ruler_Port_LED_Service_3
        MOV      R0,#+4
        MOVS     R4,R0
        MOV      R0,#+1
        MOVS     R6,R0
??Ruler_Port_LED_Service_3:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+4
        BHI      ??Ruler_Port_LED_Service_4
        LDRB     R1,[PC, R0]
        ADD      PC,PC,R1, LSL #+2
        DATA
??Ruler_Port_LED_Service_0:
        DC8      0x1,0x1,0x6,0x6
        DC8      0xB,0x0,0x0,0x0
        ARM
??Ruler_Port_LED_Service_5:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADDS     R0,R0,#+2
        BL       LED_Clear
        B        ??Ruler_Port_LED_Service_6
??Ruler_Port_LED_Service_7:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADDS     R0,R0,#+2
        BL       LED_Set
        B        ??Ruler_Port_LED_Service_6
??Ruler_Port_LED_Service_8:
        LDR      R0,??DataTable30_27
        LDR      R0,[R0, #+0]
        MOVS     R1,R5
        ANDS     R1,R1,#0xFF      ;; Zero extend
        TST      R1,R0
        BNE      ??Ruler_Port_LED_Service_4
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADDS     R0,R0,#+2
        BL       LED_Toggle
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??Ruler_Port_LED_Service_4
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??Ruler_Port_LED_Service_4
        LDR      R0,??DataTable30_28
        LDR      R0,[R0, #+0]
        ADDS     R1,R0,#+1
        LDR      R2,??DataTable30_28
        STR      R1,[R2, #+0]
        CMP      R0,#+6
        BCS      ??Ruler_Port_LED_Service_4
        LDR      R0,??DataTable30_28
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x1
        BL       Buzzer_OnOff
??Ruler_Port_LED_Service_4:
??Ruler_Port_LED_Service_6:
        ADDS     R7,R7,#+1
        B        ??Ruler_Port_LED_Service_1
??Ruler_Port_LED_Service_2:
        LDR      R0,??DataTable30_27
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable30_27
        STR      R0,[R1, #+0]
        POP      {R0,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26:
        DC32     `?<Constant {13, 0}>`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_1:
        DC32     Global_Mic_Mask

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_2:
        DC32     `?<Constant "Ruler[%d]_Active_Cont...">`

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??counter:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??counter_buz:
        DS8 4

        SECTION `.text`:CODE:NOROOT(2)
        ARM
AB_POST:
        PUSH     {R4,LR}
        LDR      R0,??DataTable30_29
        BL       BSP_Ser_Printf
        BL       Enable_FPGA
        LDR      R0,??DataTable30_30
        BL       BSP_Ser_Printf
        MOV      R0,#+32000
        BL       Init_CODEC
        MOVS     R4,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??AB_POST_0
        MOV      R0,#+195
        LDR      R1,??DataTable30_26
        STRB     R0,[R1, #+0]
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable30_31
        BL       BSP_Ser_Printf
        B        ??AB_POST_1
??AB_POST_0:
        LDR      R0,??DataTable30_32
        BL       BSP_Ser_Printf
        LDR      R0,??DataTable30_33
        BL       BSP_Ser_Printf
        MOV      R3,#+0
        MOV      R2,#+1
        MOV      R1,#+0
        MOV      R0,#+32000
        BL       Init_FM36_AB03
        MOVS     R4,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??AB_POST_2
        MOV      R0,#+196
        LDR      R1,??DataTable30_26
        STRB     R0,[R1, #+0]
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable30_31
        BL       BSP_Ser_Printf
        B        ??AB_POST_1
??AB_POST_2:
        LDR      R0,??DataTable30_32
        BL       BSP_Ser_Printf
        LDR      R0,??DataTable30_34
        BL       BSP_Ser_Printf
        BL       Get_Audio_Version
        MOVS     R4,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??AB_POST_3
        MOV      R0,#+197
        LDR      R1,??DataTable30_26
        STRB     R0,[R1, #+0]
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable30_31
        BL       BSP_Ser_Printf
        B        ??AB_POST_1
??AB_POST_3:
        LDR      R0,??DataTable30_32
        BL       BSP_Ser_Printf
        MOV      R0,#+0
        BL       Init_CODEC
        MOVS     R4,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??AB_POST_4
        MOV      R0,#+195
        LDR      R1,??DataTable30_26
        STRB     R0,[R1, #+0]
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable30_35
        BL       BSP_Ser_Printf
??AB_POST_4:
??AB_POST_1:
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27:
        DC32     UART_MUX_Sem_lock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_1:
        DC32     `?<Constant "Ruler[%d]_Active_Cont...">_1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_2:
        DC32     Ruler_CMD_Result

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_3:
        DC32     `?<Constant "Ruler[%d]_Active_Cont...">_2`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_4:
        DC32     `?<Constant {14}>`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_5:
        DC32     Emb_Buf_Data

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Ruler_POST:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable30_36
        BL       BSP_Ser_Printf
        MOVS     R1,SP
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Read_Ruler_Status
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+193
        BNE      ??Ruler_POST_0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Ruler_POST_1
??Ruler_POST_0:
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Ruler_POST_2
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Ruler_POST_1
??Ruler_POST_2:
        LDRH     R0,[SP, #+0]
        CMP      R0,#+0
        BEQ      ??Ruler_POST_3
        LDRH     R0,[SP, #+0]
        CMP      R0,#+32768
        BEQ      ??Ruler_POST_4
        LDRH     R3,[SP, #+0]
        MOVS     R2,R5
        ANDS     R2,R2,#0xFF      ;; Zero extend
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable30_37
        BL       BSP_Ser_Printf
        MOV      R0,#+1
        B        ??Ruler_POST_1
??Ruler_POST_4:
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable30_38
        BL       BSP_Ser_Printf
??Ruler_POST_3:
        LDR      R0,??DataTable30_32
        BL       BSP_Ser_Printf
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
??Ruler_POST_1:
        POP      {R1,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
simple_test_use:
        PUSH     {LR}
        SUB      SP,SP,#+20
        LDR      R0,??DataTable30_39
        BL       BSP_Ser_Printf
        MOV      R1,#+63
        MOV      R0,#+0
        BL       Update_Mic_Mask
        MOV      R0,#+63
        BL       Init_FPGA
        MOV      R0,#+4
        LDR      R1,??DataTable30_10
        STRB     R0,[R1, #+0]
        LDR      R0,??DataTable30_40
        LDM      R0,{R2,R3}
        ADD      R0,SP,#+8
        STM      R0,{R2,R3}
        LDR      R0,??DataTable30_41
        LDM      R0,{R2,R3}
        MOVS     R0,SP
        STM      R0,{R2,R3}
        ADD      R0,SP,#+8
        BL       Setup_Audio
        MOVS     R0,SP
        BL       Setup_Audio
        MOV      R0,#+3
        BL       Start_Audio
        ADD      SP,SP,#+20       ;; stack cleaning
        POP      {LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29:
        DC32     `?<Constant "Get_Ruler_Version[%d]...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_1:
        DC32     `?<Constant "Get_Ruler_Version[%d]...">_1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_2:
        DC32     `?<Constant "Ruler[%d] FW Version:...">`

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Ruler_Setup_Sync:
        PUSH     {R4,LR}
        SUB      SP,SP,#+24
        MOVS     R4,R0
        ADD      R0,SP,#+16
        LDR      R1,??DataTable30_42
        LDR      R2,[R1, #0]
        STR      R2,[R0, #+0]
        LDR      R0,??DataTable30_43
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+17]
        STRB     R4,[SP, #+18]
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable30_10
        LDRB     R0,[R0, +R1]
        CMP      R0,#+0
        BNE      ??Ruler_Setup_Sync_0
        MOV      R0,#+193
        B        ??Ruler_Setup_Sync_1
??Ruler_Setup_Sync_0:
        ADD      R2,SP,#+12
        MOV      R1,#+0
        LDR      R0,??DataTable30_44
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        LDR      R0,??DataTable30_45
        LDRB     R0,[R0, #+0]
        ANDS     R4,R4,#0xFF      ;; Zero extend
        CMP      R0,R4
        BEQ      ??Ruler_Setup_Sync_2
        BL       Check_UART_Mixer_Ready
        LDR      R0,??DataTable30_45
        STRB     R4,[R0, #+0]
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       UART1_Mixer
??Ruler_Setup_Sync_2:
        MOV      R0,#+0
        STR      R0,[SP, #+8]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+0
        STR      R0,[SP, #+0]
        MOV      R3,#+3
        ADD      R2,SP,#+16
        MOV      R1,#+2
        LDR      R0,??DataTable30_46
        LDR      R0,[R0, #+0]
        BL       pcSendDateToBuf
        STRB     R0,[SP, #+12]
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BNE      ??Ruler_Setup_Sync_3
        ADD      R2,SP,#+12
        MOV      R1,#+136
        ORR      R1,R1,#0x1300
        LDR      R0,??DataTable30_47
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        LDRB     R0,[SP, #+12]
        CMP      R0,#+10
        BNE      ??Ruler_Setup_Sync_4
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable30_48
        BL       BSP_Ser_Printf
        B        ??Ruler_Setup_Sync_5
??Ruler_Setup_Sync_4:
        LDR      R0,??DataTable30_49
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+12]
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BEQ      ??Ruler_Setup_Sync_5
        LDRB     R2,[SP, #+12]
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable30_50
        BL       BSP_Ser_Printf
        B        ??Ruler_Setup_Sync_5
??Ruler_Setup_Sync_3:
        LDRB     R2,[SP, #+12]
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable30_51
        BL       BSP_Ser_Printf
??Ruler_Setup_Sync_5:
        LDR      R0,??DataTable30_44
        LDR      R0,[R0, #+0]
        BL       OSSemPost
        LDRB     R0,[SP, #+12]
??Ruler_Setup_Sync_1:
        ADD      SP,SP,#+24       ;; stack cleaning
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30:
        DC32     `?<Constant "ERROR: this operation...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_1:
        DC32     `?<Constant "ERROR: Write flash st...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_2:
        DC32     `?<Constant "Start loading ruler b...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_3:
        DC32     ??flash_addr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_4:
        DC32     `?<Constant "ERROR: flash state no...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_5:
        DC32     `?<Constant "ERROR:  Save ruler FW...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_6:
        DC32     `?<Constant "ERROR: Write MCU flas...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_7:
        DC32     `?<Constant "Bin file[%d Btyes] sa...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_8:
        DC32     `?<Constant "ERROR: FW bin file mi...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_9:
        DC32     `?<Constant "Start updating ruler[...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_10:
        DC32     Global_Ruler_State

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_11:
        DC32     `?<Constant "\\r\\nFailed to init rule...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_12:
        DC32     `?<Constant "\\r\\nUpdate ruler[%d] fi...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_13:
        DC32     ISR_Ruler_UART

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_14:
        DC32     `?<Constant "Toggle Ruler[%d]-Mic[...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_15:
        DC32     `?<Constant "FAIL">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_16:
        DC32     `?<Constant " %s [0x%X]\\r\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_17:
        DC32     `?<Constant "Set Volume :: ">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_18:
        DC32     `?<Constant "Mute MIC :  ">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_19:
        DC32     `?<Constant "Mic_Gain = %d dB :  ">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_20:
        DC32     `?<Constant "Mute LOUT :  ">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_21:
        DC32     `?<Constant "LOUT_Gain = -%d.%d dB...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_22:
        DC32     `?<Constant "Mute SPK :  ">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_23:
        DC32     `?<Constant "SPK_Gain = -%d.%d dB :  ">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_24:
        DC32     `?<Constant "FAIL [0x%X]\\r\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_25:
        DC32     `?<Constant "OK\\r\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_26:
        DC32     Global_Bridge_POST

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_27:
        DC32     ??counter

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_28:
        DC32     ??counter_buz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_29:
        DC32     `?<Constant "\\r\\nStart Audio Bridge ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_30:
        DC32     `?<Constant "\\r\\n1. CODEC... \\r\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_31:
        DC32     `?<Constant "\\r\\n---Error : %d\\r\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_32:
        DC32     `?<Constant "\\r\\n---OK\\r\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_33:
        DC32     `?<Constant "\\r\\n2. FM36 DSP... \\r\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_34:
        DC32     `?<Constant "\\r\\n3. AUDIO MCU... \\r\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_35:
        DC32     `?<Constant "\\r\\nPower Down CODEC ER...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_36:
        DC32     `?<Constant "\\r\\nRuler[%d] POST stat...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_37:
        DC32     `?<Constant "\\r\\n---Error Ruler[%d]:...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_38:
        DC32     `?<Constant "\\r\\n---WARNING Ruler[%d...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_39:
        DC32     `?<Constant "\\r\\nHi,man. Simple play...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_40:
        DC32     `?<Constant {32000, 1, 6}>`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_41:
        DC32     `?<Constant {32000, 0, 6}>`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_42:
        DC32     `?<Constant {15, 0, 0}>`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_43:
        DC32     Ruler_Setup_Sync_Data

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_44:
        DC32     UART_MUX_Sem_lock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_45:
        DC32     Global_Ruler_Index

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_46:
        DC32     EVENT_MsgQ_Noah2RulerUART

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_47:
        DC32     Done_Sem_RulerUART

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_48:
        DC32     `?<Constant "Ruler_Setup_Sync[%d] ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_49:
        DC32     Ruler_CMD_Result

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_50:
        DC32     `?<Constant "Ruler_Setup_Sync[%d] ...">_1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_51:
        DC32     `?<Constant "Ruler[%d] pcSendDateT...">`

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Check_UART_Mixer_Read...">`:
        DATA
        DC8 "Check_UART_Mixer_Ready, stage 1 : wait %d ms\015\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Check_UART_Mixer_Read...">_1`:
        DATA
        DC8 "Check_UART_Mixer_Ready, stage 2 : wait %d ms\015\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {235, 144, 1, 0, 0, 0, 0}>`:
        DATA
        DC8 235, 144, 1, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Setup_Audio [REC]:[%d...">`:
        DATA
        DC8 "Setup_Audio [REC]:[%d SR]:[%d CH]: %s\015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "LIN Disabled">`:
        DATA
        DC8 "LIN Disabled"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "LIN Enabled">`:
        DATA
        DC8 "LIN Enabled"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Setup_Audio [PLAY]:[%...">`:
        DATA
        DC8 "Setup_Audio [PLAY]:[%d SR]:[%d CH]\015\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\r\\nERROR: Check_Active...">`:
        DATA
        DC8 "\015\012ERROR: Check_Actived_Mic_Number = %d > 6\015\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "WARN:(Setup_Audio Rec...">`:
        DATA
        DC8 57H, 41H, 52H, 4EH, 3AH, 28H, 53H, 65H
        DC8 74H, 75H, 70H, 5FH, 41H, 75H, 64H, 69H
        DC8 6FH, 20H, 52H, 65H, 63H, 29H, 70H, 41H
        DC8 75H, 64H, 69H, 6FH, 43H, 66H, 67H, 2DH
        DC8 3EH, 63H, 68H, 61H, 6EH, 6EH, 65H, 6CH
        DC8 73H, 28H, 25H, 64H, 29H, 20H, 21H, 3DH
        DC8 20H, 20H, 41H, 63H, 74H, 69H, 76H, 65H
        DC8 20H, 4DH, 49H, 43H, 73H, 20H, 4EH, 75H
        DC8 6DH, 28H, 25H, 64H, 29H, 0DH, 0AH, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "ERROR:(Setup_Audio Pl...">`:
        DATA
        DC8 45H, 52H, 52H, 4FH, 52H, 3AH, 28H, 53H
        DC8 65H, 74H, 75H, 70H, 5FH, 41H, 75H, 64H
        DC8 69H, 6FH, 20H, 50H, 6CH, 61H, 79H, 29H
        DC8 70H, 41H, 75H, 64H, 69H, 6FH, 43H, 66H
        DC8 67H, 2DH, 3EH, 63H, 68H, 61H, 6EH, 6EH
        DC8 65H, 6CH, 73H, 28H, 3DH, 25H, 64H, 29H
        DC8 20H, 3EH, 20H, 34H, 20H, 4EH, 4FH, 54H
        DC8 20H, 61H, 6CH, 6CH, 6FH, 77H, 65H, 64H
        DC8 20H, 66H, 6FH, 72H, 20H, 41H, 42H, 30H
        DC8 33H, 0DH, 0AH, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Lin 2 channels added....">`:
        DATA
        DC8 "Lin 2 channels added...%d\015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\r\\nSetup_Audio ERROR: ...">`:
        DATA
        DC8 "\015\012Setup_Audio ERROR: timeout\015\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\r\\nSetup_Audio ERROR: ...">_1`:
        DATA
        DC8 "\015\012Setup_Audio ERROR: %d\015\012 "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\r\\nSetup_Audio Init_CO...">`:
        DATA
        DC8 "\015\012Setup_Audio Init_CODEC ERROR: %d\015\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\r\\nSetup_Audio ReInit_...">`:
        DATA
        DC8 "\015\012Setup_Audio ReInit_FM36 ERROR: %d\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {235, 144, 2, 0}>`:
        DATA
        DC8 235, 144, 2, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Start_Audio : type = ...">`:
        DATA
        DC8 "Start_Audio : type = [%d]\015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\r\\nStart_Audio ERROR: ...">`:
        DATA
        DC8 "\015\012Start_Audio ERROR: Timeout : %d\015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\r\\nStart_Audio ERROR: ...">_1`:
        DATA
        DC8 "\015\012Start_Audio ERROR: Data : %d\015\012 "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {235, 144, 3}>`:
        DATA
        DC8 235, 144, 3, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Stop_Audio\\r\\n">`:
        DATA
        DC8 "Stop_Audio\015\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\r\\nStop_Audio ERROR: t...">`:
        DATA
        DC8 "\015\012Stop_Audio ERROR: timeout\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\r\\nStop_Audio ERROR: %...">`:
        DATA
        DC8 "\015\012Stop_Audio ERROR: %d\015\012 "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\r\\nStop_Audio Power Do...">`:
        DATA
        DC8 "\015\012Stop_Audio Power Down CODEC ERROR: %d\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {235, 144, 16}>`:
        DATA
        DC8 235, 144, 16, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Reset_Audio\\r\\n">`:
        DATA
        DC8 "Reset_Audio\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\r\\nReset_Audio ERROR: ...">`:
        DATA
        DC8 "\015\012Reset_Audio ERROR: timeout\015\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\r\\nReset_Audio ERROR: ...">_1`:
        DATA
        DC8 "\015\012Reset_Audio ERROR: %d\015\012 "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {235, 144, 11}>`:
        DATA
        DC8 235, 144, 11, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\r\\nGet_Audio_Version E...">`:
        DATA
        DC8 "\015\012Get_Audio_Version ERROR: timeout\015\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\r\\nUSB Audio FW Versio...">`:
        DATA
        DC8 "\015\012USB Audio FW Version: %s\015\012 "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Init ruler[%d] timeou...">`:
        DATA
        DC8 "Init ruler[%d] timeout!\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Init_Ruler[%d] err = ...">`:
        DATA
        DC8 "Init_Ruler[%d] err = %d\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Ruler[%d] pcSendDateT...">`:
        DATA
        DC8 "Ruler[%d] pcSendDateToBuf failed: %d\015\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
`?<Constant {4, 0}>`:
        DATA
        DC8 4, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Setup_Ruler[%d] timeo...">`:
        DATA
        DC8 "Setup_Ruler[%d] timeout\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Get Ruler_Setup_Sync_...">`:
        DATA
        DC8 "Get Ruler_Setup_Sync_Data : 0x%X\015\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Setup_Ruler[%d] err =...">`:
        DATA
        DC8 "Setup_Ruler[%d] err = %d\015\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant {12}>`:
        DATA
        DC8 12

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Read_Ruler_Type[%d] t...">`:
        DATA
        DC8 "Read_Ruler_Type[%d] timeout\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Get_Ruler_Type[%d] er...">`:
        DATA
        DC8 "Get_Ruler_Type[%d] err = %d\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant {5}>`:
        DATA
        DC8 5

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Read_Ruler_Status[%d]...">`:
        DATA
        DC8 "Read_Ruler_Status[%d] timeout\015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Read_Ruler_Status[%d]...">_1`:
        DATA
        DC8 "Read_Ruler_Status[%d] err = %d\015\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant {6}>`:
        DATA
        DC8 6

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Read_Ruler_Info[%d] t...">`:
        DATA
        DC8 "Read_Ruler_Info[%d] timeout\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Read_Ruler_Info[%d] e...">`:
        DATA
        DC8 "Read_Ruler_Info[%d] err = %d\015\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Write_Ruler_Info[%d] ...">`:
        DATA
        DC8 "Write_Ruler_Info[%d] timeout\015\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Write_Ruler_Info[%d] ...">_1`:
        DATA
        DC8 "Write_Ruler_Info[%d] err = %d\015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
`?<Constant {8, 0}>`:
        DATA
        DC8 8, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Read_Mic_Cali_Data[%d...">`:
        DATA
        DC8 "Read_Mic_Cali_Data[%d] timeout\015\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Read_Mic_Cali_Data[%d...">_1`:
        DATA
        DC8 "Read_Mic_Cali_Data[%d] err = %d\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Write_Mic_Cali_Data[%...">`:
        DATA
        DC8 "Write_Mic_Cali_Data[%d][%d] timeout\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Write_Mic_Cali_Data[%...">_1`:
        DATA
        DC8 "Write_Mic_Cali_Data[%d] err = %d\015\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {10, 0, 0, 0, 0}>`:
        DATA
        DC8 10, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Update_Mic_Mask for R...">`:
        DATA
        DC8 "Update_Mic_Mask for Ruler[%d] timeout\015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
`?<Constant {13, 0}>`:
        DATA
        DC8 13, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Ruler[%d]_Active_Cont...">`:
        DATA
        DC8 "Ruler[%d]_Active_Control : [%d]\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Ruler[%d]_Active_Cont...">_1`:
        DATA
        DC8 "Ruler[%d]_Active_Control timeout\015\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Ruler[%d]_Active_Cont...">_2`:
        DATA
        DC8 "Ruler[%d]_Active_Control err = %d\015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant {14}>`:
        DATA
        DC8 14

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Get_Ruler_Version[%d]...">`:
        DATA
        DC8 "Get_Ruler_Version[%d] timeout\015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Get_Ruler_Version[%d]...">_1`:
        DATA
        DC8 "Get_Ruler_Version[%d] err = %d\015\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Ruler[%d] FW Version:...">`:
        DATA
        DC8 "Ruler[%d] FW Version: %s\015\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "ERROR: this operation...">`:
        DATA
        DC8 "ERROR: this operation wanna flush code area!\015\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "ERROR: Write flash st...">`:
        DATA
        DC8 "ERROR: Write flash state failed!\015\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Start loading ruler b...">`:
        DATA
        DC8 "Start loading ruler bin file to AB01 flash ... \015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "> "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "ERROR: flash state no...">`:
        DATA
        DC8 "ERROR: flash state not match!\015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 ">\015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "ERROR:  Save ruler FW...">`:
        DATA
        DC8 "ERROR:  Save ruler FW bad cmd!\015\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "ERROR: Write MCU flas...">`:
        DATA
        DC8 "ERROR: Write MCU flash failed!\015\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Bin file[%d Btyes] sa...">`:
        DATA
        DC8 "Bin file[%d Btyes] saved successfully!\015\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "ERROR: FW bin file mi...">`:
        DATA
        DC8 "ERROR: FW bin file missed!\015\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Start updating ruler[...">`:
        DATA
        DC8 53H, 74H, 61H, 72H, 74H, 20H, 75H, 70H
        DC8 64H, 61H, 74H, 69H, 6EH, 67H, 20H, 72H
        DC8 75H, 6CH, 65H, 72H, 5BH, 25H, 64H, 5DH
        DC8 20H, 66H, 69H, 72H, 6DH, 77H, 61H, 72H
        DC8 65H, 20H, 74H, 6FH, 20H, 22H, 25H, 73H
        DC8 22H, 20H, 76H, 65H, 72H, 73H, 69H, 6FH
        DC8 6EH, 20H, 2EH, 2EH, 2EH, 0DH, 0AH, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\r\\nFailed to init rule...">`:
        DATA
        DC8 0DH, 0AH, 46H, 61H, 69H, 6CH, 65H, 64H
        DC8 20H, 74H, 6FH, 20H, 69H, 6EH, 69H, 74H
        DC8 20H, 72H, 75H, 6CH, 65H, 72H, 20H, 62H
        DC8 6FH, 6FH, 74H, 6CH, 6FH, 61H, 64H, 65H
        DC8 72H, 2EH, 20H, 45H, 72H, 72H, 20H, 43H
        DC8 6FH, 64H, 65H, 20H, 3DH, 20H, 5BH, 30H
        DC8 78H, 25H, 58H, 5DH, 0DH, 0AH, 0
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\r\\nUpdate ruler[%d] fi...">`:
        DATA
        DC8 "\015\012Update ruler[%d] firmware successfully!\015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Toggle Ruler[%d]-Mic[...">`:
        DATA
        DC8 "Toggle Ruler[%d]-Mic[%d] : %d  : "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant " %s [0x%X]\\r\\n">`:
        DATA
        DC8 " %s [0x%X]\015\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "OK"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "FAIL">`:
        DATA
        DC8 "FAIL"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Set Volume :: ">`:
        DATA
        DC8 "Set Volume :: "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Mute MIC :  ">`:
        DATA
        DC8 "Mute MIC :  "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Mic_Gain = %d dB :  ">`:
        DATA
        DC8 "Mic_Gain = %d dB :  "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Mute LOUT :  ">`:
        DATA
        DC8 "Mute LOUT :  "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "LOUT_Gain = -%d.%d dB...">`:
        DATA
        DC8 "LOUT_Gain = -%d.%d dB :  "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Mute SPK :  ">`:
        DATA
        DC8 "Mute SPK :  "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "SPK_Gain = -%d.%d dB :  ">`:
        DATA
        DC8 "SPK_Gain = -%d.%d dB :  "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "FAIL [0x%X]\\r\\n">`:
        DATA
        DC8 "FAIL [0x%X]\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "OK\\r\\n">`:
        DATA
        DC8 "OK\015\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\r\\nStart Audio Bridge ...">`:
        DATA
        DC8 "\015\012Start Audio Bridge POST :\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\r\\n1. CODEC... \\r\\n">`:
        DATA
        DC8 "\015\0121. CODEC... \015\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\r\\n---Error : %d\\r\\n">`:
        DATA
        DC8 "\015\012---Error : %d\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\r\\n---OK\\r\\n">`:
        DATA
        DC8 "\015\012---OK\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\r\\n2. FM36 DSP... \\r\\n">`:
        DATA
        DC8 "\015\0122. FM36 DSP... \015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\r\\n3. AUDIO MCU... \\r\\n">`:
        DATA
        DC8 "\015\0123. AUDIO MCU... \015\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\r\\nPower Down CODEC ER...">`:
        DATA
        DC8 "\015\012Power Down CODEC ERROR: %d\015\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\r\\nRuler[%d] POST stat...">`:
        DATA
        DC8 "\015\012Ruler[%d] POST status check... \015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\r\\n---Error Ruler[%d]:...">`:
        DATA
        DC8 "\015\012---Error Ruler[%d]: %d-0x%X\015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\r\\n---WARNING Ruler[%d...">`:
        DATA
        DC8 0DH, 0AH, 2DH, 2DH, 2DH, 57H, 41H, 52H
        DC8 4EH, 49H, 4EH, 47H, 20H, 52H, 75H, 6CH
        DC8 65H, 72H, 5BH, 25H, 64H, 5DH, 3AH, 20H
        DC8 4DH, 69H, 63H, 20H, 63H, 61H, 6CH, 69H
        DC8 62H, 72H, 61H, 74H, 69H, 6FH, 6EH, 20H
        DC8 64H, 61H, 74H, 61H, 20H, 4EH, 4FH, 54H
        DC8 20H, 49H, 6EH, 69H, 74H, 69H, 61H, 6CH
        DC8 69H, 7AH, 65H, 64H, 21H, 0DH, 0AH, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\r\\nHi,man. Simple play...">`:
        DATA
        DC8 "\015\012Hi,man. Simple play/rec test triggered...\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {32000, 1, 6}>`:
        DATA
        DC16 32000
        DC8 1, 6, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {32000, 0, 6}>`:
        DATA
        DC16 32000
        DC8 0, 6, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {15, 0, 0}>`:
        DATA
        DC8 15, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Ruler_Setup_Sync[%d] ...">`:
        DATA
        DC8 "Ruler_Setup_Sync[%d] timeout\015\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Ruler_Setup_Sync[%d] ...">_1`:
        DATA
        DC8 "Ruler_Setup_Sync[%d] err = %d\015\012"

        END
// 
//     52 bytes in section .bss
//      4 bytes in section .data
//  2 954 bytes in section .rodata
// 10 544 bytes in section .text
// 
// 10 544 bytes of CODE  memory
//  2 954 bytes of CONST memory
//     56 bytes of DATA  memory
//
//Errors: none
//Warnings: none
