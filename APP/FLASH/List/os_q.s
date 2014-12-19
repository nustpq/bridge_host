///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       18/Dec/2014  19:24:26
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\uCOS-II\Source\os_q.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\uCOS-II\Source\os_q.c"
//        -lcN "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\"
//        -lb "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\" -o
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
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\os_q.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN OSEventFreeList
        EXTERN OSIntNesting
        EXTERN OSLockNesting
        EXTERN OSQFreeList
        EXTERN OSQTbl
        EXTERN OSTCBCur
        EXTERN OS_CPU_SR_Restore
        EXTERN OS_CPU_SR_Save
        EXTERN OS_EventTaskRdy
        EXTERN OS_EventTaskRemove
        EXTERN OS_EventTaskWait
        EXTERN OS_EventWaitListInit
        EXTERN OS_MemClr
        EXTERN OS_Sched

        PUBLIC OSQAccept
        PUBLIC OSQCreate
        PUBLIC OSQDel
        PUBLIC OSQFlush
        PUBLIC OSQGet
        PUBLIC OSQPend
        PUBLIC OSQPendAbort
        PUBLIC OSQPost
        PUBLIC OSQPostFront
        PUBLIC OSQPostOpt
        PUBLIC OSQQuery
        PUBLIC OS_QInit


        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSQAccept:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R8,#+0
        CMP      R5,#+0
        BNE      ??OSQAccept_0
        MOV      R0,#+0
        B        ??OSQAccept_1
