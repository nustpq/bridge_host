///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V5.40.0.51500/W32 for ARM    15/Nov/2011  10:05:28 /
// Copyright (C) 1999-2009 IAR Systems AB.                                    /
//                                                                            /
//    Cpu mode     =  arm                                                     /
//    Endian       =  little                                                  /
//    Source file  =  L:\SII_UCOS\Micrium_SAM7X256\Software\Noah\repeat.c     /
//    Command line =  L:\SII_UCOS\Micrium_SAM7X256\Software\Noah\repeat.c     /
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
//                    VER\ -I L:\SII_UCOS\Micrium_SAM7X256\Software\APP\..\NO /
//                    AH\ -I L:\SII_UCOS\Micrium_SAM7X256\Software\APP\..\uCO /
//                    S-II\Source\ -I L:\SII_UCOS\Micrium_SAM7X256\Software\A /
//                    PP\..\uC-CPU\ -I L:\SII_UCOS\Micrium_SAM7X256\Software\ /
//                    APP\..\uC-LIB\ -I L:\SII_UCOS\Micrium_SAM7X256\Software /
//                    \APP\..\uC-CPU\ARM\IAR\ -I                              /
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
//    List file    =  L:\SII_UCOS\Micrium_SAM7X256\Software\APP\FLASH\List\re /
//                    peat.s                                                  /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME repeat

        PUBLIC RepeatCtr
        PUBLIC RepeatNum
        PUBLIC repeat


        SECTION `.bss`:DATA:NOROOT(2)
RepeatCtr:
        DS8 120

        SECTION `.bss`:DATA:NOROOT(0)
RepeatNum:
        DS8 1

        SECTION `.text`:CODE:NOROOT(2)
        ARM
repeat:
        BX       LR               ;; return

        END
// 
// 121 bytes in section .bss
//   4 bytes in section .text
// 
//   4 bytes of CODE memory
// 121 bytes of DATA memory
//
//Errors: none
//Warnings: none
