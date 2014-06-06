///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       06/Jun/2014  17:56:49
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\task_noah_ruler.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\task_noah_ruler.c"
//        -lcN "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\"
//        -lb "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\" -o
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
//        Bench\Bridge_Host_OS\APP\FLASH\List\task_noah_ruler.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN BSP_Ser_Printf
        EXTERN CheckSum
        EXTERN EVENT_MsgQ_Noah2RulerUART
        EXTERN EVENT_MsgQ_RulerUART2Noah
        EXTERN Global_Ruler_Index
        EXTERN LED_Toggle
        EXTERN Noah_CMD_Parse_Ruler
        EXTERN OSMemPut
        EXTERN OSQAccept
        EXTERN OSQPend
        EXTERN OSSemPost
        EXTERN OSSemSet
        EXTERN OSTimeDly
        EXTERN PcCmdTxID_Ruler
        EXTERN Queue_Flush
        EXTERN Ruler_CMD_Result
        EXTERN pMEM_Part_MsgUART
        EXTERN pUART_Rece_Buf
        EXTERN pUART_Send_Buf
        EXTERN pcSendDateToBuf

        PUBLIC ACK_Sem_RulerUART
        PUBLIC App_TaskNoah_Ruler
        PUBLIC Done_Sem_RulerUART
        PUBLIC UART_MUX_Sem_lock
        PUBLIC test_counter1
        PUBLIC test_counter2
        PUBLIC test_counter3
        PUBLIC test_counter4
        PUBLIC test_counter5


        SECTION `.bss`:DATA:REORDER:NOROOT(2)
UART_MUX_Sem_lock:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ACK_Sem_RulerUART:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Done_Sem_RulerUART:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
test_counter1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
test_counter2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
test_counter3:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
test_counter4:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
test_counter5:
        DS8 4

        SECTION `.text`:CODE:NOROOT(2)
        ARM
