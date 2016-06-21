///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       21/Jun/2016  16:45:29
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        F:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\task_uart_tx.c
//    Command line =  
//        "F:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\task_uart_tx.c"
//        -lcN "F:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\"
//        -lb "F:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\" -o
//        "F:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\Obj\"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=ARM7TDMI -e --fpu=None --dlib_config "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
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
//        F:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\FLASH\List\task_uart_tx.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN ACK_Sem_PCUART
        EXTERN CheckSum
        EXTERN Global_Conn_Ready
        EXTERN OSMemPut
        EXTERN OSQPend
        EXTERN OSSemPend
        EXTERN Queue_Write
        EXTERN Queue_WriteBuf
        EXTERN UART_WriteStart
        EXTERN pUART_Send_Buf
        EXTERN pcSendDateToBuf

        PUBLIC App_TaskUART_Tx
        PUBLIC EVENT_MsgQ_Noah2PCUART
        PUBLIC EVENT_MsgQ_PCUART2Noah
        PUBLIC MemPartition_MsgUART
        PUBLIC MsgQ_Noah2PCUART
        PUBLIC MsgQ_PCUART2Noah
        PUBLIC PcCmdTxID
        PUBLIC Tx_ReSend_Happens
        PUBLIC pMEM_Part_MsgUART


        SECTION `.bss`:DATA:REORDER:NOROOT(2)
MemPartition_MsgUART:
        DS8 2600

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
pMEM_Part_MsgUART:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
MsgQ_PCUART2Noah:
        DS8 40

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
MsgQ_Noah2PCUART:
        DS8 40

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
EVENT_MsgQ_PCUART2Noah:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
EVENT_MsgQ_Noah2PCUART:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Tx_ReSend_Happens:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
PcCmdTxID:
        DS8 1

        SECTION `.text`:CODE:NOROOT(2)
        ARM
