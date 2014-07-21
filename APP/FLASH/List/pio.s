///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       21/Jul/2014  19:24:36
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Driver\pio.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Driver\pio.c" -lcN
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
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\pio.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC PIO_Clear
        PUBLIC PIO_Configure
        PUBLIC PIO_Get
        PUBLIC PIO_GetISR
        PUBLIC PIO_GetOutputDataStatus
        PUBLIC PIO_GetPins
        PUBLIC PIO_Set


        SECTION `.text`:CODE:NOROOT(2)
        ARM
PIO_SetPeripheralA:
        STR      R1,[R0, #+68]
        MOVS     R3,R2
        ANDS     R3,R3,#0xFF      ;; Zero extend
        CMP      R3,#+0
        BEQ      ??PIO_SetPeripheralA_0
        STR      R1,[R0, #+100]
        B        ??PIO_SetPeripheralA_1
??PIO_SetPeripheralA_0:
        STR      R1,[R0, #+96]
??PIO_SetPeripheralA_1:
        STR      R1,[R0, #+112]
        STR      R1,[R0, #+4]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
PIO_SetPeripheralB:
        STR      R1,[R0, #+68]
        MOVS     R3,R2
        ANDS     R3,R3,#0xFF      ;; Zero extend
        CMP      R3,#+0
        BEQ      ??PIO_SetPeripheralB_0
        STR      R1,[R0, #+100]
        B        ??PIO_SetPeripheralB_1
??PIO_SetPeripheralB_0:
        STR      R1,[R0, #+96]
??PIO_SetPeripheralB_1:
        STR      R1,[R0, #+116]
        STR      R1,[R0, #+4]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
PIO_SetInput:
        STR      R1,[R0, #+68]
        MOVS     R12,R2
        ANDS     R12,R12,#0xFF    ;; Zero extend
        CMP      R12,#+0
        BEQ      ??PIO_SetInput_0
        STR      R1,[R0, #+100]
        B        ??PIO_SetInput_1
??PIO_SetInput_0:
        STR      R1,[R0, #+96]
??PIO_SetInput_1:
        MOVS     R12,R3
        ANDS     R12,R12,#0xFF    ;; Zero extend
        CMP      R12,#+0
        BEQ      ??PIO_SetInput_2
        STR      R1,[R0, #+32]
        B        ??PIO_SetInput_3
??PIO_SetInput_2:
        STR      R1,[R0, #+36]
??PIO_SetInput_3:
        STR      R1,[R0, #+20]
        STR      R1,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
PIO_SetOutput:
        PUSH     {LR}
        LDRB     R12,[SP, #+4]
        STR      R1,[R0, #+68]
        MOVS     LR,R12
        ANDS     LR,LR,#0xFF      ;; Zero extend
        CMP      LR,#+0
        BEQ      ??PIO_SetOutput_0
        STR      R1,[R0, #+100]
        B        ??PIO_SetOutput_1
??PIO_SetOutput_0:
        STR      R1,[R0, #+96]
??PIO_SetOutput_1:
        MOVS     LR,R3
        ANDS     LR,LR,#0xFF      ;; Zero extend
        CMP      LR,#+0
        BEQ      ??PIO_SetOutput_2
        STR      R1,[R0, #+80]
        B        ??PIO_SetOutput_3
??PIO_SetOutput_2:
        STR      R1,[R0, #+84]
??PIO_SetOutput_3:
        MOVS     LR,R2
        ANDS     LR,LR,#0xFF      ;; Zero extend
        CMP      LR,#+0
        BEQ      ??PIO_SetOutput_4
        STR      R1,[R0, #+48]
        B        ??PIO_SetOutput_5
??PIO_SetOutput_4:
        STR      R1,[R0, #+52]
??PIO_SetOutput_5:
        STR      R1,[R0, #+16]
        STR      R1,[R0, #+0]
        POP      {LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
PIO_Configure:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
??PIO_Configure_1:
        CMP      R5,#+0
        BEQ      ??PIO_Configure_2
        LDRB     R0,[R4, #+9]
        CMP      R0,#+4
        BHI      ??PIO_Configure_3
        LDRB     R1,[PC, R0]
        ADD      PC,PC,R1, LSL #+2
        DATA
??PIO_Configure_0:
        DC8      0x1,0x7,0xD,0x1D
        DC8      0x1D,0x0,0x0,0x0
        ARM
??PIO_Configure_4:
        LDRB     R0,[R4, #+10]
        ANDS     R2,R0,#0x1
        LDR      R1,[R4, #+0]
        LDR      R0,[R4, #+4]
        BL       PIO_SetPeripheralA
        B        ??PIO_Configure_5
??PIO_Configure_6:
        LDRB     R0,[R4, #+10]
        ANDS     R2,R0,#0x1
        LDR      R1,[R4, #+0]
        LDR      R0,[R4, #+4]
        BL       PIO_SetPeripheralB
        B        ??PIO_Configure_5
??PIO_Configure_7:
        MOV      R0,#+1
        LDRSB    R1,[R4, #+8]
        LSLS     R0,R0,R1
        MVN      R1,#+239
        BIC      R1,R1,#0x300
        STR      R0,[R1, #+0]
        LDRB     R0,[R4, #+10]
        ANDS     R0,R0,#0x2
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSRS     R3,R0,#+1
        LDRB     R0,[R4, #+10]
        ANDS     R2,R0,#0x1
        LDR      R1,[R4, #+0]
        LDR      R0,[R4, #+4]
        BL       PIO_SetInput
        B        ??PIO_Configure_5
??PIO_Configure_8:
        LDRB     R0,[R4, #+10]
        ANDS     R0,R0,#0x1
        LDRB     R1,[R4, #+10]
        ANDS     R1,R1,#0x4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSRS     R3,R1,#+2
        LDRB     R1,[R4, #+9]
        CMP      R1,#+4
        BNE      ??PIO_Configure_9
        MOV      R2,#+1
        B        ??PIO_Configure_10
??PIO_Configure_9:
        MOV      R2,#+0
??PIO_Configure_10:
        ANDS     R0,R0,#0xFF      ;; Zero extend
        STR      R0,[SP, #+0]
        ANDS     R3,R3,#0xFF      ;; Zero extend
        ANDS     R2,R2,#0xFF      ;; Zero extend
        LDR      R1,[R4, #+0]
        LDR      R0,[R4, #+4]
        BL       PIO_SetOutput
        B        ??PIO_Configure_5
??PIO_Configure_3:
        MOV      R0,#+0
        B        ??PIO_Configure_11
??PIO_Configure_5:
        ADDS     R4,R4,#+12
        SUBS     R5,R5,#+1
        B        ??PIO_Configure_1
??PIO_Configure_2:
        MOV      R0,#+1
??PIO_Configure_11:
        POP      {R1,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
PIO_Set:
        LDR      R1,[R0, #+0]
        LDR      R2,[R0, #+4]
        STR      R1,[R2, #+48]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
PIO_Clear:
        LDR      R1,[R0, #+0]
        LDR      R2,[R0, #+4]
        STR      R1,[R2, #+52]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
PIO_Get:
        MOVS     R1,R0
        LDRB     R0,[R1, #+9]
        CMP      R0,#+3
        BEQ      ??PIO_Get_0
        LDRB     R0,[R1, #+9]
        CMP      R0,#+4
        BNE      ??PIO_Get_1
??PIO_Get_0:
        LDR      R0,[R1, #+4]
        LDR      R0,[R0, #+56]
        MOVS     R2,R0
        B        ??PIO_Get_2
??PIO_Get_1:
        LDR      R0,[R1, #+4]
        LDR      R0,[R0, #+60]
        MOVS     R2,R0
??PIO_Get_2:
        LDR      R0,[R1, #+0]
        TST      R0,R2
        BNE      ??PIO_Get_3
        MOV      R0,#+0
        B        ??PIO_Get_4
??PIO_Get_3:
        MOV      R0,#+1
??PIO_Get_4:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
PIO_GetPins:
        MOVS     R1,R0
        LDR      R0,[R1, #+4]
        LDR      R0,[R0, #+60]
        MOVS     R2,R0
        LDR      R0,[R1, #+0]
        TST      R0,R2
        BNE      ??PIO_GetPins_0
        MOV      R0,#+0
        B        ??PIO_GetPins_1
??PIO_GetPins_0:
        MOV      R0,#+1
??PIO_GetPins_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
PIO_GetOutputDataStatus:
        MOVS     R1,R0
        LDR      R0,[R1, #+4]
        LDR      R0,[R0, #+56]
        LDR      R2,[R1, #+0]
        TST      R2,R0
        BNE      ??PIO_GetOutputDataStatus_0
        MOV      R0,#+0
        B        ??PIO_GetOutputDataStatus_1
??PIO_GetOutputDataStatus_0:
        MOV      R0,#+1
??PIO_GetOutputDataStatus_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
PIO_GetISR:
        LDR      R0,[R0, #+4]
        LDR      R0,[R0, #+76]
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
// 756 bytes in section .text
// 
// 756 bytes of CODE memory
//
//Errors: none
//Warnings: none
