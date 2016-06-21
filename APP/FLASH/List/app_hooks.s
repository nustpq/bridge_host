///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       21/Jun/2016  16:45:14
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        F:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\app_hooks.c
//    Command line =  
//        "F:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\app_hooks.c" -lcN
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
//        Bench\Bridge_Host_OS\APP\FLASH\List\app_hooks.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC App_TCBInitHook
        PUBLIC App_TaskCreateHook
        PUBLIC App_TaskDelHook
        PUBLIC App_TaskIdleHook
        PUBLIC App_TaskReturnHook
        PUBLIC App_TaskStatHook
        PUBLIC App_TaskSwHook
        PUBLIC App_TimeTickHook


        SECTION `.text`:CODE:NOROOT(2)
        ARM
App_TaskCreateHook:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
App_TaskDelHook:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
App_TaskIdleHook:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
App_TaskReturnHook:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
App_TaskStatHook:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
App_TaskSwHook:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
App_TCBInitHook:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
App_TimeTickHook:
        BX       LR               ;; return

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
// 32 bytes in section .text
// 
// 32 bytes of CODE memory
//
//Errors: none
//Warnings: none
