///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       22/May/2014  14:14:52
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\uCOS-II\Source\os_mbox.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\uCOS-II\Source\os_mbox.c" -lcN "E:\SVN
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
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\os_mbox.s
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

        PUBLIC OSMboxAccept
        PUBLIC OSMboxCreate
        PUBLIC OSMboxDel
        PUBLIC OSMboxPend
        PUBLIC OSMboxPendAbort
        PUBLIC OSMboxPost
        PUBLIC OSMboxPostOpt
        PUBLIC OSMboxQuery


        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSMboxAccept:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOV      R6,#+0
        CMP      R4,#+0
        BNE      ??OSMboxAccept_0
        MOV      R0,#+0
        B        ??OSMboxAccept_1
??OSMboxAccept_0:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+1
        BEQ      ??OSMboxAccept_2
        MOV      R0,#+0
        B        ??OSMboxAccept_1
??OSMboxAccept_2:
        BL       OS_CPU_SR_Save
        MOVS     R6,R0
        LDR      R0,[R4, #+4]
        MOVS     R5,R0
        MOV      R0,#+0
        STR      R0,[R4, #+4]
        MOVS     R0,R6
        BL       OS_CPU_SR_Restore
        MOVS     R0,R5
??OSMboxAccept_1:
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSMboxCreate:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOV      R6,#+0
        LDR      R0,??DataTable2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSMboxCreate_0
        MOV      R0,#+0
        B        ??OSMboxCreate_1
??OSMboxCreate_0:
        BL       OS_CPU_SR_Save
        MOVS     R6,R0
        LDR      R0,??DataTable2_1
        LDR      R0,[R0, #+0]
        MOVS     R5,R0
        LDR      R0,??DataTable2_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSMboxCreate_2
        LDR      R0,??DataTable2_1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+4]
        LDR      R1,??DataTable2_1
        STR      R0,[R1, #+0]
??OSMboxCreate_2:
        MOVS     R0,R6
        BL       OS_CPU_SR_Restore
        CMP      R5,#+0
        BEQ      ??OSMboxCreate_3
        MOV      R0,#+1
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        STRH     R0,[R5, #+8]
        STR      R4,[R5, #+4]
        ADR      R0,??DataTable1  ;; "\?"
        STR      R0,[R5, #+20]
        MOVS     R0,R5
        BL       OS_EventWaitListInit
??OSMboxCreate_3:
        MOVS     R0,R5
??OSMboxCreate_1:
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSMboxDel:
        PUSH     {R3-R9,LR}
        MOVS     R9,R0
        MOVS     R4,R1
        MOVS     R5,R2
        MOV      R8,#+0
        CMP      R5,#+0
        BNE      ??OSMboxDel_0
        MOVS     R0,R9
        B        ??OSMboxDel_1
??OSMboxDel_0:
        CMP      R9,#+0
        BNE      ??OSMboxDel_2
        MOV      R0,#+4
        STRB     R0,[R5, #+0]
        MOVS     R0,R9
        B        ??OSMboxDel_1
??OSMboxDel_2:
        LDRB     R0,[R9, #+0]
        CMP      R0,#+1
        BEQ      ??OSMboxDel_3
        MOV      R0,#+1
        STRB     R0,[R5, #+0]
        MOVS     R0,R9
        B        ??OSMboxDel_1
??OSMboxDel_3:
        LDR      R0,??DataTable2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSMboxDel_4
        MOV      R0,#+15
        STRB     R0,[R5, #+0]
        MOVS     R0,R9
        B        ??OSMboxDel_1
??OSMboxDel_4:
        BL       OS_CPU_SR_Save
        MOVS     R8,R0
        LDRB     R0,[R9, #+10]
        CMP      R0,#+0
        BEQ      ??OSMboxDel_5
        MOV      R0,#+1
        MOVS     R6,R0
        B        ??OSMboxDel_6
??OSMboxDel_5:
        MOV      R0,#+0
        MOVS     R6,R0
??OSMboxDel_6:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??OSMboxDel_7
        CMP      R0,#+1
        BEQ      ??OSMboxDel_8
        B        ??OSMboxDel_9
??OSMboxDel_7:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??OSMboxDel_10
        ADR      R0,??DataTable1  ;; "\?"
        STR      R0,[R9, #+20]
        MOV      R0,#+0
        STRB     R0,[R9, #+0]
        LDR      R0,??DataTable2_1
        LDR      R0,[R0, #+0]
        STR      R0,[R9, #+4]
        MOV      R0,#+0
        STRH     R0,[R9, #+8]
        LDR      R0,??DataTable2_1
        STR      R9,[R0, #+0]
        MOVS     R0,R8
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        MOVS     R7,R0
        B        ??OSMboxDel_11
??OSMboxDel_10:
        MOVS     R0,R8
        BL       OS_CPU_SR_Restore
        MOV      R0,#+73
        STRB     R0,[R5, #+0]
        MOVS     R7,R9
??OSMboxDel_11:
        B        ??OSMboxDel_12
??OSMboxDel_8:
        LDRB     R0,[R9, #+10]
        CMP      R0,#+0
        BEQ      ??OSMboxDel_13
        MOV      R3,#+0
        MOV      R2,#+2
        MOV      R1,#+0
        MOVS     R0,R9
        BL       OS_EventTaskRdy
        B        ??OSMboxDel_8
??OSMboxDel_13:
        ADR      R0,??DataTable1  ;; "\?"
        STR      R0,[R9, #+20]
        MOV      R0,#+0
        STRB     R0,[R9, #+0]
        LDR      R0,??DataTable2_1
        LDR      R0,[R0, #+0]
        STR      R0,[R9, #+4]
        MOV      R0,#+0
        STRH     R0,[R9, #+8]
        LDR      R0,??DataTable2_1
        STR      R9,[R0, #+0]
        MOVS     R0,R8
        BL       OS_CPU_SR_Restore
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??OSMboxDel_14
        BL       OS_Sched
??OSMboxDel_14:
        MOV      R0,#+0
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        MOVS     R7,R0
        B        ??OSMboxDel_12
??OSMboxDel_9:
        MOVS     R0,R8
        BL       OS_CPU_SR_Restore
        MOV      R0,#+7
        STRB     R0,[R5, #+0]
        MOVS     R7,R9
??OSMboxDel_12:
        MOVS     R0,R7
??OSMboxDel_1:
        POP      {R1,R4-R9,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC8      "\?",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSMboxPend:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R8,#+0
        CMP      R6,#+0
        BNE      ??OSMboxPend_0
        MOV      R0,#+0
        B        ??OSMboxPend_1
??OSMboxPend_0:
        CMP      R4,#+0
        BNE      ??OSMboxPend_2
        MOV      R0,#+4
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSMboxPend_1
??OSMboxPend_2:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+1
        BEQ      ??OSMboxPend_3
        MOV      R0,#+1
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSMboxPend_1
??OSMboxPend_3:
        LDR      R0,??DataTable2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSMboxPend_4
        MOV      R0,#+2
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSMboxPend_1
??OSMboxPend_4:
        LDR      R0,??DataTable2_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSMboxPend_5
        MOV      R0,#+13
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSMboxPend_1
??OSMboxPend_5:
        BL       OS_CPU_SR_Save
        MOVS     R8,R0
        LDR      R0,[R4, #+4]
        MOVS     R7,R0
        CMP      R7,#+0
        BEQ      ??OSMboxPend_6
        MOV      R0,#+0
        STR      R0,[R4, #+4]
        MOVS     R0,R8
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        STRB     R0,[R6, #+0]
        MOVS     R0,R7
        B        ??OSMboxPend_1
??OSMboxPend_6:
        LDR      R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+52]
        ORRS     R0,R0,#0x2
        LDR      R1,??DataTable2_3
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+52]
        MOV      R0,#+0
        LDR      R1,??DataTable2_3
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+53]
        LDR      R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        STR      R5,[R0, #+48]
        MOVS     R0,R4
        BL       OS_EventTaskWait
        MOVS     R0,R8
        BL       OS_CPU_SR_Restore
        BL       OS_Sched
        BL       OS_CPU_SR_Save
        MOVS     R8,R0
        LDR      R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+53]
        CMP      R0,#+0
        BEQ      ??OSMboxPend_7
        CMP      R0,#+2
        BEQ      ??OSMboxPend_8
        B        ??OSMboxPend_9
??OSMboxPend_7:
        LDR      R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+36]
        MOVS     R7,R0
        MOV      R0,#+0
        STRB     R0,[R6, #+0]
        B        ??OSMboxPend_10
??OSMboxPend_8:
        MOV      R0,#+0
        MOVS     R7,R0
        MOV      R0,#+14
        STRB     R0,[R6, #+0]
        B        ??OSMboxPend_10
??OSMboxPend_9:
        MOVS     R1,R4
        LDR      R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        BL       OS_EventTaskRemove
        MOV      R0,#+0
        MOVS     R7,R0
        MOV      R0,#+10
        STRB     R0,[R6, #+0]
??OSMboxPend_10:
        MOV      R0,#+0
        LDR      R1,??DataTable2_3
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+52]
        MOV      R0,#+0
        LDR      R1,??DataTable2_3
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+53]
        MOV      R0,#+0
        LDR      R1,??DataTable2_3
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+28]
        MOV      R0,#+0
        LDR      R1,??DataTable2_3
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+32]
        MOV      R0,#+0
        LDR      R1,??DataTable2_3
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+36]
        MOVS     R0,R8
        BL       OS_CPU_SR_Restore
        MOVS     R0,R7
??OSMboxPend_1:
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     OSIntNesting

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     OSEventFreeList

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     OSLockNesting

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     OSTCBCur

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSMboxPendAbort:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R8,#+0
        CMP      R6,#+0
        BNE      ??OSMboxPendAbort_0
        MOV      R0,#+0
        B        ??OSMboxPendAbort_1
??OSMboxPendAbort_0:
        CMP      R4,#+0
        BNE      ??OSMboxPendAbort_2
        MOV      R0,#+4
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSMboxPendAbort_1
??OSMboxPendAbort_2:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+1
        BEQ      ??OSMboxPendAbort_3
        MOV      R0,#+1
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSMboxPendAbort_1
??OSMboxPendAbort_3:
        BL       OS_CPU_SR_Save
        MOVS     R8,R0
        LDRB     R0,[R4, #+10]
        CMP      R0,#+0
        BEQ      ??OSMboxPendAbort_4
        MOV      R0,#+0
        MOVS     R7,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??OSMboxPendAbort_5
??OSMboxPendAbort_6:
        LDRB     R0,[R4, #+10]
        CMP      R0,#+0
        BEQ      ??OSMboxPendAbort_7
        MOV      R3,#+2
        MOV      R2,#+2
        MOV      R1,#+0
        MOVS     R0,R4
        BL       OS_EventTaskRdy
        ADDS     R7,R7,#+1
        B        ??OSMboxPendAbort_6
??OSMboxPendAbort_7:
        B        ??OSMboxPendAbort_8
??OSMboxPendAbort_5:
        MOV      R3,#+2
        MOV      R2,#+2
        MOV      R1,#+0
        MOVS     R0,R4
        BL       OS_EventTaskRdy
        ADDS     R7,R7,#+1
??OSMboxPendAbort_8:
        MOVS     R0,R8
        BL       OS_CPU_SR_Restore
        BL       OS_Sched
        MOV      R0,#+14
        STRB     R0,[R6, #+0]
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??OSMboxPendAbort_1
??OSMboxPendAbort_4:
        MOVS     R0,R8
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
??OSMboxPendAbort_1:
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSMboxPost:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R6,#+0
        CMP      R4,#+0
        BNE      ??OSMboxPost_0
        MOV      R0,#+4
        B        ??OSMboxPost_1
??OSMboxPost_0:
        CMP      R5,#+0
        BNE      ??OSMboxPost_2
        MOV      R0,#+3
        B        ??OSMboxPost_1
??OSMboxPost_2:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+1
        BEQ      ??OSMboxPost_3
        MOV      R0,#+1
        B        ??OSMboxPost_1
??OSMboxPost_3:
        BL       OS_CPU_SR_Save
        MOVS     R6,R0
        LDRB     R0,[R4, #+10]
        CMP      R0,#+0
        BEQ      ??OSMboxPost_4
        MOV      R3,#+0
        MOV      R2,#+2
        MOVS     R1,R5
        MOVS     R0,R4
        BL       OS_EventTaskRdy
        MOVS     R7,R0
        MOVS     R0,R6
        BL       OS_CPU_SR_Restore
        BL       OS_Sched
        MOV      R0,#+0
        B        ??OSMboxPost_1
??OSMboxPost_4:
        LDR      R0,[R4, #+4]
        CMP      R0,#+0
        BEQ      ??OSMboxPost_5
        MOVS     R0,R6
        BL       OS_CPU_SR_Restore
        MOV      R0,#+20
        B        ??OSMboxPost_1
??OSMboxPost_5:
        STR      R5,[R4, #+4]
        MOVS     R0,R6
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
??OSMboxPost_1:
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSMboxPostOpt:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R7,#+0
        CMP      R4,#+0
        BNE      ??OSMboxPostOpt_0
        MOV      R0,#+4
        B        ??OSMboxPostOpt_1
??OSMboxPostOpt_0:
        CMP      R5,#+0
        BNE      ??OSMboxPostOpt_2
        MOV      R0,#+3
        B        ??OSMboxPostOpt_1
??OSMboxPostOpt_2:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+1
        BEQ      ??OSMboxPostOpt_3
        MOV      R0,#+1
        B        ??OSMboxPostOpt_1
??OSMboxPostOpt_3:
        BL       OS_CPU_SR_Save
        MOVS     R7,R0
        LDRB     R0,[R4, #+10]
        CMP      R0,#+0
        BEQ      ??OSMboxPostOpt_4
        TST      R6,#0x1
        BEQ      ??OSMboxPostOpt_5
??OSMboxPostOpt_6:
        LDRB     R0,[R4, #+10]
        CMP      R0,#+0
        BEQ      ??OSMboxPostOpt_7
        MOV      R3,#+0
        MOV      R2,#+2
        MOVS     R1,R5
        MOVS     R0,R4
        BL       OS_EventTaskRdy
        B        ??OSMboxPostOpt_6
??OSMboxPostOpt_5:
        MOV      R3,#+0
        MOV      R2,#+2
        MOVS     R1,R5
        MOVS     R0,R4
        BL       OS_EventTaskRdy
??OSMboxPostOpt_7:
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        TST      R6,#0x4
        BNE      ??OSMboxPostOpt_8
        BL       OS_Sched
??OSMboxPostOpt_8:
        MOV      R0,#+0
        B        ??OSMboxPostOpt_1
??OSMboxPostOpt_4:
        LDR      R0,[R4, #+4]
        CMP      R0,#+0
        BEQ      ??OSMboxPostOpt_9
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOV      R0,#+20
        B        ??OSMboxPostOpt_1
??OSMboxPostOpt_9:
        STR      R5,[R4, #+4]
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
??OSMboxPostOpt_1:
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSMboxQuery:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R9,#+0
        CMP      R4,#+0
        BNE      ??OSMboxQuery_0
        MOV      R0,#+4
        B        ??OSMboxQuery_1
??OSMboxQuery_0:
        CMP      R5,#+0
        BNE      ??OSMboxQuery_2
        MOV      R0,#+9
        B        ??OSMboxQuery_1
??OSMboxQuery_2:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+1
        BEQ      ??OSMboxQuery_3
        MOV      R0,#+1
        B        ??OSMboxQuery_1
??OSMboxQuery_3:
        BL       OS_CPU_SR_Save
        MOVS     R9,R0
        LDRB     R0,[R4, #+10]
        STRB     R0,[R5, #+12]
        ADDS     R0,R4,#+11
        MOVS     R7,R0
        ADDS     R0,R5,#+4
        MOVS     R8,R0
        MOV      R0,#+0
        MOVS     R6,R0
??OSMboxQuery_4:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+8
        BCS      ??OSMboxQuery_5
        LDRB     R0,[R7, #+0]
        STRB     R0,[R8, #+0]
        ADDS     R7,R7,#+1
        ADDS     R8,R8,#+1
        ADDS     R6,R6,#+1
        B        ??OSMboxQuery_4
??OSMboxQuery_5:
        LDR      R0,[R4, #+4]
        STR      R0,[R5, #+0]
        MOVS     R0,R9
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
??OSMboxQuery_1:
        POP      {R1,R4-R9,LR}
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
// 2 088 bytes in section .text
// 
// 2 088 bytes of CODE  memory
//     2 bytes of CONST memory
//
//Errors: none
//Warnings: none
