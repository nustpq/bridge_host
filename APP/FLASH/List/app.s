///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       21/Jun/2016  16:45:14
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  F:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\app.c
//    Command line =  
//        "F:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\app.c" -lcN "F:\SVN
//        Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\" -lb "F:\SVN
//        Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\" -o "F:\SVN
//        Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\Obj\" --no_cse
//        --no_unroll --no_inline --no_code_motion --no_tbaa --no_clustering
//        --no_scheduling --debug --endian=little --cpu=ARM7TDMI -e --fpu=None
//        --dlib_config "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Full.h" -I "F:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\" -I "F:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\..\uC-CPU\ARM\IAR\" -I "F:\SVN Dir\PQ\iSAM
//        Test Bench\Bridge_Host_OS\APP\..\BSP\" -I "F:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\..\Driver\" -I "F:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\..\Noah\" -I "F:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\..\Shell\" -I "F:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\..\uCOS-II\Source\" -I "F:\SVN Dir\PQ\iSAM
//        Test Bench\Bridge_Host_OS\APP\..\uC-CPU\" -I "F:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\..\uC-LIB\" -I "F:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\..\uC-CPU\ARM\IAR\" -I "F:\SVN Dir\PQ\iSAM
//        Test Bench\Bridge_Host_OS\APP\..\uCOS-II\Ports\ARM\Generic\IAR\" -I
//        "F:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\..\uC-Probe\Target\Communication\Generic\RS-232\Source\"
//        -I "F:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\..\uC-Probe\Target\Communication\Generic\RS-232\Ports\Atmel\AT91SAM7X\"
//        -I "F:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\..\uC-Probe\Target\Communication\Generic\Source\"
//        -I "F:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\..\uC-Probe\Target\Plugins\uCOS-II\" -I
//        "F:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\..\uC-Probe\Target\Demos\Intro\Source\"
//        --interwork --cpu_mode arm -On --use_c++_inline
//    List file    =  
//        F:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\app.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN ACK_Sem_PCUART
        EXTERN ACK_Sem_RulerUART
        EXTERN App_TaskCMDParse
        EXTERN App_TaskGenieShell
        EXTERN App_TaskJoy
        EXTERN App_TaskNoah
        EXTERN App_TaskNoah_Ruler
        EXTERN App_TaskUART_Rx
        EXTERN App_TaskUART_Tx
        EXTERN App_TaskUART_Tx_Ruler
        EXTERN App_TaskUserIF
        EXTERN App_UserIF_Mbox
        EXTERN BSP_CPU_Init
        EXTERN BSP_Init
        EXTERN BSP_IntDisAll
        EXTERN BSP_Ser_Init
        EXTERN BSP_Ser_Printf
        EXTERN Bsp_Ser_Rx_Sem_lock
        EXTERN Bsp_Ser_Tx_Sem_lock
        EXTERN CPU_Init
        EXTERN DBGU_Rx_Sem_lock
        EXTERN DBGU_Tx_Sem_lock
        EXTERN Done_Sem_RulerUART
        EXTERN EVENT_MsgQ_Noah2CMDParse
        EXTERN EVENT_MsgQ_Noah2PCUART
        EXTERN EVENT_MsgQ_Noah2RulerUART
        EXTERN EVENT_MsgQ_PCUART2Noah
        EXTERN EVENT_MsgQ_RulerUART2Noah
        EXTERN LED_Clear
        EXTERN LED_Set
        EXTERN Math_Init
        EXTERN MemPartition_MsgUART
        EXTERN Mem_Init
        EXTERN MsgQ_Noah2CMDParse
        EXTERN MsgQ_Noah2PCUART
        EXTERN MsgQ_Noah2RulerUART
        EXTERN MsgQ_PCUART2Noah
        EXTERN MsgQ_RulerUART2Noah
        EXTERN OSEventNameSet
        EXTERN OSInit
        EXTERN OSMboxCreate
        EXTERN OSMemCreate
        EXTERN OSMemNameSet
        EXTERN OSQCreate
        EXTERN OSSemCreate
        EXTERN OSStart
        EXTERN OSStatInit
        EXTERN OSTaskCreateExt
        EXTERN OSTaskNameSet
        EXTERN OSTimeDly
        EXTERN OS_CPU_InitExceptVect
        EXTERN Ruler_Port_LED_Service
        EXTERN UART_MUX_Sem_lock
        EXTERN pMEM_Part_MsgUART

        PUBLIC App_BufferCreate
        PUBLIC Task_ReCreate_Shell
        PUBLIC main


        SECTION `.bss`:DATA:REORDER:NOROOT(2)
