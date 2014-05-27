///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       22/May/2014  14:14:57
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\task_uart_tx_ruler.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\task_uart_tx_ruler.c" -lcN "E:\SVN
//        Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\" -lb "E:\SVN
//        Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\" -o "E:\SVN
//        Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\Obj\" --no_cse
//        --no_unroll --no_inline --no_code_motion --no_tbaa --no_clustering
//        --no_scheduling --debug --endian=little --cpu=ARM7TDMI -e --fpu=None
//        --dlib_config "C:\Program Files (x86)\IAR Systems\Embedded Workbench
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
//        E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\FLASH\List\task_uart_tx_ruler.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN ACK_Sem_RulerUART
        EXTERN CheckSum
        EXTERN Global_Ruler_Index
        EXTERN OSMemPut
        EXTERN OSQPend
        EXTERN OSSemPend
        EXTERN Queue_Write
        EXTERN Queue_WriteBuf
        EXTERN UART_WriteStart
        EXTERN pMEM_Part_MsgUART
        EXTERN pUART_Send_Buf
        EXTERN pcSendDateToBuf

        PUBLIC App_TaskUART_Tx_Ruler
        PUBLIC EVENT_MsgQ_Noah2RulerUART
        PUBLIC EVENT_MsgQ_RulerUART2Noah
        PUBLIC MsgQ_Noah2RulerUART
        PUBLIC MsgQ_RulerUART2Noah
        PUBLIC PcCmdTxID_Ruler
        PUBLIC Tx_ReSend_Happens_Ruler


        SECTION `.bss`:DATA:REORDER:NOROOT(2)
MsgQ_RulerUART2Noah:
        DS8 40

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
MsgQ_Noah2RulerUART:
        DS8 40

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
EVENT_MsgQ_RulerUART2Noah:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
EVENT_MsgQ_Noah2RulerUART:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Tx_ReSend_Happens_Ruler:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
PcCmdTxID_Ruler:
        DS8 4

        SECTION `.text`:CODE:NOROOT(2)
        ARM
