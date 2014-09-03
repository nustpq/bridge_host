///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       04/Sep/2014  10:10:21
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\uCOS-II\Source\os_task.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\uCOS-II\Source\os_task.c" -lcN "E:\SVN
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
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\os_task.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN OSIntNesting
        EXTERN OSLockNesting
        EXTERN OSRdyGrp
        EXTERN OSRdyTbl
        EXTERN OSRunning
        EXTERN OSTCBCur
        EXTERN OSTCBFreeList
        EXTERN OSTCBList
        EXTERN OSTCBPrioTbl
        EXTERN OSTaskCtr
        EXTERN OSTaskDelHook
        EXTERN OSTaskReturnHook
        EXTERN OSTaskStkInit
        EXTERN OS_CPU_SR_Restore
        EXTERN OS_CPU_SR_Save
        EXTERN OS_Dummy
        EXTERN OS_EventTaskRemove
        EXTERN OS_EventTaskRemoveMulti
        EXTERN OS_FlagUnlink
        EXTERN OS_MemCopy
        EXTERN OS_Sched
        EXTERN OS_StrLen
        EXTERN OS_TCBInit

        PUBLIC OSTaskChangePrio
        PUBLIC OSTaskCreate
        PUBLIC OSTaskCreateExt
        PUBLIC OSTaskDel
        PUBLIC OSTaskDelReq
        PUBLIC OSTaskNameGet
        PUBLIC OSTaskNameSet
        PUBLIC OSTaskQuery
        PUBLIC OSTaskRegGet
        PUBLIC OSTaskRegSet
        PUBLIC OSTaskResume
        PUBLIC OSTaskStkChk
        PUBLIC OSTaskSuspend
        PUBLIC OS_TaskReturn
        PUBLIC OS_TaskStkClr


        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTaskChangePrio:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+12
        MOVS     R11,R0
        MOVS     R4,R1
        MOV      R10,#+0
        MOVS     R0,R11
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+63
        BCC      ??OSTaskChangePrio_0
        MOVS     R0,R11
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+255
        BEQ      ??OSTaskChangePrio_0
        MOV      R0,#+42
        B        ??OSTaskChangePrio_1
??OSTaskChangePrio_0:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+63
        BCC      ??OSTaskChangePrio_2
        MOV      R0,#+42
        B        ??OSTaskChangePrio_1
??OSTaskChangePrio_2:
        BL       OS_CPU_SR_Save
        MOVS     R10,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable8
        LDR      R0,[R0, +R1]
        CMP      R0,#+0
        BEQ      ??OSTaskChangePrio_3
        MOVS     R0,R10
        BL       OS_CPU_SR_Restore
        MOV      R0,#+40
        B        ??OSTaskChangePrio_1
??OSTaskChangePrio_3:
        MOVS     R0,R11
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+255
        BNE      ??OSTaskChangePrio_4
        LDR      R0,??DataTable8_1
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+54]
        MOVS     R11,R0
??OSTaskChangePrio_4:
        MOVS     R0,R11
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable8
        LDR      R0,[R0, +R1]
        MOVS     R7,R0
        CMP      R7,#+0
        BNE      ??OSTaskChangePrio_5
        MOVS     R0,R10
        BL       OS_CPU_SR_Restore
        MOV      R0,#+41
        B        ??OSTaskChangePrio_1
??OSTaskChangePrio_5:
        CMP      R7,#+1
        BNE      ??OSTaskChangePrio_6
        MOVS     R0,R10
        BL       OS_CPU_SR_Restore
        MOV      R0,#+67
        B        ??OSTaskChangePrio_1
