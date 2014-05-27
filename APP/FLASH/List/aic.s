///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V5.40.0.51500/W32 for ARM    11/Nov/2011  10:16:02 /
// Copyright (C) 1999-2009 IAR Systems AB.                                    /
//                                                                            /
//    Cpu mode     =  arm                                                     /
//    Endian       =  little                                                  /
//    Source file  =  L:\SII_UCOS\Micrium_SAM7X256\Software\Driver\aic.c      /
//    Command line =  L:\SII_UCOS\Micrium_SAM7X256\Software\Driver\aic.c      /
//                    -lcN L:\SII_UCOS\Micrium_SAM7X256\Software\APP\FLASH\Li /
//                    st\ -lb L:\SII_UCOS\Micrium_SAM7X256\Software\APP\FLASH /
//                    \List\ -o L:\SII_UCOS\Micrium_SAM7X256\Software\APP\FLA /
//                    SH\Obj\ --no_cse --no_unroll --no_inline                /
//                    --no_code_motion --no_tbaa --no_clustering              /
//                    --no_scheduling --debug --endian=little --cpu=ARM7TDMI  /
//                    -e --fpu=None --dlib_config "D:\Program Files\IAR       /
//                    Systems\Embedded Workbench                              /
//                    5.4ARM\arm\INC\DLib_Config_Normal.h" -I                 /
//                    L:\SII_UCOS\Micrium_SAM7X256\Software\APP\ -I           /
//                    L:\SII_UCOS\Micrium_SAM7X256\Software\APP\..\uC-CPU\ARM /
//                    \IAR\ -I L:\SII_UCOS\Micrium_SAM7X256\Software\APP\..\B /
//                    SP\ -I L:\SII_UCOS\Micrium_SAM7X256\Software\APP\..\DRI /
//                    VER\ -I L:\SII_UCOS\Micrium_SAM7X256\Software\APP\..\uC /
//                    OS-II\Source\ -I L:\SII_UCOS\Micrium_SAM7X256\Software\ /
//                    APP\..\uC-CPU\ -I L:\SII_UCOS\Micrium_SAM7X256\Software /
//                    \APP\..\uC-LIB\ -I L:\SII_UCOS\Micrium_SAM7X256\Softwar /
//                    e\APP\..\uC-CPU\ARM\IAR\ -I                             /
//                    L:\SII_UCOS\Micrium_SAM7X256\Software\APP\..\uCOS-II\Po /
//                    rts\ARM\Generic\IAR\ -I L:\SII_UCOS\Micrium_SAM7X256\So /
//                    ftware\APP\..\uC-Probe\Target\Communication\Generic\RS- /
//                    232\Source\ -I L:\SII_UCOS\Micrium_SAM7X256\Software\AP /
//                    P\..\uC-Probe\Target\Communication\Generic\RS-232\Ports /
//                    \Atmel\AT91SAM7X\ -I L:\SII_UCOS\Micrium_SAM7X256\Softw /
//                    are\APP\..\uC-Probe\Target\Communication\Generic\Source /
//                    \ -I L:\SII_UCOS\Micrium_SAM7X256\Software\APP\..\uC-Pr /
//                    obe\Target\Plugins\uCOS-II\ -I                          /
//                    L:\SII_UCOS\Micrium_SAM7X256\Software\APP\..\uC-Probe\T /
//                    arget\Demos\Intro\Source\ -I "D:\Program Files\IAR      /
//                    Systems\Embedded Workbench 5.4ARM\arm\INC\"             /
//                    --interwork --cpu_mode arm -On                          /
//    List file    =  L:\SII_UCOS\Micrium_SAM7X256\Software\APP\FLASH\List\ai /
//                    c.s                                                     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME aic

        PUBLIC AIC_ConfigureIT
        PUBLIC AIC_DisableIT
        PUBLIC AIC_EnableIT


        SECTION `.text`:CODE:NOROOT(2)
        ARM
AIC_ConfigureIT:
        MOV      R3,#+1
        LSLS     R3,R3,R0
        MVN      R12,#+219
        BIC      R12,R12,#0xE00
        STR      R3,[R12, #+0]
        MOV      R3,#+4
        MULS     R12,R3,R0
        SUBS     R3,R12,#+4096
        STR      R1,[R3, #+0]
        MOV      R3,#+4
        MULS     R12,R3,R0
        STR      R2,[R12, #-3968]
        MOV      R3,#+1
        LSLS     R3,R3,R0
        MVN      R12,#+215
        BIC      R12,R12,#0xE00
        STR      R3,[R12, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
AIC_EnableIT:
        MOV      R1,#+1
        LSLS     R1,R1,R0
        MVN      R2,#+223
        BIC      R2,R2,#0xE00
        STR      R1,[R2, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
AIC_DisableIT:
        MOV      R1,#+1
        LSLS     R1,R1,R0
        MVN      R2,#+219
        BIC      R2,R2,#0xE00
        STR      R1,[R2, #+0]
        BX       LR               ;; return

        END
// 
// 120 bytes in section .text
// 
// 120 bytes of CODE memory
//
//Errors: none
//Warnings: none
