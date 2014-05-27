///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       22/May/2014  14:14:50
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\uC-LIB\lib_mem.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\uC-LIB\lib_mem.c" -lcN
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
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\lib_mem.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC Mem_Clr
        PUBLIC Mem_Cmp
        PUBLIC Mem_Init
        PUBLIC Mem_Set


        SECTION `.text`:CODE:NOROOT(2)
        ARM
Mem_Init:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Mem_Clr:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,R5
        MOV      R1,#+0
        MOVS     R0,R4
        BL       Mem_Set
        POP      {R0,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Mem_Set:
        PUSH     {R4-R7,LR}
        CMP      R2,#+0
        BEQ      ??Mem_Set_0
??Mem_Set_1:
        CMP      R0,#+0
        BEQ      ??Mem_Set_0
??Mem_Set_2:
        MOV      R7,#+0
        MOVS     R4,R7
        MOV      R7,#+0
        MOVS     R5,R7
??Mem_Set_3:
        MOVS     R7,R5
        ANDS     R7,R7,#0xFF      ;; Zero extend
        CMP      R7,#+4
        BCS      ??Mem_Set_4
        LSLS     R4,R4,#+8
        MOVS     R7,R1
        ANDS     R7,R7,#0xFF      ;; Zero extend
        ORRS     R4,R7,R4
        ADDS     R5,R5,#+1
        B        ??Mem_Set_3
??Mem_Set_4:
        MOVS     R3,R2
        ANDS     R7,R0,#0x3       ;; Zero extend
        MOVS     R6,R7
        MOVS     LR,R0
        MOVS     R7,R6
        ANDS     R7,R7,#0xFF      ;; Zero extend
        CMP      R7,#+0
        BEQ      ??Mem_Set_5
        MOVS     R5,R6
??Mem_Set_6:
        CMP      R3,#+0
        BEQ      ??Mem_Set_5
        MOVS     R7,R5
        ANDS     R7,R7,#0xFF      ;; Zero extend
        CMP      R7,#+4
        BCS      ??Mem_Set_5
        STRB     R1,[LR, #+0]
        ADDS     LR,LR,#+1
        SUBS     R3,R3,#+1
        ADDS     R5,R5,#+1
        B        ??Mem_Set_6
??Mem_Set_5:
        MOVS     R12,LR
??Mem_Set_7:
        CMP      R3,#+4
        BCC      ??Mem_Set_8
        STR      R4,[R12, #+0]
        ADDS     R12,R12,#+4
        SUBS     R3,R3,#+4
        B        ??Mem_Set_7
??Mem_Set_8:
        MOVS     LR,R12
??Mem_Set_9:
        CMP      R3,#+0
        BEQ      ??Mem_Set_10
        STRB     R1,[LR, #+0]
        ADDS     LR,LR,#+1
        SUBS     R3,R3,#+1
        B        ??Mem_Set_9
??Mem_Set_10:
??Mem_Set_0:
        POP      {R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Mem_Cmp:
        PUSH     {R3-R11,LR}
        MOVS     R3,R0
        CMP      R2,#+0
        BNE      ??Mem_Cmp_0
        MOV      R0,#+1
        B        ??Mem_Cmp_1
??Mem_Cmp_0:
        CMP      R3,#+0
        BNE      ??Mem_Cmp_2
        MOV      R0,#+0
        B        ??Mem_Cmp_1
??Mem_Cmp_2:
        CMP      R1,#+0
        BNE      ??Mem_Cmp_3
        MOV      R0,#+0
        B        ??Mem_Cmp_1
??Mem_Cmp_3:
        MOV      R0,#+1
        MOVS     R10,R0
        MOVS     R12,R2
        ADDS     R0,R2,R3
        MOVS     R5,R0
        ADDS     R0,R2,R1
        MOVS     R6,R0
        ANDS     R0,R5,#0x3       ;; Zero extend
        MOVS     R8,R0
        ANDS     R11,R6,#0x3      ;; Zero extend
        STRB     R11,[SP, #+0]
        LDRB     R0,[SP, #+0]
        ANDS     R8,R8,#0xFF      ;; Zero extend
        CMP      R8,R0
        BNE      ??Mem_Cmp_4
        MOV      R9,#+1
        B        ??Mem_Cmp_5
??Mem_Cmp_4:
        MOV      R9,#+0
??Mem_Cmp_5:
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??Mem_Cmp_6
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Mem_Cmp_7
        MOVS     R7,R8
??Mem_Cmp_8:
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??Mem_Cmp_7
        CMP      R12,#+0
        BEQ      ??Mem_Cmp_7
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Mem_Cmp_7
        SUBS     R5,R5,#+1
        SUBS     R6,R6,#+1
        LDRB     R0,[R5, #+0]
        LDRB     R11,[R6, #+0]
        CMP      R0,R11
        BEQ      ??Mem_Cmp_9
        MOV      R0,#+0
        MOVS     R10,R0
??Mem_Cmp_9:
        SUBS     R12,R12,#+1
        SUBS     R7,R7,#+1
        B        ??Mem_Cmp_8
??Mem_Cmp_7:
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??Mem_Cmp_6
        MOVS     LR,R5
        MOVS     R4,R6
??Mem_Cmp_10:
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??Mem_Cmp_11
        CMP      R12,#+4
        BCC      ??Mem_Cmp_11
        SUBS     LR,LR,#+4
        SUBS     R4,R4,#+4
        LDR      R0,[LR, #+0]
        LDR      R11,[R4, #+0]
        CMP      R0,R11
        BEQ      ??Mem_Cmp_12
        MOV      R0,#+0
        MOVS     R10,R0
??Mem_Cmp_12:
        SUBS     R12,R12,#+4
        B        ??Mem_Cmp_10
??Mem_Cmp_11:
        MOVS     R5,LR
        MOVS     R6,R4
??Mem_Cmp_6:
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??Mem_Cmp_13
        CMP      R12,#+0
        BEQ      ??Mem_Cmp_13
        SUBS     R5,R5,#+1
        SUBS     R6,R6,#+1
        LDRB     R0,[R5, #+0]
        LDRB     R11,[R6, #+0]
        CMP      R0,R11
        BEQ      ??Mem_Cmp_14
        MOV      R0,#+0
        MOVS     R10,R0
??Mem_Cmp_14:
        SUBS     R12,R12,#+1
        B        ??Mem_Cmp_6
??Mem_Cmp_13:
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
??Mem_Cmp_1:
        POP      {R1,R4-R11,LR}
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
// 684 bytes in section .text
// 
// 684 bytes of CODE memory
//
//Errors: none
//Warnings: none
