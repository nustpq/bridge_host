///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       21/Jun/2016  16:45:21
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        F:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\uCOS-II\Ports\ARM\Generic\IAR\os_cpu_c.c
//    Command line =  
//        "F:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\uCOS-II\Ports\ARM\Generic\IAR\os_cpu_c.c" -lcN
//        "F:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\" -lb
//        "F:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\" -o
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
//        Bench\Bridge_Host_OS\APP\FLASH\List\os_cpu_c.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN App_TCBInitHook
        EXTERN App_TaskCreateHook
        EXTERN App_TaskDelHook
        EXTERN App_TaskIdleHook
        EXTERN App_TaskReturnHook
        EXTERN App_TaskStatHook
        EXTERN App_TaskSwHook
        EXTERN App_TimeTickHook
        EXTERN OSDCC_Handler
        EXTERN OSTmrSignal
        EXTERN OS_CPU_ARM_ExceptAddrAbortHndlr
        EXTERN OS_CPU_ARM_ExceptDataAbortHndlr
        EXTERN OS_CPU_ARM_ExceptFiqHndlr
        EXTERN OS_CPU_ARM_ExceptIrqHndlr
        EXTERN OS_CPU_ARM_ExceptPrefetchAbortHndlr
        EXTERN OS_CPU_ARM_ExceptSwiHndlr
        EXTERN OS_CPU_ARM_ExceptUndefInstrHndlr
        EXTERN OS_TaskReturn

        PUBLIC OSInitHookBegin
        PUBLIC OSInitHookEnd
        PUBLIC OSTCBInitHook
        PUBLIC OSTaskCreateHook
        PUBLIC OSTaskDelHook
        PUBLIC OSTaskIdleHook
        PUBLIC OSTaskReturnHook
        PUBLIC OSTaskStatHook
        PUBLIC OSTaskStkInit
        PUBLIC OSTaskSwHook
        PUBLIC OSTimeTickHook
        PUBLIC OS_CPU_ExceptStk
        PUBLIC OS_CPU_ExceptStkBase
        PUBLIC OS_CPU_ExceptStkChk
        PUBLIC OS_CPU_ExceptStkPtr
        PUBLIC OS_CPU_InitExceptVect


        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute OS_STK OS_CPU_ExceptStk[128U]
OS_CPU_ExceptStk:
        DS8 512

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute unsigned int *OS_CPU_ExceptStkBase
OS_CPU_ExceptStkBase:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute unsigned int *OS_CPU_ExceptStkPtr
OS_CPU_ExceptStkPtr:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
OSTmrCtr:
        DS8 2

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSInitHookBegin:
        LDR      R2,??DataTable4
        MOVS     R1,R2
        MOV      R2,#+128
        MOVS     R0,R2
