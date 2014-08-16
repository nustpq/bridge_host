///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       13/Aug/2014  15:03:12
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\uCOS-II\Source\os_mutex.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\uCOS-II\Source\os_mutex.c" -lcN "E:\SVN
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
//        E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\FLASH\List\os_mutex.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN OSEventFreeList
        EXTERN OSIntNesting
        EXTERN OSLockNesting
        EXTERN OSPrioCur
        EXTERN OSRdyGrp
        EXTERN OSRdyTbl
        EXTERN OSTCBCur
        EXTERN OSTCBPrioTbl
        EXTERN OS_CPU_SR_Restore
        EXTERN OS_CPU_SR_Save
        EXTERN OS_EventTaskRdy
        EXTERN OS_EventTaskRemove
        EXTERN OS_EventTaskWait
        EXTERN OS_EventWaitListInit
        EXTERN OS_Sched

        PUBLIC OSMutexAccept
        PUBLIC OSMutexCreate
        PUBLIC OSMutexDel
        PUBLIC OSMutexPend
        PUBLIC OSMutexPost
        PUBLIC OSMutexQuery


        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSMutexAccept:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R7,#+0
        CMP      R5,#+0
        BNE      ??OSMutexAccept_0
        MOV      R0,#+0
        B        ??OSMutexAccept_1