App_TaskUART_Tx:
        PUSH     {R0-R8,LR}
        MOVS     R4,R0
        MOV      R0,#+0
        MOVS     R6,R0
        MOV      R0,#+0
        MOVS     R7,R0
        MOV      R0,#+0
        MOVS     R5,R0
        MOV      R0,#+102
        STRB     R0,[SP, #+12]
        MOV      R0,#+0
        STR      R0,[SP, #+8]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+0
        STR      R0,[SP, #+0]
        MOV      R3,#+0
        MOV      R2,#+0
        LDR      R0,??App_TaskUART_Tx_0
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0xC0
        ORRS     R1,R0,#0x3E
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??App_TaskUART_Tx_0+0x4
        LDR      R0,[R0, #+0]
        BL       pcSendDateToBuf
??App_TaskUART_Tx_1:
        ADD      R2,SP,#+12
        MOV      R1,#+0
        LDR      R0,??App_TaskUART_Tx_0+0x4
        LDR      R0,[R0, #+0]
        BL       OSQPend
        MOVS     R6,R0
        CMP      R6,#+0
        BEQ      ??App_TaskUART_Tx_1
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BNE      ??App_TaskUART_Tx_1
        MOVS     R7,R6
        LDRB     R0,[R7, #+0]
        ANDS     R0,R0,#0x3F
        CMP      R0,#+2
        BNE      ??App_TaskUART_Tx_2
        MOV      R0,#+0
        MOVS     R8,R0
??App_TaskUART_Tx_3:
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+3
        BGE      ??App_TaskUART_Tx_4
        MOV      R1,#+235
        LDR      R0,??App_TaskUART_Tx_0+0x8
        LDR      R0,[R0, #+0]
        BL       Queue_Write
        MOV      R1,#+144
        LDR      R0,??App_TaskUART_Tx_0+0x8
        LDR      R0,[R0, #+0]
        BL       Queue_Write
        LDR      R0,??App_TaskUART_Tx_0
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0xC0
        ORRS     R0,R0,#0x2
        STRB     R0,[R7, #+0]
        LDRB     R0,[R7, #+1]
        ADDS     R2,R0,#+1
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        ADDS     R1,R7,#+1
        LDRB     R0,[R7, #+0]
        BL       CheckSum
        MOVS     R5,R0
        LDRB     R0,[R7, #+1]
        ADDS     R2,R0,#+2
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        LDR      R0,??App_TaskUART_Tx_0+0x8
        LDR      R1,[R0, #+0]
        MOVS     R0,R6
        BL       Queue_WriteBuf
        MOVS     R1,R5
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??App_TaskUART_Tx_0+0x8
        LDR      R0,[R0, #+0]
        BL       Queue_Write
        MOV      R0,#+0
        BL       UART_WriteStart
        ADD      R2,SP,#+12
        MOV      R1,#+500
        LDR      R0,??App_TaskUART_Tx_0+0xC
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BNE      ??App_TaskUART_Tx_5
        MOVS     R1,R6
        LDR      R0,??App_TaskUART_Tx_0+0x10
        LDR      R0,[R0, #+0]
        BL       OSMemPut
        LDR      R0,??App_TaskUART_Tx_0
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+64
        LDR      R1,??App_TaskUART_Tx_0
        STRB     R0,[R1, #+0]
        B        ??App_TaskUART_Tx_4
??App_TaskUART_Tx_5:
        ADDS     R8,R8,#+1
        B        ??App_TaskUART_Tx_3
??App_TaskUART_Tx_4:
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+3
        BLT      ??App_TaskUART_Tx_6
        MOVS     R1,R6
        LDR      R0,??App_TaskUART_Tx_0+0x10
        LDR      R0,[R0, #+0]
        BL       OSMemPut
        MOV      R0,#+0
        STR      R0,[SP, #+8]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+1
        STR      R0,[SP, #+0]
        MOV      R3,#+0
        MOV      R2,#+0
        LDR      R0,??App_TaskUART_Tx_0
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        ANDS     R0,R0,#0xC0
        ORRS     R1,R0,#0x3E
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??App_TaskUART_Tx_0+0x4
        LDR      R0,[R0, #+0]
        BL       pcSendDateToBuf
        MOV      R0,#+0
        LDR      R1,??App_TaskUART_Tx_0+0x14
        STRB     R0,[R1, #+0]
??App_TaskUART_Tx_6:
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+2
        BLT      ??App_TaskUART_Tx_1
        LDR      R0,??App_TaskUART_Tx_0+0x18
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??App_TaskUART_Tx_0+0x18
        STR      R0,[R1, #+0]
        B        ??App_TaskUART_Tx_1
??App_TaskUART_Tx_2:
        MOV      R1,#+235
        LDR      R0,??App_TaskUART_Tx_0+0x8
        LDR      R0,[R0, #+0]
        BL       Queue_Write
        MOV      R1,#+144
        LDR      R0,??App_TaskUART_Tx_0+0x8
        LDR      R0,[R0, #+0]
        BL       Queue_Write
        MOV      R2,#+2
        LDR      R0,??App_TaskUART_Tx_0+0x8
        LDR      R1,[R0, #+0]
        MOVS     R0,R6
        BL       Queue_WriteBuf
        MOVS     R1,R6
        LDR      R0,??App_TaskUART_Tx_0+0x10
        LDR      R0,[R0, #+0]
        BL       OSMemPut
        MOV      R0,#+0
        BL       UART_WriteStart
        B        ??App_TaskUART_Tx_1
        DATA
??App_TaskUART_Tx_0:
        DC32     PcCmdTxID
        DC32     EVENT_MsgQ_Noah2PCUART
        DC32     pUART_Send_Buf
        DC32     ACK_Sem_PCUART
        DC32     pMEM_Part_MsgUART
        DC32     Global_Conn_Ready
        DC32     Tx_ReSend_Happens

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
// 2 697 bytes in section .bss
//   676 bytes in section .text
// 
//   676 bytes of CODE memory
// 2 697 bytes of DATA memory
//
//Errors: none
//Warnings: none
