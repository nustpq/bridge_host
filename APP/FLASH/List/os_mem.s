///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       13/Aug/2014  15:03:11
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\uCOS-II\Source\os_mem.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\uCOS-II\Source\os_mem.c" -lcN "E:\SVN
//        Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\" -lb "E:\SVN
//        Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\" -o "E:\SVN
//        Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\Obj\" --no_cse
//        --no_unroll --no_inline --no_code_motion --no_tbaa --no_clustering
//        --no_scheduling --debug --endian=little --cpu=ARM7TDMI -e --fpu=None
//        --dlib_config "C:\Program Files (x86)\IAR Systems\Embedded Workbench
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
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\os_mem.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN OSIntNesting
        EXTERN OSMemFreeList
        EXTERN OSMemTbl
        EXTERN OS_CPU_SR_Restore
        EXTERN OS_CPU_SR_Save
        EXTERN OS_MemClr
        EXTERN OS_StrLen

        PUBLIC OSMemCreate
        PUBLIC OSMemGet
        PUBLIC OSMemNameGet
        PUBLIC OSMemNameSet
        PUBLIC OSMemPut
        PUBLIC OSMemQuery
        PUBLIC OS_MemInit


        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSMemCreate:
        PUSH     {R1,R4-R11,LR}
        MOVS     R4,R0
        MOVS     R5,R2
        MOVS     R6,R3
        MOV      R11,#+0
        CMP      R6,#+0
        BNE      ??OSMemCreate_0
        MOV      R0,#+0
        B        ??OSMemCreate_1