App_TaskNoah_Ruler:
        PUSH     {R4-R10,LR}
        SUB      SP,SP,#+24
        MOVS     R4,R0
        MOV      R0,#+0
        MOVS     R9,R0
        MOV      R0,#+0
        MOVS     R10,R0
        MOV      R0,#+0
        STRB     R0,[SP, #+13]
??App_TaskNoah_Ruler_0:
        ADD      R2,SP,#+12
        MOV      R1,#+0
        LDR      R0,??App_TaskNoah_Ruler_1
        LDR      R0,[R0, #+0]
        BL       OSQPend
        MOVS     R9,R0
        CMP      R9,#+0
        BEQ      ??App_TaskNoah_Ruler_0
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BNE      ??App_TaskNoah_Ruler_0
        MOVS     R6,R9
        MOVS     R5,R6
        LDRB     R0,[R5, #+0]
        ANDS     R0,R0,#0xC0
        MOVS     R7,R0
        LDRB     R0,[R5, #+258]
        MOVS     R8,R0
        MOV      R0,#+1
        BL       LED_Toggle
        LDRB     R0,[R5, #+0]
        ANDS     R0,R0,#0x3F
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??App_TaskNoah_Ruler_2
        CMP      R0,#+1
        BEQ      ??App_TaskNoah_Ruler_3
        CMP      R0,#+2
        BEQ      ??App_TaskNoah_Ruler_4
        CMP      R0,#+63
        BEQ      ??App_TaskNoah_Ruler_5
        B        ??App_TaskNoah_Ruler_6
??App_TaskNoah_Ruler_4:
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??App_TaskNoah_Ruler_7
        LDRB     R0,[R5, #+1]
        ADDS     R2,R0,#+2
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        MOVS     R1,R6
        MOV      R0,#+0
        BL       CheckSum
        ANDS     R8,R8,#0xFF      ;; Zero extend
        CMP      R8,R0
        BNE      ??App_TaskNoah_Ruler_8
??App_TaskNoah_Ruler_7:
        MOV      R0,#+0
        STR      R0,[SP, #+8]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+0
        STR      R0,[SP, #+0]
        MOV      R3,#+0
        MOV      R2,#+0
        ANDS     R1,R7,#0xC0
        LDR      R0,??App_TaskNoah_Ruler_1+0x4
        LDR      R0,[R0, #+0]
        BL       pcSendDateToBuf
        LDR      R0,??App_TaskNoah_Ruler_1+0x8
        LDRB     R0,[R0, #+0]
        ADD      R1,SP,#+16
        LDRB     R0,[R0, +R1]
        ADDS     R0,R0,#+64
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ANDS     R7,R7,#0xFF      ;; Zero extend
        CMP      R0,R7
        BNE      ??App_TaskNoah_Ruler_9
        LDR      R0,??App_TaskNoah_Ruler_1+0x8
        LDRB     R0,[R0, #+0]
        ADD      R1,SP,#+16
        STRB     R7,[R0, +R1]
        ADD      R1,SP,#+13
        MOVS     R0,R5
        BL       Noah_CMD_Parse_Ruler
        STRB     R0,[SP, #+12]
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BNE      ??App_TaskNoah_Ruler_10
        LDRB     R0,[SP, #+13]
        CMP      R0,#+1
        BNE      ??App_TaskNoah_Ruler_11
??App_TaskNoah_Ruler_10:
        MOV      R0,#+0
        STRB     R0,[SP, #+13]
        LDRB     R0,[SP, #+12]
        LDR      R1,??App_TaskNoah_Ruler_1+0xC
        STRB     R0,[R1, #+0]
        MOV      R0,#+2
        BL       OSTimeDly
        LDR      R0,??App_TaskNoah_Ruler_1+0x10
        LDR      R0,[R0, #+0]
        BL       OSSemPost
        B        ??App_TaskNoah_Ruler_11
??App_TaskNoah_Ruler_9:
        B        ??App_TaskNoah_Ruler_11
??App_TaskNoah_Ruler_8:
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
        LDR      R0,??App_TaskNoah_Ruler_1+0x4
        LDR      R0,[R0, #+0]
        BL       pcSendDateToBuf
??App_TaskNoah_Ruler_11:
        B        ??App_TaskNoah_Ruler_12
??App_TaskNoah_Ruler_5:
        MOV      R0,#+192
        LDR      R1,??App_TaskNoah_Ruler_1+0x8
        LDRB     R1,[R1, #+0]
        ADD      R2,SP,#+16
        STRB     R0,[R1, +R2]
        MOV      R0,#+0
        LDR      R1,??App_TaskNoah_Ruler_1+0x8
        LDRB     R1,[R1, #+0]
        LDR      R2,??App_TaskNoah_Ruler_1+0x14
        STRB     R0,[R1, +R2]
        LDR      R0,??App_TaskNoah_Ruler_1+0x18
        LDR      R0,[R0, #+0]
        BL       OSSemPost
        LDR      R0,??App_TaskNoah_Ruler_1+0x10
        LDR      R0,[R0, #+0]
        BL       OSSemPost
        MOV      R0,#+5
        BL       OSTimeDly
??App_TaskNoah_Ruler_13:
        ADD      R1,SP,#+12
        LDR      R0,??App_TaskNoah_Ruler_1+0x4
        LDR      R0,[R0, #+0]
        BL       OSQAccept
        MOVS     R10,R0
        MOVS     R1,R10
        LDR      R0,??App_TaskNoah_Ruler_1+0x1C
        LDR      R0,[R0, #+0]
        BL       OSMemPut
        CMP      R10,#+0
        BEQ      ??App_TaskNoah_Ruler_14
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BEQ      ??App_TaskNoah_Ruler_13
??App_TaskNoah_Ruler_14:
        ADD      R1,SP,#+12
        LDR      R0,??App_TaskNoah_Ruler_1
        LDR      R0,[R0, #+0]
        BL       OSQAccept
        MOVS     R10,R0
        MOVS     R1,R10
        LDR      R0,??App_TaskNoah_Ruler_1+0x1C
        LDR      R0,[R0, #+0]
        BL       OSMemPut
        CMP      R10,#+0
        BEQ      ??App_TaskNoah_Ruler_15
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BEQ      ??App_TaskNoah_Ruler_14
??App_TaskNoah_Ruler_15:
        LDR      R0,??App_TaskNoah_Ruler_1+0x20
        LDR      R0,[R0, #+4]
        BL       Queue_Flush
        LDR      R0,??App_TaskNoah_Ruler_1+0x24
        LDR      R0,[R0, #+4]
        BL       Queue_Flush
        MOV      R0,#+0
        STRB     R0,[SP, #+13]
        ADD      R2,SP,#+12
        MOV      R1,#+0
        LDR      R0,??App_TaskNoah_Ruler_1+0x18
        LDR      R0,[R0, #+0]
        BL       OSSemSet
        ADD      R2,SP,#+12
        MOV      R1,#+0
        LDR      R0,??App_TaskNoah_Ruler_1+0x10
        LDR      R0,[R0, #+0]
        BL       OSSemSet
        LDR      R0,??App_TaskNoah_Ruler_1+0x28
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??App_TaskNoah_Ruler_1+0x28
        STR      R0,[R1, #+0]
        B        ??App_TaskNoah_Ruler_12
??App_TaskNoah_Ruler_2:
        LDR      R0,??App_TaskNoah_Ruler_1+0x8
        LDRB     R0,[R0, #+0]
        LDR      R1,??App_TaskNoah_Ruler_1+0x14
        LDRB     R0,[R0, +R1]
        ANDS     R7,R7,#0xFF      ;; Zero extend
        CMP      R7,R0
        BNE      ??App_TaskNoah_Ruler_16
        LDR      R0,??App_TaskNoah_Ruler_1+0x18
        LDR      R0,[R0, #+0]
        BL       OSSemPost
        LDR      R0,??App_TaskNoah_Ruler_1+0x2C
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??App_TaskNoah_Ruler_1+0x2C
        STR      R0,[R1, #+0]
        B        ??App_TaskNoah_Ruler_17
??App_TaskNoah_Ruler_16:
        LDR      R0,??App_TaskNoah_Ruler_1+0x8
        LDRB     R0,[R0, #+0]
        LDR      R1,??App_TaskNoah_Ruler_1+0x14
        LDRB     R2,[R0, +R1]
        MOVS     R1,R7
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??App_TaskNoah_Ruler_1+0x30
        BL       BSP_Ser_Printf
??App_TaskNoah_Ruler_17:
        LDR      R0,??App_TaskNoah_Ruler_1+0x34
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??App_TaskNoah_Ruler_1+0x34
        STR      R0,[R1, #+0]
        B        ??App_TaskNoah_Ruler_12
??App_TaskNoah_Ruler_3:
        LDR      R0,??App_TaskNoah_Ruler_1+0x38
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??App_TaskNoah_Ruler_1+0x38
        STR      R0,[R1, #+0]
        B        ??App_TaskNoah_Ruler_12
??App_TaskNoah_Ruler_6:
??App_TaskNoah_Ruler_12:
        MOVS     R1,R9
        LDR      R0,??App_TaskNoah_Ruler_1+0x1C
        LDR      R0,[R0, #+0]
        BL       OSMemPut
        B        ??App_TaskNoah_Ruler_0
        DATA
??App_TaskNoah_Ruler_1:
        DC32     EVENT_MsgQ_RulerUART2Noah
        DC32     EVENT_MsgQ_Noah2RulerUART
        DC32     Global_Ruler_Index
        DC32     Ruler_CMD_Result
        DC32     Done_Sem_RulerUART
        DC32     PcCmdTxID_Ruler
        DC32     ACK_Sem_RulerUART
        DC32     pMEM_Part_MsgUART
        DC32     pUART_Send_Buf
        DC32     pUART_Rece_Buf
        DC32     test_counter4
        DC32     test_counter2
        DC32     `?<Constant "\\r\\nACK: got %X, expect...">`
        DC32     test_counter3
        DC32     test_counter1

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\r\\nACK: got %X, expect...">`:
        DATA
        DC8 "\015\012ACK: got %X, expect %X\015\012"
        DC8 0

        END
// 
//  32 bytes in section .bss
//  28 bytes in section .rodata
// 972 bytes in section .text
// 
// 972 bytes of CODE  memory
//  28 bytes of CONST memory
//  32 bytes of DATA  memory
//
//Errors: none
//Warnings: none
