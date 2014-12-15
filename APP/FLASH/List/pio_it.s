///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       15/Dec/2014  17:50:02
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Driver\pio_it.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Driver\pio_it.c" -lcN
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
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\pio_it.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN BSP_IntClr
        EXTERN BSP_IntEn
        EXTERN BSP_IntVectSet

        PUBLIC InterruptHandler
        PUBLIC PIO_ConfigureIt
        PUBLIC PIO_DisableIt
        PUBLIC PIO_EnableIt
        PUBLIC PIO_InitializeInterrupts
        PUBLIC PioInterruptHandler


        SECTION `.bss`:DATA:REORDER:NOROOT(2)
pSources:
        DS8 56

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
numSources:
        DS8 4

        SECTION `.text`:CODE:NOROOT(2)
        ARM
PioInterruptHandler:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[R5, #+76]
        MOVS     R7,R0
        LDR      R0,[R5, #+72]
        ANDS     R7,R0,R7
        CMP      R7,#+0
        BEQ      ??PioInterruptHandler_0
        MOV      R0,#+0
        MOVS     R6,R0
??PioInterruptHandler_1:
        CMP      R7,#+0
        BEQ      ??PioInterruptHandler_0
        LSLS     R0,R6,#+3
        LDR      R1,??DataTable3
        LDR      R0,[R0, +R1]
        LDRB     R0,[R0, #+8]
        CMP      R0,R4
        BNE      ??PioInterruptHandler_2
        LSLS     R0,R6,#+3
        LDR      R1,??DataTable3
        LDR      R0,[R0, +R1]
        LDR      R0,[R0, #+0]
        TST      R0,R7
        BEQ      ??PioInterruptHandler_2
        LSLS     R0,R6,#+3
        LDR      R1,??DataTable3
        LDR      R0,[R0, +R1]
        LSLS     R1,R6,#+3
        LDR      R2,??DataTable3
        ADDS     R1,R1,R2
        LDR      R1,[R1, #+4]
        MOV      LR,PC
        BX       R1
        LSLS     R0,R6,#+3
        LDR      R1,??DataTable3
        LDR      R0,[R0, +R1]
        LDR      R0,[R0, #+0]
        BICS     R7,R7,R0
??PioInterruptHandler_2:
        ADDS     R6,R6,#+1
        B        ??PioInterruptHandler_1
??PioInterruptHandler_0:
        POP      {R0,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
InterruptHandler:
        PUSH     {R12,LR}
        MVN      R1,#+255
        BIC      R1,R1,#0xB00
        MOV      R0,#+2
        BL       PioInterruptHandler
        MVN      R1,#+255
        BIC      R1,R1,#0x900
        MOV      R0,#+3
        BL       PioInterruptHandler
        POP      {R0,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
PIO_InitializeInterrupts:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOV      R0,#+0
        LDR      R1,??DataTable3_1
        STR      R0,[R1, #+0]
        MOV      R0,#+4
        MVN      R1,#+239
        BIC      R1,R1,#0x300
        STR      R0,[R1, #+0]
        MVN      R0,#+179
        BIC      R0,R0,#0xB00
        LDR      R5,[R0, #+0]
        MVN      R0,#+0
        MVN      R1,#+187
        BIC      R1,R1,#0xB00
        STR      R0,[R1, #+0]
        ADR      R3,InterruptHandler
        MOV      R2,#+2
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOV      R0,#+2
        BL       BSP_IntVectSet
        MOV      R0,#+2
        BL       BSP_IntClr
        MOV      R0,#+2
        BL       BSP_IntEn
        MOV      R0,#+8
        MVN      R1,#+239
        BIC      R1,R1,#0x300
        STR      R0,[R1, #+0]
        MVN      R0,#+179
        BIC      R0,R0,#0x900
        LDR      R6,[R0, #+0]
        MVN      R0,#+0
        MVN      R1,#+187
        BIC      R1,R1,#0x900
        STR      R0,[R1, #+0]
        ADR      R3,InterruptHandler
        MOV      R2,#+0
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOV      R0,#+3
        BL       BSP_IntVectSet
        MOV      R0,#+3
        BL       BSP_IntClr
        MOV      R0,#+3
        BL       BSP_IntEn
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
PIO_ConfigureIt:
        PUSH     {LR}
        MOV      R12,#+0
        MOVS     R3,R12
??PIO_ConfigureIt_0:
        LDR      R12,??DataTable3_1
        LDR      R12,[R12, #+0]
        CMP      R3,R12
        BCS      ??PIO_ConfigureIt_1
        LSLS     R12,R3,#+3
        LDR      LR,??DataTable3
        ADDS     R12,R12,LR
        MOVS     R2,R12
        LDR      R12,[R2, #+0]
        CMP      R12,R0
        BNE      ??PIO_ConfigureIt_2
        STR      R1,[R2, #+4]
        B        ??PIO_ConfigureIt_3
??PIO_ConfigureIt_2:
        ADDS     R3,R3,#+1
        B        ??PIO_ConfigureIt_0
??PIO_ConfigureIt_1:
        LDR      R12,??DataTable3_1
        LDR      R12,[R12, #+0]
        LSLS     R12,R12,#+3
        LDR      LR,??DataTable3
        ADDS     R12,R12,LR
        MOVS     R2,R12
        STR      R0,[R2, #+0]
        STR      R1,[R2, #+4]
        LDR      R12,??DataTable3_1
        LDR      R12,[R12, #+0]
        ADDS     R12,R12,#+1
        LDR      LR,??DataTable3_1
        STR      R12,[LR, #+0]
??PIO_ConfigureIt_3:
        POP      {LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
PIO_EnableIt:
        PUSH     {LR}
        MOV      R1,#+0
        MOV      R2,#+0
??PIO_EnableIt_0:
        LDR      R3,??DataTable3_1
        LDR      R3,[R3, #+0]
        CMP      R1,R3
        BCS      ??PIO_EnableIt_1
        MOVS     R3,R2
        ANDS     R3,R3,#0xFF      ;; Zero extend
        CMP      R3,#+0
        BNE      ??PIO_EnableIt_1
        LSLS     R3,R1,#+3
        LDR      R12,??DataTable3
        LDR      R3,[R3, +R12]
        CMP      R3,R0
        BNE      ??PIO_EnableIt_2
        MOV      R3,#+1
        MOVS     R2,R3
??PIO_EnableIt_2:
        ADDS     R1,R1,#+1
        B        ??PIO_EnableIt_0
??PIO_EnableIt_1:
        LDR      R3,[R0, #+4]
        LDR      R3,[R3, #+76]
        LDR      R12,[R0, #+0]
        LDR      LR,[R0, #+4]
        STR      R12,[LR, #+64]
        POP      {LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     pSources

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     numSources

        SECTION `.text`:CODE:NOROOT(2)
        ARM
PIO_DisableIt:
        LDR      R1,[R0, #+0]
        LDR      R2,[R0, #+4]
        STR      R1,[R2, #+68]
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
//  60 bytes in section .bss
// 676 bytes in section .text
// 
// 676 bytes of CODE memory
//  60 bytes of DATA memory
//
//Errors: none
//Warnings: none
