///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    14/Jun/2013  13:57:31 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  arm                                                     /
//    Endian       =  little                                                  /
//    Source file  =  G:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Driver\adc /
//                    .c                                                      /
//    Command line =  "G:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Driver\ad /
//                    c.c" -lcN "G:\SVN Dir\PQ\iSAM Test                      /
//                    Bench\Bridge_Host_OS\APP\FLASH\List\" -lb "G:\SVN       /
//                    Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\"  /
//                    -o "G:\SVN Dir\PQ\iSAM Test                             /
//                    Bench\Bridge_Host_OS\APP\FLASH\Obj\" --no_cse           /
//                    --no_unroll --no_inline --no_code_motion --no_tbaa      /
//                    --no_clustering --no_scheduling --debug                 /
//                    --endian=little --cpu=ARM7TDMI -e --fpu=None            /
//                    --dlib_config "D:\Program Files\IAR Systems\Embedded    /
//                    Workbench 6.4\arm\INC\c\DLib_Config_Normal.h" -I        /
//                    "G:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\" -I  /
//                    "G:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\..\uC /
//                    -CPU\ARM\IAR\" -I "G:\SVN Dir\PQ\iSAM Test              /
//                    Bench\Bridge_Host_OS\APP\..\BSP\" -I "G:\SVN            /
//                    Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\..\Driver\"   /
//                    -I "G:\SVN Dir\PQ\iSAM Test                             /
//                    Bench\Bridge_Host_OS\APP\..\Noah\" -I "G:\SVN           /
//                    Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\..\Shell\"    /
//                    -I "G:\SVN Dir\PQ\iSAM Test                             /
//                    Bench\Bridge_Host_OS\APP\..\uCOS-II\Source\" -I         /
//                    "G:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\..\uC /
//                    -CPU\" -I "G:\SVN Dir\PQ\iSAM Test                      /
//                    Bench\Bridge_Host_OS\APP\..\uC-LIB\" -I "G:\SVN         /
//                    Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\..\uC-CPU\ARM /
//                    \IAR\" -I "G:\SVN Dir\PQ\iSAM Test                      /
//                    Bench\Bridge_Host_OS\APP\..\uCOS-II\Ports\ARM\Generic\I /
//                    AR\" -I "G:\SVN Dir\PQ\iSAM Test                        /
//                    Bench\Bridge_Host_OS\APP\..\uC-Probe\Target\Communicati /
//                    on\Generic\RS-232\Source\" -I "G:\SVN Dir\PQ\iSAM Test  /
//                    Bench\Bridge_Host_OS\APP\..\uC-Probe\Target\Communicati /
//                    on\Generic\RS-232\Ports\Atmel\AT91SAM7X\" -I "G:\SVN    /
//                    Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\..\uC-Probe\T /
//                    arget\Communication\Generic\Source\" -I "G:\SVN         /
//                    Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\..\uC-Probe\T /
//                    arget\Plugins\uCOS-II\" -I "G:\SVN Dir\PQ\iSAM Test     /
//                    Bench\Bridge_Host_OS\APP\..\uC-Probe\Target\Demos\Intro /
//                    \Source\" --interwork --cpu_mode arm -On                /
//                    --use_c++_inline                                        /
//    List file    =  G:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\ /
//                    List\adc.s                                              /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME `adc`

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_uidiv

        PUBLIC ADC_GetConvertedData
        PUBLIC ADC_Initialize


        SECTION `.text`:CODE:NOROOT(2)
        ARM
ADC_Initialize:
        PUSH     {R1-R11,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        LDRB     R5,[SP, #+56]
        LDRB     R6,[SP, #+60]
        LDR      R7,[SP, #+64]
        LDR      R8,[SP, #+68]
        LDR      R9,[SP, #+72]
        LDR      R10,[SP, #+76]
        MOVS     R0,R7
        LSLS     R1,R8,#+1
        BL       __aeabi_uidiv
        SUBS     R0,R0,#+1
        STR      R0,[SP, #+4]
        MOVS     R0,R8
        MOV      R1,#+999424
        ORR      R1,R1,#0x240
        BL       __aeabi_uidiv
        MULS     R0,R9,R0
        MVN      R1,#+0
        ADDS     R0,R1,R0, LSR #+3
        STR      R0,[SP, #+0]
        MOVS     R0,R8
        MOV      R1,#+999424
        ORR      R1,R1,#0x240
        BL       __aeabi_uidiv
        MULS     R0,R10,R0
        MOV      R1,#+1000
        BL       __aeabi_uidiv
        MOVS     R11,R0
        MOV      R0,#+1
        LDRSB    R1,[SP, #+8]
        LSLS     R0,R0,R1
        MVN      R1,#+239
        BIC      R1,R1,#0x300
        STR      R0,[R1, #+0]
        MOV      R0,#+1
        STR      R0,[R4, #+0]
        LDRB     R0,[SP, #+12]
        ANDS     R0,R0,#0x1
        LDRB     R1,[SP, #+16]
        ANDS     R1,R1,#0xE
        ORRS     R0,R1,R0
        MOVS     R1,R6
        ANDS     R1,R1,#0xFF      ;; Zero extend
        ANDS     R1,R1,#0x10
        ORRS     R0,R1,R0
        MOVS     R1,R5
        ANDS     R1,R1,#0xFF      ;; Zero extend
        ANDS     R1,R1,#0x20
        ORRS     R0,R1,R0
        LDR      R1,[SP, #+4]
        MOV      R2,#+16128
        ANDS     R1,R2,R1, LSL #+8
        ORRS     R0,R1,R0
        LDR      R1,[SP, #+0]
        MOV      R2,#+2031616
        ANDS     R1,R2,R1, LSL #+16
        ORRS     R0,R1,R0
        MOV      R1,#+251658240
        ANDS     R1,R1,R11, LSL #+24
        ORRS     R0,R1,R0
        STR      R0,[R4, #+4]
        ADD      SP,SP,#+20       ;; stack cleaning
        POP      {R4-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ADC_GetConvertedData:
        MOVS     R2,R0
        MOV      R0,#+0
        MOVS     R3,R1
        CMP      R3,#+4
        BHI      ??ADC_GetConvertedData_1
        LDRB     R12,[PC, R3]
        ADD      PC,PC,R12, LSL #+2
        DATA
??ADC_GetConvertedData_0:
        DC8      0x1,0x4,0x7,0xA
        DC8      0xD,0x0,0x0,0x0
        ARM
??ADC_GetConvertedData_2:
        LDR      R3,[R2, #+48]
        MOVS     R0,R3
        B        ??ADC_GetConvertedData_1
??ADC_GetConvertedData_3:
        LDR      R3,[R2, #+52]
        MOVS     R0,R3
        B        ??ADC_GetConvertedData_1
??ADC_GetConvertedData_4:
        LDR      R3,[R2, #+56]
        MOVS     R0,R3
        B        ??ADC_GetConvertedData_1
??ADC_GetConvertedData_5:
        LDR      R3,[R2, #+60]
        MOVS     R0,R3
        B        ??ADC_GetConvertedData_1
??ADC_GetConvertedData_6:
        LDR      R3,[R2, #+64]
        MOVS     R0,R3
??ADC_GetConvertedData_1:
        BX       LR               ;; return

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
// 360 bytes in section .text
// 
// 360 bytes of CODE memory
//
//Errors: none
//Warnings: none
