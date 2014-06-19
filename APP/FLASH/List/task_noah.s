///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       13/Jun/2014  16:27:48
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\task_noah.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\task_noah.c" -lcN
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
//        E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\FLASH\List\task_noah.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN CheckSum
        EXTERN EVENT_MsgQ_Noah2CMDParse
        EXTERN EVENT_MsgQ_Noah2PCUART
        EXTERN EVENT_MsgQ_PCUART2Noah
        EXTERN LED_Toggle
        EXTERN OSMemPut
        EXTERN OSQAccept
        EXTERN OSQPend
        EXTERN OSQPost
        EXTERN OSSemPost
        EXTERN OSSemSet
        EXTERN OSTimeDly
        EXTERN PcCmdTxID
        EXTERN Queue_Flush
        EXTERN Queue_NData
        EXTERN pMEM_Part_MsgUART
        EXTERN pUART_Rece_Buf
        EXTERN pUART_Send_Buf
        EXTERN pcSendDateToBuf

        PUBLIC ACK_Sem_PCUART
        PUBLIC App_TaskNoah
        PUBLIC Global_Conn_Ready


        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ACK_Sem_PCUART:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
Global_Conn_Ready:
        DS8 1

        SECTION `.text`:CODE:NOROOT(2)
        ARM
App_TaskNoah:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+20
        MOVS     R4,R0
        MOV      R0,#+0
        MOVS     R10,R0
        MOV      R0,#+0
        MOVS     R11,R0