??OSInitHookBegin_0:
        CMP      R0,#+0
        BEQ      ??OSInitHookBegin_1
        SUBS     R0,R0,#+1
        MOV      R2,#+0
        STR      R2,[R1, #+0]
        B        ??OSInitHookBegin_0
??OSInitHookBegin_1:
        LDR      R2,??DataTable4_1
        LDR      R3,??DataTable4_2
        STR      R2,[R3, #+0]
        MOV      R2,#+0
        LDR      R3,??DataTable4_3
        STRH     R2,[R3, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSInitHookEnd:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTaskCreateHook:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R0,R4
        BL       App_TaskCreateHook
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTaskDelHook:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R0,R4
        BL       App_TaskDelHook
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTaskIdleHook:
        PUSH     {R12,LR}
        BL       OSDCC_Handler
        BL       App_TaskIdleHook
        POP      {R0,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTaskReturnHook:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R0,R4
        BL       App_TaskReturnHook
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTaskStatHook:
        PUSH     {R12,LR}
        BL       App_TaskStatHook
        POP      {R0,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTaskStkInit:
        PUSH     {R4,LR}
        MOVS     R12,R0
        MOVS     R0,R2
        BICS     R4,R12,#0x1
        MOVS     LR,R4
        STR      LR,[R0, #+0]
        SUBS     R0,R0,#+4
        LDR      R4,??DataTable4_4
        STR      R4,[R0, #+0]
        SUBS     R0,R0,#+4
        LDR      R4,??DataTable4_5  ;; 0x12121212
        STR      R4,[R0, #+0]
        SUBS     R0,R0,#+4
        LDR      R4,??DataTable4_6  ;; 0x11111111
        STR      R4,[R0, #+0]
        SUBS     R0,R0,#+4
        LDR      R4,??DataTable4_7  ;; 0x10101010
        STR      R4,[R0, #+0]
        SUBS     R0,R0,#+4
        LDR      R4,??DataTable4_8  ;; 0x9090909
        STR      R4,[R0, #+0]
        SUBS     R0,R0,#+4
        LDR      R4,??DataTable4_9  ;; 0x8080808
        STR      R4,[R0, #+0]
        SUBS     R0,R0,#+4
        LDR      R4,??DataTable4_10  ;; 0x7070707
        STR      R4,[R0, #+0]
        SUBS     R0,R0,#+4
        LDR      R4,??DataTable4_11  ;; 0x6060606
        STR      R4,[R0, #+0]
        SUBS     R0,R0,#+4
        LDR      R4,??DataTable4_12  ;; 0x5050505
        STR      R4,[R0, #+0]
        SUBS     R0,R0,#+4
        LDR      R4,??DataTable4_13  ;; 0x4040404
        STR      R4,[R0, #+0]
        SUBS     R0,R0,#+4
        LDR      R4,??DataTable4_14  ;; 0x3030303
        STR      R4,[R0, #+0]
        SUBS     R0,R0,#+4
        LDR      R4,??DataTable4_15  ;; 0x2020202
        STR      R4,[R0, #+0]
        SUBS     R0,R0,#+4
        LDR      R4,??DataTable4_16  ;; 0x1010101
        STR      R4,[R0, #+0]
        SUBS     R0,R0,#+4
        STR      R1,[R0, #+0]
        TST      R12,#0x1
        BEQ      ??OSTaskStkInit_0
        SUBS     R0,R0,#+4
        MOV      R4,#+51
        STR      R4,[R0, #+0]
        B        ??OSTaskStkInit_1
??OSTaskStkInit_0:
        SUBS     R0,R0,#+4
        MOV      R4,#+19
        STR      R4,[R0, #+0]
??OSTaskStkInit_1:
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTaskSwHook:
        PUSH     {R12,LR}
        BL       App_TaskSwHook
        POP      {R0,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTCBInitHook:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R0,R4
        BL       App_TCBInitHook
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTimeTickHook:
        PUSH     {R12,LR}
        BL       App_TimeTickHook
        LDR      R0,??DataTable4_3
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable4_3
        STRH     R0,[R1, #+0]
        LDR      R0,??DataTable4_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+100
        BCC      ??OSTimeTickHook_0
        MOV      R0,#+0
        LDR      R1,??DataTable4_3
        STRH     R0,[R1, #+0]
        BL       OSTmrSignal
??OSTimeTickHook_0:
        BL       OSDCC_Handler
        POP      {R0,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OS_CPU_InitExceptVect:
        LDR      R0,??DataTable4_17  ;; 0xe59ff018
        MOV      R1,#+4
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable4_18
        MOV      R1,#+36
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable4_17  ;; 0xe59ff018
        MOV      R1,#+8
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable4_19
        MOV      R1,#+40
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable4_17  ;; 0xe59ff018
        MOV      R1,#+12
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable4_20
        MOV      R1,#+44
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable4_17  ;; 0xe59ff018
        MOV      R1,#+16
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable4_21
        MOV      R1,#+48
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable4_17  ;; 0xe59ff018
        MOV      R1,#+20
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable4_22
        MOV      R1,#+52
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable4_17  ;; 0xe59ff018
        MOV      R1,#+24
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable4_23
        MOV      R1,#+56
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable4_17  ;; 0xe59ff018
        MOV      R1,#+28
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable4_24
        MOV      R1,#+60
        STR      R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OS_CPU_ExceptStkChk:
        MOV      R3,#+0
        MOVS     R0,R3
        MOV      R3,#+128
        MOVS     R2,R3
        LDR      R3,??DataTable4
        MOVS     R1,R3
??OS_CPU_ExceptStkChk_0:
        MOVS     R3,R1
        ADDS     R1,R3,#+4
        LDR      R3,[R3, #+0]
        CMP      R3,#+0
        BNE      ??OS_CPU_ExceptStkChk_1
        CMP      R2,#+0
        BEQ      ??OS_CPU_ExceptStkChk_1
        ADDS     R0,R0,#+1
        SUBS     R2,R2,#+1
        B        ??OS_CPU_ExceptStkChk_0
??OS_CPU_ExceptStkChk_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     OS_CPU_ExceptStk

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     OS_CPU_ExceptStk+0x1FC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     OS_CPU_ExceptStkBase

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     OSTmrCtr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     OS_TaskReturn

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     0x12121212

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     0x11111111

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     0x10101010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     0x9090909

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     0x8080808

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     0x7070707

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     0x6060606

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_12:
        DC32     0x5050505

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_13:
        DC32     0x4040404

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_14:
        DC32     0x3030303

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_15:
        DC32     0x2020202

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_16:
        DC32     0x1010101

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_17:
        DC32     0xe59ff018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_18:
        DC32     OS_CPU_ARM_ExceptUndefInstrHndlr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_19:
        DC32     OS_CPU_ARM_ExceptSwiHndlr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_20:
        DC32     OS_CPU_ARM_ExceptPrefetchAbortHndlr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_21:
        DC32     OS_CPU_ARM_ExceptDataAbortHndlr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_22:
        DC32     OS_CPU_ARM_ExceptAddrAbortHndlr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_23:
        DC32     OS_CPU_ARM_ExceptIrqHndlr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_24:
        DC32     OS_CPU_ARM_ExceptFiqHndlr

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 522 bytes in section .bss
// 864 bytes in section .text
// 
// 864 bytes of CODE memory
// 522 bytes of DATA memory
//
//Errors: none
//Warnings: none