App_TaskUART_Tx_Ruler:
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
??App_TaskUART_Tx_Ruler_0:
        ADD      R2,SP,#+12
        MOV      R1,#+0
        LDR      R0,??App_TaskUART_Tx_Ruler_1
        LDR      R0,[R0, #+0]
        BL       OSQPend
        MOVS     R6,R0
        CMP      R6,#+0
        BEQ      ??App_TaskUART_Tx_Ruler_0
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BNE      ??App_TaskUART_Tx_Ruler_0
        MOVS     R7,R6
        LDRB     R0,[R7, #+0]
        ANDS     R0,R0,#0x3F
        CMP      R0,#+2
        BNE      ??App_TaskUART_Tx_Ruler_2
        MOV      R0,#+0
        MOVS     R8,R0
??App_TaskUART_Tx_Ruler_3:
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+3
        BGE      ??App_TaskUART_Tx_Ruler_4
        MOV      R0,#+0
??App_TaskUART_Tx_Ruler_5:
        LDRB     R1,[R7, #+1]
        CMP      R0,R1
        BCS      ??App_TaskUART_Tx_Ruler_6
        ADDS     R0,R0,#+1
        B        ??App_TaskUART_Tx_Ruler_5
??App_TaskUART_Tx_Ruler_6:
        MOV      R1,#+235
        LDR      R0,??App_TaskUART_Tx_Ruler_1+0x4
        LDR      R0,[R0, #+4]
        BL       Queue_Write
        MOV      R1,#+144
        LDR      R0,??App_TaskUART_Tx_Ruler_1+0x4
        LDR      R0,[R0, #+4]
        BL       Queue_Write
        LDR      R0,??App_TaskUART_Tx_Ruler_1+0x8
        LDRB     R0,[R0, #+0]
        LDR      R1,??App_TaskUART_Tx_Ruler_1+0xC
        LDRB     R0,[R0, +R1]
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
        LDR      R0,??App_TaskUART_Tx_Ruler_1+0x4
        LDR      R1,[R0, #+4]
        MOVS     R0,R6
        BL       Queue_WriteBuf
        MOVS     R1,R5
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??App_TaskUART_Tx_Ruler_1+0x4
        LDR      R0,[R0, #+4]
        BL       Queue_Write
        MOV      R0,#+1
        BL       UART_WriteStart
        ADD      R2,SP,#+12
        MOV      R1,#+500
        LDR      R0,??App_TaskUART_Tx_Ruler_1+0x10
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BNE      ??App_TaskUART_Tx_Ruler_7
        MOVS     R1,R6
        LDR      R0,??App_TaskUART_Tx_Ruler_1+0x14
        LDR      R0,[R0, #+0]
        BL       OSMemPut
        LDR      R0,??App_TaskUART_Tx_Ruler_1+0x8
        LDRB     R0,[R0, #+0]
        MOVS     R1,R0
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R2,??App_TaskUART_Tx_Ruler_1+0xC
        LDRB     R1,[R1, +R2]
        ADDS     R1,R1,#+64
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R2,??App_TaskUART_Tx_Ruler_1+0xC
        STRB     R1,[R0, +R2]
        B        ??App_TaskUART_Tx_Ruler_4
??App_TaskUART_Tx_Ruler_7:
        ADDS     R8,R8,#+1
        B        ??App_TaskUART_Tx_Ruler_3
??App_TaskUART_Tx_Ruler_4:
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+3
        BLT      ??App_TaskUART_Tx_Ruler_8
        MOVS     R1,R6
        LDR      R0,??App_TaskUART_Tx_Ruler_1+0x14
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
        LDR      R0,??App_TaskUART_Tx_Ruler_1+0x8
        LDRB     R0,[R0, #+0]
        LDR      R1,??App_TaskUART_Tx_Ruler_1+0xC
        LDRB     R0,[R0, +R1]
        ADDS     R0,R0,#+1
        ANDS     R0,R0,#0xC0
        ORRS     R1,R0,#0x3E
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??App_TaskUART_Tx_Ruler_1
        LDR      R0,[R0, #+0]
        BL       pcSendDateToBuf
??App_TaskUART_Tx_Ruler_8:
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+2
        BLT      ??App_TaskUART_Tx_Ruler_0
        LDR      R0,??App_TaskUART_Tx_Ruler_1+0x18
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??App_TaskUART_Tx_Ruler_1+0x18
        STR      R0,[R1, #+0]
        B        ??App_TaskUART_Tx_Ruler_0
??App_TaskUART_Tx_Ruler_2:
        MOV      R1,#+235
        LDR      R0,??App_TaskUART_Tx_Ruler_1+0x4
        LDR      R0,[R0, #+4]
        BL       Queue_Write
        MOV      R1,#+144
        LDR      R0,??App_TaskUART_Tx_Ruler_1+0x4
        LDR      R0,[R0, #+4]
        BL       Queue_Write
        MOV      R2,#+2
        LDR      R0,??App_TaskUART_Tx_Ruler_1+0x4
        LDR      R1,[R0, #+4]
        MOVS     R0,R6
        BL       Queue_WriteBuf
        MOV      R0,#+1
        BL       UART_WriteStart
        LDRB     R0,[R7, #+0]
        TST      R0,#0x3F
        BEQ      ??App_TaskUART_Tx_Ruler_9
??App_TaskUART_Tx_Ruler_10:
        LDRB     R0,[R7, #+0]
        ANDS     R0,R0,#0x3F
        CMP      R0,#+1
        BEQ      ??App_TaskUART_Tx_Ruler_9
??App_TaskUART_Tx_Ruler_11:
        LDRB     R0,[R7, #+0]
        ANDS     R0,R0,#0x3F
        CMP      R0,#+62
        BEQ      ??App_TaskUART_Tx_Ruler_9
??App_TaskUART_Tx_Ruler_12:
        LDRB     R0,[R7, #+0]
        ANDS     R0,R0,#0x3F
        CMP      R0,#+63
        BEQ      ??App_TaskUART_Tx_Ruler_9
??App_TaskUART_Tx_Ruler_13:
??App_TaskUART_Tx_Ruler_9:
        MOVS     R1,R6
        LDR      R0,??App_TaskUART_Tx_Ruler_1+0x14
        LDR      R0,[R0, #+0]
        BL       OSMemPut
        B        ??App_TaskUART_Tx_Ruler_0
        DATA
??App_TaskUART_Tx_Ruler_1:
        DC32     EVENT_MsgQ_Noah2RulerUART
        DC32     pUART_Send_Buf
        DC32     Global_Ruler_Index
        DC32     PcCmdTxID_Ruler
        DC32     ACK_Sem_RulerUART
        DC32     pMEM_Part_MsgUART
        DC32     Tx_ReSend_Happens_Ruler

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
//  96 bytes in section .bss
// 720 bytes in section .text
// 
// 720 bytes of CODE memory
//  96 bytes of DATA memory
//
//Errors: none
//Warnings: none