??App_TaskNoah_0:
        ADD      R2,SP,#+12
        MOV      R1,#+0
        LDR      R0,??App_TaskNoah_1
        LDR      R0,[R0, #+0]
        BL       OSQPend
        MOVS     R10,R0
        CMP      R10,#+0
        BEQ      ??App_TaskNoah_0
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BNE      ??App_TaskNoah_0
        MOVS     R6,R10
        MOVS     R5,R6
        LDRB     R0,[R5, #+0]
        ANDS     R0,R0,#0xC0
        MOVS     R7,R0
        LDRB     R0,[R5, #+258]
        MOVS     R9,R0
        MOV      R0,#+1
        BL       LED_Toggle
        LDRB     R0,[R5, #+0]
        ANDS     R0,R0,#0x3F
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??App_TaskNoah_2
        CMP      R0,#+1
        BEQ      ??App_TaskNoah_3
        CMP      R0,#+2
        BEQ      ??App_TaskNoah_4
        CMP      R0,#+62
        BEQ      ??App_TaskNoah_5
        CMP      R0,#+63
        BEQ      ??App_TaskNoah_6
        B        ??App_TaskNoah_7
??App_TaskNoah_4:
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??App_TaskNoah_8
        LDRB     R0,[R5, #+1]
        ADDS     R2,R0,#+2
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        MOVS     R1,R6
        MOV      R0,#+0
        BL       CheckSum
        ANDS     R9,R9,#0xFF      ;; Zero extend
        CMP      R9,R0
        BNE      ??App_TaskNoah_9
??App_TaskNoah_8:
        MOV      R0,#+0
        STR      R0,[SP, #+8]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+0
        STR      R0,[SP, #+0]
        MOV      R3,#+0
        MOV      R2,#+0
        ANDS     R1,R7,#0xC0
        LDR      R0,??App_TaskNoah_1+0x4
        LDR      R0,[R0, #+0]
        BL       pcSendDateToBuf
        MOV      R0,#+0
??App_TaskNoah_10:
        LDRB     R1,[R5, #+1]
        CMP      R0,R1
        BCS      ??App_TaskNoah_11
        ADDS     R0,R0,#+1
        B        ??App_TaskNoah_10
??App_TaskNoah_11:
        ADDS     R0,R8,#+64
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ANDS     R7,R7,#0xFF      ;; Zero extend
        CMP      R0,R7
        BNE      ??App_TaskNoah_12
        MOVS     R8,R7
        MOVS     R1,R10
        LDR      R0,??App_TaskNoah_1+0x8
        LDR      R0,[R0, #+0]
        BL       OSQPost
        STRB     R0,[SP, #+12]
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BEQ      ??App_TaskNoah_13
        MOV      R0,#+255
        STRB     R0,[SP, #+14]
        MOV      R0,#+150
        STRB     R0,[SP, #+15]
        MOV      R0,#+0
        STR      R0,[SP, #+8]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+0
        STR      R0,[SP, #+0]
        MOV      R3,#+2
        ADD      R2,SP,#+14
        MOV      R1,#+2
        LDR      R0,??App_TaskNoah_1+0x4
        LDR      R0,[R0, #+0]
        BL       pcSendDateToBuf
        MOVS     R1,R10
        LDR      R0,??App_TaskNoah_1+0xC
        LDR      R0,[R0, #+0]
        BL       OSMemPut
        B        ??App_TaskNoah_13
??App_TaskNoah_12:
        B        ??App_TaskNoah_13
??App_TaskNoah_9:
        MOV      R0,#+0
        STR      R0,[SP, #+8]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+0
        STR      R0,[SP, #+0]
        MOV      R3,#+0
        MOV      R2,#+0
        ANDS     R0,R7,#0xC0
        ORRS     R1,R0,#0x1
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??App_TaskNoah_1+0x4
        LDR      R0,[R0, #+0]
        BL       pcSendDateToBuf
??App_TaskNoah_13:
        B        ??App_TaskNoah_0
??App_TaskNoah_5:
        MOV      R0,#+0
        STR      R0,[SP, #+8]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+1
        STR      R0,[SP, #+0]
        MOV      R3,#+0
        MOV      R2,#+0
        ORRS     R1,R7,#0x3F
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??App_TaskNoah_1+0x4
        LDR      R0,[R0, #+0]
        BL       pcSendDateToBuf
        LDR      R0,??App_TaskNoah_1+0x10
        LDR      R0,[R0, #+0]
        BL       OSSemPost
        MOV      R0,#+10
        BL       OSTimeDly
??App_TaskNoah_14:
        LDR      R0,??App_TaskNoah_1+0x14
        LDR      R0,[R0, #+0]
        BL       Queue_NData
        CMP      R0,#+0
        BEQ      ??App_TaskNoah_15
        MOV      R0,#+1
        BL       OSTimeDly
        B        ??App_TaskNoah_14
??App_TaskNoah_15:
        ADD      R2,SP,#+12
        MOV      R1,#+0
        LDR      R0,??App_TaskNoah_1+0x10
        LDR      R0,[R0, #+0]
        BL       OSSemSet
??App_TaskNoah_6:
        MOV      R0,#+192
        MOVS     R8,R0
        LDR      R0,??App_TaskNoah_1+0x18
        STRB     R7,[R0, #+0]
??App_TaskNoah_16:
        ADD      R1,SP,#+12
        LDR      R0,??App_TaskNoah_1+0x4
        LDR      R0,[R0, #+0]
        BL       OSQAccept
        MOVS     R11,R0
        MOVS     R1,R11
        LDR      R0,??App_TaskNoah_1+0xC
        LDR      R0,[R0, #+0]
        BL       OSMemPut
        CMP      R11,#+0
        BEQ      ??App_TaskNoah_17
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BEQ      ??App_TaskNoah_16
??App_TaskNoah_17:
        ADD      R1,SP,#+12
        LDR      R0,??App_TaskNoah_1
        LDR      R0,[R0, #+0]
        BL       OSQAccept
        MOVS     R11,R0
        MOVS     R1,R11
        LDR      R0,??App_TaskNoah_1+0xC
        LDR      R0,[R0, #+0]
        BL       OSMemPut
        CMP      R11,#+0
        BEQ      ??App_TaskNoah_18
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BEQ      ??App_TaskNoah_17
??App_TaskNoah_18:
        LDR      R0,??App_TaskNoah_1+0x14
        LDR      R0,[R0, #+0]
        BL       Queue_Flush
        LDR      R0,??App_TaskNoah_1+0x1C
        LDR      R0,[R0, #+0]
        BL       Queue_Flush
        MOV      R0,#+1
        LDR      R1,??App_TaskNoah_1+0x20
        STRB     R0,[R1, #+0]
        MOVS     R1,R10
        LDR      R0,??App_TaskNoah_1+0xC
        LDR      R0,[R0, #+0]
        BL       OSMemPut
        B        ??App_TaskNoah_0
??App_TaskNoah_2:
        LDR      R0,??App_TaskNoah_1+0x18
        LDRB     R0,[R0, #+0]
        ANDS     R7,R7,#0xFF      ;; Zero extend
        CMP      R7,R0
        BNE      ??App_TaskNoah_19
        LDR      R0,??App_TaskNoah_1+0x10
        LDR      R0,[R0, #+0]
        BL       OSSemPost
??App_TaskNoah_19:
        MOVS     R1,R10
        LDR      R0,??App_TaskNoah_1+0xC
        LDR      R0,[R0, #+0]
        BL       OSMemPut
        B        ??App_TaskNoah_0
??App_TaskNoah_3:
        MOVS     R1,R10
        LDR      R0,??App_TaskNoah_1+0xC
        LDR      R0,[R0, #+0]
        BL       OSMemPut
        B        ??App_TaskNoah_0
??App_TaskNoah_7:
        MOVS     R1,R10
        LDR      R0,??App_TaskNoah_1+0xC
        LDR      R0,[R0, #+0]
        BL       OSMemPut
        B        ??App_TaskNoah_0
        DATA
??App_TaskNoah_1:
        DC32     EVENT_MsgQ_PCUART2Noah
        DC32     EVENT_MsgQ_Noah2PCUART
        DC32     EVENT_MsgQ_Noah2CMDParse
        DC32     pMEM_Part_MsgUART
        DC32     ACK_Sem_PCUART
        DC32     pUART_Send_Buf
        DC32     PcCmdTxID
        DC32     pUART_Rece_Buf
        DC32     Global_Conn_Ready

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
//   5 bytes in section .bss
// 932 bytes in section .text
// 
// 932 bytes of CODE memory
//   5 bytes of DATA memory
//
//Errors: none
//Warnings: none
