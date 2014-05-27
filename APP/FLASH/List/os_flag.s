///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       22/May/2014  14:14:52
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\uCOS-II\Source\os_flag.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\uCOS-II\Source\os_flag.c" -lcN "E:\SVN
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
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\os_flag.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN OSFlagFreeList
        EXTERN OSFlagTbl
        EXTERN OSIntNesting
        EXTERN OSLockNesting
        EXTERN OSRdyGrp
        EXTERN OSRdyTbl
        EXTERN OSTCBCur
        EXTERN OS_CPU_SR_Restore
        EXTERN OS_CPU_SR_Save
        EXTERN OS_MemClr
        EXTERN OS_Sched
        EXTERN OS_StrLen

        PUBLIC OSFlagAccept
        PUBLIC OSFlagCreate
        PUBLIC OSFlagDel
        PUBLIC OSFlagNameGet
        PUBLIC OSFlagNameSet
        PUBLIC OSFlagPend
        PUBLIC OSFlagPendGetFlagsRdy
        PUBLIC OSFlagPost
        PUBLIC OSFlagQuery
        PUBLIC OS_FlagInit
        PUBLIC OS_FlagUnlink


        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSFlagAccept:
        PUSH     {R3-R11,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOV      R11,#+0
        CMP      R7,#+0
        BNE      ??OSFlagAccept_1
        MOV      R0,#+0
        B        ??OSFlagAccept_2
??OSFlagAccept_1:
        CMP      R4,#+0
        BNE      ??OSFlagAccept_3
        MOV      R0,#+110
        STRB     R0,[R7, #+0]
        MOV      R0,#+0
        B        ??OSFlagAccept_2
??OSFlagAccept_3:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+5
        BEQ      ??OSFlagAccept_4
        MOV      R0,#+1
        STRB     R0,[R7, #+0]
        MOV      R0,#+0
        B        ??OSFlagAccept_2
??OSFlagAccept_4:
        ANDS     R0,R6,#0x80
        MOVS     R9,R0
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??OSFlagAccept_5
        ANDS     R6,R6,#0x7F
        MOV      R0,#+1
        MOVS     R10,R0
        B        ??OSFlagAccept_6
??OSFlagAccept_5:
        MOV      R0,#+0
        MOVS     R10,R0
??OSFlagAccept_6:
        MOV      R0,#+0
        STRB     R0,[R7, #+0]
        BL       OS_CPU_SR_Save
        MOVS     R11,R0
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+3
        BHI      ??OSFlagAccept_7
        LDRB     R1,[PC, R0]
        ADD      PC,PC,R1, LSL #+2
        DATA
??OSFlagAccept_0:
        DC8      0x2B,0x41,0x0,0x16
        ARM
??OSFlagAccept_8:
        LDRH     R0,[R4, #+8]
        ANDS     R0,R5,R0
        MOVS     R8,R0
        LSL      R8,R8,#+16
        LSRS     R8,R8,#+16
        LSL      R5,R5,#+16
        LSRS     R5,R5,#+16
        CMP      R8,R5
        BNE      ??OSFlagAccept_9
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??OSFlagAccept_10
        LDRH     R0,[R4, #+8]
        BICS     R0,R0,R8
        STRH     R0,[R4, #+8]
        B        ??OSFlagAccept_10
??OSFlagAccept_9:
        MOV      R0,#+112
        STRB     R0,[R7, #+0]
??OSFlagAccept_10:
        MOVS     R0,R11
        BL       OS_CPU_SR_Restore
        B        ??OSFlagAccept_11
??OSFlagAccept_12:
        LDRH     R0,[R4, #+8]
        ANDS     R0,R5,R0
        MOVS     R8,R0
        MOVS     R0,R8
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+0
        BEQ      ??OSFlagAccept_13
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??OSFlagAccept_14
        LDRH     R0,[R4, #+8]
        BICS     R0,R0,R8
        STRH     R0,[R4, #+8]
        B        ??OSFlagAccept_14
??OSFlagAccept_13:
        MOV      R0,#+112
        STRB     R0,[R7, #+0]
??OSFlagAccept_14:
        MOVS     R0,R11
        BL       OS_CPU_SR_Restore
        B        ??OSFlagAccept_11
??OSFlagAccept_15:
        LDRH     R0,[R4, #+8]
        BICS     R0,R5,R0
        MOVS     R8,R0
        LSL      R8,R8,#+16
        LSRS     R8,R8,#+16
        LSL      R5,R5,#+16
        LSRS     R5,R5,#+16
        CMP      R8,R5
        BNE      ??OSFlagAccept_16
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??OSFlagAccept_17
        LDRH     R0,[R4, #+8]
        ORRS     R0,R8,R0
        STRH     R0,[R4, #+8]
        B        ??OSFlagAccept_17
??OSFlagAccept_16:
        MOV      R0,#+112
        STRB     R0,[R7, #+0]
??OSFlagAccept_17:
        MOVS     R0,R11
        BL       OS_CPU_SR_Restore
        B        ??OSFlagAccept_11
??OSFlagAccept_18:
        LDRH     R0,[R4, #+8]
        BICS     R0,R5,R0
        MOVS     R8,R0
        MOVS     R0,R8
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+0
        BEQ      ??OSFlagAccept_19
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??OSFlagAccept_20
        LDRH     R0,[R4, #+8]
        ORRS     R0,R8,R0
        STRH     R0,[R4, #+8]
        B        ??OSFlagAccept_20
??OSFlagAccept_19:
        MOV      R0,#+112
        STRB     R0,[R7, #+0]
??OSFlagAccept_20:
        MOVS     R0,R11
        BL       OS_CPU_SR_Restore
        B        ??OSFlagAccept_11
??OSFlagAccept_7:
        MOVS     R0,R11
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        MOVS     R8,R0
        MOV      R0,#+111
        STRB     R0,[R7, #+0]
??OSFlagAccept_11:
        MOVS     R0,R8
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
??OSFlagAccept_2:
        POP      {R1,R4-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSFlagCreate:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R7,#+0
        CMP      R5,#+0
        BNE      ??OSFlagCreate_0
        MOV      R0,#+0
        B        ??OSFlagCreate_1
??OSFlagCreate_0:
        LDR      R0,??DataTable8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSFlagCreate_2
        MOV      R0,#+16
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        B        ??OSFlagCreate_1
??OSFlagCreate_2:
        BL       OS_CPU_SR_Save
        MOVS     R7,R0
        LDR      R0,??DataTable8_1
        LDR      R0,[R0, #+0]
        MOVS     R6,R0
        CMP      R6,#+0
        BEQ      ??OSFlagCreate_3
        LDR      R0,??DataTable8_1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+4]
        LDR      R1,??DataTable8_1
        STR      R0,[R1, #+0]
        MOV      R0,#+5
        STRB     R0,[R6, #+0]
        STRH     R4,[R6, #+8]
        MOV      R0,#+0
        STR      R0,[R6, #+4]
        ADR      R0,??DataTable3  ;; "\?"
        STR      R0,[R6, #+12]
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        STRB     R0,[R5, #+0]
        B        ??OSFlagCreate_4
??OSFlagCreate_3:
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOV      R0,#+114
        STRB     R0,[R5, #+0]
??OSFlagCreate_4:
        MOVS     R0,R6
??OSFlagCreate_1:
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSFlagDel:
        PUSH     {R4-R10,LR}
        MOVS     R10,R0
        MOVS     R4,R1
        MOVS     R5,R2
        MOV      R9,#+0
        CMP      R5,#+0
        BNE      ??OSFlagDel_0
        MOVS     R0,R10
        B        ??OSFlagDel_1
??OSFlagDel_0:
        CMP      R10,#+0
        BNE      ??OSFlagDel_2
        MOV      R0,#+110
        STRB     R0,[R5, #+0]
        MOVS     R0,R10
        B        ??OSFlagDel_1
??OSFlagDel_2:
        LDR      R0,??DataTable8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSFlagDel_3
        MOV      R0,#+15
        STRB     R0,[R5, #+0]
        MOVS     R0,R10
        B        ??OSFlagDel_1
??OSFlagDel_3:
        LDRB     R0,[R10, #+0]
        CMP      R0,#+5
        BEQ      ??OSFlagDel_4
        MOV      R0,#+1
        STRB     R0,[R5, #+0]
        MOVS     R0,R10
        B        ??OSFlagDel_1
??OSFlagDel_4:
        BL       OS_CPU_SR_Save
        MOVS     R9,R0
        LDR      R0,[R10, #+4]
        CMP      R0,#+0
        BEQ      ??OSFlagDel_5
        MOV      R0,#+1
        MOVS     R6,R0
        B        ??OSFlagDel_6
??OSFlagDel_5:
        MOV      R0,#+0
        MOVS     R6,R0
??OSFlagDel_6:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??OSFlagDel_7
        CMP      R0,#+1
        BEQ      ??OSFlagDel_8
        B        ??OSFlagDel_9
??OSFlagDel_7:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??OSFlagDel_10
        ADR      R0,??DataTable3  ;; "\?"
        STR      R0,[R10, #+12]
        MOV      R0,#+0
        STRB     R0,[R10, #+0]
        LDR      R0,??DataTable8_1
        LDR      R0,[R0, #+0]
        STR      R0,[R10, #+4]
        MOV      R0,#+0
        STRH     R0,[R10, #+8]
        LDR      R0,??DataTable8_1
        STR      R10,[R0, #+0]
        MOVS     R0,R9
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        MOVS     R8,R0
        B        ??OSFlagDel_11
??OSFlagDel_10:
        MOVS     R0,R9
        BL       OS_CPU_SR_Restore
        MOV      R0,#+73
        STRB     R0,[R5, #+0]
        MOVS     R8,R10
??OSFlagDel_11:
        B        ??OSFlagDel_12
??OSFlagDel_8:
        LDR      R0,[R10, #+4]
        MOVS     R7,R0
??OSFlagDel_13:
        CMP      R7,#+0
        BEQ      ??OSFlagDel_14
        MOV      R1,#+0
        MOVS     R0,R7
        BL       OS_FlagTaskRdy
        LDR      R7,[R7, #+0]
        B        ??OSFlagDel_13
??OSFlagDel_14:
        ADR      R0,??DataTable3  ;; "\?"
        STR      R0,[R10, #+12]
        MOV      R0,#+0
        STRB     R0,[R10, #+0]
        LDR      R0,??DataTable8_1
        LDR      R0,[R0, #+0]
        STR      R0,[R10, #+4]
        MOV      R0,#+0
        STRH     R0,[R10, #+8]
        LDR      R0,??DataTable8_1
        STR      R10,[R0, #+0]
        MOVS     R0,R9
        BL       OS_CPU_SR_Restore
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??OSFlagDel_15
        BL       OS_Sched
??OSFlagDel_15:
        MOV      R0,#+0
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        MOVS     R8,R0
        B        ??OSFlagDel_12
??OSFlagDel_9:
        MOVS     R0,R9
        BL       OS_CPU_SR_Restore
        MOV      R0,#+7
        STRB     R0,[R5, #+0]
        MOVS     R8,R10
??OSFlagDel_12:
        MOVS     R0,R8
??OSFlagDel_1:
        POP      {R4-R10,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSFlagNameGet:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R8,#+0
        CMP      R6,#+0
        BNE      ??OSFlagNameGet_0
        MOV      R0,#+0
        B        ??OSFlagNameGet_1
??OSFlagNameGet_0:
        CMP      R4,#+0
        BNE      ??OSFlagNameGet_2
        MOV      R0,#+110
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSFlagNameGet_1
??OSFlagNameGet_2:
        CMP      R5,#+0
        BNE      ??OSFlagNameGet_3
        MOV      R0,#+12
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSFlagNameGet_1
??OSFlagNameGet_3:
        LDR      R0,??DataTable8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSFlagNameGet_4
        MOV      R0,#+17
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSFlagNameGet_1
??OSFlagNameGet_4:
        BL       OS_CPU_SR_Save
        MOVS     R8,R0
        LDRB     R0,[R4, #+0]
        CMP      R0,#+5
        BEQ      ??OSFlagNameGet_5
        MOVS     R0,R8
        BL       OS_CPU_SR_Restore
        MOV      R0,#+1
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSFlagNameGet_1
??OSFlagNameGet_5:
        LDR      R0,[R4, #+12]
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
??OSFlagNameGet_1:
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSFlagNameSet:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R7,#+0
        CMP      R6,#+0
        BEQ      ??OSFlagNameSet_0
??OSFlagNameSet_1:
        CMP      R4,#+0
        BNE      ??OSFlagNameSet_2
        MOV      R0,#+110
        STRB     R0,[R6, #+0]
        B        ??OSFlagNameSet_0
??OSFlagNameSet_2:
        CMP      R5,#+0
        BNE      ??OSFlagNameSet_3
        MOV      R0,#+12
        STRB     R0,[R6, #+0]
        B        ??OSFlagNameSet_0
??OSFlagNameSet_3:
        LDR      R0,??DataTable8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSFlagNameSet_4
        MOV      R0,#+18
        STRB     R0,[R6, #+0]
        B        ??OSFlagNameSet_0
??OSFlagNameSet_4:
        BL       OS_CPU_SR_Save
        MOVS     R7,R0
        LDRB     R0,[R4, #+0]
        CMP      R0,#+5
        BEQ      ??OSFlagNameSet_5
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOV      R0,#+1
        STRB     R0,[R6, #+0]
        B        ??OSFlagNameSet_0
??OSFlagNameSet_5:
        STR      R5,[R4, #+12]
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        STRB     R0,[R6, #+0]
??OSFlagNameSet_0:
        POP      {R0,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC8      "\?",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSFlagPend:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+28
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDR      R8,[SP, #+64]
        MOV      R11,#+0
        CMP      R8,#+0
        BNE      ??OSFlagPend_2
        MOV      R0,#+0
        B        ??OSFlagPend_3
??OSFlagPend_2:
        CMP      R4,#+0
        BNE      ??OSFlagPend_4
        MOV      R0,#+110
        STRB     R0,[R8, #+0]
        MOV      R0,#+0
        B        ??OSFlagPend_3
??OSFlagPend_4:
        LDR      R0,??DataTable8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSFlagPend_5
        MOV      R0,#+2
        STRB     R0,[R8, #+0]
        MOV      R0,#+0
        B        ??OSFlagPend_3
??OSFlagPend_5:
        LDR      R0,??DataTable8_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSFlagPend_6
        MOV      R0,#+13
        STRB     R0,[R8, #+0]
        MOV      R0,#+0
        B        ??OSFlagPend_3
??OSFlagPend_6:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+5
        BEQ      ??OSFlagPend_7
        MOV      R0,#+1
        STRB     R0,[R8, #+0]
        MOV      R0,#+0
        B        ??OSFlagPend_3
??OSFlagPend_7:
        ANDS     R1,R6,#0x80
        STRB     R1,[SP, #+5]
        LDRB     R0,[SP, #+5]
        CMP      R0,#+0
        BEQ      ??OSFlagPend_8
        ANDS     R6,R6,#0x7F
        MOV      R0,#+1
        MOVS     R10,R0
        B        ??OSFlagPend_9
??OSFlagPend_8:
        MOV      R0,#+0
        MOVS     R10,R0
??OSFlagPend_9:
        BL       OS_CPU_SR_Save
        MOVS     R11,R0
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+3
        BHI      ??OSFlagPend_10
        LDRB     R1,[PC, R0]
        ADD      PC,PC,R1, LSL #+2
        DATA
??OSFlagPend_0:
        DC8      0x4D,0x74,0x0,0x27
        ARM
??OSFlagPend_11:
        LDRH     R0,[R4, #+8]
        ANDS     R0,R5,R0
        MOVS     R9,R0
        LSL      R9,R9,#+16
        LSRS     R9,R9,#+16
        LSL      R5,R5,#+16
        LSRS     R5,R5,#+16
        CMP      R9,R5
        BNE      ??OSFlagPend_12
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??OSFlagPend_13
        LDRH     R0,[R4, #+8]
        BICS     R0,R0,R9
        STRH     R0,[R4, #+8]
??OSFlagPend_13:
        LDR      R0,??DataTable8_4
        LDR      R0,[R0, #+0]
        STRH     R9,[R0, #+44]
        MOVS     R0,R11
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        STRB     R0,[R8, #+0]
        MOVS     R0,R9
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        B        ??OSFlagPend_3
??OSFlagPend_12:
        STR      R7,[SP, #+0]
        MOVS     R3,R6
        ANDS     R3,R3,#0xFF      ;; Zero extend
        MOVS     R2,R5
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        ADD      R1,SP,#+8
        MOVS     R0,R4
        BL       OS_FlagBlock
        MOVS     R0,R11
        BL       OS_CPU_SR_Restore
        B        ??OSFlagPend_14
??OSFlagPend_15:
        LDRH     R0,[R4, #+8]
        ANDS     R0,R5,R0
        MOVS     R9,R0
        MOVS     R0,R9
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+0
        BEQ      ??OSFlagPend_16
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??OSFlagPend_17
        LDRH     R0,[R4, #+8]
        BICS     R0,R0,R9
        STRH     R0,[R4, #+8]
??OSFlagPend_17:
        LDR      R0,??DataTable8_4
        LDR      R0,[R0, #+0]
        STRH     R9,[R0, #+44]
        MOVS     R0,R11
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        STRB     R0,[R8, #+0]
        MOVS     R0,R9
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        B        ??OSFlagPend_3
??OSFlagPend_16:
        STR      R7,[SP, #+0]
        MOVS     R3,R6
        ANDS     R3,R3,#0xFF      ;; Zero extend
        MOVS     R2,R5
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        ADD      R1,SP,#+8
        MOVS     R0,R4
        BL       OS_FlagBlock
        MOVS     R0,R11
        BL       OS_CPU_SR_Restore
        B        ??OSFlagPend_14
??OSFlagPend_18:
        LDRH     R0,[R4, #+8]
        BICS     R0,R5,R0
        MOVS     R9,R0
        LSL      R9,R9,#+16
        LSRS     R9,R9,#+16
        LSL      R5,R5,#+16
        LSRS     R5,R5,#+16
        CMP      R9,R5
        BNE      ??OSFlagPend_19
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??OSFlagPend_20
        LDRH     R0,[R4, #+8]
        ORRS     R0,R9,R0
        STRH     R0,[R4, #+8]
??OSFlagPend_20:
        LDR      R0,??DataTable8_4
        LDR      R0,[R0, #+0]
        STRH     R9,[R0, #+44]
        MOVS     R0,R11
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        STRB     R0,[R8, #+0]
        MOVS     R0,R9
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        B        ??OSFlagPend_3
??OSFlagPend_19:
        STR      R7,[SP, #+0]
        MOVS     R3,R6
        ANDS     R3,R3,#0xFF      ;; Zero extend
        MOVS     R2,R5
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        ADD      R1,SP,#+8
        MOVS     R0,R4
        BL       OS_FlagBlock
        MOVS     R0,R11
        BL       OS_CPU_SR_Restore
        B        ??OSFlagPend_14
??OSFlagPend_21:
        LDRH     R0,[R4, #+8]
        BICS     R0,R5,R0
        MOVS     R9,R0
        MOVS     R0,R9
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+0
        BEQ      ??OSFlagPend_22
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??OSFlagPend_23
        LDRH     R0,[R4, #+8]
        ORRS     R0,R9,R0
        STRH     R0,[R4, #+8]
??OSFlagPend_23:
        LDR      R0,??DataTable8_4
        LDR      R0,[R0, #+0]
        STRH     R9,[R0, #+44]
        MOVS     R0,R11
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        STRB     R0,[R8, #+0]
        MOVS     R0,R9
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        B        ??OSFlagPend_3
??OSFlagPend_22:
        STR      R7,[SP, #+0]
        MOVS     R3,R6
        ANDS     R3,R3,#0xFF      ;; Zero extend
        MOVS     R2,R5
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        ADD      R1,SP,#+8
        MOVS     R0,R4
        BL       OS_FlagBlock
        MOVS     R0,R11
        BL       OS_CPU_SR_Restore
        B        ??OSFlagPend_14
??OSFlagPend_10:
        MOVS     R0,R11
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        MOVS     R9,R0
        MOV      R0,#+111
        STRB     R0,[R8, #+0]
        MOVS     R0,R9
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        B        ??OSFlagPend_3
??OSFlagPend_14:
        BL       OS_Sched
        BL       OS_CPU_SR_Save
        MOVS     R11,R0
        LDR      R0,??DataTable8_4
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+53]
        CMP      R0,#+0
        BEQ      ??OSFlagPend_24
        LDR      R1,??DataTable8_4
        LDR      R1,[R1, #+0]
        LDRB     R1,[R1, #+53]
        STRB     R1,[SP, #+4]
        MOV      R0,#+0
        LDR      R1,??DataTable8_4
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+53]
        ADD      R0,SP,#+8
        BL       OS_FlagUnlink
        MOV      R0,#+0
        LDR      R1,??DataTable8_4
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+52]
        MOVS     R0,R11
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        MOVS     R9,R0
        LDRB     R0,[SP, #+4]
        CMP      R0,#+2
        BNE      ??OSFlagPend_25
        MOV      R0,#+14
        STRB     R0,[R8, #+0]
        B        ??OSFlagPend_26
??OSFlagPend_25:
        MOV      R0,#+10
        STRB     R0,[R8, #+0]
??OSFlagPend_26:
        MOVS     R0,R9
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        B        ??OSFlagPend_3
??OSFlagPend_24:
        LDR      R0,??DataTable8_4
        LDR      R0,[R0, #+0]
        LDRH     R0,[R0, #+44]
        MOVS     R9,R0
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??OSFlagPend_27
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+3
        BHI      ??OSFlagPend_28
        LDRB     R1,[PC, R0]
        ADD      PC,PC,R1, LSL #+2
        DATA
??OSFlagPend_1:
        DC8      0x4,0x4,0x0,0x0
        ARM
??OSFlagPend_29:
        LDRH     R0,[R4, #+8]
        BICS     R0,R0,R9
        STRH     R0,[R4, #+8]
        B        ??OSFlagPend_27
??OSFlagPend_30:
        LDRH     R0,[R4, #+8]
        ORRS     R0,R9,R0
        STRH     R0,[R4, #+8]
        B        ??OSFlagPend_27
??OSFlagPend_28:
        MOVS     R0,R11
        BL       OS_CPU_SR_Restore
        MOV      R0,#+111
        STRB     R0,[R8, #+0]
        MOV      R0,#+0
        B        ??OSFlagPend_3
??OSFlagPend_27:
        MOVS     R0,R11
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        STRB     R0,[R8, #+0]
        MOVS     R0,R9
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
??OSFlagPend_3:
        ADD      SP,SP,#+28       ;; stack cleaning
        POP      {R4-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSFlagPendGetFlagsRdy:
        PUSH     {R3-R5,LR}
        MOV      R5,#+0
        BL       OS_CPU_SR_Save
        MOVS     R5,R0
        LDR      R0,??DataTable8_4
        LDR      R0,[R0, #+0]
        LDRH     R0,[R0, #+44]
        MOVS     R4,R0
        MOVS     R0,R5
        BL       OS_CPU_SR_Restore
        MOVS     R0,R4
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        POP      {R1,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSFlagPost:
        PUSH     {R2,R4-R11,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R3
        MOV      R11,#+0
        CMP      R6,#+0
        BNE      ??OSFlagPost_1
        MOV      R0,#+0
        B        ??OSFlagPost_2
??OSFlagPost_1:
        CMP      R4,#+0
        BNE      ??OSFlagPost_3
        MOV      R0,#+110
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSFlagPost_2
??OSFlagPost_3:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+5
        BEQ      ??OSFlagPost_4
        MOV      R0,#+1
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSFlagPost_2
??OSFlagPost_4:
        BL       OS_CPU_SR_Save
        MOVS     R11,R0
        LDRB     R0,[SP, #+8]
        CMP      R0,#+0
        BEQ      ??OSFlagPost_5
        CMP      R0,#+1
        BEQ      ??OSFlagPost_6
        B        ??OSFlagPost_7
??OSFlagPost_5:
        LDRH     R0,[R4, #+8]
        BICS     R0,R0,R5
        STRH     R0,[R4, #+8]
        B        ??OSFlagPost_8
??OSFlagPost_6:
        LDRH     R0,[R4, #+8]
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+8]
        B        ??OSFlagPost_8
??OSFlagPost_7:
        MOVS     R0,R11
        BL       OS_CPU_SR_Restore
        MOV      R0,#+113
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSFlagPost_2
??OSFlagPost_8:
        MOV      R0,#+0
        MOVS     R8,R0
        LDR      R0,[R4, #+4]
        MOVS     R7,R0
??OSFlagPost_9:
        CMP      R7,#+0
        BEQ      ??OSFlagPost_10
        LDRB     R0,[R7, #+18]
        CMP      R0,#+3
        BHI      ??OSFlagPost_11
        LDRB     R1,[PC, R0]
        ADD      PC,PC,R1, LSL #+2
        DATA
??OSFlagPost_0:
        DC8      0x2C,0x42,0x0,0x16
        ARM
??OSFlagPost_12:
        LDRH     R0,[R4, #+8]
        LDRH     R1,[R7, #+16]
        ANDS     R0,R1,R0
        MOVS     R9,R0
        LDRH     R0,[R7, #+16]
        LSL      R9,R9,#+16
        LSRS     R9,R9,#+16
        CMP      R9,R0
        BNE      ??OSFlagPost_13
        MOVS     R1,R9
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        MOVS     R0,R7
        BL       OS_FlagTaskRdy
        MOVS     R10,R0
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??OSFlagPost_13
        MOV      R0,#+1
        MOVS     R8,R0
??OSFlagPost_13:
        B        ??OSFlagPost_14
??OSFlagPost_15:
        LDRH     R0,[R4, #+8]
        LDRH     R1,[R7, #+16]
        ANDS     R0,R1,R0
        MOVS     R9,R0
        MOVS     R0,R9
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+0
        BEQ      ??OSFlagPost_16
        MOVS     R1,R9
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        MOVS     R0,R7
        BL       OS_FlagTaskRdy
        MOVS     R10,R0
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??OSFlagPost_16
        MOV      R0,#+1
        MOVS     R8,R0
??OSFlagPost_16:
        B        ??OSFlagPost_14
??OSFlagPost_17:
        LDRH     R0,[R4, #+8]
        LDRH     R1,[R7, #+16]
        BICS     R0,R1,R0
        MOVS     R9,R0
        LDRH     R0,[R7, #+16]
        LSL      R9,R9,#+16
        LSRS     R9,R9,#+16
        CMP      R9,R0
        BNE      ??OSFlagPost_18
        MOVS     R1,R9
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        MOVS     R0,R7
        BL       OS_FlagTaskRdy
        MOVS     R10,R0
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??OSFlagPost_18
        MOV      R0,#+1
        MOVS     R8,R0
??OSFlagPost_18:
        B        ??OSFlagPost_14
??OSFlagPost_19:
        LDRH     R0,[R4, #+8]
        LDRH     R1,[R7, #+16]
        BICS     R0,R1,R0
        MOVS     R9,R0
        MOVS     R0,R9
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+0
        BEQ      ??OSFlagPost_20
        MOVS     R1,R9
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        MOVS     R0,R7
        BL       OS_FlagTaskRdy
        MOVS     R10,R0
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??OSFlagPost_20
        MOV      R0,#+1
        MOVS     R8,R0
??OSFlagPost_20:
        B        ??OSFlagPost_14
??OSFlagPost_11:
        MOVS     R0,R11
        BL       OS_CPU_SR_Restore
        MOV      R0,#+111
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSFlagPost_2
??OSFlagPost_14:
        LDR      R7,[R7, #+0]
        B        ??OSFlagPost_9
??OSFlagPost_10:
        MOVS     R0,R11
        BL       OS_CPU_SR_Restore
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??OSFlagPost_21
        BL       OS_Sched
??OSFlagPost_21:
        BL       OS_CPU_SR_Save
        MOVS     R11,R0
        LDRH     R1,[R4, #+8]
        STRH     R1,[SP, #+0]
        MOVS     R0,R11
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        STRB     R0,[R6, #+0]
        LDRH     R0,[SP, #+0]
??OSFlagPost_2:
        POP      {R1-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSFlagQuery:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R7,#+0
        CMP      R5,#+0
        BNE      ??OSFlagQuery_0
        MOV      R0,#+0
        B        ??OSFlagQuery_1
??OSFlagQuery_0:
        CMP      R4,#+0
        BNE      ??OSFlagQuery_2
        MOV      R0,#+110
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        B        ??OSFlagQuery_1
??OSFlagQuery_2:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+5
        BEQ      ??OSFlagQuery_3
        MOV      R0,#+1
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        B        ??OSFlagQuery_1
??OSFlagQuery_3:
        BL       OS_CPU_SR_Save
        MOVS     R7,R0
        LDRH     R0,[R4, #+8]
        MOVS     R6,R0
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        STRB     R0,[R5, #+0]
        MOVS     R0,R6
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
??OSFlagQuery_1:
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OS_FlagBlock:
        PUSH     {R4-R7,LR}
        LDR      R12,[SP, #+20]
        LDR      R5,??DataTable8_4
        LDR      R5,[R5, #+0]
        LDRB     R5,[R5, #+52]
        ORRS     R5,R5,#0x20
        LDR      R6,??DataTable8_4
        LDR      R6,[R6, #+0]
        STRB     R5,[R6, #+52]
        MOV      R5,#+0
        LDR      R6,??DataTable8_4
        LDR      R6,[R6, #+0]
        STRB     R5,[R6, #+53]
        LDR      R5,??DataTable8_4
        LDR      R5,[R5, #+0]
        STR      R12,[R5, #+48]
        LDR      R5,??DataTable8_4
        LDR      R5,[R5, #+0]
        STR      R1,[R5, #+40]
        STRH     R2,[R1, #+16]
        STRB     R3,[R1, #+18]
        LDR      R5,??DataTable8_4
        LDR      R5,[R5, #+0]
        STR      R5,[R1, #+8]
        LDR      R5,[R0, #+4]
        STR      R5,[R1, #+0]
        MOV      R5,#+0
        STR      R5,[R1, #+4]
        STR      R0,[R1, #+12]
        LDR      R5,[R0, #+4]
        MOVS     LR,R5
        CMP      LR,#+0
        BEQ      ??OS_FlagBlock_0
        STR      R1,[LR, #+4]
??OS_FlagBlock_0:
        STR      R1,[R0, #+4]
        LDR      R5,??DataTable8_4
        LDR      R5,[R5, #+0]
        LDRB     R5,[R5, #+56]
        MOVS     R4,R5
        MOVS     R5,R4
        ANDS     R5,R5,#0xFF      ;; Zero extend
        LDR      R6,??DataTable8_5
        LDRB     R5,[R5, +R6]
        LDR      R6,??DataTable8_4
        LDR      R6,[R6, #+0]
        LDRB     R6,[R6, #+57]
        BICS     R5,R5,R6
        MOVS     R6,R4
        ANDS     R6,R6,#0xFF      ;; Zero extend
        LDR      R7,??DataTable8_5
        STRB     R5,[R6, +R7]
        MOVS     R5,R4
        ANDS     R5,R5,#0xFF      ;; Zero extend
        LDR      R6,??DataTable8_5
        LDRB     R5,[R5, +R6]
        CMP      R5,#+0
        BNE      ??OS_FlagBlock_1
        LDR      R5,??DataTable8_6
        LDRB     R5,[R5, #+0]
        LDR      R6,??DataTable8_4
        LDR      R6,[R6, #+0]
        LDRB     R6,[R6, #+58]
        BICS     R5,R5,R6
        LDR      R6,??DataTable8_6
        STRB     R5,[R6, #+0]
??OS_FlagBlock_1:
        POP      {R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OS_FlagInit:
        PUSH     {R4-R6,LR}
        MOV      R1,#+80
        LDR      R0,??DataTable8_7
        BL       OS_MemClr
        LDR      R0,??DataTable8_7
        MOVS     R5,R0
        LDR      R0,??DataTable8_8
        MOVS     R6,R0
        MOV      R0,#+0
        MOVS     R4,R0
??OS_FlagInit_0:
        MOVS     R0,R4
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+4
        BCS      ??OS_FlagInit_1
        MOV      R0,#+0
        STRB     R0,[R5, #+0]
        STR      R6,[R5, #+4]
        ADR      R0,??DataTable8_2  ;; "\?"
        STR      R0,[R5, #+12]
        ADDS     R5,R5,#+16
        ADDS     R6,R6,#+16
        ADDS     R4,R4,#+1
        B        ??OS_FlagInit_0
??OS_FlagInit_1:
        MOV      R0,#+0
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        STR      R0,[R5, #+4]
        ADR      R0,??DataTable8_2  ;; "\?"
        STR      R0,[R5, #+12]
        LDR      R0,??DataTable8_7
        LDR      R1,??DataTable8_1
        STR      R0,[R1, #+0]
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OS_FlagTaskRdy:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[R4, #+8]
        MOVS     R6,R0
        MOV      R0,#+0
        STR      R0,[R6, #+48]
        STRH     R5,[R6, #+44]
        LDRB     R0,[R6, #+52]
        ANDS     R0,R0,#0xDF
        STRB     R0,[R6, #+52]
        MOV      R0,#+0
        STRB     R0,[R6, #+53]
        LDRB     R0,[R6, #+52]
        CMP      R0,#+0
        BNE      ??OS_FlagTaskRdy_0
        LDR      R0,??DataTable8_6
        LDRB     R0,[R0, #+0]
        LDRB     R1,[R6, #+58]
        ORRS     R0,R1,R0
        LDR      R1,??DataTable8_6
        STRB     R0,[R1, #+0]
        LDRB     R0,[R6, #+56]
        LDR      R1,??DataTable8_5
        LDRB     R0,[R0, +R1]
        LDRB     R1,[R6, #+57]
        ORRS     R0,R1,R0
        LDRB     R1,[R6, #+56]
        LDR      R2,??DataTable8_5
        STRB     R0,[R1, +R2]
        MOV      R0,#+1
        MOVS     R7,R0
        B        ??OS_FlagTaskRdy_1
??OS_FlagTaskRdy_0:
        MOV      R0,#+0
        MOVS     R7,R0
??OS_FlagTaskRdy_1:
        MOVS     R0,R4
        BL       OS_FlagUnlink
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     OSIntNesting

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     OSFlagFreeList

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC8      "\?",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC32     OSLockNesting

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DC32     OSTCBCur

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_5:
        DC32     OSRdyTbl

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_6:
        DC32     OSRdyGrp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_7:
        DC32     OSFlagTbl

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_8:
        DC32     OSFlagTbl+0x10

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OS_FlagUnlink:
        PUSH     {LR}
        LDR      LR,[R0, #+4]
        MOVS     R3,LR
        LDR      LR,[R0, #+0]
        MOVS     R12,LR
        CMP      R3,#+0
        BNE      ??OS_FlagUnlink_0
        LDR      LR,[R0, #+12]
        MOVS     R2,LR
        STR      R12,[R2, #+4]
        CMP      R12,#+0
        BEQ      ??OS_FlagUnlink_1
        MOV      LR,#+0
        STR      LR,[R12, #+4]
        B        ??OS_FlagUnlink_1
??OS_FlagUnlink_0:
        STR      R12,[R3, #+0]
        CMP      R12,#+0
        BEQ      ??OS_FlagUnlink_1
        STR      R3,[R12, #+4]
??OS_FlagUnlink_1:
        LDR      LR,[R0, #+8]
        MOVS     R1,LR
        MOV      LR,#+0
        STR      LR,[R1, #+40]
        POP      {LR}
        BX       LR               ;; return

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
// 4 396 bytes in section .text
// 
// 4 396 bytes of CODE  memory
//     2 bytes of CONST memory
//
//Errors: none
//Warnings: none