App_TaskStartStk:
        DS8 512

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
App_TaskUserIF_Stk:
        DS8 512

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
App_TaskJoyStk:
        DS8 256

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
App_TaskGenieShellStk:
        DS8 1024

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
App_TaskUART_RxStk:
        DS8 512

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
App_TaskUART_TxStk:
        DS8 512

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
App_TaskUART_TxRulerStk:
        DS8 512

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
App_TaskNoahStk:
        DS8 512

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
App_TaskNoahRulerStk:
        DS8 512

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
App_TaskCMDParseStk:
        DS8 1024

        SECTION `.text`:CODE:NOROOT(2)
        ARM
main:
        PUSH     {LR}
        SUB      SP,SP,#+28
        BL       BSP_CPU_Init
        BL       CPU_Init
        BL       BSP_IntDisAll
        BL       OSInit
        MOV      R0,#+3
        STR      R0,[SP, #+16]
        MOV      R0,#+0
        STR      R0,[SP, #+12]
        MOV      R0,#+128
        STR      R0,[SP, #+8]
        LDR      R0,??DataTable4
        STR      R0,[SP, #+4]
        MOV      R0,#+21
        STR      R0,[SP, #+0]
        MOV      R3,#+21
        LDR      R2,??DataTable4_1
        MOV      R1,#+0
        ADR      R0,App_TaskStart
        BL       OSTaskCreateExt
        ADD      R2,SP,#+20
        LDR      R1,??DataTable4_2
        MOV      R0,#+21
        BL       OSTaskNameSet
        BL       OSStart
        ADD      SP,SP,#+28       ;; stack cleaning
        POP      {LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
App_TaskStart:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        BL       BSP_Init
        BL       OS_CPU_InitExceptVect
        BL       OSStatInit
        BL       Mem_Init
        BL       Math_Init
        MOV      R0,#+65536
        ORR      R0,R0,#0xC200
        BL       BSP_Ser_Init
        BL       App_BufferCreate
        BL       App_EventCreate
        BL       App_TaskCreate
??App_TaskStart_0:
        ADDS     R5,R5,#+1
        TST      R5,#0xFF
        BEQ      ??App_TaskStart_1
        MOV      R0,#+0
        BL       LED_Set
??App_TaskStart_1:
        TST      R5,#0x3F
        BEQ      ??App_TaskStart_2
        MOV      R0,#+0
        BL       LED_Clear
??App_TaskStart_2:
        BL       Ruler_Port_LED_Service
        MOV      R0,#+10
        BL       OSTimeDly
        B        ??App_TaskStart_0

        SECTION `.text`:CODE:NOROOT(2)
        ARM
App_BufferCreate:
        PUSH     {R12,LR}
        LDR      R0,??DataTable4_3
        BL       BSP_Ser_Printf
        MOVS     R3,SP
        MOV      R2,#+260
        MOV      R1,#+10
        LDR      R0,??DataTable4_4
        BL       OSMemCreate
        LDR      R1,??DataTable4_5
        STR      R0,[R1, #+0]
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BEQ      ??App_BufferCreate_0
??App_BufferCreate_1:
        B        ??App_BufferCreate_1
??App_BufferCreate_0:
        MOVS     R2,SP
        LDR      R1,??DataTable4_6
        LDR      R0,??DataTable4_5
        LDR      R0,[R0, #+0]
        BL       OSMemNameSet
        POP      {R0,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
App_EventCreate:
        PUSH     {R12,LR}
        LDR      R0,??DataTable4_7
        BL       BSP_Ser_Printf
        MOV      R0,#+0
        BL       OSMboxCreate
        LDR      R1,??DataTable4_8
        STR      R0,[R1, #+0]
        MOV      R0,#+0
        BL       OSSemCreate
        LDR      R1,??DataTable4_9
        STR      R0,[R1, #+0]
        MOV      R0,#+0
        BL       OSSemCreate
        LDR      R1,??DataTable4_10
        STR      R0,[R1, #+0]
        MOV      R0,#+0
        BL       OSSemCreate
        LDR      R1,??DataTable4_11
        STR      R0,[R1, #+0]
        MOV      R1,#+10
        LDR      R0,??DataTable4_12
        BL       OSQCreate
        LDR      R1,??DataTable4_13
        STR      R0,[R1, #+0]
        MOV      R1,#+10
        LDR      R0,??DataTable4_14
        BL       OSQCreate
        LDR      R1,??DataTable4_15
        STR      R0,[R1, #+0]
        MOV      R1,#+10
        LDR      R0,??DataTable4_16
        BL       OSQCreate
        LDR      R1,??DataTable4_17
        STR      R0,[R1, #+0]
        MOV      R1,#+10
        LDR      R0,??DataTable4_18
        BL       OSQCreate
        LDR      R1,??DataTable4_19
        STR      R0,[R1, #+0]
        MOV      R1,#+10
        LDR      R0,??DataTable4_20
        BL       OSQCreate
        LDR      R1,??DataTable4_21
        STR      R0,[R1, #+0]
        MOV      R0,#+1
        BL       OSSemCreate
        LDR      R1,??DataTable4_22
        STR      R0,[R1, #+0]
        MOV      R0,#+1
        BL       OSSemCreate
        LDR      R1,??DataTable4_23
        STR      R0,[R1, #+0]
        MOV      R0,#+1
        BL       OSSemCreate
        LDR      R1,??DataTable4_24
        STR      R0,[R1, #+0]
        MOV      R0,#+1
        BL       OSSemCreate
        LDR      R1,??DataTable4_24
        STR      R0,[R1, #+0]
        MOV      R0,#+1
        BL       OSSemCreate
        LDR      R1,??DataTable4_25
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable4_25
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??App_EventCreate_0
??App_EventCreate_1:
        B        ??App_EventCreate_1
??App_EventCreate_0:
        MOVS     R2,SP
        LDR      R1,??DataTable4_26
        LDR      R0,??DataTable4_8
        LDR      R0,[R0, #+0]
        BL       OSEventNameSet
        MOVS     R2,SP
        LDR      R1,??DataTable4_27
        LDR      R0,??DataTable4_9
        LDR      R0,[R0, #+0]
        BL       OSEventNameSet
        MOVS     R2,SP
        LDR      R1,??DataTable4_28
        LDR      R0,??DataTable4_10
        LDR      R0,[R0, #+0]
        BL       OSEventNameSet
        MOVS     R2,SP
        LDR      R1,??DataTable4_29
        LDR      R0,??DataTable4_11
        LDR      R0,[R0, #+0]
        BL       OSEventNameSet
        MOVS     R2,SP
        LDR      R1,??DataTable4_30
        LDR      R0,??DataTable4_13
        LDR      R0,[R0, #+0]
        BL       OSEventNameSet
        MOVS     R2,SP
        LDR      R1,??DataTable4_31
        LDR      R0,??DataTable4_15
        LDR      R0,[R0, #+0]
        BL       OSEventNameSet
        MOVS     R2,SP
        LDR      R1,??DataTable4_32
        LDR      R0,??DataTable4_17
        LDR      R0,[R0, #+0]
        BL       OSEventNameSet
        MOVS     R2,SP
        LDR      R1,??DataTable4_33
        LDR      R0,??DataTable4_19
        LDR      R0,[R0, #+0]
        BL       OSEventNameSet
        MOVS     R2,SP
        LDR      R1,??DataTable4_34
        LDR      R0,??DataTable4_21
        LDR      R0,[R0, #+0]
        BL       OSEventNameSet
        MOVS     R2,SP
        LDR      R1,??DataTable4_35
        LDR      R0,??DataTable4_22
        LDR      R0,[R0, #+0]
        BL       OSEventNameSet
        MOVS     R2,SP
        LDR      R1,??DataTable4_35
        LDR      R0,??DataTable4_23
        LDR      R0,[R0, #+0]
        BL       OSEventNameSet
        MOVS     R2,SP
        LDR      R1,??DataTable4_36
        LDR      R0,??DataTable4_24
        LDR      R0,[R0, #+0]
        BL       OSEventNameSet
        MOVS     R2,SP
        LDR      R1,??DataTable4_37
        LDR      R0,??DataTable4_38
        LDR      R0,[R0, #+0]
        BL       OSEventNameSet
        MOVS     R2,SP
        LDR      R1,??DataTable4_39
        LDR      R0,??DataTable4_25
        LDR      R0,[R0, #+0]
        BL       OSEventNameSet
        POP      {R0,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
App_TaskCreate:
        PUSH     {LR}
        SUB      SP,SP,#+28
        LDR      R0,??DataTable4_40
        BL       BSP_Ser_Printf
        MOV      R0,#+3
        STR      R0,[SP, #+16]
        MOV      R0,#+0
        STR      R0,[SP, #+12]
        MOV      R0,#+64
        STR      R0,[SP, #+8]
        LDR      R0,??DataTable4_41
        STR      R0,[SP, #+4]
        MOV      R0,#+11
        STR      R0,[SP, #+0]
        MOV      R3,#+11
        LDR      R2,??DataTable4_42
        MOV      R1,#+0
        LDR      R0,??DataTable4_43
        BL       OSTaskCreateExt
        ADD      R2,SP,#+20
        LDR      R1,??DataTable4_44
        MOV      R0,#+11
        BL       OSTaskNameSet
        MOV      R0,#+3
        STR      R0,[SP, #+16]
        MOV      R0,#+0
        STR      R0,[SP, #+12]
        MOV      R0,#+256
        STR      R0,[SP, #+8]
        LDR      R0,??DataTable4_45
        STR      R0,[SP, #+4]
        MOV      R0,#+20
        STR      R0,[SP, #+0]
        MOV      R3,#+20
        LDR      R2,??DataTable4_46
        MOV      R1,#+0
        LDR      R0,??DataTable4_47
        BL       OSTaskCreateExt
        ADD      R2,SP,#+20
        LDR      R1,??DataTable4_48
        MOV      R0,#+20
        BL       OSTaskNameSet
        MOV      R0,#+3
        STR      R0,[SP, #+16]
        MOV      R0,#+0
        STR      R0,[SP, #+12]
        MOV      R0,#+128
        STR      R0,[SP, #+8]
        LDR      R0,??DataTable4_49
        STR      R0,[SP, #+4]
        MOV      R0,#+2
        STR      R0,[SP, #+0]
        MOV      R3,#+2
        LDR      R2,??DataTable4_50
        MOV      R1,#+0
        LDR      R0,??DataTable4_51
        BL       OSTaskCreateExt
        ADD      R2,SP,#+20
        LDR      R1,??DataTable4_52
        MOV      R0,#+2
        BL       OSTaskNameSet
        MOV      R0,#+3
        STR      R0,[SP, #+16]
        MOV      R0,#+0
        STR      R0,[SP, #+12]
        MOV      R0,#+128
        STR      R0,[SP, #+8]
        LDR      R0,??DataTable4_53
        STR      R0,[SP, #+4]
        MOV      R0,#+4
        STR      R0,[SP, #+0]
        MOV      R3,#+4
        LDR      R2,??DataTable4_54
        MOV      R1,#+0
        LDR      R0,??DataTable4_55
        BL       OSTaskCreateExt
        ADD      R2,SP,#+20
        LDR      R1,??DataTable4_56
        MOV      R0,#+4
        BL       OSTaskNameSet
        MOV      R0,#+3
        STR      R0,[SP, #+16]
        MOV      R0,#+0
        STR      R0,[SP, #+12]
        MOV      R0,#+128
        STR      R0,[SP, #+8]
        LDR      R0,??DataTable4_57
        STR      R0,[SP, #+4]
        MOV      R0,#+5
        STR      R0,[SP, #+0]
        MOV      R3,#+5
        LDR      R2,??DataTable4_58
        MOV      R1,#+0
        LDR      R0,??DataTable4_59
        BL       OSTaskCreateExt
        ADD      R2,SP,#+20
        LDR      R1,??DataTable4_60
        MOV      R0,#+5
        BL       OSTaskNameSet
        MOV      R0,#+3
        STR      R0,[SP, #+16]
        MOV      R0,#+0
        STR      R0,[SP, #+12]
        MOV      R0,#+128
        STR      R0,[SP, #+8]
        LDR      R0,??DataTable4_61
        STR      R0,[SP, #+4]
        MOV      R0,#+10
        STR      R0,[SP, #+0]
        MOV      R3,#+10
        LDR      R2,??DataTable4_62
        MOV      R1,#+0
        LDR      R0,??DataTable4_63
        BL       OSTaskCreateExt
        ADD      R2,SP,#+20
        LDR      R1,??DataTable4_64
        MOV      R0,#+10
        BL       OSTaskNameSet
        MOV      R0,#+3
        STR      R0,[SP, #+16]
        MOV      R0,#+0
        STR      R0,[SP, #+12]
        MOV      R0,#+128
        STR      R0,[SP, #+8]
        LDR      R0,??DataTable4_65
        STR      R0,[SP, #+4]
        MOV      R0,#+3
        STR      R0,[SP, #+0]
        MOV      R3,#+3
        LDR      R2,??DataTable4_66
        MOV      R1,#+0
        LDR      R0,??DataTable4_67
        BL       OSTaskCreateExt
        ADD      R2,SP,#+20
        LDR      R1,??DataTable4_68
        MOV      R0,#+3
        BL       OSTaskNameSet
        MOV      R0,#+3
        STR      R0,[SP, #+16]
        MOV      R0,#+0
        STR      R0,[SP, #+12]
        MOV      R0,#+128
        STR      R0,[SP, #+8]
        LDR      R0,??DataTable4_69
        STR      R0,[SP, #+4]
        MOV      R0,#+6
        STR      R0,[SP, #+0]
        MOV      R3,#+6
        LDR      R2,??DataTable4_70
        MOV      R1,#+0
        LDR      R0,??DataTable4_71
        BL       OSTaskCreateExt
        ADD      R2,SP,#+20
        LDR      R1,??DataTable4_72
        MOV      R0,#+6
        BL       OSTaskNameSet
        MOV      R0,#+3
        STR      R0,[SP, #+16]
        MOV      R0,#+0
        STR      R0,[SP, #+12]
        MOV      R0,#+256
        STR      R0,[SP, #+8]
        LDR      R0,??DataTable4_73
        STR      R0,[SP, #+4]
        MOV      R0,#+8
        STR      R0,[SP, #+0]
        MOV      R3,#+8
        LDR      R2,??DataTable4_74
        MOV      R1,#+0
        LDR      R0,??DataTable4_75
        BL       OSTaskCreateExt
        ADD      R2,SP,#+20
        LDR      R1,??DataTable4_76
        MOV      R0,#+8
        BL       OSTaskNameSet
        ADD      SP,SP,#+28       ;; stack cleaning
        POP      {LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Task_ReCreate_Shell:
        PUSH     {LR}
        SUB      SP,SP,#+28
        MOV      R0,#+3
        STR      R0,[SP, #+16]
        MOV      R0,#+0
        STR      R0,[SP, #+12]
        MOV      R0,#+256
        STR      R0,[SP, #+8]
        LDR      R0,??DataTable4_45
        STR      R0,[SP, #+4]
        MOV      R0,#+20
        STR      R0,[SP, #+0]
        MOV      R3,#+20
        LDR      R2,??DataTable4_46
        MOV      R1,#+0
        LDR      R0,??DataTable4_47
        BL       OSTaskCreateExt
        ADD      R2,SP,#+20
        LDR      R1,??DataTable4_48
        MOV      R0,#+20
        BL       OSTaskNameSet
        ADD      SP,SP,#+28       ;; stack cleaning
        POP      {LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     App_TaskStartStk

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     App_TaskStartStk+0x1FC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     `?<Constant "Start">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     `?<Constant "Creating Application ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     MemPartition_MsgUART

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     pMEM_Part_MsgUART

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     `?<Constant "MEM_Part_MsgUART">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     `?<Constant "Creating Application ...">_1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     App_UserIF_Mbox

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     ACK_Sem_PCUART

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     ACK_Sem_RulerUART

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     Done_Sem_RulerUART

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_12:
        DC32     MsgQ_PCUART2Noah

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_13:
        DC32     EVENT_MsgQ_PCUART2Noah

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_14:
        DC32     MsgQ_Noah2PCUART

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_15:
        DC32     EVENT_MsgQ_Noah2PCUART

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_16:
        DC32     MsgQ_RulerUART2Noah

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_17:
        DC32     EVENT_MsgQ_RulerUART2Noah

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_18:
        DC32     MsgQ_Noah2RulerUART

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_19:
        DC32     EVENT_MsgQ_Noah2RulerUART

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_20:
        DC32     MsgQ_Noah2CMDParse

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_21:
        DC32     EVENT_MsgQ_Noah2CMDParse

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_22:
        DC32     Bsp_Ser_Tx_Sem_lock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_23:
        DC32     Bsp_Ser_Rx_Sem_lock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_24:
        DC32     DBGU_Tx_Sem_lock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_25:
        DC32     UART_MUX_Sem_lock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_26:
        DC32     `?<Constant "Joy->UserI/F Mbox">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_27:
        DC32     `?<Constant "PCUART_Tx_ACK_Sem">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_28:
        DC32     `?<Constant "RulerUART_Tx_ACK_Sem">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_29:
        DC32     `?<Constant "Done_Sem_RulerUART">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_30:
        DC32     `?<Constant "EVENT_MsgQ_PCUART2Noah">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_31:
        DC32     `?<Constant "EVENT_MsgQ_Noah2PCUART">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_32:
        DC32     `?<Constant "EVENT_MsgQ_RulerUART2...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_33:
        DC32     `?<Constant "EVENT_MsgQ_Noah2Ruler...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_34:
        DC32     `?<Constant "EVENT_MsgQ_Noah2CMDParse">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_35:
        DC32     `?<Constant "Bsp_Ser_Tx_Sem_lock">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_36:
        DC32     `?<Constant "DBGU_Tx_Sem_lock">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_37:
        DC32     `?<Constant "DBGU_Rx_Sem_lock">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_38:
        DC32     DBGU_Rx_Sem_lock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_39:
        DC32     `?<Constant "UART_MUX_Sem_lock">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_40:
        DC32     `?<Constant "Creating Application ...">_2`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_41:
        DC32     App_TaskJoyStk

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_42:
        DC32     App_TaskJoyStk+0xFC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_43:
        DC32     App_TaskJoy

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_44:
        DC32     `?<Constant "Keyboard">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_45:
        DC32     App_TaskGenieShellStk

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_46:
        DC32     App_TaskGenieShellStk+0x3FC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_47:
        DC32     App_TaskGenieShell

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_48:
        DC32     `?<Constant "Genie_shell">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_49:
        DC32     App_TaskUART_TxStk

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_50:
        DC32     App_TaskUART_TxStk+0x1FC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_51:
        DC32     App_TaskUART_Tx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_52:
        DC32     `?<Constant "Uart_tx">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_53:
        DC32     App_TaskUART_RxStk

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_54:
        DC32     App_TaskUART_RxStk+0x1FC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_55:
        DC32     App_TaskUART_Rx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_56:
        DC32     `?<Constant "Uart_rx">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_57:
        DC32     App_TaskNoahStk

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_58:
        DC32     App_TaskNoahStk+0x1FC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_59:
        DC32     App_TaskNoah

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_60:
        DC32     `?<Constant "Noah">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_61:
        DC32     App_TaskUserIF_Stk

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_62:
        DC32     App_TaskUserIF_Stk+0x1FC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_63:
        DC32     App_TaskUserIF

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_64:
        DC32     `?<Constant "UserI/F">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_65:
        DC32     App_TaskUART_TxRulerStk

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_66:
        DC32     App_TaskUART_TxRulerStk+0x1FC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_67:
        DC32     App_TaskUART_Tx_Ruler

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_68:
        DC32     `?<Constant "Uart_tx_ruler">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_69:
        DC32     App_TaskNoahRulerStk

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_70:
        DC32     App_TaskNoahRulerStk+0x1FC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_71:
        DC32     App_TaskNoah_Ruler

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_72:
        DC32     `?<Constant "Noah_Ruler">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_73:
        DC32     App_TaskCMDParseStk

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_74:
        DC32     App_TaskCMDParseStk+0x3FC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_75:
        DC32     App_TaskCMDParse

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_76:
        DC32     `?<Constant "CMD_Parse">`

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Start">`:
        DATA
        DC8 "Start"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Creating Application ...">`:
        DATA
        DC8 "Creating Application Buffer...\015\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "MEM_Part_MsgUART">`:
        DATA
        DC8 "MEM_Part_MsgUART"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Creating Application ...">_1`:
        DATA
        DC8 "Creating Application Events...\015\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Joy->UserI/F Mbox">`:
        DATA
        DC8 "Joy->UserI/F Mbox"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "PCUART_Tx_ACK_Sem">`:
        DATA
        DC8 "PCUART_Tx_ACK_Sem"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "RulerUART_Tx_ACK_Sem">`:
        DATA
        DC8 "RulerUART_Tx_ACK_Sem"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Done_Sem_RulerUART">`:
        DATA
        DC8 "Done_Sem_RulerUART"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "EVENT_MsgQ_PCUART2Noah">`:
        DATA
        DC8 "EVENT_MsgQ_PCUART2Noah"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "EVENT_MsgQ_Noah2PCUART">`:
        DATA
        DC8 "EVENT_MsgQ_Noah2PCUART"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "EVENT_MsgQ_RulerUART2...">`:
        DATA
        DC8 "EVENT_MsgQ_RulerUART2Noah"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "EVENT_MsgQ_Noah2Ruler...">`:
        DATA
        DC8 "EVENT_MsgQ_Noah2RulerUART"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "EVENT_MsgQ_Noah2CMDParse">`:
        DATA
        DC8 "EVENT_MsgQ_Noah2CMDParse"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Bsp_Ser_Tx_Sem_lock">`:
        DATA
        DC8 "Bsp_Ser_Tx_Sem_lock"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "DBGU_Tx_Sem_lock">`:
        DATA
        DC8 "DBGU_Tx_Sem_lock"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "DBGU_Rx_Sem_lock">`:
        DATA
        DC8 "DBGU_Rx_Sem_lock"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "UART_MUX_Sem_lock">`:
        DATA
        DC8 "UART_MUX_Sem_lock"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Creating Application ...">_2`:
        DATA
        DC8 "Creating Application Tasks...\015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Keyboard">`:
        DATA
        DC8 "Keyboard"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Genie_shell">`:
        DATA
        DC8 "Genie_shell"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Uart_tx">`:
        DATA
        DC8 "Uart_tx"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Uart_rx">`:
        DATA
        DC8 "Uart_rx"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Noah">`:
        DATA
        DC8 "Noah"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "UserI/F">`:
        DATA
        DC8 "UserI/F"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Uart_tx_ruler">`:
        DATA
        DC8 "Uart_tx_ruler"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Noah_Ruler">`:
        DATA
        DC8 "Noah_Ruler"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "CMD_Parse">`:
        DATA
        DC8 "CMD_Parse"
        DC8 0, 0

        END
// 
// 5 888 bytes in section .bss
//   524 bytes in section .rodata
// 1 984 bytes in section .text
// 
// 1 984 bytes of CODE  memory
//   524 bytes of CONST memory
// 5 888 bytes of DATA  memory
//
//Errors: none
//Warnings: none