??OSMutexAccept_0:
        CMP      R4,#+0
        BNE      ??OSMutexAccept_2
        MOV      R0,#+4
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        B        ??OSMutexAccept_1
??OSMutexAccept_2:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+4
        BEQ      ??OSMutexAccept_3
        MOV      R0,#+1
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        B        ??OSMutexAccept_1
??OSMutexAccept_3:
        LDR      R0,??DataTable6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSMutexAccept_4
        MOV      R0,#+2
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        B        ??OSMutexAccept_1
??OSMutexAccept_4:
        BL       OS_CPU_SR_Save
        MOVS     R7,R0
        LDRH     R0,[R4, #+8]
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        LSRS     R0,R0,#+8
        MOVS     R6,R0
        LDRB     R0,[R4, #+8]
        ANDS     R0,R0,#0xFF
        CMP      R0,#+255
        BNE      ??OSMutexAccept_5
        LDRH     R0,[R4, #+8]
        ANDS     R0,R0,#0xFF00
        STRH     R0,[R4, #+8]
        LDRH     R0,[R4, #+8]
        LDR      R1,??DataTable6_1
        LDR      R1,[R1, #+0]
        LDRB     R1,[R1, #+54]
        ORRS     R0,R1,R0
        STRH     R0,[R4, #+8]
        LDR      R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+4]
        LDR      R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+54]
        ANDS     R6,R6,#0xFF      ;; Zero extend
        CMP      R6,R0
        BCC      ??OSMutexAccept_6
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOV      R0,#+120
        STRB     R0,[R5, #+0]
        B        ??OSMutexAccept_7
??OSMutexAccept_6:
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        STRB     R0,[R5, #+0]
??OSMutexAccept_7:
        MOV      R0,#+1
        B        ??OSMutexAccept_1
??OSMutexAccept_5:
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
??OSMutexAccept_1:
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSMutexCreate:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R7,#+0
        CMP      R5,#+0
        BNE      ??OSMutexCreate_0
        MOV      R0,#+0
        B        ??OSMutexCreate_1
??OSMutexCreate_0:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+63
        BCC      ??OSMutexCreate_2
        MOV      R0,#+42
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        B        ??OSMutexCreate_1
??OSMutexCreate_2:
        LDR      R0,??DataTable6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSMutexCreate_3
        MOV      R0,#+16
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        B        ??OSMutexCreate_1
??OSMutexCreate_3:
        BL       OS_CPU_SR_Save
        MOVS     R7,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable6_2
        LDR      R0,[R0, +R1]
        CMP      R0,#+0
        BEQ      ??OSMutexCreate_4
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOV      R0,#+40
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        B        ??OSMutexCreate_1
??OSMutexCreate_4:
        MOV      R0,#+1
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable6_2
        STR      R0,[R1, +R2]
        LDR      R0,??DataTable6_3
        LDR      R0,[R0, #+0]
        MOVS     R6,R0
        CMP      R6,#+0
        BNE      ??OSMutexCreate_5
        MOV      R0,#+0
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable6_2
        STR      R0,[R1, +R2]
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOV      R0,#+4
        STRB     R0,[R5, #+0]
        MOVS     R0,R6
        B        ??OSMutexCreate_1
??OSMutexCreate_5:
        LDR      R0,??DataTable6_3
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+4]
        LDR      R1,??DataTable6_3
        STR      R0,[R1, #+0]
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOV      R0,#+4
        STRB     R0,[R6, #+0]
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        MOV      R1,#+255
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R6, #+8]
        MOV      R0,#+0
        STR      R0,[R6, #+4]
        ADR      R0,??DataTable2  ;; "\?"
        STR      R0,[R6, #+20]
        MOVS     R0,R6
        BL       OS_EventWaitListInit
        MOV      R0,#+0
        STRB     R0,[R5, #+0]
        MOVS     R0,R6
??OSMutexCreate_1:
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSMutexDel:
        PUSH     {R1,R4-R11,LR}
        MOVS     R11,R0
        MOVS     R4,R2
        MOV      R10,#+0
        CMP      R4,#+0
        BNE      ??OSMutexDel_0
        MOVS     R0,R11
        B        ??OSMutexDel_1
??OSMutexDel_0:
        CMP      R11,#+0
        BNE      ??OSMutexDel_2
        MOV      R0,#+4
        STRB     R0,[R4, #+0]
        MOVS     R0,R11
        B        ??OSMutexDel_1
??OSMutexDel_2:
        LDRB     R0,[R11, #+0]
        CMP      R0,#+4
        BEQ      ??OSMutexDel_3
        MOV      R0,#+1
        STRB     R0,[R4, #+0]
        MOVS     R0,R11
        B        ??OSMutexDel_1
??OSMutexDel_3:
        LDR      R0,??DataTable6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSMutexDel_4
        MOV      R0,#+15
        STRB     R0,[R4, #+0]
        MOVS     R0,R11
        B        ??OSMutexDel_1
??OSMutexDel_4:
        BL       OS_CPU_SR_Save
        MOVS     R10,R0
        LDRB     R0,[R11, #+10]
        CMP      R0,#+0
        BEQ      ??OSMutexDel_5
        MOV      R0,#+1
        MOVS     R5,R0
        B        ??OSMutexDel_6
??OSMutexDel_5:
        MOV      R0,#+0
        MOVS     R5,R0
??OSMutexDel_6:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BEQ      ??OSMutexDel_7
        CMP      R0,#+1
        BEQ      ??OSMutexDel_8
        B        ??OSMutexDel_9
??OSMutexDel_7:
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??OSMutexDel_10
        ADR      R0,??DataTable2  ;; "\?"
        STR      R0,[R11, #+20]
        LDRH     R0,[R11, #+8]
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        LSRS     R0,R0,#+8
        MOVS     R7,R0
        MOV      R0,#+0
        MOVS     R1,R7
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable6_2
        STR      R0,[R1, +R2]
        MOV      R0,#+0
        STRB     R0,[R11, #+0]
        LDR      R0,??DataTable6_3
        LDR      R0,[R0, #+0]
        STR      R0,[R11, #+4]
        MOV      R0,#+0
        STRH     R0,[R11, #+8]
        LDR      R0,??DataTable6_3
        STR      R11,[R0, #+0]
        MOVS     R0,R10
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        STRB     R0,[R4, #+0]
        MOV      R0,#+0
        MOVS     R6,R0
        B        ??OSMutexDel_11
??OSMutexDel_10:
        MOVS     R0,R10
        BL       OS_CPU_SR_Restore
        MOV      R0,#+73
        STRB     R0,[R4, #+0]
        MOVS     R6,R11
??OSMutexDel_11:
        B        ??OSMutexDel_12
??OSMutexDel_8:
        LDRH     R0,[R11, #+8]
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        LSRS     R0,R0,#+8
        MOVS     R7,R0
        LDRH     R0,[R11, #+8]
        MOVS     R8,R0
        LDR      R0,[R11, #+4]
        MOVS     R9,R0
        CMP      R9,#+0
        BEQ      ??OSMutexDel_13
        LDRB     R0,[R9, #+54]
        ANDS     R7,R7,#0xFF      ;; Zero extend
        CMP      R0,R7
        BNE      ??OSMutexDel_13
        MOVS     R1,R8
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOVS     R0,R9
        BL       OSMutex_RdyAtPrio
??OSMutexDel_13:
        LDRB     R0,[R11, #+10]
        CMP      R0,#+0
        BEQ      ??OSMutexDel_14
        MOV      R3,#+0
        MOV      R2,#+16
        MOV      R1,#+0
        MOVS     R0,R11
        BL       OS_EventTaskRdy
        B        ??OSMutexDel_13
??OSMutexDel_14:
        ADR      R0,??DataTable2  ;; "\?"
        STR      R0,[R11, #+20]
        LDRH     R0,[R11, #+8]
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        LSRS     R0,R0,#+8
        MOVS     R7,R0
        MOV      R0,#+0
        MOVS     R1,R7
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable6_2
        STR      R0,[R1, +R2]
        MOV      R0,#+0
        STRB     R0,[R11, #+0]
        LDR      R0,??DataTable6_3
        LDR      R0,[R0, #+0]
        STR      R0,[R11, #+4]
        MOV      R0,#+0
        STRH     R0,[R11, #+8]
        LDR      R0,??DataTable6_3
        STR      R11,[R0, #+0]
        MOVS     R0,R10
        BL       OS_CPU_SR_Restore
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??OSMutexDel_15
        BL       OS_Sched
??OSMutexDel_15:
        MOV      R0,#+0
        STRB     R0,[R4, #+0]
        MOV      R0,#+0
        MOVS     R6,R0
        B        ??OSMutexDel_12
??OSMutexDel_9:
        MOVS     R0,R10
        BL       OS_CPU_SR_Restore
        MOV      R0,#+7
        STRB     R0,[R4, #+0]
        MOVS     R6,R11
??OSMutexDel_12:
        MOVS     R0,R6
??OSMutexDel_1:
        POP      {R1,R4-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC8      "\?",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSMutexPend:
        PUSH     {R1,R4-R11,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R5,R2
        MOV      R11,#+0
        CMP      R5,#+0
        BEQ      ??OSMutexPend_0
??OSMutexPend_1:
        CMP      R4,#+0
        BNE      ??OSMutexPend_2
        MOV      R0,#+4
        STRB     R0,[R5, #+0]
        B        ??OSMutexPend_0
??OSMutexPend_2:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+4
        BEQ      ??OSMutexPend_3
        MOV      R0,#+1
        STRB     R0,[R5, #+0]
        B        ??OSMutexPend_0
??OSMutexPend_3:
        LDR      R0,??DataTable6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSMutexPend_4
        MOV      R0,#+2
        STRB     R0,[R5, #+0]
        B        ??OSMutexPend_0
??OSMutexPend_4:
        LDR      R0,??DataTable6_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSMutexPend_5
        MOV      R0,#+13
        STRB     R0,[R5, #+0]
        B        ??OSMutexPend_0
??OSMutexPend_5:
        BL       OS_CPU_SR_Save
        MOVS     R11,R0
        LDRH     R0,[R4, #+8]
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        LSRS     R0,R0,#+8
        MOVS     R6,R0
        LDRH     R0,[R4, #+8]
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+255
        BNE      ??OSMutexPend_6
        LDRH     R0,[R4, #+8]
        ANDS     R0,R0,#0xFF00
        STRH     R0,[R4, #+8]
        LDRH     R0,[R4, #+8]
        LDR      R1,??DataTable6_1
        LDR      R1,[R1, #+0]
        LDRB     R1,[R1, #+54]
        ORRS     R0,R1,R0
        STRH     R0,[R4, #+8]
        LDR      R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+4]
        LDR      R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+54]
        ANDS     R6,R6,#0xFF      ;; Zero extend
        CMP      R6,R0
        BCC      ??OSMutexPend_7
        MOVS     R0,R11
        BL       OS_CPU_SR_Restore
        MOV      R0,#+120
        STRB     R0,[R5, #+0]
        B        ??OSMutexPend_8
??OSMutexPend_7:
        MOVS     R0,R11
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        STRB     R0,[R5, #+0]
??OSMutexPend_8:
        B        ??OSMutexPend_0
??OSMutexPend_6:
        LDRH     R1,[R4, #+8]
        STRB     R1,[SP, #+0]
        LDR      R0,[R4, #+4]
        MOVS     R8,R0
        LDRB     R0,[R8, #+54]
        ANDS     R6,R6,#0xFF      ;; Zero extend
        CMP      R6,R0
        BCS      ??OSMutexPend_9
        LDR      R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+54]
        LDRB     R1,[SP, #+0]
        CMP      R0,R1
        BCS      ??OSMutexPend_9
        LDRB     R0,[R8, #+56]
        MOVS     R10,R0
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable6_5
        LDRB     R0,[R0, +R1]
        LDRB     R1,[R8, #+57]
        TST      R1,R0
        BEQ      ??OSMutexPend_10
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable6_5
        LDRB     R0,[R0, +R1]
        LDRB     R1,[R8, #+57]
        BICS     R0,R0,R1
        MOVS     R1,R10
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R2,??DataTable6_5
        STRB     R0,[R1, +R2]
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable6_5
        LDRB     R0,[R0, +R1]
        CMP      R0,#+0
        BNE      ??OSMutexPend_11
        LDR      R0,??DataTable6_6
        LDRB     R0,[R0, #+0]
        LDRB     R1,[R8, #+58]
        BICS     R0,R0,R1
        LDR      R1,??DataTable6_6
        STRB     R0,[R1, #+0]
??OSMutexPend_11:
        MOV      R0,#+1
        MOVS     R7,R0
        B        ??OSMutexPend_12
??OSMutexPend_10:
        LDR      R0,[R8, #+28]
        MOVS     R9,R0
        CMP      R9,#+0
        BEQ      ??OSMutexPend_13
        LDRB     R0,[R8, #+56]
        ADDS     R0,R0,R9
        LDRB     R0,[R0, #+11]
        LDRB     R1,[R8, #+57]
        BICS     R0,R0,R1
        LDRB     R1,[R8, #+56]
        ADDS     R1,R1,R9
        STRB     R0,[R1, #+11]
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??OSMutexPend_13
        LDRB     R0,[R9, #+10]
        LDRB     R1,[R8, #+58]
        BICS     R0,R0,R1
        STRB     R0,[R9, #+10]
??OSMutexPend_13:
        MOV      R0,#+0
        MOVS     R7,R0
??OSMutexPend_12:
        STRB     R6,[R8, #+54]
        LDRB     R0,[R8, #+54]
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSRS     R0,R0,#+3
        STRB     R0,[R8, #+56]
        LDRB     R0,[R8, #+54]
        ANDS     R0,R0,#0x7
        STRB     R0,[R8, #+55]
        MOV      R0,#+1
        LDRB     R1,[R8, #+56]
        LSLS     R0,R0,R1
        STRB     R0,[R8, #+58]
        MOV      R0,#+1
        LDRB     R1,[R8, #+55]
        LSLS     R0,R0,R1
        STRB     R0,[R8, #+57]
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??OSMutexPend_14
        LDR      R0,??DataTable6_6
        LDRB     R0,[R0, #+0]
        LDRB     R1,[R8, #+58]
        ORRS     R0,R1,R0
        LDR      R1,??DataTable6_6
        STRB     R0,[R1, #+0]
        LDRB     R0,[R8, #+56]
        LDR      R1,??DataTable6_5
        LDRB     R0,[R0, +R1]
        LDRB     R1,[R8, #+57]
        ORRS     R0,R1,R0
        LDRB     R1,[R8, #+56]
        LDR      R2,??DataTable6_5
        STRB     R0,[R1, +R2]
        B        ??OSMutexPend_15
??OSMutexPend_14:
        LDR      R0,[R8, #+28]
        MOVS     R9,R0
        CMP      R9,#+0
        BEQ      ??OSMutexPend_15
        LDRB     R0,[R9, #+10]
        LDRB     R1,[R8, #+58]
        ORRS     R0,R1,R0
        STRB     R0,[R9, #+10]
        LDRB     R0,[R8, #+56]
        ADDS     R0,R0,R9
        LDRB     R0,[R0, #+11]
        LDRB     R1,[R8, #+57]
        ORRS     R0,R1,R0
        LDRB     R1,[R8, #+56]
        ADDS     R1,R1,R9
        STRB     R0,[R1, #+11]
??OSMutexPend_15:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable6_2
        STR      R8,[R0, +R1]
??OSMutexPend_9:
        LDR      R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+52]
        ORRS     R0,R0,#0x10
        LDR      R1,??DataTable6_1
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+52]
        MOV      R0,#+0
        LDR      R1,??DataTable6_1
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+53]
        LDR      R0,[SP, #+8]
        LDR      R1,??DataTable6_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+48]
        MOVS     R0,R4
        BL       OS_EventTaskWait
        MOVS     R0,R11
        BL       OS_CPU_SR_Restore
        BL       OS_Sched
        BL       OS_CPU_SR_Save
        MOVS     R11,R0
        LDR      R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+53]
        CMP      R0,#+0
        BEQ      ??OSMutexPend_16
        CMP      R0,#+2
        BEQ      ??OSMutexPend_17
        B        ??OSMutexPend_18
??OSMutexPend_16:
        MOV      R0,#+0
        STRB     R0,[R5, #+0]
        B        ??OSMutexPend_19
??OSMutexPend_17:
        MOV      R0,#+14
        STRB     R0,[R5, #+0]
        B        ??OSMutexPend_19
??OSMutexPend_18:
        MOVS     R1,R4
        LDR      R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        BL       OS_EventTaskRemove
        MOV      R0,#+10
        STRB     R0,[R5, #+0]
??OSMutexPend_19:
        MOV      R0,#+0
        LDR      R1,??DataTable6_1
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+52]
        MOV      R0,#+0
        LDR      R1,??DataTable6_1
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+53]
        MOV      R0,#+0
        LDR      R1,??DataTable6_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+28]
        MOV      R0,#+0
        LDR      R1,??DataTable6_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+32]
        MOVS     R0,R11
        BL       OS_CPU_SR_Restore
??OSMutexPend_0:
        POP      {R0-R2,R4-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSMutexPost:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOV      R7,#+0
        LDR      R0,??DataTable6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSMutexPost_0
        MOV      R0,#+5
        B        ??OSMutexPost_1
??OSMutexPost_0:
        CMP      R4,#+0
        BNE      ??OSMutexPost_2
        MOV      R0,#+4
        B        ??OSMutexPost_1
??OSMutexPost_2:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+4
        BEQ      ??OSMutexPost_3
        MOV      R0,#+1
        B        ??OSMutexPost_1
??OSMutexPost_3:
        BL       OS_CPU_SR_Save
        MOVS     R7,R0
        LDRH     R0,[R4, #+8]
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        LSRS     R0,R0,#+8
        MOVS     R5,R0
        LDRH     R0,[R4, #+8]
        MOVS     R6,R0
        LDR      R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        LDR      R1,[R4, #+4]
        CMP      R0,R1
        BEQ      ??OSMutexPost_4
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOV      R0,#+100
        B        ??OSMutexPost_1
??OSMutexPost_4:
        LDR      R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+54]
        ANDS     R5,R5,#0xFF      ;; Zero extend
        CMP      R0,R5
        BNE      ??OSMutexPost_5
        MOVS     R1,R6
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        BL       OSMutex_RdyAtPrio
??OSMutexPost_5:
        MOV      R0,#+1
        MOVS     R1,R5
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable6_2
        STR      R0,[R1, +R2]
        LDRB     R0,[R4, #+10]
        CMP      R0,#+0
        BEQ      ??OSMutexPost_6
        MOV      R3,#+0
        MOV      R2,#+16
        MOV      R1,#+0
        MOVS     R0,R4
        BL       OS_EventTaskRdy
        MOVS     R6,R0
        LDRH     R0,[R4, #+8]
        ANDS     R0,R0,#0xFF00
        STRH     R0,[R4, #+8]
        LDRH     R0,[R4, #+8]
        MOVS     R1,R6
        ANDS     R1,R1,#0xFF      ;; Zero extend
        ORRS     R0,R1,R0
        STRH     R0,[R4, #+8]
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable6_2
        LDR      R0,[R0, +R1]
        STR      R0,[R4, #+4]
        ANDS     R5,R5,#0xFF      ;; Zero extend
        ANDS     R6,R6,#0xFF      ;; Zero extend
        CMP      R5,R6
        BCC      ??OSMutexPost_7
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        BL       OS_Sched
        MOV      R0,#+120
        B        ??OSMutexPost_1
??OSMutexPost_7:
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        BL       OS_Sched
        MOV      R0,#+0
        B        ??OSMutexPost_1
??OSMutexPost_6:
        LDRH     R0,[R4, #+8]
        ORRS     R0,R0,#0xFF
        STRH     R0,[R4, #+8]
        MOV      R0,#+0
        STR      R0,[R4, #+4]
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
??OSMutexPost_1:
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSMutexQuery:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R9,#+0
        LDR      R0,??DataTable6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSMutexQuery_0
        MOV      R0,#+6
        B        ??OSMutexQuery_1
??OSMutexQuery_0:
        CMP      R4,#+0
        BNE      ??OSMutexQuery_2
        MOV      R0,#+4
        B        ??OSMutexQuery_1
??OSMutexQuery_2:
        CMP      R5,#+0
        BNE      ??OSMutexQuery_3
        MOV      R0,#+9
        B        ??OSMutexQuery_1
??OSMutexQuery_3:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+4
        BEQ      ??OSMutexQuery_4
        MOV      R0,#+1
        B        ??OSMutexQuery_1
??OSMutexQuery_4:
        BL       OS_CPU_SR_Save
        MOVS     R9,R0
        LDRH     R0,[R4, #+8]
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        LSRS     R0,R0,#+8
        STRB     R0,[R5, #+11]
        LDRH     R0,[R4, #+8]
        STRB     R0,[R5, #+10]
        LDRB     R0,[R5, #+10]
        CMP      R0,#+255
        BNE      ??OSMutexQuery_5
        MOV      R0,#+1
        STRB     R0,[R5, #+9]
        B        ??OSMutexQuery_6
??OSMutexQuery_5:
        MOV      R0,#+0
        STRB     R0,[R5, #+9]
??OSMutexQuery_6:
        LDRB     R0,[R4, #+10]
        STRB     R0,[R5, #+8]
        ADDS     R0,R4,#+11
        MOVS     R7,R0
        MOVS     R8,R5
        MOV      R0,#+0
        MOVS     R6,R0
??OSMutexQuery_7:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+8
        BCS      ??OSMutexQuery_8
        LDRB     R0,[R7, #+0]
        STRB     R0,[R8, #+0]
        ADDS     R7,R7,#+1
        ADDS     R8,R8,#+1
        ADDS     R6,R6,#+1
        B        ??OSMutexQuery_7
??OSMutexQuery_8:
        MOVS     R0,R9
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
??OSMutexQuery_1:
        POP      {R1,R4-R9,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSMutex_RdyAtPrio:
        PUSH     {LR}
        LDRB     R3,[R0, #+56]
        MOVS     R2,R3
        MOVS     R3,R2
        ANDS     R3,R3,#0xFF      ;; Zero extend
        LDR      R12,??DataTable6_5
        LDRB     R3,[R3, +R12]
        LDRB     R12,[R0, #+57]
        BICS     R3,R3,R12
        MOVS     R12,R2
        ANDS     R12,R12,#0xFF    ;; Zero extend
        LDR      LR,??DataTable6_5
        STRB     R3,[R12, +LR]
        MOVS     R3,R2
        ANDS     R3,R3,#0xFF      ;; Zero extend
        LDR      R12,??DataTable6_5
        LDRB     R3,[R3, +R12]
        CMP      R3,#+0
        BNE      ??OSMutex_RdyAtPrio_0
        LDR      R3,??DataTable6_6
        LDRB     R3,[R3, #+0]
        LDRB     R12,[R0, #+58]
        BICS     R3,R3,R12
        LDR      R12,??DataTable6_6
        STRB     R3,[R12, #+0]
??OSMutex_RdyAtPrio_0:
        STRB     R1,[R0, #+54]
        LDR      R3,??DataTable6_7
        STRB     R1,[R3, #+0]
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOV      R3,#+7
        ANDS     R3,R3,R1, LSR #+3
        STRB     R3,[R0, #+56]
        ANDS     R3,R1,#0x7
        STRB     R3,[R0, #+55]
        MOV      R3,#+1
        LDRB     R12,[R0, #+56]
        LSLS     R3,R3,R12
        STRB     R3,[R0, #+58]
        MOV      R3,#+1
        LDRB     R12,[R0, #+55]
        LSLS     R3,R3,R12
        STRB     R3,[R0, #+57]
        LDR      R3,??DataTable6_6
        LDRB     R3,[R3, #+0]
        LDRB     R12,[R0, #+58]
        ORRS     R3,R12,R3
        LDR      R12,??DataTable6_6
        STRB     R3,[R12, #+0]
        LDRB     R3,[R0, #+56]
        LDR      R12,??DataTable6_5
        LDRB     R3,[R3, +R12]
        LDRB     R12,[R0, #+57]
        ORRS     R3,R12,R3
        LDRB     R12,[R0, #+56]
        LDR      LR,??DataTable6_5
        STRB     R3,[R12, +LR]
        MOVS     R3,R1
        ANDS     R3,R3,#0xFF      ;; Zero extend
        LSLS     R3,R3,#+2
        LDR      R12,??DataTable6_2
        STR      R0,[R3, +R12]
        POP      {LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     OSIntNesting

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     OSTCBCur

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     OSTCBPrioTbl

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     OSEventFreeList

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     OSLockNesting

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     OSRdyTbl

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     OSRdyGrp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_7:
        DC32     OSPrioCur

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
// 3 236 bytes in section .text
// 
// 3 236 bytes of CODE  memory
//     2 bytes of CONST memory
//
//Errors: none
//Warnings: none
