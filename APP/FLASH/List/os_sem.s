///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       04/Sep/2014  10:10:21
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\uCOS-II\Source\os_sem.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\uCOS-II\Source\os_sem.c" -lcN "E:\SVN
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
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\os_sem.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN OSEventFreeList
        EXTERN OSIntNesting
        EXTERN OSLockNesting
        EXTERN OSTCBCur
        EXTERN OS_CPU_SR_Restore
        EXTERN OS_CPU_SR_Save
        EXTERN OS_EventTaskRdy
        EXTERN OS_EventTaskRemove
        EXTERN OS_EventTaskWait
        EXTERN OS_EventWaitListInit
        EXTERN OS_Sched

        PUBLIC OSSemAccept
        PUBLIC OSSemCreate
        PUBLIC OSSemDel
        PUBLIC OSSemPend
        PUBLIC OSSemPendAbort
        PUBLIC OSSemPost
        PUBLIC OSSemQuery
        PUBLIC OSSemSet


        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSSemAccept:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOV      R6,#+0
        CMP      R4,#+0
        BNE      ??OSSemAccept_0
        MOV      R0,#+0
        B        ??OSSemAccept_1
??OSSemAccept_0:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+3
        BEQ      ??OSSemAccept_2
        MOV      R0,#+0
        B        ??OSSemAccept_1