??OSQAccept_0:
        CMP      R4,#+0
        BNE      ??OSQAccept_2
        MOV      R0,#+4
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        B        ??OSQAccept_1
??OSQAccept_2:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+2
        BEQ      ??OSQAccept_3
        MOV      R0,#+1
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        B        ??OSQAccept_1
??OSQAccept_3:
        BL       OS_CPU_SR_Save
        MOVS     R8,R0
        LDR      R0,[R4, #+4]
        MOVS     R7,R0
        LDRH     R0,[R7, #+22]
        CMP      R0,#+0
        BEQ      ??OSQAccept_4
        LDR      R0,[R7, #+16]
        ADDS     R1,R0,#+4
        STR      R1,[R7, #+16]
        LDR      R0,[R0, #+0]
        MOVS     R6,R0
        LDRH     R0,[R7, #+22]
        SUBS     R0,R0,#+1
        STRH     R0,[R7, #+22]
        LDR      R0,[R7, #+16]
        LDR      R1,[R7, #+8]
        CMP      R0,R1
        BNE      ??OSQAccept_5
        LDR      R0,[R7, #+4]
        STR      R0,[R7, #+16]
??OSQAccept_5:
        MOV      R0,#+0
        STRB     R0,[R5, #+0]
        B        ??OSQAccept_6
??OSQAccept_4:
        MOV      R0,#+31
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        MOVS     R6,R0
??OSQAccept_6:
        MOVS     R0,R8
        BL       OS_CPU_SR_Restore
        MOVS     R0,R6
??OSQAccept_1:
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSQGet:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R8,#+0
        CMP      R5,#+0
        BNE      ??OSQGet_0
        MOV      R0,#+0
        B        ??OSQGet_1
??OSQGet_0:
        CMP      R4,#+0
        BNE      ??OSQGet_2
        MOV      R0,#+4
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        B        ??OSQGet_1
??OSQGet_2:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+2
        BEQ      ??OSQGet_3
        MOV      R0,#+1
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        B        ??OSQGet_1
??OSQGet_3:
        BL       OS_CPU_SR_Save
        MOVS     R8,R0
        LDR      R0,[R4, #+4]
        MOVS     R7,R0
        LDRH     R0,[R7, #+22]
        CMP      R0,#+0
        BEQ      ??OSQGet_4
        LDR      R0,[R7, #+16]
        LDR      R0,[R0, #+0]
        MOVS     R6,R0
        MOV      R0,#+0
        STRB     R0,[R5, #+0]
        B        ??OSQGet_5
??OSQGet_4:
        MOV      R0,#+31
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        MOVS     R6,R0
??OSQGet_5:
        MOVS     R0,R8
        BL       OS_CPU_SR_Restore
        MOVS     R0,R6
??OSQGet_1:
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSQCreate:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R8,#+0
        LDR      R0,??DataTable3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSQCreate_0
        MOV      R0,#+0
        B        ??OSQCreate_1
??OSQCreate_0:
        BL       OS_CPU_SR_Save
        MOVS     R8,R0
        LDR      R0,??DataTable3_1
        LDR      R0,[R0, #+0]
        MOVS     R6,R0
        LDR      R0,??DataTable3_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSQCreate_2
        LDR      R0,??DataTable3_1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+4]
        LDR      R1,??DataTable3_1
        STR      R0,[R1, #+0]
??OSQCreate_2:
        MOVS     R0,R8
        BL       OS_CPU_SR_Restore
        CMP      R6,#+0
        BEQ      ??OSQCreate_3
        BL       OS_CPU_SR_Save
        MOVS     R8,R0
        LDR      R0,??DataTable3_2
        LDR      R0,[R0, #+0]
        MOVS     R7,R0
        CMP      R7,#+0
        BEQ      ??OSQCreate_4
        LDR      R0,??DataTable3_2
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable3_2
        STR      R0,[R1, #+0]
        MOVS     R0,R8
        BL       OS_CPU_SR_Restore
        STR      R4,[R7, #+4]
        MOVS     R0,R5
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+2
        ADDS     R0,R0,R4
        STR      R0,[R7, #+8]
        STR      R4,[R7, #+12]
        STR      R4,[R7, #+16]
        STRH     R5,[R7, #+20]
        MOV      R0,#+0
        STRH     R0,[R7, #+22]
        MOV      R0,#+2
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        STRH     R0,[R6, #+8]
        STR      R7,[R6, #+4]
        ADR      R0,??DataTable1  ;; "\?"
        STR      R0,[R6, #+20]
        MOVS     R0,R6
        BL       OS_EventWaitListInit
        B        ??OSQCreate_3
??OSQCreate_4:
        LDR      R0,??DataTable3_1
        LDR      R0,[R0, #+0]
        STR      R0,[R6, #+4]
        LDR      R0,??DataTable3_1
        STR      R6,[R0, #+0]
        MOVS     R0,R8
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        MOVS     R6,R0
??OSQCreate_3:
        MOVS     R0,R6
??OSQCreate_1:
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSQDel:
        PUSH     {R4-R10,LR}
        MOVS     R10,R0
        MOVS     R4,R1
        MOVS     R5,R2
        MOV      R9,#+0
        CMP      R5,#+0
        BNE      ??OSQDel_0
        MOVS     R0,R10
        B        ??OSQDel_1
??OSQDel_0:
        CMP      R10,#+0
        BNE      ??OSQDel_2
        MOV      R0,#+4
        STRB     R0,[R5, #+0]
        MOVS     R0,R10
        B        ??OSQDel_1
??OSQDel_2:
        LDRB     R0,[R10, #+0]
        CMP      R0,#+2
        BEQ      ??OSQDel_3
        MOV      R0,#+1
        STRB     R0,[R5, #+0]
        MOVS     R0,R10
        B        ??OSQDel_1
??OSQDel_3:
        LDR      R0,??DataTable3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSQDel_4
        MOV      R0,#+15
        STRB     R0,[R5, #+0]
        MOVS     R0,R10
        B        ??OSQDel_1
??OSQDel_4:
        BL       OS_CPU_SR_Save
        MOVS     R9,R0
        LDRB     R0,[R10, #+10]
        CMP      R0,#+0
        BEQ      ??OSQDel_5
        MOV      R0,#+1
        MOVS     R6,R0
        B        ??OSQDel_6
??OSQDel_5:
        MOV      R0,#+0
        MOVS     R6,R0
??OSQDel_6:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??OSQDel_7
        CMP      R0,#+1
        BEQ      ??OSQDel_8
        B        ??OSQDel_9
??OSQDel_7:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??OSQDel_10
        ADR      R0,??DataTable1  ;; "\?"
        STR      R0,[R10, #+20]
        LDR      R0,[R10, #+4]
        MOVS     R8,R0
        LDR      R0,??DataTable3_2
        LDR      R0,[R0, #+0]
        STR      R0,[R8, #+0]
        LDR      R0,??DataTable3_2
        STR      R8,[R0, #+0]
        MOV      R0,#+0
        STRB     R0,[R10, #+0]
        LDR      R0,??DataTable3_1
        LDR      R0,[R0, #+0]
        STR      R0,[R10, #+4]
        MOV      R0,#+0
        STRH     R0,[R10, #+8]
        LDR      R0,??DataTable3_1
        STR      R10,[R0, #+0]
        MOVS     R0,R9
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        MOVS     R7,R0
        B        ??OSQDel_11
??OSQDel_10:
        MOVS     R0,R9
        BL       OS_CPU_SR_Restore
        MOV      R0,#+73
        STRB     R0,[R5, #+0]
        MOVS     R7,R10
??OSQDel_11:
        B        ??OSQDel_12
??OSQDel_8:
        LDRB     R0,[R10, #+10]
        CMP      R0,#+0
        BEQ      ??OSQDel_13
        MOV      R3,#+0
        MOV      R2,#+4
        MOV      R1,#+0
        MOVS     R0,R10
        BL       OS_EventTaskRdy
        B        ??OSQDel_8
??OSQDel_13:
        ADR      R0,??DataTable1  ;; "\?"
        STR      R0,[R10, #+20]
        LDR      R0,[R10, #+4]
        MOVS     R8,R0
        LDR      R0,??DataTable3_2
        LDR      R0,[R0, #+0]
        STR      R0,[R8, #+0]
        LDR      R0,??DataTable3_2
        STR      R8,[R0, #+0]
        MOV      R0,#+0
        STRB     R0,[R10, #+0]
        LDR      R0,??DataTable3_1
        LDR      R0,[R0, #+0]
        STR      R0,[R10, #+4]
        MOV      R0,#+0
        STRH     R0,[R10, #+8]
        LDR      R0,??DataTable3_1
        STR      R10,[R0, #+0]
        MOVS     R0,R9
        BL       OS_CPU_SR_Restore
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??OSQDel_14
        BL       OS_Sched
??OSQDel_14:
        MOV      R0,#+0
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        MOVS     R7,R0
        B        ??OSQDel_12
??OSQDel_9:
        MOVS     R0,R9
        BL       OS_CPU_SR_Restore
        MOV      R0,#+7
        STRB     R0,[R5, #+0]
        MOVS     R7,R10
??OSQDel_12:
        MOVS     R0,R7
??OSQDel_1:
        POP      {R4-R10,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC8      "\?",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSQFlush:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOV      R6,#+0
        CMP      R4,#+0
        BNE      ??OSQFlush_0
        MOV      R0,#+4
        B        ??OSQFlush_1
??OSQFlush_0:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+2
        BEQ      ??OSQFlush_2
        MOV      R0,#+1
        B        ??OSQFlush_1
??OSQFlush_2:
        BL       OS_CPU_SR_Save
        MOVS     R6,R0
        LDR      R0,[R4, #+4]
        MOVS     R5,R0
        LDR      R0,[R5, #+4]
        STR      R0,[R5, #+12]
        LDR      R0,[R5, #+4]
        STR      R0,[R5, #+16]
        MOV      R0,#+0
        STRH     R0,[R5, #+22]
        MOVS     R0,R6
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
??OSQFlush_1:
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSQPend:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R9,#+0
        CMP      R6,#+0
        BNE      ??OSQPend_0
        MOV      R0,#+0
        B        ??OSQPend_1
??OSQPend_0:
        CMP      R4,#+0
        BNE      ??OSQPend_2
        MOV      R0,#+4
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSQPend_1
??OSQPend_2:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+2
        BEQ      ??OSQPend_3
        MOV      R0,#+1
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSQPend_1
??OSQPend_3:
        LDR      R0,??DataTable3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSQPend_4
        MOV      R0,#+2
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSQPend_1
??OSQPend_4:
        LDR      R0,??DataTable3_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSQPend_5
        MOV      R0,#+13
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSQPend_1
??OSQPend_5:
        BL       OS_CPU_SR_Save
        MOVS     R9,R0
        LDR      R0,[R4, #+4]
        MOVS     R8,R0
        LDRH     R0,[R8, #+22]
        CMP      R0,#+0
        BEQ      ??OSQPend_6
        LDR      R0,[R8, #+16]
        ADDS     R1,R0,#+4
        STR      R1,[R8, #+16]
        LDR      R0,[R0, #+0]
        MOVS     R7,R0
        LDRH     R0,[R8, #+22]
        SUBS     R0,R0,#+1
        STRH     R0,[R8, #+22]
        LDR      R0,[R8, #+16]
        LDR      R1,[R8, #+8]
        CMP      R0,R1
        BNE      ??OSQPend_7
        LDR      R0,[R8, #+4]
        STR      R0,[R8, #+16]
??OSQPend_7:
        MOVS     R0,R9
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        STRB     R0,[R6, #+0]
        MOVS     R0,R7
        B        ??OSQPend_1
??OSQPend_6:
        LDR      R0,??DataTable3_4
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+52]
        ORRS     R0,R0,#0x4
        LDR      R1,??DataTable3_4
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+52]
        MOV      R0,#+0
        LDR      R1,??DataTable3_4
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+53]
        LDR      R0,??DataTable3_4
        LDR      R0,[R0, #+0]
        STR      R5,[R0, #+48]
        MOVS     R0,R4
        BL       OS_EventTaskWait
        MOVS     R0,R9
        BL       OS_CPU_SR_Restore
        BL       OS_Sched
        BL       OS_CPU_SR_Save
        MOVS     R9,R0
        LDR      R0,??DataTable3_4
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+53]
        CMP      R0,#+0
        BEQ      ??OSQPend_8
        CMP      R0,#+2
        BEQ      ??OSQPend_9
        B        ??OSQPend_10
??OSQPend_8:
        LDR      R0,??DataTable3_4
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+36]
        MOVS     R7,R0
        MOV      R0,#+0
        STRB     R0,[R6, #+0]
        B        ??OSQPend_11
??OSQPend_9:
        MOV      R0,#+0
        MOVS     R7,R0
        MOV      R0,#+14
        STRB     R0,[R6, #+0]
        B        ??OSQPend_11
??OSQPend_10:
        MOVS     R1,R4
        LDR      R0,??DataTable3_4
        LDR      R0,[R0, #+0]
        BL       OS_EventTaskRemove
        MOV      R0,#+0
        MOVS     R7,R0
        MOV      R0,#+10
        STRB     R0,[R6, #+0]
??OSQPend_11:
        MOV      R0,#+0
        LDR      R1,??DataTable3_4
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+52]
        MOV      R0,#+0
        LDR      R1,??DataTable3_4
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+53]
        MOV      R0,#+0
        LDR      R1,??DataTable3_4
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+28]
        MOV      R0,#+0
        LDR      R1,??DataTable3_4
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+32]
        MOV      R0,#+0
        LDR      R1,??DataTable3_4
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+36]
        MOVS     R0,R9
        BL       OS_CPU_SR_Restore
        MOVS     R0,R7
??OSQPend_1:
        POP      {R1,R4-R9,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSQPendAbort:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R8,#+0
        CMP      R6,#+0
        BNE      ??OSQPendAbort_0
        MOV      R0,#+0
        B        ??OSQPendAbort_1
??OSQPendAbort_0:
        CMP      R4,#+0
        BNE      ??OSQPendAbort_2
        MOV      R0,#+4
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSQPendAbort_1
??OSQPendAbort_2:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+2
        BEQ      ??OSQPendAbort_3
        MOV      R0,#+1
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSQPendAbort_1
??OSQPendAbort_3:
        BL       OS_CPU_SR_Save
        MOVS     R8,R0
        LDRB     R0,[R4, #+10]
        CMP      R0,#+0
        BEQ      ??OSQPendAbort_4
        MOV      R0,#+0
        MOVS     R7,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??OSQPendAbort_5
??OSQPendAbort_6:
        LDRB     R0,[R4, #+10]
        CMP      R0,#+0
        BEQ      ??OSQPendAbort_7
        MOV      R3,#+2
        MOV      R2,#+4
        MOV      R1,#+0
        MOVS     R0,R4
        BL       OS_EventTaskRdy
        ADDS     R7,R7,#+1
        B        ??OSQPendAbort_6
??OSQPendAbort_7:
        B        ??OSQPendAbort_8
??OSQPendAbort_5:
        MOV      R3,#+2
        MOV      R2,#+4
        MOV      R1,#+0
        MOVS     R0,R4
        BL       OS_EventTaskRdy
        ADDS     R7,R7,#+1
??OSQPendAbort_8:
        MOVS     R0,R8
        BL       OS_CPU_SR_Restore
        BL       OS_Sched
        MOV      R0,#+14
        STRB     R0,[R6, #+0]
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??OSQPendAbort_1
??OSQPendAbort_4:
        MOVS     R0,R8
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
??OSQPendAbort_1:
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSQPost:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R7,#+0
        CMP      R4,#+0
        BNE      ??OSQPost_0
        MOV      R0,#+4
        B        ??OSQPost_1
??OSQPost_0:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+2
        BEQ      ??OSQPost_2
        MOV      R0,#+1
        B        ??OSQPost_1
??OSQPost_2:
        BL       OS_CPU_SR_Save
        MOVS     R7,R0
        LDRB     R0,[R4, #+10]
        CMP      R0,#+0
        BEQ      ??OSQPost_3
        MOV      R3,#+0
        MOV      R2,#+4
        MOVS     R1,R5
        MOVS     R0,R4
        BL       OS_EventTaskRdy
        MOVS     R8,R0
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        BL       OS_Sched
        MOV      R0,#+0
        B        ??OSQPost_1
??OSQPost_3:
        LDR      R0,[R4, #+4]
        MOVS     R6,R0
        LDRH     R0,[R6, #+22]
        LDRH     R1,[R6, #+20]
        CMP      R0,R1
        BCC      ??OSQPost_4
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOV      R0,#+30
        B        ??OSQPost_1
??OSQPost_4:
        LDR      R0,[R6, #+12]
        ADDS     R1,R0,#+4
        STR      R1,[R6, #+12]
        STR      R5,[R0, #+0]
        LDRH     R0,[R6, #+22]
        ADDS     R0,R0,#+1
        STRH     R0,[R6, #+22]
        LDR      R0,[R6, #+12]
        LDR      R1,[R6, #+8]
        CMP      R0,R1
        BNE      ??OSQPost_5
        LDR      R0,[R6, #+4]
        STR      R0,[R6, #+12]
??OSQPost_5:
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
??OSQPost_1:
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSQPostFront:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R7,#+0
        CMP      R4,#+0
        BNE      ??OSQPostFront_0
        MOV      R0,#+4
        B        ??OSQPostFront_1
??OSQPostFront_0:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+2
        BEQ      ??OSQPostFront_2
        MOV      R0,#+1
        B        ??OSQPostFront_1
??OSQPostFront_2:
        BL       OS_CPU_SR_Save
        MOVS     R7,R0
        LDRB     R0,[R4, #+10]
        CMP      R0,#+0
        BEQ      ??OSQPostFront_3
        MOV      R3,#+0
        MOV      R2,#+4
        MOVS     R1,R5
        MOVS     R0,R4
        BL       OS_EventTaskRdy
        MOVS     R8,R0
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        BL       OS_Sched
        MOV      R0,#+0
        B        ??OSQPostFront_1
??OSQPostFront_3:
        LDR      R0,[R4, #+4]
        MOVS     R6,R0
        LDRH     R0,[R6, #+22]
        LDRH     R1,[R6, #+20]
        CMP      R0,R1
        BCC      ??OSQPostFront_4
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOV      R0,#+30
        B        ??OSQPostFront_1
??OSQPostFront_4:
        LDR      R0,[R6, #+16]
        LDR      R1,[R6, #+4]
        CMP      R0,R1
        BNE      ??OSQPostFront_5
        LDR      R0,[R6, #+8]
        STR      R0,[R6, #+16]
??OSQPostFront_5:
        LDR      R0,[R6, #+16]
        SUBS     R0,R0,#+4
        STR      R0,[R6, #+16]
        LDR      R0,[R6, #+16]
        STR      R5,[R0, #+0]
        LDRH     R0,[R6, #+22]
        ADDS     R0,R0,#+1
        STRH     R0,[R6, #+22]
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
??OSQPostFront_1:
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSQPostOpt:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R8,#+0
        CMP      R4,#+0
        BNE      ??OSQPostOpt_0
        MOV      R0,#+4
        B        ??OSQPostOpt_1
??OSQPostOpt_0:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+2
        BEQ      ??OSQPostOpt_2
        MOV      R0,#+1
        B        ??OSQPostOpt_1
??OSQPostOpt_2:
        BL       OS_CPU_SR_Save
        MOVS     R8,R0
        LDRB     R0,[R4, #+10]
        CMP      R0,#+0
        BEQ      ??OSQPostOpt_3
        TST      R6,#0x1
        BEQ      ??OSQPostOpt_4
??OSQPostOpt_5:
        LDRB     R0,[R4, #+10]
        CMP      R0,#+0
        BEQ      ??OSQPostOpt_6
        MOV      R3,#+0
        MOV      R2,#+4
        MOVS     R1,R5
        MOVS     R0,R4
        BL       OS_EventTaskRdy
        B        ??OSQPostOpt_5
??OSQPostOpt_4:
        MOV      R3,#+0
        MOV      R2,#+4
        MOVS     R1,R5
        MOVS     R0,R4
        BL       OS_EventTaskRdy
??OSQPostOpt_6:
        MOVS     R0,R8
        BL       OS_CPU_SR_Restore
        TST      R6,#0x4
        BNE      ??OSQPostOpt_7
        BL       OS_Sched
??OSQPostOpt_7:
        MOV      R0,#+0
        B        ??OSQPostOpt_1
??OSQPostOpt_3:
        LDR      R0,[R4, #+4]
        MOVS     R7,R0
        LDRH     R0,[R7, #+22]
        LDRH     R1,[R7, #+20]
        CMP      R0,R1
        BCC      ??OSQPostOpt_8
        MOVS     R0,R8
        BL       OS_CPU_SR_Restore
        MOV      R0,#+30
        B        ??OSQPostOpt_1
??OSQPostOpt_8:
        TST      R6,#0x2
        BEQ      ??OSQPostOpt_9
        LDR      R0,[R7, #+16]
        LDR      R1,[R7, #+4]
        CMP      R0,R1
        BNE      ??OSQPostOpt_10
        LDR      R0,[R7, #+8]
        STR      R0,[R7, #+16]
??OSQPostOpt_10:
        LDR      R0,[R7, #+16]
        SUBS     R0,R0,#+4
        STR      R0,[R7, #+16]
        LDR      R0,[R7, #+16]
        STR      R5,[R0, #+0]
        B        ??OSQPostOpt_11
??OSQPostOpt_9:
        LDR      R0,[R7, #+12]
        ADDS     R1,R0,#+4
        STR      R1,[R7, #+12]
        STR      R5,[R0, #+0]
        LDR      R0,[R7, #+12]
        LDR      R1,[R7, #+8]
        CMP      R0,R1
        BNE      ??OSQPostOpt_11
        LDR      R0,[R7, #+4]
        STR      R0,[R7, #+12]
??OSQPostOpt_11:
        LDRH     R0,[R7, #+22]
        ADDS     R0,R0,#+1
        STRH     R0,[R7, #+22]
        MOVS     R0,R8
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
??OSQPostOpt_1:
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSQQuery:
        PUSH     {R4-R10,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R10,#+0
        CMP      R4,#+0
        BNE      ??OSQQuery_0
        MOV      R0,#+4
        B        ??OSQQuery_1
??OSQQuery_0:
        CMP      R5,#+0
        BNE      ??OSQQuery_2
        MOV      R0,#+9
        B        ??OSQQuery_1
??OSQQuery_2:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+2
        BEQ      ??OSQQuery_3
        MOV      R0,#+1
        B        ??OSQQuery_1
??OSQQuery_3:
        BL       OS_CPU_SR_Save
        MOVS     R10,R0
        LDRB     R0,[R4, #+10]
        STRB     R0,[R5, #+16]
        ADDS     R0,R4,#+11
        MOVS     R8,R0
        ADDS     R0,R5,#+8
        MOVS     R9,R0
        MOV      R0,#+0
        MOVS     R7,R0
??OSQQuery_4:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+8
        BCS      ??OSQQuery_5
        LDRB     R0,[R8, #+0]
        STRB     R0,[R9, #+0]
        ADDS     R8,R8,#+1
        ADDS     R9,R9,#+1
        ADDS     R7,R7,#+1
        B        ??OSQQuery_4
??OSQQuery_5:
        LDR      R0,[R4, #+4]
        MOVS     R6,R0
        LDRH     R0,[R6, #+22]
        CMP      R0,#+0
        BEQ      ??OSQQuery_6
        LDR      R0,[R6, #+16]
        LDR      R0,[R0, #+0]
        STR      R0,[R5, #+0]
        B        ??OSQQuery_7
??OSQQuery_6:
        MOV      R0,#+0
        STR      R0,[R5, #+0]
??OSQQuery_7:
        LDRH     R0,[R6, #+22]
        STRH     R0,[R5, #+4]
        LDRH     R0,[R6, #+20]
        STRH     R0,[R5, #+6]
        MOVS     R0,R10
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
??OSQQuery_1:
        POP      {R4-R10,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OS_QInit:
        PUSH     {R4-R6,LR}
        MOV      R1,#+120
        LDR      R0,??DataTable3_5
        BL       OS_MemClr
        LDR      R0,??DataTable3_5
        MOVS     R4,R0
        LDR      R0,??DataTable3_6
        MOVS     R5,R0
        MOV      R0,#+0
        MOVS     R6,R0
??OS_QInit_0:
        MOVS     R0,R6
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+4
        BCS      ??OS_QInit_1
        STR      R5,[R4, #+0]
        ADDS     R4,R4,#+24
        ADDS     R5,R5,#+24
        ADDS     R6,R6,#+1
        B        ??OS_QInit_0
??OS_QInit_1:
        MOV      R0,#+0
        STR      R0,[R4, #+0]
        LDR      R0,??DataTable3_5
        LDR      R1,??DataTable3_2
        STR      R0,[R1, #+0]
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     OSIntNesting

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     OSEventFreeList

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     OSQFreeList

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     OSLockNesting

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     OSTCBCur

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     OSQTbl

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     OSQTbl+0x18

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
// 3 296 bytes in section .text
// 
// 3 296 bytes of CODE  memory
//     2 bytes of CONST memory
//
//Errors: none
//Warnings: none
