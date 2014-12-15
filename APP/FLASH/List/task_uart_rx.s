///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       15/Dec/2014  17:50:04
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\task_uart_rx.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\task_uart_rx.c"
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
//        Bench\Bridge_Host_OS\APP\FLASH\List\task_uart_rx.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN EVENT_MsgQ_PCUART2Noah
        EXTERN EVENT_MsgQ_RulerUART2Noah
        EXTERN Init_CMD_Read
        EXTERN LED_Clear
        EXTERN Noah_CMD_Read
        EXTERN OSTimeDly
        EXTERN Queue_NData
        EXTERN Queue_Read
        EXTERN pUART_Rece_Buf

        PUBLIC App_TaskUART_Rx
        PUBLIC Global_Idle_Ready


        SECTION `.bss`:DATA:REORDER:NOROOT(0)
Global_Idle_Ready:
        DS8 1

        SECTION `.text`:CODE:NOROOT(2)
        ARM
App_TaskUART_Rx:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+48
        MOVS     R4,R0
        LDR      R0,??App_TaskUART_Rx_0
        LDR      R1,[R0, #+0]
        ADD      R0,SP,#+24
        BL       Init_CMD_Read
        LDR      R0,??App_TaskUART_Rx_0+0x4
        LDR      R1,[R0, #+0]
        ADD      R0,SP,#+4
        BL       Init_CMD_Read
        MOV      R0,#+0
        MOVS     R6,R0
??App_TaskUART_Rx_1:
        LDR      R0,??App_TaskUART_Rx_0+0x8
        LDR      R0,[R0, #+0]
        BL       Queue_NData
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??App_TaskUART_Rx_2
        MOV      R0,#+0
        MOVS     R6,R0
        B        ??App_TaskUART_Rx_3
??App_TaskUART_Rx_2:
        MOVS     R0,R6
        ADDS     R6,R0,#+1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+100
        BLT      ??App_TaskUART_Rx_3
        MOV      R0,#+1
        LDR      R1,??App_TaskUART_Rx_0+0xC
        STRB     R0,[R1, #+0]
        MOV      R0,#+0
        MOVS     R6,R0
        MOV      R0,#+1
        BL       LED_Clear
??App_TaskUART_Rx_3:
        MOVS     R0,R5
        SUBS     R5,R0,#+1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??App_TaskUART_Rx_4
        LDR      R0,??App_TaskUART_Rx_0+0x8
        LDR      R1,[R0, #+0]
        MOVS     R0,SP
        BL       Queue_Read
        LDRB     R1,[SP, #+0]
        ADD      R0,SP,#+24
        BL       Noah_CMD_Read
        B        ??App_TaskUART_Rx_3
??App_TaskUART_Rx_4:
        LDR      R0,??App_TaskUART_Rx_0+0x8
        LDR      R0,[R0, #+4]
        BL       Queue_NData
        MOVS     R5,R0
??App_TaskUART_Rx_5:
        MOVS     R0,R5
        SUBS     R5,R0,#+1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??App_TaskUART_Rx_6
        LDR      R0,??App_TaskUART_Rx_0+0x8
        LDR      R1,[R0, #+4]
        MOVS     R0,SP
        BL       Queue_Read
        LDRB     R1,[SP, #+0]
        ADD      R0,SP,#+4
        BL       Noah_CMD_Read
        B        ??App_TaskUART_Rx_5
??App_TaskUART_Rx_6:
        MOV      R0,#+5
        BL       OSTimeDly
        B        ??App_TaskUART_Rx_1
        DATA
??App_TaskUART_Rx_0:
        DC32     EVENT_MsgQ_PCUART2Noah
        DC32     EVENT_MsgQ_RulerUART2Noah
        DC32     pUART_Rece_Buf
        DC32     Global_Idle_Ready

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
//   1 byte  in section .bss
// 292 bytes in section .text
// 
// 292 bytes of CODE memory
//   1 byte  of DATA memory
//
//Errors: none
//Warnings: none