??OSSemAccept_2:
        BL       OS_CPU_SR_Save
        MOVS     R6,R0
        LDRH     R0,[R4, #+8]
        MOVS     R5,R0
        MOVS     R0,R5
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+0
        BEQ      ??OSSemAccept_3
        LDRH     R0,[R4, #+8]
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+8]
??OSSemAccept_3:
        MOVS     R0,R6
        BL       OS_CPU_SR_Restore
        MOVS     R0,R5
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
??OSSemAccept_1:
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSSemCreate:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOV      R6,#+0
        LDR      R0,??DataTable2_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSSemCreate_0
        MOV      R0,#+0
        B        ??OSSemCreate_1
??OSSemCreate_0:
        BL       OS_CPU_SR_Save
        MOVS     R6,R0
        LDR      R0,??DataTable2_2
        LDR      R0,[R0, #+0]
        MOVS     R5,R0
        LDR      R0,??DataTable2_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSSemCreate_2
        LDR      R0,??DataTable2_2
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+4]
        LDR      R1,??DataTable2_2
        STR      R0,[R1, #+0]
??OSSemCreate_2:
        MOVS     R0,R6
        BL       OS_CPU_SR_Restore
        CMP      R5,#+0
        BEQ      ??OSSemCreate_3
        MOV      R0,#+3
        STRB     R0,[R5, #+0]
        STRH     R4,[R5, #+8]
        MOV      R0,#+0
        STR      R0,[R5, #+4]
        ADR      R0,??DataTable2  ;; "\?"
        STR      R0,[R5, #+20]
        MOVS     R0,R5
        BL       OS_EventWaitListInit
??OSSemCreate_3:
        MOVS     R0,R5
??OSSemCreate_1:
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSSemDel:
        PUSH     {R3-R9,LR}
        MOVS     R9,R0
        MOVS     R4,R1
        MOVS     R5,R2
        MOV      R8,#+0
        CMP      R5,#+0
        BNE      ??OSSemDel_0
        MOVS     R0,R9
        B        ??OSSemDel_1
??OSSemDel_0:
        CMP      R9,#+0
        BNE      ??OSSemDel_2
        MOV      R0,#+4
        STRB     R0,[R5, #+0]
        MOVS     R0,R9
        B        ??OSSemDel_1
??OSSemDel_2:
        LDRB     R0,[R9, #+0]
        CMP      R0,#+3
        BEQ      ??OSSemDel_3
        MOV      R0,#+1
        STRB     R0,[R5, #+0]
        MOVS     R0,R9
        B        ??OSSemDel_1
??OSSemDel_3:
        LDR      R0,??DataTable2_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSSemDel_4
        MOV      R0,#+15
        STRB     R0,[R5, #+0]
        MOVS     R0,R9
        B        ??OSSemDel_1
??OSSemDel_4:
        BL       OS_CPU_SR_Save
        MOVS     R8,R0
        LDRB     R0,[R9, #+10]
        CMP      R0,#+0
        BEQ      ??OSSemDel_5
        MOV      R0,#+1
        MOVS     R6,R0
        B        ??OSSemDel_6
??OSSemDel_5:
        MOV      R0,#+0
        MOVS     R6,R0
??OSSemDel_6:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??OSSemDel_7
        CMP      R0,#+1
        BEQ      ??OSSemDel_8
        B        ??OSSemDel_9
??OSSemDel_7:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??OSSemDel_10
        ADR      R0,??DataTable2  ;; "\?"
        STR      R0,[R9, #+20]
        MOV      R0,#+0
        STRB     R0,[R9, #+0]
        LDR      R0,??DataTable2_2
        LDR      R0,[R0, #+0]
        STR      R0,[R9, #+4]
        MOV      R0,#+0
        STRH     R0,[R9, #+8]
        LDR      R0,??DataTable2_2
        STR      R9,[R0, #+0]
        MOVS     R0,R8
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        MOVS     R7,R0
        B        ??OSSemDel_11
??OSSemDel_10:
        MOVS     R0,R8
        BL       OS_CPU_SR_Restore
        MOV      R0,#+73
        STRB     R0,[R5, #+0]
        MOVS     R7,R9
??OSSemDel_11:
        B        ??OSSemDel_12
??OSSemDel_8:
        LDRB     R0,[R9, #+10]
        CMP      R0,#+0
        BEQ      ??OSSemDel_13
        MOV      R3,#+0
        MOV      R2,#+1
        MOV      R1,#+0
        MOVS     R0,R9
        BL       OS_EventTaskRdy
        B        ??OSSemDel_8
??OSSemDel_13:
        ADR      R0,??DataTable2  ;; "\?"
        STR      R0,[R9, #+20]
        MOV      R0,#+0
        STRB     R0,[R9, #+0]
        LDR      R0,??DataTable2_2
        LDR      R0,[R0, #+0]
        STR      R0,[R9, #+4]
        MOV      R0,#+0
        STRH     R0,[R9, #+8]
        LDR      R0,??DataTable2_2
        STR      R9,[R0, #+0]
        MOVS     R0,R8
        BL       OS_CPU_SR_Restore
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??OSSemDel_14
        BL       OS_Sched
??OSSemDel_14:
        MOV      R0,#+0
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        MOVS     R7,R0
        B        ??OSSemDel_12
??OSSemDel_9:
        MOVS     R0,R8
        BL       OS_CPU_SR_Restore
        MOV      R0,#+7
        STRB     R0,[R5, #+0]
        MOVS     R7,R9
??OSSemDel_12:
        MOVS     R0,R7
??OSSemDel_1:
        POP      {R1,R4-R9,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSSemPend:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R7,#+0
        CMP      R6,#+0
        BEQ      ??OSSemPend_0
??OSSemPend_1:
        CMP      R4,#+0
        BNE      ??OSSemPend_2
        MOV      R0,#+4
        STRB     R0,[R6, #+0]
        B        ??OSSemPend_0
??OSSemPend_2:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+3
        BEQ      ??OSSemPend_3
        MOV      R0,#+1
        STRB     R0,[R6, #+0]
        B        ??OSSemPend_0
??OSSemPend_3:
        LDR      R0,??DataTable2_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSSemPend_4
        MOV      R0,#+2
        STRB     R0,[R6, #+0]
        B        ??OSSemPend_0
??OSSemPend_4:
        LDR      R0,??DataTable2_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSSemPend_5
        MOV      R0,#+13
        STRB     R0,[R6, #+0]
        B        ??OSSemPend_0
??OSSemPend_5:
        BL       OS_CPU_SR_Save
        MOVS     R7,R0
        LDRH     R0,[R4, #+8]
        CMP      R0,#+0
        BEQ      ??OSSemPend_6
        LDRH     R0,[R4, #+8]
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+8]
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        STRB     R0,[R6, #+0]
        B        ??OSSemPend_0
??OSSemPend_6:
        LDR      R0,??DataTable2_4
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+52]
        ORRS     R0,R0,#0x1
        LDR      R1,??DataTable2_4
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+52]
        MOV      R0,#+0
        LDR      R1,??DataTable2_4
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+53]
        LDR      R0,??DataTable2_4
        LDR      R0,[R0, #+0]
        STR      R5,[R0, #+48]
        MOVS     R0,R4
        BL       OS_EventTaskWait
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        BL       OS_Sched
        BL       OS_CPU_SR_Save
        MOVS     R7,R0
        LDR      R0,??DataTable2_4
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+53]
        CMP      R0,#+0
        BEQ      ??OSSemPend_7
        CMP      R0,#+2
        BEQ      ??OSSemPend_8
        B        ??OSSemPend_9
??OSSemPend_7:
        MOV      R0,#+0
        STRB     R0,[R6, #+0]
        B        ??OSSemPend_10
??OSSemPend_8:
        MOV      R0,#+14
        STRB     R0,[R6, #+0]
        B        ??OSSemPend_10
??OSSemPend_9:
        MOVS     R1,R4
        LDR      R0,??DataTable2_4
        LDR      R0,[R0, #+0]
        BL       OS_EventTaskRemove
        MOV      R0,#+10
        STRB     R0,[R6, #+0]
??OSSemPend_10:
        MOV      R0,#+0
        LDR      R1,??DataTable2_4
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+52]
        MOV      R0,#+0
        LDR      R1,??DataTable2_4
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+53]
        MOV      R0,#+0
        LDR      R1,??DataTable2_4
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+28]
        MOV      R0,#+0
        LDR      R1,??DataTable2_4
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+32]
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
??OSSemPend_0:
        POP      {R0,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC8      "\?",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     OSIntNesting

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     OSEventFreeList

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     OSLockNesting

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     OSTCBCur

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSSemPendAbort:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R8,#+0
        CMP      R6,#+0
        BNE      ??OSSemPendAbort_0
        MOV      R0,#+0
        B        ??OSSemPendAbort_1
??OSSemPendAbort_0:
        CMP      R4,#+0
        BNE      ??OSSemPendAbort_2
        MOV      R0,#+4
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSSemPendAbort_1
??OSSemPendAbort_2:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+3
        BEQ      ??OSSemPendAbort_3
        MOV      R0,#+1
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSSemPendAbort_1
??OSSemPendAbort_3:
        BL       OS_CPU_SR_Save
        MOVS     R8,R0
        LDRB     R0,[R4, #+10]
        CMP      R0,#+0
        BEQ      ??OSSemPendAbort_4
        MOV      R0,#+0
        MOVS     R7,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??OSSemPendAbort_5
??OSSemPendAbort_6:
        LDRB     R0,[R4, #+10]
        CMP      R0,#+0
        BEQ      ??OSSemPendAbort_7
        MOV      R3,#+2
        MOV      R2,#+1
        MOV      R1,#+0
        MOVS     R0,R4
        BL       OS_EventTaskRdy
        ADDS     R7,R7,#+1
        B        ??OSSemPendAbort_6
??OSSemPendAbort_7:
        B        ??OSSemPendAbort_8
??OSSemPendAbort_5:
        MOV      R3,#+2
        MOV      R2,#+1
        MOV      R1,#+0
        MOVS     R0,R4
        BL       OS_EventTaskRdy
        ADDS     R7,R7,#+1
??OSSemPendAbort_8:
        MOVS     R0,R8
        BL       OS_CPU_SR_Restore
        BL       OS_Sched
        MOV      R0,#+14
        STRB     R0,[R6, #+0]
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??OSSemPendAbort_1
??OSSemPendAbort_4:
        MOVS     R0,R8
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
??OSSemPendAbort_1:
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSSemPost:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOV      R5,#+0
        CMP      R4,#+0
        BNE      ??OSSemPost_0
        MOV      R0,#+4
        B        ??OSSemPost_1
??OSSemPost_0:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+3
        BEQ      ??OSSemPost_2
        MOV      R0,#+1
        B        ??OSSemPost_1
??OSSemPost_2:
        BL       OS_CPU_SR_Save
        MOVS     R5,R0
        LDRB     R0,[R4, #+10]
        CMP      R0,#+0
        BEQ      ??OSSemPost_3
        MOV      R3,#+0
        MOV      R2,#+1
        MOV      R1,#+0
        MOVS     R0,R4
        BL       OS_EventTaskRdy
        MOVS     R6,R0
        MOVS     R0,R5
        BL       OS_CPU_SR_Restore
        BL       OS_Sched
        MOV      R0,#+0
        B        ??OSSemPost_1
??OSSemPost_3:
        LDRH     R0,[R4, #+8]
        MOV      R1,#+255
        ORR      R1,R1,#0xFF00
        CMP      R0,R1
        BEQ      ??OSSemPost_4
        LDRH     R0,[R4, #+8]
        ADDS     R0,R0,#+1
        STRH     R0,[R4, #+8]
        MOVS     R0,R5
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        B        ??OSSemPost_1
??OSSemPost_4:
        MOVS     R0,R5
        BL       OS_CPU_SR_Restore
        MOV      R0,#+50
??OSSemPost_1:
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSSemQuery:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R9,#+0
        CMP      R4,#+0
        BNE      ??OSSemQuery_0
        MOV      R0,#+4
        B        ??OSSemQuery_1
??OSSemQuery_0:
        CMP      R5,#+0
        BNE      ??OSSemQuery_2
        MOV      R0,#+9
        B        ??OSSemQuery_1
??OSSemQuery_2:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+3
        BEQ      ??OSSemQuery_3
        MOV      R0,#+1
        B        ??OSSemQuery_1
??OSSemQuery_3:
        BL       OS_CPU_SR_Save
        MOVS     R9,R0
        LDRB     R0,[R4, #+10]
        STRB     R0,[R5, #+10]
        ADDS     R0,R4,#+11
        MOVS     R6,R0
        ADDS     R0,R5,#+2
        MOVS     R7,R0
        MOV      R0,#+0
        MOVS     R8,R0
??OSSemQuery_4:
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+8
        BCS      ??OSSemQuery_5
        LDRB     R0,[R6, #+0]
        STRB     R0,[R7, #+0]
        ADDS     R6,R6,#+1
        ADDS     R7,R7,#+1
        ADDS     R8,R8,#+1
        B        ??OSSemQuery_4
??OSSemQuery_5:
        LDRH     R0,[R4, #+8]
        STRH     R0,[R5, #+0]
        MOVS     R0,R9
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
??OSSemQuery_1:
        POP      {R1,R4-R9,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSSemSet:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R7,#+0
        CMP      R6,#+0
        BEQ      ??OSSemSet_0
??OSSemSet_1:
        CMP      R4,#+0
        BNE      ??OSSemSet_2
        MOV      R0,#+4
        STRB     R0,[R6, #+0]
        B        ??OSSemSet_0
??OSSemSet_2:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+3
        BEQ      ??OSSemSet_3
        MOV      R0,#+1
        STRB     R0,[R6, #+0]
        B        ??OSSemSet_0
??OSSemSet_3:
        BL       OS_CPU_SR_Save
        MOVS     R7,R0
        MOV      R0,#+0
        STRB     R0,[R6, #+0]
        LDRH     R0,[R4, #+8]
        CMP      R0,#+0
        BEQ      ??OSSemSet_4
        STRH     R5,[R4, #+8]
        B        ??OSSemSet_5
??OSSemSet_4:
        LDRB     R0,[R4, #+10]
        CMP      R0,#+0
        BNE      ??OSSemSet_6
        STRH     R5,[R4, #+8]
        B        ??OSSemSet_5
??OSSemSet_6:
        MOV      R0,#+73
        STRB     R0,[R6, #+0]
??OSSemSet_5:
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
??OSSemSet_0:
        POP      {R0,R4-R7,LR}
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
// 1 952 bytes in section .text
// 
// 1 952 bytes of CODE  memory
//     2 bytes of CONST memory
//
//Errors: none
//Warnings: none