??OSTaskChangePrio_6:
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+3
        MOVS     R8,R0
        ANDS     R1,R4,#0x7
        STRB     R1,[SP, #+4]
        MOV      R1,#+1
        LSLS     R1,R1,R8
        STRB     R1,[SP, #+2]
        MOV      R1,#+1
        LDRB     R2,[SP, #+4]
        LSLS     R1,R1,R2
        STRB     R1,[SP, #+1]
        MOV      R0,#+0
        MOVS     R1,R11
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable8
        STR      R0,[R1, +R2]
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable8
        STR      R7,[R0, +R1]
        LDRB     R0,[R7, #+56]
        MOVS     R9,R0
        LDRB     R1,[R7, #+58]
        STRB     R1,[SP, #+3]
        LDRB     R1,[R7, #+57]
        STRB     R1,[SP, #+0]
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable8_2
        LDRB     R0,[R0, +R1]
        LDRB     R1,[SP, #+0]
        TST      R1,R0
        BEQ      ??OSTaskChangePrio_7
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable8_2
        LDRB     R0,[R0, +R1]
        LDRB     R1,[SP, #+0]
        BICS     R0,R0,R1
        MOVS     R1,R9
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R2,??DataTable8_2
        STRB     R0,[R1, +R2]
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable8_2
        LDRB     R0,[R0, +R1]
        CMP      R0,#+0
        BNE      ??OSTaskChangePrio_8
        LDR      R0,??DataTable9
        LDRB     R0,[R0, #+0]
        LDRB     R1,[SP, #+3]
        BICS     R0,R0,R1
        LDR      R1,??DataTable9
        STRB     R0,[R1, #+0]
??OSTaskChangePrio_8:
        LDR      R0,??DataTable9
        LDRB     R0,[R0, #+0]
        LDRB     R1,[SP, #+2]
        ORRS     R0,R1,R0
        LDR      R1,??DataTable9
        STRB     R0,[R1, #+0]
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable8_2
        LDRB     R0,[R0, +R1]
        LDRB     R1,[SP, #+1]
        ORRS     R0,R1,R0
        MOVS     R1,R8
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R2,??DataTable8_2
        STRB     R0,[R1, +R2]
??OSTaskChangePrio_7:
        LDR      R0,[R7, #+28]
        MOVS     R5,R0
        CMP      R5,#+0
        BEQ      ??OSTaskChangePrio_9
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADDS     R0,R0,R5
        LDRB     R0,[R0, #+11]
        LDRB     R1,[SP, #+0]
        BICS     R0,R0,R1
        MOVS     R1,R9
        ANDS     R1,R1,#0xFF      ;; Zero extend
        ADDS     R1,R1,R5
        STRB     R0,[R1, #+11]
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADDS     R0,R0,R5
        LDRB     R0,[R0, #+11]
        CMP      R0,#+0
        BNE      ??OSTaskChangePrio_10
        LDRB     R0,[R5, #+10]
        LDRB     R1,[SP, #+3]
        BICS     R0,R0,R1
        STRB     R0,[R5, #+10]
??OSTaskChangePrio_10:
        LDRB     R0,[R5, #+10]
        LDRB     R1,[SP, #+2]
        ORRS     R0,R1,R0
        STRB     R0,[R5, #+10]
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADDS     R0,R0,R5
        LDRB     R0,[R0, #+11]
        LDRB     R1,[SP, #+1]
        ORRS     R0,R1,R0
        MOVS     R1,R8
        ANDS     R1,R1,#0xFF      ;; Zero extend
        ADDS     R1,R1,R5
        STRB     R0,[R1, #+11]
??OSTaskChangePrio_9:
        LDR      R0,[R7, #+32]
        CMP      R0,#+0
        BEQ      ??OSTaskChangePrio_11
        LDR      R0,[R7, #+32]
        MOVS     R6,R0
        LDR      R0,[R6, #+0]
        MOVS     R5,R0
??OSTaskChangePrio_12:
        CMP      R5,#+0
        BEQ      ??OSTaskChangePrio_11
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADDS     R0,R0,R5
        LDRB     R0,[R0, #+11]
        LDRB     R1,[SP, #+0]
        BICS     R0,R0,R1
        MOVS     R1,R9
        ANDS     R1,R1,#0xFF      ;; Zero extend
        ADDS     R1,R1,R5
        STRB     R0,[R1, #+11]
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADDS     R0,R0,R5
        LDRB     R0,[R0, #+11]
        CMP      R0,#+0
        BNE      ??OSTaskChangePrio_13
        LDRB     R0,[R5, #+10]
        LDRB     R1,[SP, #+3]
        BICS     R0,R0,R1
        STRB     R0,[R5, #+10]
??OSTaskChangePrio_13:
        LDRB     R0,[R5, #+10]
        LDRB     R1,[SP, #+2]
        ORRS     R0,R1,R0
        STRB     R0,[R5, #+10]
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADDS     R0,R0,R5
        LDRB     R0,[R0, #+11]
        LDRB     R1,[SP, #+1]
        ORRS     R0,R1,R0
        MOVS     R1,R8
        ANDS     R1,R1,#0xFF      ;; Zero extend
        ADDS     R1,R1,R5
        STRB     R0,[R1, #+11]
        ADDS     R6,R6,#+4
        LDR      R0,[R6, #+0]
        MOVS     R5,R0
        B        ??OSTaskChangePrio_12
??OSTaskChangePrio_11:
        STRB     R4,[R7, #+54]
        STRB     R8,[R7, #+56]
        LDRB     R0,[SP, #+4]
        STRB     R0,[R7, #+55]
        LDRB     R0,[SP, #+2]
        STRB     R0,[R7, #+58]
        LDRB     R0,[SP, #+1]
        STRB     R0,[R7, #+57]
        MOVS     R0,R10
        BL       OS_CPU_SR_Restore
        LDR      R0,??DataTable12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE      ??OSTaskChangePrio_14
        BL       OS_Sched
??OSTaskChangePrio_14:
        MOV      R0,#+0
??OSTaskChangePrio_1:
        POP      {R1-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTaskCreate:
        PUSH     {R4-R10,LR}
        SUB      SP,SP,#+16
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOV      R10,#+0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+64
        BCC      ??OSTaskCreate_0
        MOV      R0,#+42
        B        ??OSTaskCreate_1
??OSTaskCreate_0:
        BL       OS_CPU_SR_Save
        MOVS     R10,R0
        LDR      R0,??DataTable11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSTaskCreate_2
        MOVS     R0,R10
        BL       OS_CPU_SR_Restore
        MOV      R0,#+60
        B        ??OSTaskCreate_1
??OSTaskCreate_2:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable13
        LDR      R0,[R0, +R1]
        CMP      R0,#+0
        BNE      ??OSTaskCreate_3
        MOV      R0,#+1
        MOVS     R1,R7
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable13
        STR      R0,[R1, +R2]
        MOVS     R0,R10
        BL       OS_CPU_SR_Restore
        MOV      R3,#+0
        MOVS     R2,R6
        MOVS     R1,R5
        MOVS     R0,R4
        BL       OSTaskStkInit
        MOVS     R8,R0
        MOV      R0,#+0
        STR      R0,[SP, #+8]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+0
        STR      R0,[SP, #+0]
        MOV      R3,#+0
        MOV      R2,#+0
        MOVS     R1,R8
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       OS_TCBInit
        MOVS     R9,R0
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??OSTaskCreate_4
        LDR      R0,??DataTable12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE      ??OSTaskCreate_5
        BL       OS_Sched
        B        ??OSTaskCreate_5
??OSTaskCreate_4:
        BL       OS_CPU_SR_Save
        MOVS     R10,R0
        MOV      R0,#+0
        MOVS     R1,R7
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable13
        STR      R0,[R1, +R2]
        MOVS     R0,R10
        BL       OS_CPU_SR_Restore
??OSTaskCreate_5:
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??OSTaskCreate_1
??OSTaskCreate_3:
        MOVS     R0,R10
        BL       OS_CPU_SR_Restore
        MOV      R0,#+40
??OSTaskCreate_1:
        ADD      SP,SP,#+16       ;; stack cleaning
        POP      {R4-R10,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTaskCreateExt:
        PUSH     {R0-R2,R4-R11,LR}
        SUB      SP,SP,#+16
        MOVS     R4,R3
        LDRH     R5,[SP, #+64]
        LDR      R6,[SP, #+68]
        LDR      R7,[SP, #+72]
        LDR      R8,[SP, #+76]
        LDRH     R9,[SP, #+80]
        MOV      R11,#+0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+64
        BCC      ??OSTaskCreateExt_0
        MOV      R0,#+42
        B        ??OSTaskCreateExt_1
??OSTaskCreateExt_0:
        BL       OS_CPU_SR_Save
        MOVS     R11,R0
        LDR      R0,??DataTable11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSTaskCreateExt_2
        MOVS     R0,R11
        BL       OS_CPU_SR_Restore
        MOV      R0,#+60
        B        ??OSTaskCreateExt_1
??OSTaskCreateExt_2:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable13
        LDR      R0,[R0, +R1]
        CMP      R0,#+0
        BNE      ??OSTaskCreateExt_3
        MOV      R0,#+1
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable13
        STR      R0,[R1, +R2]
        MOVS     R0,R11
        BL       OS_CPU_SR_Restore
        MOVS     R2,R9
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        MOVS     R1,R7
        MOVS     R0,R6
        BL       OS_TaskStkClr
        MOVS     R3,R9
        LSL      R3,R3,#+16
        LSRS     R3,R3,#+16
        LDR      R2,[SP, #+24]
        LDR      R1,[SP, #+20]
        LDR      R0,[SP, #+16]
        BL       OSTaskStkInit
        STR      R0,[SP, #+12]
        LSL      R9,R9,#+16
        LSRS     R9,R9,#+16
        STR      R9,[SP, #+8]
        STR      R8,[SP, #+4]
        STR      R7,[SP, #+0]
        MOVS     R3,R5
        LSL      R3,R3,#+16
        LSRS     R3,R3,#+16
        MOVS     R2,R6
        LDR      R1,[SP, #+12]
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       OS_TCBInit
        MOVS     R10,R0
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??OSTaskCreateExt_4
        LDR      R0,??DataTable12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE      ??OSTaskCreateExt_5
        BL       OS_Sched
        B        ??OSTaskCreateExt_5
??OSTaskCreateExt_4:
        BL       OS_CPU_SR_Save
        MOVS     R11,R0
        MOV      R0,#+0
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable13
        STR      R0,[R1, +R2]
        MOVS     R0,R11
        BL       OS_CPU_SR_Restore
??OSTaskCreateExt_5:
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??OSTaskCreateExt_1
??OSTaskCreateExt_3:
        MOVS     R0,R11
        BL       OS_CPU_SR_Restore
        MOV      R0,#+40
??OSTaskCreateExt_1:
        ADD      SP,SP,#+28       ;; stack cleaning
        POP      {R4-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTaskDel:
        PUSH     {R3-R7,LR}
        MOVS     R7,R0
        MOV      R6,#+0
        LDR      R0,??DataTable11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSTaskDel_0
        MOV      R0,#+64
        B        ??OSTaskDel_1
??OSTaskDel_0:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+63
        BNE      ??OSTaskDel_2
        MOV      R0,#+62
        B        ??OSTaskDel_1
??OSTaskDel_2:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+63
        BCC      ??OSTaskDel_3
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+255
        BEQ      ??OSTaskDel_3
        MOV      R0,#+42
        B        ??OSTaskDel_1
??OSTaskDel_3:
        BL       OS_CPU_SR_Save
        MOVS     R6,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+255
        BNE      ??OSTaskDel_4
        LDR      R0,??DataTable8_1
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+54]
        MOVS     R7,R0
??OSTaskDel_4:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable8
        LDR      R0,[R0, +R1]
        MOVS     R5,R0
        CMP      R5,#+0
        BNE      ??OSTaskDel_5
        MOVS     R0,R6
        BL       OS_CPU_SR_Restore
        MOV      R0,#+67
        B        ??OSTaskDel_1
??OSTaskDel_5:
        CMP      R5,#+1
        BNE      ??OSTaskDel_6
        MOVS     R0,R6
        BL       OS_CPU_SR_Restore
        MOV      R0,#+61
        B        ??OSTaskDel_1
??OSTaskDel_6:
        LDRB     R0,[R5, #+56]
        LDR      R1,??DataTable8_2
        LDRB     R0,[R0, +R1]
        LDRB     R1,[R5, #+57]
        BICS     R0,R0,R1
        LDRB     R1,[R5, #+56]
        LDR      R2,??DataTable8_2
        STRB     R0,[R1, +R2]
        LDRB     R0,[R5, #+56]
        LDR      R1,??DataTable8_2
        LDRB     R0,[R0, +R1]
        CMP      R0,#+0
        BNE      ??OSTaskDel_7
        LDR      R0,??DataTable9
        LDRB     R0,[R0, #+0]
        LDRB     R1,[R5, #+58]
        BICS     R0,R0,R1
        LDR      R1,??DataTable9
        STRB     R0,[R1, #+0]
??OSTaskDel_7:
        LDR      R0,[R5, #+28]
        CMP      R0,#+0
        BEQ      ??OSTaskDel_8
        LDR      R1,[R5, #+28]
        MOVS     R0,R5
        BL       OS_EventTaskRemove
??OSTaskDel_8:
        LDR      R0,[R5, #+32]
        CMP      R0,#+0
        BEQ      ??OSTaskDel_9
        LDR      R1,[R5, #+32]
        MOVS     R0,R5
        BL       OS_EventTaskRemoveMulti
??OSTaskDel_9:
        LDR      R0,[R5, #+40]
        MOVS     R4,R0
        CMP      R4,#+0
        BEQ      ??OSTaskDel_10
        MOVS     R0,R4
        BL       OS_FlagUnlink
??OSTaskDel_10:
        MOV      R0,#+0
        STR      R0,[R5, #+48]
        MOV      R0,#+0
        STRB     R0,[R5, #+52]
        MOV      R0,#+0
        STRB     R0,[R5, #+53]
        LDR      R0,??DataTable13_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+255
        BEQ      ??OSTaskDel_11
        LDR      R0,??DataTable13_1
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable13_1
        STRB     R0,[R1, #+0]
??OSTaskDel_11:
        MOVS     R0,R6
        BL       OS_CPU_SR_Restore
        BL       OS_Dummy
        BL       OS_CPU_SR_Save
        MOVS     R6,R0
        LDR      R0,??DataTable13_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSTaskDel_12
        LDR      R0,??DataTable13_1
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR      R1,??DataTable13_1
        STRB     R0,[R1, #+0]
??OSTaskDel_12:
        MOVS     R0,R5
        BL       OSTaskDelHook
        LDR      R0,??DataTable13_2
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR      R1,??DataTable13_2
        STRB     R0,[R1, #+0]
        MOV      R0,#+0
        MOVS     R1,R7
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable8
        STR      R0,[R1, +R2]
        LDR      R0,[R5, #+24]
        CMP      R0,#+0
        BNE      ??OSTaskDel_13
        MOV      R0,#+0
        LDR      R1,[R5, #+20]
        STR      R0,[R1, #+24]
        LDR      R0,[R5, #+20]
        LDR      R1,??DataTable13_3
        STR      R0,[R1, #+0]
        B        ??OSTaskDel_14
??OSTaskDel_13:
        LDR      R0,[R5, #+20]
        LDR      R1,[R5, #+24]
        STR      R0,[R1, #+20]
        LDR      R0,[R5, #+24]
        LDR      R1,[R5, #+20]
        STR      R0,[R1, #+24]
??OSTaskDel_14:
        LDR      R0,??DataTable13_4
        LDR      R0,[R0, #+0]
        STR      R0,[R5, #+20]
        LDR      R0,??DataTable13_4
        STR      R5,[R0, #+0]
        ADR      R0,??DataTable6  ;; "\?"
        STR      R0,[R5, #+80]
        MOVS     R0,R6
        BL       OS_CPU_SR_Restore
        LDR      R0,??DataTable13_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE      ??OSTaskDel_15
        BL       OS_Sched
??OSTaskDel_15:
        MOV      R0,#+0
??OSTaskDel_1:
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTaskDelReq:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOV      R7,#+0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+63
        BNE      ??OSTaskDelReq_0
        MOV      R0,#+62
        B        ??OSTaskDelReq_1
??OSTaskDelReq_0:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+63
        BCC      ??OSTaskDelReq_2
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+255
        BEQ      ??OSTaskDelReq_2
        MOV      R0,#+42
        B        ??OSTaskDelReq_1
??OSTaskDelReq_2:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+255
        BNE      ??OSTaskDelReq_3
        BL       OS_CPU_SR_Save
        MOVS     R7,R0
        LDR      R0,??DataTable8_1
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+59]
        MOVS     R5,R0
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??OSTaskDelReq_1
??OSTaskDelReq_3:
        BL       OS_CPU_SR_Save
        MOVS     R7,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable13
        LDR      R0,[R0, +R1]
        MOVS     R6,R0
        CMP      R6,#+0
        BNE      ??OSTaskDelReq_4
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOV      R0,#+67
        B        ??OSTaskDelReq_1
??OSTaskDelReq_4:
        CMP      R6,#+1
        BNE      ??OSTaskDelReq_5
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOV      R0,#+61
        B        ??OSTaskDelReq_1
??OSTaskDelReq_5:
        MOV      R0,#+63
        STRB     R0,[R6, #+59]
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
??OSTaskDelReq_1:
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTaskNameGet:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R9,#+0
        CMP      R6,#+0
        BNE      ??OSTaskNameGet_0
        MOV      R0,#+0
        B        ??OSTaskNameGet_1
??OSTaskNameGet_0:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+64
        BCC      ??OSTaskNameGet_2
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+255
        BEQ      ??OSTaskNameGet_2
        MOV      R0,#+42
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSTaskNameGet_1
??OSTaskNameGet_2:
        CMP      R5,#+0
        BNE      ??OSTaskNameGet_3
        MOV      R0,#+12
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSTaskNameGet_1
??OSTaskNameGet_3:
        LDR      R0,??DataTable11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSTaskNameGet_4
        MOV      R0,#+17
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSTaskNameGet_1
??OSTaskNameGet_4:
        BL       OS_CPU_SR_Save
        MOVS     R9,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+255
        BNE      ??OSTaskNameGet_5
        LDR      R0,??DataTable8_1
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+54]
        MOVS     R4,R0
??OSTaskNameGet_5:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable13
        LDR      R0,[R0, +R1]
        MOVS     R7,R0
        CMP      R7,#+0
        BNE      ??OSTaskNameGet_6
        MOVS     R0,R9
        BL       OS_CPU_SR_Restore
        MOV      R0,#+67
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSTaskNameGet_1
??OSTaskNameGet_6:
        CMP      R7,#+1
        BNE      ??OSTaskNameGet_7
        MOVS     R0,R9
        BL       OS_CPU_SR_Restore
        MOV      R0,#+67
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSTaskNameGet_1
??OSTaskNameGet_7:
        LDR      R0,[R7, #+80]
        STR      R0,[R5, #+0]
        LDR      R0,[R5, #+0]
        BL       OS_StrLen
        MOVS     R8,R0
        MOVS     R0,R9
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        STRB     R0,[R6, #+0]
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
??OSTaskNameGet_1:
        POP      {R1,R4-R9,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTaskNameSet:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R8,#+0
        CMP      R6,#+0
        BEQ      ??OSTaskNameSet_0
??OSTaskNameSet_1:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+64
        BCC      ??OSTaskNameSet_2
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+255
        BEQ      ??OSTaskNameSet_2
        MOV      R0,#+42
        STRB     R0,[R6, #+0]
        B        ??OSTaskNameSet_0
??OSTaskNameSet_2:
        CMP      R5,#+0
        BNE      ??OSTaskNameSet_3
        MOV      R0,#+12
        STRB     R0,[R6, #+0]
        B        ??OSTaskNameSet_0
??OSTaskNameSet_3:
        LDR      R0,??DataTable11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSTaskNameSet_4
        MOV      R0,#+18
        STRB     R0,[R6, #+0]
        B        ??OSTaskNameSet_0
??OSTaskNameSet_4:
        BL       OS_CPU_SR_Save
        MOVS     R8,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+255
        BNE      ??OSTaskNameSet_5
        LDR      R0,??DataTable8_1
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+54]
        MOVS     R4,R0
??OSTaskNameSet_5:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable13
        LDR      R0,[R0, +R1]
        MOVS     R7,R0
        CMP      R7,#+0
        BNE      ??OSTaskNameSet_6
        MOVS     R0,R8
        BL       OS_CPU_SR_Restore
        MOV      R0,#+67
        STRB     R0,[R6, #+0]
        B        ??OSTaskNameSet_0
??OSTaskNameSet_6:
        CMP      R7,#+1
        BNE      ??OSTaskNameSet_7
        MOVS     R0,R8
        BL       OS_CPU_SR_Restore
        MOV      R0,#+67
        STRB     R0,[R6, #+0]
        B        ??OSTaskNameSet_0
??OSTaskNameSet_7:
        STR      R5,[R7, #+80]
        MOVS     R0,R8
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        STRB     R0,[R6, #+0]
??OSTaskNameSet_0:
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC8      "\?",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTaskResume:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOV      R6,#+0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+63
        BCC      ??OSTaskResume_0
        MOV      R0,#+42
        B        ??OSTaskResume_1
??OSTaskResume_0:
        BL       OS_CPU_SR_Save
        MOVS     R6,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable8
        LDR      R0,[R0, +R1]
        MOVS     R5,R0
        CMP      R5,#+0
        BNE      ??OSTaskResume_2
        MOVS     R0,R6
        BL       OS_CPU_SR_Restore
        MOV      R0,#+70
        B        ??OSTaskResume_1
??OSTaskResume_2:
        CMP      R5,#+1
        BNE      ??OSTaskResume_3
        MOVS     R0,R6
        BL       OS_CPU_SR_Restore
        MOV      R0,#+67
        B        ??OSTaskResume_1
??OSTaskResume_3:
        LDRB     R0,[R5, #+52]
        TST      R0,#0x8
        BEQ      ??OSTaskResume_4
        LDRB     R0,[R5, #+52]
        ANDS     R0,R0,#0xF7
        STRB     R0,[R5, #+52]
        LDRB     R0,[R5, #+52]
        CMP      R0,#+0
        BNE      ??OSTaskResume_5
        LDR      R0,[R5, #+48]
        CMP      R0,#+0
        BNE      ??OSTaskResume_6
        LDR      R0,??DataTable9
        LDRB     R0,[R0, #+0]
        LDRB     R1,[R5, #+58]
        ORRS     R0,R1,R0
        LDR      R1,??DataTable9
        STRB     R0,[R1, #+0]
        LDRB     R0,[R5, #+56]
        LDR      R1,??DataTable8_2
        LDRB     R0,[R0, +R1]
        LDRB     R1,[R5, #+57]
        ORRS     R0,R1,R0
        LDRB     R1,[R5, #+56]
        LDR      R2,??DataTable8_2
        STRB     R0,[R1, +R2]
        MOVS     R0,R6
        BL       OS_CPU_SR_Restore
        LDR      R0,??DataTable13_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE      ??OSTaskResume_7
        BL       OS_Sched
        B        ??OSTaskResume_7
??OSTaskResume_6:
        MOVS     R0,R6
        BL       OS_CPU_SR_Restore
        B        ??OSTaskResume_7
??OSTaskResume_5:
        MOVS     R0,R6
        BL       OS_CPU_SR_Restore
??OSTaskResume_7:
        MOV      R0,#+0
        B        ??OSTaskResume_1
??OSTaskResume_4:
        MOVS     R0,R6
        BL       OS_CPU_SR_Restore
        MOV      R0,#+68
??OSTaskResume_1:
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTaskStkChk:
        PUSH     {R4-R10,LR}
        MOVS     R10,R0
        MOVS     R4,R1
        MOV      R9,#+0
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+64
        BCC      ??OSTaskStkChk_0
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+255
        BEQ      ??OSTaskStkChk_0
        MOV      R0,#+42
        B        ??OSTaskStkChk_1
??OSTaskStkChk_0:
        CMP      R4,#+0
        BNE      ??OSTaskStkChk_2
        MOV      R0,#+9
        B        ??OSTaskStkChk_1
??OSTaskStkChk_2:
        MOV      R0,#+0
        STR      R0,[R4, #+0]
        MOV      R0,#+0
        STR      R0,[R4, #+4]
        BL       OS_CPU_SR_Save
        MOVS     R9,R0
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+255
        BNE      ??OSTaskStkChk_3
        LDR      R0,??DataTable8_1
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+54]
        MOVS     R10,R0
??OSTaskStkChk_3:
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable13
        LDR      R0,[R0, +R1]
        MOVS     R5,R0
        CMP      R5,#+0
        BNE      ??OSTaskStkChk_4
        MOVS     R0,R9
        BL       OS_CPU_SR_Restore
        MOV      R0,#+67
        B        ??OSTaskStkChk_1
??OSTaskStkChk_4:
        CMP      R5,#+1
        BNE      ??OSTaskStkChk_5
        MOVS     R0,R9
        BL       OS_CPU_SR_Restore
        MOV      R0,#+67
        B        ??OSTaskStkChk_1
??OSTaskStkChk_5:
        LDRB     R0,[R5, #+16]
        TST      R0,#0x1
        BNE      ??OSTaskStkChk_6
        MOVS     R0,R9
        BL       OS_CPU_SR_Restore
        MOV      R0,#+69
        B        ??OSTaskStkChk_1
??OSTaskStkChk_6:
        MOV      R0,#+0
        MOVS     R7,R0
        LDR      R0,[R5, #+12]
        MOVS     R8,R0
        LDR      R0,[R5, #+8]
        MOVS     R6,R0
        MOVS     R0,R9
        BL       OS_CPU_SR_Restore
??OSTaskStkChk_7:
        MOVS     R0,R6
        ADDS     R6,R0,#+4
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??OSTaskStkChk_8
        ADDS     R7,R7,#+1
        B        ??OSTaskStkChk_7
??OSTaskStkChk_8:
        LSLS     R0,R7,#+2
        STR      R0,[R4, #+0]
        SUBS     R0,R8,R7
        LSLS     R0,R0,#+2
        STR      R0,[R4, #+4]
        MOV      R0,#+0
??OSTaskStkChk_1:
        POP      {R4-R10,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     OSTCBPrioTbl

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     OSTCBCur

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC32     OSRdyTbl

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTaskSuspend:
        PUSH     {R4-R8,LR}
        MOVS     R8,R0
        MOV      R7,#+0
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+63
        BNE      ??OSTaskSuspend_0
        MOV      R0,#+71
        B        ??OSTaskSuspend_1
??OSTaskSuspend_0:
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+63
        BCC      ??OSTaskSuspend_2
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+255
        BEQ      ??OSTaskSuspend_2
        MOV      R0,#+42
        B        ??OSTaskSuspend_1
??OSTaskSuspend_2:
        BL       OS_CPU_SR_Save
        MOVS     R7,R0
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+255
        BNE      ??OSTaskSuspend_3
        LDR      R0,??DataTable13_6
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+54]
        MOVS     R8,R0
        MOV      R0,#+1
        MOVS     R4,R0
        B        ??OSTaskSuspend_4
??OSTaskSuspend_3:
        LDR      R0,??DataTable13_6
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+54]
        ANDS     R8,R8,#0xFF      ;; Zero extend
        CMP      R8,R0
        BNE      ??OSTaskSuspend_5
        MOV      R0,#+1
        MOVS     R4,R0
        B        ??OSTaskSuspend_4
??OSTaskSuspend_5:
        MOV      R0,#+0
        MOVS     R4,R0
??OSTaskSuspend_4:
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable13
        LDR      R0,[R0, +R1]
        MOVS     R5,R0
        CMP      R5,#+0
        BNE      ??OSTaskSuspend_6
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOV      R0,#+72
        B        ??OSTaskSuspend_1
??OSTaskSuspend_6:
        CMP      R5,#+1
        BNE      ??OSTaskSuspend_7
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOV      R0,#+67
        B        ??OSTaskSuspend_1
??OSTaskSuspend_7:
        LDRB     R0,[R5, #+56]
        MOVS     R6,R0
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable13_7
        LDRB     R0,[R0, +R1]
        LDRB     R1,[R5, #+57]
        BICS     R0,R0,R1
        MOVS     R1,R6
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R2,??DataTable13_7
        STRB     R0,[R1, +R2]
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable13_7
        LDRB     R0,[R0, +R1]
        CMP      R0,#+0
        BNE      ??OSTaskSuspend_8
        LDR      R0,??DataTable9
        LDRB     R0,[R0, #+0]
        LDRB     R1,[R5, #+58]
        BICS     R0,R0,R1
        LDR      R1,??DataTable9
        STRB     R0,[R1, #+0]
??OSTaskSuspend_8:
        LDRB     R0,[R5, #+52]
        ORRS     R0,R0,#0x8
        STRB     R0,[R5, #+52]
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??OSTaskSuspend_9
        BL       OS_Sched
??OSTaskSuspend_9:
        MOV      R0,#+0
??OSTaskSuspend_1:
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     OSRdyGrp

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTaskQuery:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R7,#+0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+64
        BCC      ??OSTaskQuery_0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+255
        BEQ      ??OSTaskQuery_0
        MOV      R0,#+42
        B        ??OSTaskQuery_1
??OSTaskQuery_0:
        CMP      R5,#+0
        BNE      ??OSTaskQuery_2
        MOV      R0,#+9
        B        ??OSTaskQuery_1
??OSTaskQuery_2:
        BL       OS_CPU_SR_Save
        MOVS     R7,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+255
        BNE      ??OSTaskQuery_3
        LDR      R0,??DataTable13_6
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+54]
        MOVS     R4,R0
??OSTaskQuery_3:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable13
        LDR      R0,[R0, +R1]
        MOVS     R6,R0
        CMP      R6,#+0
        BNE      ??OSTaskQuery_4
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOV      R0,#+41
        B        ??OSTaskQuery_1
??OSTaskQuery_4:
        CMP      R6,#+1
        BNE      ??OSTaskQuery_5
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOV      R0,#+67
        B        ??OSTaskQuery_1
??OSTaskQuery_5:
        MOV      R2,#+88
        MOVS     R1,R6
        MOVS     R0,R5
        BL       OS_MemCopy
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
??OSTaskQuery_1:
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTaskRegGet:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R7,#+0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+63
        BCC      ??OSTaskRegGet_0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+255
        BEQ      ??OSTaskRegGet_0
        MOV      R0,#+42
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSTaskRegGet_1
??OSTaskRegGet_0:
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??OSTaskRegGet_2
        MOV      R0,#+8
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSTaskRegGet_1
??OSTaskRegGet_2:
        BL       OS_CPU_SR_Save
        MOVS     R7,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+255
        BNE      ??OSTaskRegGet_3
        LDR      R0,??DataTable13_6
        LDR      R0,[R0, #+0]
        MOVS     R9,R0
        B        ??OSTaskRegGet_4
??OSTaskRegGet_3:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable13
        LDR      R0,[R0, +R1]
        MOVS     R9,R0
??OSTaskRegGet_4:
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        ADDS     R0,R0,R9
        LDR      R0,[R0, #+84]
        MOVS     R8,R0
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        STRB     R0,[R6, #+0]
        MOVS     R0,R8
??OSTaskRegGet_1:
        POP      {R1,R4-R9,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     OSIntNesting

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTaskRegSet:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOV      R8,#+0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+63
        BCC      ??OSTaskRegSet_0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+255
        BEQ      ??OSTaskRegSet_0
        MOV      R0,#+42
        STRB     R0,[R7, #+0]
        B        ??OSTaskRegSet_1
??OSTaskRegSet_0:
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??OSTaskRegSet_2
        MOV      R0,#+8
        STRB     R0,[R7, #+0]
        B        ??OSTaskRegSet_1
??OSTaskRegSet_2:
        BL       OS_CPU_SR_Save
        MOVS     R8,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+255
        BNE      ??OSTaskRegSet_3
        LDR      R0,??DataTable13_6
        LDR      R0,[R0, #+0]
        MOVS     R9,R0
        B        ??OSTaskRegSet_4
??OSTaskRegSet_3:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable13
        LDR      R0,[R0, +R1]
        MOVS     R9,R0
??OSTaskRegSet_4:
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        ADDS     R0,R0,R9
        STR      R6,[R0, #+84]
        MOVS     R0,R8
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        STRB     R0,[R7, #+0]
??OSTaskRegSet_1:
        POP      {R0,R4-R9,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     OSRunning

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OS_TaskReturn:
        PUSH     {R12,LR}
        LDR      R0,??DataTable13_6
        LDR      R0,[R0, #+0]
        BL       OSTaskReturnHook
        MOV      R0,#+255
        BL       OSTaskDel
        POP      {R0,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13:
        DC32     OSTCBPrioTbl

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_1:
        DC32     OSLockNesting

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_2:
        DC32     OSTaskCtr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_3:
        DC32     OSTCBList

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_4:
        DC32     OSTCBFreeList

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_5:
        DC32     OSRunning

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_6:
        DC32     OSTCBCur

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_7:
        DC32     OSRdyTbl

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OS_TaskStkClr:
        TST      R2,#0x1
        BEQ      ??OS_TaskStkClr_0
        TST      R2,#0x2
        BEQ      ??OS_TaskStkClr_0
??OS_TaskStkClr_1:
        CMP      R1,#+0
        BEQ      ??OS_TaskStkClr_0
        SUBS     R1,R1,#+1
        MOV      R3,#+0
        STR      R3,[R0, #+0]
        ADDS     R0,R0,#+4
        B        ??OS_TaskStkClr_1
??OS_TaskStkClr_0:
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
// 4 964 bytes in section .text
// 
// 4 964 bytes of CODE  memory
//     2 bytes of CONST memory
//
//Errors: none
//Warnings: none