??OSMemCreate_0:
        CMP      R4,#+0
        BNE      ??OSMemCreate_2
        MOV      R0,#+98
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSMemCreate_1
??OSMemCreate_2:
        TST      R4,#0x3
        BEQ      ??OSMemCreate_3
        MOV      R0,#+98
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSMemCreate_1
??OSMemCreate_3:
        LDR      R0,[SP, #+0]
        CMP      R0,#+2
        BCS      ??OSMemCreate_4
        MOV      R0,#+91
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSMemCreate_1
??OSMemCreate_4:
        CMP      R5,#+4
        BCS      ??OSMemCreate_5
        MOV      R0,#+92
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSMemCreate_1
??OSMemCreate_5:
        BL       OS_CPU_SR_Save
        MOVS     R11,R0
        LDR      R0,??DataTable3_1
        LDR      R0,[R0, #+0]
        MOVS     R7,R0
        LDR      R0,??DataTable3_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSMemCreate_6
        LDR      R0,??DataTable3_1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+4]
        LDR      R1,??DataTable3_1
        STR      R0,[R1, #+0]
??OSMemCreate_6:
        MOVS     R0,R11
        BL       OS_CPU_SR_Restore
        CMP      R7,#+0
        BNE      ??OSMemCreate_7
        MOV      R0,#+90
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSMemCreate_1
??OSMemCreate_7:
        MOVS     R9,R4
        ADDS     R0,R5,R4
        MOVS     R8,R0
        MOV      R0,#+0
        MOVS     R10,R0
??OSMemCreate_8:
        LDR      R0,[SP, #+0]
        SUBS     R0,R0,#+1
        CMP      R10,R0
        BCS      ??OSMemCreate_9
        STR      R8,[R9, #+0]
        MOVS     R9,R8
        ADDS     R8,R5,R8
        ADDS     R10,R10,#+1
        B        ??OSMemCreate_8
??OSMemCreate_9:
        MOV      R0,#+0
        STR      R0,[R9, #+0]
        STR      R4,[R7, #+0]
        STR      R4,[R7, #+4]
        LDR      R0,[SP, #+0]
        STR      R0,[R7, #+16]
        LDR      R0,[SP, #+0]
        STR      R0,[R7, #+12]
        STR      R5,[R7, #+8]
        MOV      R0,#+0
        STRB     R0,[R6, #+0]
        MOVS     R0,R7
??OSMemCreate_1:
        POP      {R1,R4-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSMemGet:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R7,#+0
        CMP      R5,#+0
        BNE      ??OSMemGet_0
        MOV      R0,#+0
        B        ??OSMemGet_1
??OSMemGet_0:
        CMP      R4,#+0
        BNE      ??OSMemGet_2
        MOV      R0,#+96
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        B        ??OSMemGet_1
??OSMemGet_2:
        BL       OS_CPU_SR_Save
        MOVS     R7,R0
        LDR      R0,[R4, #+16]
        CMP      R0,#+0
        BEQ      ??OSMemGet_3
        LDR      R0,[R4, #+4]
        MOVS     R6,R0
        LDR      R0,[R6, #+0]
        STR      R0,[R4, #+4]
        LDR      R0,[R4, #+16]
        SUBS     R0,R0,#+1
        STR      R0,[R4, #+16]
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        STRB     R0,[R5, #+0]
        MOVS     R0,R6
        B        ??OSMemGet_1
??OSMemGet_3:
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOV      R0,#+93
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
??OSMemGet_1:
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSMemNameGet:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R8,#+0
        CMP      R6,#+0
        BNE      ??OSMemNameGet_0
        MOV      R0,#+0
        B        ??OSMemNameGet_1
??OSMemNameGet_0:
        CMP      R4,#+0
        BNE      ??OSMemNameGet_2
        MOV      R0,#+96
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSMemNameGet_1
??OSMemNameGet_2:
        CMP      R5,#+0
        BNE      ??OSMemNameGet_3
        MOV      R0,#+12
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSMemNameGet_1
??OSMemNameGet_3:
        LDR      R0,??DataTable3_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSMemNameGet_4
        MOV      R0,#+17
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSMemNameGet_1
??OSMemNameGet_4:
        BL       OS_CPU_SR_Save
        MOVS     R8,R0
        LDR      R0,[R4, #+20]
        STR      R0,[R5, #+0]
        LDR      R0,[R5, #+0]
        BL       OS_StrLen
        MOVS     R7,R0
        MOVS     R0,R8
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        STRB     R0,[R6, #+0]
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
??OSMemNameGet_1:
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSMemNameSet:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R7,#+0
        CMP      R6,#+0
        BEQ      ??OSMemNameSet_0
??OSMemNameSet_1:
        CMP      R4,#+0
        BNE      ??OSMemNameSet_2
        MOV      R0,#+96
        STRB     R0,[R6, #+0]
        B        ??OSMemNameSet_0
??OSMemNameSet_2:
        CMP      R5,#+0
        BNE      ??OSMemNameSet_3
        MOV      R0,#+12
        STRB     R0,[R6, #+0]
        B        ??OSMemNameSet_0
??OSMemNameSet_3:
        LDR      R0,??DataTable3_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSMemNameSet_4
        MOV      R0,#+18
        STRB     R0,[R6, #+0]
        B        ??OSMemNameSet_0
??OSMemNameSet_4:
        BL       OS_CPU_SR_Save
        MOVS     R7,R0
        STR      R5,[R4, #+20]
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        STRB     R0,[R6, #+0]
??OSMemNameSet_0:
        POP      {R0,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSMemPut:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R6,#+0
        CMP      R4,#+0
        BNE      ??OSMemPut_0
        MOV      R0,#+96
        B        ??OSMemPut_1
??OSMemPut_0:
        CMP      R5,#+0
        BNE      ??OSMemPut_2
        MOV      R0,#+95
        B        ??OSMemPut_1
??OSMemPut_2:
        BL       OS_CPU_SR_Save
        MOVS     R6,R0
        LDR      R0,[R4, #+16]
        LDR      R1,[R4, #+12]
        CMP      R0,R1
        BCC      ??OSMemPut_3
        MOVS     R0,R6
        BL       OS_CPU_SR_Restore
        MOV      R0,#+94
        B        ??OSMemPut_1
??OSMemPut_3:
        LDR      R0,[R4, #+4]
        STR      R0,[R5, #+0]
        STR      R5,[R4, #+4]
        LDR      R0,[R4, #+16]
        ADDS     R0,R0,#+1
        STR      R0,[R4, #+16]
        MOVS     R0,R6
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
??OSMemPut_1:
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSMemQuery:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R6,#+0
        CMP      R4,#+0
        BNE      ??OSMemQuery_0
        MOV      R0,#+96
        B        ??OSMemQuery_1
??OSMemQuery_0:
        CMP      R5,#+0
        BNE      ??OSMemQuery_2
        MOV      R0,#+97
        B        ??OSMemQuery_1
??OSMemQuery_2:
        BL       OS_CPU_SR_Save
        MOVS     R6,R0
        LDR      R0,[R4, #+0]
        STR      R0,[R5, #+0]
        LDR      R0,[R4, #+4]
        STR      R0,[R5, #+4]
        LDR      R0,[R4, #+8]
        STR      R0,[R5, #+8]
        LDR      R0,[R4, #+12]
        STR      R0,[R5, #+12]
        LDR      R0,[R4, #+16]
        STR      R0,[R5, #+16]
        MOVS     R0,R6
        BL       OS_CPU_SR_Restore
        LDR      R0,[R5, #+12]
        LDR      R1,[R5, #+16]
        SUBS     R0,R0,R1
        STR      R0,[R5, #+20]
        MOV      R0,#+0
??OSMemQuery_1:
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OS_MemInit:
        PUSH     {R12,LR}
        MOV      R1,#+24
        LDR      R0,??DataTable3_3
        BL       OS_MemClr
        LDR      R0,??DataTable3_3
        LDR      R1,??DataTable3_1
        STR      R0,[R1, #+0]
        ADR      R0,??DataTable3  ;; "\?"
        LDR      R1,??DataTable3_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+20]
        POP      {R0,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC8      "\?",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     OSMemFreeList

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     OSIntNesting

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     OSMemTbl

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
        DC8 "?"

        END
// 
//     2 bytes in section .rodata
// 1 132 bytes in section .text
// 
// 1 132 bytes of CODE  memory
//     2 bytes of CONST memory
//
//Errors: none
//Warnings: none
