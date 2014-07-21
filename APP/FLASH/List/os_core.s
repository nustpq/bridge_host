///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       21/Jul/2014  19:24:34
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\uCOS-II\Source\os_core.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\uCOS-II\Source\os_core.c" -lcN "E:\SVN
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
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\os_core.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN OSCtxSw
        EXTERN OSDebugInit
        EXTERN OSInitHookBegin
        EXTERN OSInitHookEnd
        EXTERN OSIntCtxSw
        EXTERN OSStartHighRdy
        EXTERN OSTCBInitHook
        EXTERN OSTaskCreateExt
        EXTERN OSTaskCreateHook
        EXTERN OSTaskIdleHook
        EXTERN OSTaskNameSet
        EXTERN OSTaskStatHook
        EXTERN OSTaskStkChk
        EXTERN OSTaskSuspend
        EXTERN OSTimeDly
        EXTERN OSTimeTickHook
        EXTERN OSTmr_Init
        EXTERN OS_CPU_SR_Restore
        EXTERN OS_CPU_SR_Save
        EXTERN OS_FlagInit
        EXTERN OS_MemInit
        EXTERN OS_QInit
        EXTERN __aeabi_uidiv

        PUBLIC OSCPUUsage
        PUBLIC OSCtxSwCtr
        PUBLIC OSEventFreeList
        PUBLIC OSEventNameGet
        PUBLIC OSEventNameSet
        PUBLIC OSEventPendMulti
        PUBLIC OSEventTbl
        PUBLIC OSFlagFreeList
        PUBLIC OSFlagTbl
        PUBLIC OSIdleCtr
        PUBLIC OSIdleCtrMax
        PUBLIC OSIdleCtrRun
        PUBLIC OSInit
        PUBLIC OSIntEnter
        PUBLIC OSIntExit
        PUBLIC OSIntNesting
        PUBLIC OSLockNesting
        PUBLIC OSMemFreeList
        PUBLIC OSMemTbl
        PUBLIC OSPrioCur
        PUBLIC OSPrioHighRdy
        PUBLIC OSQFreeList
        PUBLIC OSQTbl
        PUBLIC OSRdyGrp
        PUBLIC OSRdyTbl
        PUBLIC OSRunning
        PUBLIC OSSchedLock
        PUBLIC OSSchedUnlock
        PUBLIC OSStart
        PUBLIC OSStatInit
        PUBLIC OSStatRdy
        PUBLIC OSTCBCur
        PUBLIC OSTCBFreeList
        PUBLIC OSTCBHighRdy
        PUBLIC OSTCBList
        PUBLIC OSTCBPrioTbl
        PUBLIC OSTCBTbl
        PUBLIC OSTaskCtr
        PUBLIC OSTaskIdleStk
        PUBLIC OSTaskStatStk
        PUBLIC OSTickStepState
        PUBLIC OSTime
        PUBLIC OSTimeTick
        PUBLIC OSTmrFree
        PUBLIC OSTmrFreeList
        PUBLIC OSTmrSem
        PUBLIC OSTmrSemSignal
        PUBLIC OSTmrTaskStk
        PUBLIC OSTmrTbl
        PUBLIC OSTmrTime
        PUBLIC OSTmrUsed
        PUBLIC OSTmrWheelTbl
        PUBLIC OSUnMapTbl
        PUBLIC OSVersion
        PUBLIC OS_Dummy
        PUBLIC OS_EventTaskRdy
        PUBLIC OS_EventTaskRemove
        PUBLIC OS_EventTaskRemoveMulti
        PUBLIC OS_EventTaskWait
        PUBLIC OS_EventTaskWaitMulti
        PUBLIC OS_EventWaitListInit
        PUBLIC OS_MemClr
        PUBLIC OS_MemCopy
        PUBLIC OS_Sched
        PUBLIC OS_StrLen
        PUBLIC OS_TCBInit
        PUBLIC OS_TaskIdle
        PUBLIC OS_TaskStat
        PUBLIC OS_TaskStatStkChk


        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute INT32U OSCtxSwCtr
OSCtxSwCtr:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute struct os_event *OSEventFreeList
OSEventFreeList:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute OS_EVENT OSEventTbl[25U]
OSEventTbl:
        DS8 600

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute OS_FLAG_GRP OSFlagTbl[5U]
OSFlagTbl:
        DS8 80

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute struct os_flag_grp *OSFlagFreeList
OSFlagFreeList:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute INT8U OSCPUUsage
OSCPUUsage:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute INT32U OSIdleCtrMax
OSIdleCtrMax:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute INT32U OSIdleCtrRun
OSIdleCtrRun:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BOOLEAN OSStatRdy
OSStatRdy:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute OS_STK OSTaskStatStk[128U]
OSTaskStatStk:
        DS8 512

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute INT8U OSIntNesting
OSIntNesting:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute INT8U OSLockNesting
OSLockNesting:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute INT8U OSPrioCur
OSPrioCur:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute INT8U OSPrioHighRdy
OSPrioHighRdy:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute INT8U OSRdyGrp
OSRdyGrp:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute INT8U OSRdyTbl[8U]
OSRdyTbl:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BOOLEAN OSRunning
OSRunning:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute INT8U OSTaskCtr
OSTaskCtr:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute INT32U volatile OSIdleCtr
OSIdleCtr:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute OS_STK OSTaskIdleStk[128U]
OSTaskIdleStk:
        DS8 512

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute struct os_tcb *OSTCBCur
OSTCBCur:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute struct os_tcb *OSTCBFreeList
OSTCBFreeList:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute struct os_tcb *OSTCBHighRdy
OSTCBHighRdy:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute struct os_tcb *OSTCBList
OSTCBList:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute struct os_tcb *OSTCBPrioTbl[64U]
OSTCBPrioTbl:
        DS8 256

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute OS_TCB OSTCBTbl[17U]
OSTCBTbl:
        DS8 1496

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute INT8U OSTickStepState
OSTickStepState:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute struct os_mem *OSMemFreeList
OSMemFreeList:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute OS_MEM OSMemTbl[1U]
OSMemTbl:
        DS8 24

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute OS_Q *OSQFreeList
OSQFreeList:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute OS_Q OSQTbl[5U]
OSQTbl:
        DS8 120

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute INT32U volatile OSTime
OSTime:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// __absolute INT16U OSTmrFree
OSTmrFree:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// __absolute INT16U OSTmrUsed
OSTmrUsed:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute INT32U OSTmrTime
OSTmrTime:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute struct os_event *OSTmrSem
OSTmrSem:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute struct os_event *OSTmrSemSignal
OSTmrSemSignal:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute OS_TMR OSTmrTbl[16U]
OSTmrTbl:
        DS8 640

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute struct os_tmr *OSTmrFreeList
OSTmrFreeList:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute OS_STK OSTmrTaskStk[128U]
OSTmrTaskStk:
        DS8 512

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute OS_TMR_WHEEL OSTmrWheelTbl[8U]
OSTmrWheelTbl:
        DS8 64

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
        DC8 "?"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "uC/OS-II Idle">`:
        DATA
        DC8 "uC/OS-II Idle"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "uC/OS-II Stat">`:
        DATA
        DC8 "uC/OS-II Stat"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
OSUnMapTbl:
        DATA
        DC8 0, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 4, 0, 1, 0, 2, 0, 1
        DC8 0, 3, 0, 1, 0, 2, 0, 1, 0, 5, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0
        DC8 1, 0, 4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 6, 0, 1, 0, 2
        DC8 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0
        DC8 2, 0, 1, 0, 5, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 4, 0, 1
        DC8 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 7, 0, 1, 0, 2, 0, 1, 0, 3, 0
        DC8 1, 0, 2, 0, 1, 0, 4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 5
        DC8 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 4, 0, 1, 0, 2, 0, 1, 0
        DC8 3, 0, 1, 0, 2, 0, 1, 0, 6, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1
        DC8 0, 4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 5, 0, 1, 0, 2, 0
        DC8 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2
        DC8 0, 1, 0

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSEventNameGet:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R8,#+0
        CMP      R6,#+0
        BNE      ??OSEventNameGet_1
        MOV      R0,#+0
        B        ??OSEventNameGet_2
??OSEventNameGet_1:
        CMP      R4,#+0
        BNE      ??OSEventNameGet_3
        MOV      R0,#+4
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSEventNameGet_2
??OSEventNameGet_3:
        CMP      R5,#+0
        BNE      ??OSEventNameGet_4
        MOV      R0,#+12
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSEventNameGet_2
??OSEventNameGet_4:
        LDR      R0,??DataTable12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSEventNameGet_5
        MOV      R0,#+17
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSEventNameGet_2
??OSEventNameGet_5:
        LDRB     R0,[R4, #+0]
        SUB      R0,R0,#+1
        CMP      R0,#+3
        BHI      ??OSEventNameGet_6
        LDRB     R1,[PC, R0]
        ADD      PC,PC,R1, LSL #+2
        DATA
??OSEventNameGet_0:
        DC8      0x0,0x0,0x0,0x0
        ARM
??OSEventNameGet_7:
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
        B        ??OSEventNameGet_2
??OSEventNameGet_6:
        MOV      R0,#+1
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
??OSEventNameGet_2:
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSEventNameSet:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R7,#+0
        CMP      R6,#+0
        BEQ      ??OSEventNameSet_1
??OSEventNameSet_2:
        CMP      R4,#+0
        BNE      ??OSEventNameSet_3
        MOV      R0,#+4
        STRB     R0,[R6, #+0]
        B        ??OSEventNameSet_1
??OSEventNameSet_3:
        CMP      R5,#+0
        BNE      ??OSEventNameSet_4
        MOV      R0,#+12
        STRB     R0,[R6, #+0]
        B        ??OSEventNameSet_1
??OSEventNameSet_4:
        LDR      R0,??DataTable14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSEventNameSet_5
        MOV      R0,#+18
        STRB     R0,[R6, #+0]
        B        ??OSEventNameSet_1
??OSEventNameSet_5:
        LDRB     R0,[R4, #+0]
        SUB      R0,R0,#+1
        CMP      R0,#+3
        BHI      ??OSEventNameSet_6
        LDRB     R1,[PC, R0]
        ADD      PC,PC,R1, LSL #+2
        DATA
??OSEventNameSet_0:
        DC8      0x0,0x0,0x0,0x0
        ARM
??OSEventNameSet_7:
        BL       OS_CPU_SR_Save
        MOVS     R7,R0
        STR      R5,[R4, #+20]
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        STRB     R0,[R6, #+0]
        B        ??OSEventNameSet_1
??OSEventNameSet_6:
        MOV      R0,#+1
        STRB     R0,[R6, #+0]
??OSEventNameSet_1:
        POP      {R0,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSEventPendMulti:
        PUSH     {R0,R3-R11,LR}
        SUB      SP,SP,#+12
        MOVS     R9,R1
        MOVS     R8,R2
        LDR      R4,[SP, #+56]
        MOV      R0,#+0
        STR      R0,[SP, #+0]
        CMP      R4,#+0
        BNE      ??OSEventPendMulti_0
        MOV      R0,#+0
        B        ??OSEventPendMulti_1
??OSEventPendMulti_0:
        LDR      R0,[SP, #+12]
        CMP      R0,#+0
        BNE      ??OSEventPendMulti_2
        MOV      R0,#+4
        STRB     R0,[R4, #+0]
        MOV      R0,#+0
        B        ??OSEventPendMulti_1
??OSEventPendMulti_2:
        LDR      R0,[SP, #+12]
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??OSEventPendMulti_3
        MOV      R0,#+4
        STRB     R0,[R4, #+0]
        MOV      R0,#+0
        B        ??OSEventPendMulti_1
??OSEventPendMulti_3:
        CMP      R9,#+0
        BNE      ??OSEventPendMulti_4
        MOV      R0,#+4
        STRB     R0,[R4, #+0]
        MOV      R0,#+0
        B        ??OSEventPendMulti_1
??OSEventPendMulti_4:
        CMP      R8,#+0
        BNE      ??OSEventPendMulti_5
        MOV      R0,#+4
        STRB     R0,[R4, #+0]
        MOV      R0,#+0
        B        ??OSEventPendMulti_1
??OSEventPendMulti_5:
        MOV      R0,#+0
        STR      R0,[R9, #+0]
        LDR      R0,[SP, #+12]
        MOVS     R7,R0
        LDR      R0,[R7, #+0]
        MOVS     R5,R0
??OSEventPendMulti_6:
        CMP      R5,#+0
        BEQ      ??OSEventPendMulti_7
        LDRB     R0,[R5, #+0]
        CMP      R0,#+1
        BEQ      ??OSEventPendMulti_8
        BCC      ??OSEventPendMulti_9
        CMP      R0,#+3
        BEQ      ??OSEventPendMulti_10
        BCC      ??OSEventPendMulti_11
        B        ??OSEventPendMulti_9
??OSEventPendMulti_10:
        B        ??OSEventPendMulti_12
??OSEventPendMulti_8:
        B        ??OSEventPendMulti_12
??OSEventPendMulti_11:
        B        ??OSEventPendMulti_12
??OSEventPendMulti_9:
        MOV      R0,#+1
        STRB     R0,[R4, #+0]
        MOV      R0,#+0
        B        ??OSEventPendMulti_1
??OSEventPendMulti_12:
        ADDS     R7,R7,#+4
        LDR      R0,[R7, #+0]
        MOVS     R5,R0
        B        ??OSEventPendMulti_6
??OSEventPendMulti_7:
        LDR      R0,??DataTable12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSEventPendMulti_13
        MOV      R0,#+2
        STRB     R0,[R4, #+0]
        MOV      R0,#+0
        B        ??OSEventPendMulti_1
??OSEventPendMulti_13:
        LDR      R0,??DataTable14_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSEventPendMulti_14
        MOV      R0,#+13
        STRB     R0,[R4, #+0]
        MOV      R0,#+0
        B        ??OSEventPendMulti_1
??OSEventPendMulti_14:
        BL       OS_CPU_SR_Save
        STR      R0,[SP, #+0]
        MOV      R0,#+0
        STRB     R0,[SP, #+4]
        MOV      R0,#+0
        MOVS     R10,R0
        MOV      R0,#+0
        MOVS     R11,R0
        LDR      R0,[SP, #+12]
        MOVS     R7,R0
        LDR      R0,[R7, #+0]
        MOVS     R5,R0
??OSEventPendMulti_15:
        CMP      R5,#+0
        BEQ      ??OSEventPendMulti_16
        LDRB     R0,[R5, #+0]
        CMP      R0,#+1
        BEQ      ??OSEventPendMulti_17
        BCC      ??OSEventPendMulti_18
        CMP      R0,#+3
        BEQ      ??OSEventPendMulti_19
        BCC      ??OSEventPendMulti_20
        B        ??OSEventPendMulti_18
??OSEventPendMulti_19:
        LDRH     R0,[R5, #+8]
        CMP      R0,#+0
        BEQ      ??OSEventPendMulti_21
        LDRH     R0,[R5, #+8]
        SUBS     R0,R0,#+1
        STRH     R0,[R5, #+8]
        STR      R5,[R9, #+0]
        ADDS     R9,R9,#+4
        MOV      R0,#+1
        STRB     R0,[SP, #+4]
        MOV      R0,#+0
        STR      R0,[R8, #+0]
        ADDS     R8,R8,#+4
        ADDS     R10,R10,#+1
        B        ??OSEventPendMulti_22
??OSEventPendMulti_21:
        ORRS     R11,R11,#0x1
??OSEventPendMulti_22:
        B        ??OSEventPendMulti_23
??OSEventPendMulti_17:
        LDR      R0,[R5, #+4]
        CMP      R0,#+0
        BEQ      ??OSEventPendMulti_24
        LDR      R0,[R5, #+4]
        STR      R0,[R8, #+0]
        ADDS     R8,R8,#+4
        MOV      R0,#+0
        STR      R0,[R5, #+4]
        STR      R5,[R9, #+0]
        ADDS     R9,R9,#+4
        MOV      R0,#+1
        STRB     R0,[SP, #+4]
        ADDS     R10,R10,#+1
        B        ??OSEventPendMulti_25
??OSEventPendMulti_24:
        ORRS     R11,R11,#0x2
??OSEventPendMulti_25:
        B        ??OSEventPendMulti_23
??OSEventPendMulti_20:
        LDR      R0,[R5, #+4]
        MOVS     R6,R0
        LDRH     R0,[R6, #+22]
        CMP      R0,#+0
        BEQ      ??OSEventPendMulti_26
        LDR      R0,[R6, #+16]
        ADDS     R1,R0,#+4
        STR      R1,[R6, #+16]
        LDR      R0,[R0, #+0]
        STR      R0,[R8, #+0]
        ADDS     R8,R8,#+4
        LDR      R0,[R6, #+16]
        LDR      R1,[R6, #+8]
        CMP      R0,R1
        BNE      ??OSEventPendMulti_27
        LDR      R0,[R6, #+4]
        STR      R0,[R6, #+16]
??OSEventPendMulti_27:
        LDRH     R0,[R6, #+22]
        SUBS     R0,R0,#+1
        STRH     R0,[R6, #+22]
        STR      R5,[R9, #+0]
        ADDS     R9,R9,#+4
        MOV      R0,#+1
        STRB     R0,[SP, #+4]
        ADDS     R10,R10,#+1
        B        ??OSEventPendMulti_28
??OSEventPendMulti_26:
        ORRS     R11,R11,#0x4
??OSEventPendMulti_28:
        B        ??OSEventPendMulti_23
??OSEventPendMulti_18:
        LDR      R0,[SP, #+0]
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        STR      R0,[R9, #+0]
        MOV      R0,#+1
        STRB     R0,[R4, #+0]
        MOVS     R0,R10
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        B        ??OSEventPendMulti_1
??OSEventPendMulti_23:
        ADDS     R7,R7,#+4
        LDR      R0,[R7, #+0]
        MOVS     R5,R0
        B        ??OSEventPendMulti_15
??OSEventPendMulti_16:
        LDRB     R0,[SP, #+4]
        CMP      R0,#+1
        BNE      ??OSEventPendMulti_29
        MOV      R0,#+0
        STR      R0,[R9, #+0]
        LDR      R0,[SP, #+0]
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        STRB     R0,[R4, #+0]
        MOVS     R0,R10
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        B        ??OSEventPendMulti_1
??OSEventPendMulti_29:
        LDR      R0,??DataTable20
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+52]
        ORRS     R1,R11,#0x80
        ORRS     R0,R1,R0
        LDR      R1,??DataTable20
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+52]
        MOV      R0,#+0
        LDR      R1,??DataTable20
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+53]
        LDR      R0,[SP, #+16]
        LDR      R1,??DataTable20
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+48]
        LDR      R0,[SP, #+12]
        BL       OS_EventTaskWaitMulti
        LDR      R0,[SP, #+0]
        BL       OS_CPU_SR_Restore
        BL       OS_Sched
        BL       OS_CPU_SR_Save
        STR      R0,[SP, #+0]
        LDR      R0,??DataTable20
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+53]
        CMP      R0,#+0
        BEQ      ??OSEventPendMulti_30
        CMP      R0,#+2
        BNE      ??OSEventPendMulti_31
??OSEventPendMulti_30:
        LDR      R0,??DataTable20
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+28]
        MOVS     R5,R0
        CMP      R5,#+0
        BEQ      ??OSEventPendMulti_32
        STR      R5,[R9, #+0]
        ADDS     R9,R9,#+4
        MOV      R0,#+0
        STR      R0,[R9, #+0]
        ADDS     R10,R10,#+1
        B        ??OSEventPendMulti_33
??OSEventPendMulti_32:
        MOV      R0,#+1
        LDR      R1,??DataTable20
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+53]
        LDR      R1,[SP, #+12]
        LDR      R0,??DataTable20
        LDR      R0,[R0, #+0]
        BL       OS_EventTaskRemoveMulti
??OSEventPendMulti_33:
        B        ??OSEventPendMulti_34
??OSEventPendMulti_31:
        LDR      R1,[SP, #+12]
        LDR      R0,??DataTable20
        LDR      R0,[R0, #+0]
        BL       OS_EventTaskRemoveMulti
??OSEventPendMulti_34:
        LDR      R0,??DataTable20
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+53]
        CMP      R0,#+0
        BEQ      ??OSEventPendMulti_35
        CMP      R0,#+2
        BEQ      ??OSEventPendMulti_36
        B        ??OSEventPendMulti_37
??OSEventPendMulti_35:
        LDRB     R0,[R5, #+0]
        CMP      R0,#+1
        BEQ      ??OSEventPendMulti_38
        BCC      ??OSEventPendMulti_39
        CMP      R0,#+3
        BEQ      ??OSEventPendMulti_40
        BCC      ??OSEventPendMulti_38
        B        ??OSEventPendMulti_39
??OSEventPendMulti_40:
        MOV      R0,#+0
        STR      R0,[R8, #+0]
        ADDS     R8,R8,#+4
        B        ??OSEventPendMulti_41
??OSEventPendMulti_38:
        LDR      R0,??DataTable20
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+36]
        STR      R0,[R8, #+0]
        ADDS     R8,R8,#+4
        B        ??OSEventPendMulti_41
??OSEventPendMulti_39:
        LDR      R0,[SP, #+0]
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        STR      R0,[R9, #+0]
        MOV      R0,#+1
        STRB     R0,[R4, #+0]
        MOVS     R0,R10
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        B        ??OSEventPendMulti_1
??OSEventPendMulti_41:
        MOV      R0,#+0
        STRB     R0,[R4, #+0]
        B        ??OSEventPendMulti_42
??OSEventPendMulti_36:
        MOV      R0,#+0
        STR      R0,[R8, #+0]
        ADDS     R8,R8,#+4
        MOV      R0,#+14
        STRB     R0,[R4, #+0]
        B        ??OSEventPendMulti_42
??OSEventPendMulti_37:
        MOV      R0,#+0
        STR      R0,[R8, #+0]
        ADDS     R8,R8,#+4
        MOV      R0,#+10
        STRB     R0,[R4, #+0]
??OSEventPendMulti_42:
        MOV      R0,#+0
        LDR      R1,??DataTable20
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+52]
        MOV      R0,#+0
        LDR      R1,??DataTable20
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+53]
        MOV      R0,#+0
        LDR      R1,??DataTable20
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+28]
        MOV      R0,#+0
        LDR      R1,??DataTable20
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+32]
        MOV      R0,#+0
        LDR      R1,??DataTable20
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+36]
        LDR      R0,[SP, #+0]
        BL       OS_CPU_SR_Restore
        MOVS     R0,R10
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
??OSEventPendMulti_1:
        ADD      SP,SP,#+20       ;; stack cleaning
        POP      {R4-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSInit:
        PUSH     {R12,LR}
        BL       OSInitHookBegin
        BL       OS_InitMisc
        BL       OS_InitRdyList
        BL       OS_InitTCBList
        BL       OS_InitEventList
        BL       OS_FlagInit
        BL       OS_MemInit
        BL       OS_QInit
        BL       OS_InitTaskIdle
        BL       OS_InitTaskStat
        BL       OSTmr_Init
        BL       OSInitHookEnd
        BL       OSDebugInit
        POP      {R0,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSIntEnter:
        LDR      R0,??DataTable21
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE      ??OSIntEnter_0
        LDR      R0,??DataTable14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+255
        BEQ      ??OSIntEnter_0
        LDR      R0,??DataTable14
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable14
        STRB     R0,[R1, #+0]
??OSIntEnter_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSIntExit:
        PUSH     {R4,LR}
        MOV      R4,#+0
        LDR      R0,??DataTable21
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE      ??OSIntExit_0
        BL       OS_CPU_SR_Save
        MOVS     R4,R0
        LDR      R0,??DataTable12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSIntExit_1
        LDR      R0,??DataTable12
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR      R1,??DataTable12
        STRB     R0,[R1, #+0]
??OSIntExit_1:
        LDR      R0,??DataTable12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??OSIntExit_2
        LDR      R0,??DataTable14_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??OSIntExit_2
        BL       OS_SchedNew
        LDR      R0,??DataTable23
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable22
        LDR      R0,[R0, +R1]
        LDR      R1,??DataTable22_1
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable23
        LDRB     R0,[R0, #+0]
        LDR      R1,??DataTable22_2
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BEQ      ??OSIntExit_2
        LDR      R0,??DataTable22_1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+60]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable22_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+60]
        LDR      R0,??DataTable23_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable23_1
        STR      R0,[R1, #+0]
        BL       OSIntCtxSw
??OSIntExit_2:
        MOVS     R0,R4
        BL       OS_CPU_SR_Restore
??OSIntExit_0:
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSSchedLock:
        PUSH     {R4,LR}
        MOV      R4,#+0
        LDR      R0,??DataTable21
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE      ??OSSchedLock_0
        BL       OS_CPU_SR_Save
        MOVS     R4,R0
        LDR      R0,??DataTable12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??OSSchedLock_1
        LDR      R0,??DataTable14_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+255
        BEQ      ??OSSchedLock_1
        LDR      R0,??DataTable14_1
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable14_1
        STRB     R0,[R1, #+0]
??OSSchedLock_1:
        MOVS     R0,R4
        BL       OS_CPU_SR_Restore
??OSSchedLock_0:
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSSchedUnlock:
        PUSH     {R4,LR}
        MOV      R4,#+0
        LDR      R0,??DataTable21
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE      ??OSSchedUnlock_0
        BL       OS_CPU_SR_Save
        MOVS     R4,R0
        LDR      R0,??DataTable14_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSSchedUnlock_1
        LDR      R0,??DataTable14_1
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR      R1,??DataTable14_1
        STRB     R0,[R1, #+0]
        LDR      R0,??DataTable14_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??OSSchedUnlock_2
        LDR      R0,??DataTable14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??OSSchedUnlock_3
        MOVS     R0,R4
        BL       OS_CPU_SR_Restore
        BL       OS_Sched
        B        ??OSSchedUnlock_0
??OSSchedUnlock_3:
        MOVS     R0,R4
        BL       OS_CPU_SR_Restore
        B        ??OSSchedUnlock_0
??OSSchedUnlock_2:
        MOVS     R0,R4
        BL       OS_CPU_SR_Restore
        B        ??OSSchedUnlock_0
??OSSchedUnlock_1:
        MOVS     R0,R4
        BL       OS_CPU_SR_Restore
??OSSchedUnlock_0:
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSStart:
        PUSH     {R12,LR}
        LDR      R0,??DataTable21
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??OSStart_0
        BL       OS_SchedNew
        LDR      R0,??DataTable23
        LDRB     R0,[R0, #+0]
        LDR      R1,??DataTable22_2
        STRB     R0,[R1, #+0]
        LDR      R0,??DataTable23
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable22
        LDR      R0,[R0, +R1]
        LDR      R1,??DataTable22_1
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable22_1
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable24
        STR      R0,[R1, #+0]
        BL       OSStartHighRdy
??OSStart_0:
        POP      {R0,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSStatInit:
        PUSH     {R4,LR}
        MOV      R4,#+0
        MOV      R0,#+2
        BL       OSTimeDly
        BL       OS_CPU_SR_Save
        MOVS     R4,R0
        MOV      R0,#+0
        LDR      R1,??DataTable23_2
        STR      R0,[R1, #+0]
        MOVS     R0,R4
        BL       OS_CPU_SR_Restore
        MOV      R0,#+100
        BL       OSTimeDly
        BL       OS_CPU_SR_Save
        MOVS     R4,R0
        LDR      R0,??DataTable23_2
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable23_3
        STR      R0,[R1, #+0]
        MOV      R0,#+1
        LDR      R1,??DataTable24_1
        STRB     R0,[R1, #+0]
        MOVS     R0,R4
        BL       OS_CPU_SR_Restore
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTimeTick:
        PUSH     {R4-R6,LR}
        MOV      R6,#+0
        BL       OSTimeTickHook
        BL       OS_CPU_SR_Save
        MOVS     R6,R0
        LDR      R0,??DataTable23_4
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable23_4
        STR      R0,[R1, #+0]
        MOVS     R0,R6
        BL       OS_CPU_SR_Restore
        LDR      R0,??DataTable21
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE      ??OSTimeTick_0
        LDR      R0,??DataTable24_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSTimeTick_1
        CMP      R0,#+2
        BEQ      ??OSTimeTick_2
        BCC      ??OSTimeTick_3
        B        ??OSTimeTick_4
??OSTimeTick_1:
        MOV      R0,#+1
        MOVS     R5,R0
        B        ??OSTimeTick_5
??OSTimeTick_3:
        MOV      R0,#+0
        MOVS     R5,R0
        B        ??OSTimeTick_5
??OSTimeTick_2:
        MOV      R0,#+1
        MOVS     R5,R0
        MOV      R0,#+1
        LDR      R1,??DataTable24_2
        STRB     R0,[R1, #+0]
        B        ??OSTimeTick_5
??OSTimeTick_4:
        MOV      R0,#+1
        MOVS     R5,R0
        MOV      R0,#+0
        LDR      R1,??DataTable24_2
        STRB     R0,[R1, #+0]
??OSTimeTick_5:
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??OSTimeTick_6
??OSTimeTick_7:
        LDR      R0,??DataTable24_3
        LDR      R0,[R0, #+0]
        MOVS     R4,R0
??OSTimeTick_8:
        LDRB     R0,[R4, #+54]
        CMP      R0,#+63
        BEQ      ??OSTimeTick_0
        BL       OS_CPU_SR_Save
        MOVS     R6,R0
        LDR      R0,[R4, #+48]
        CMP      R0,#+0
        BEQ      ??OSTimeTick_9
        LDR      R0,[R4, #+48]
        SUBS     R0,R0,#+1
        STR      R0,[R4, #+48]
        LDR      R0,[R4, #+48]
        CMP      R0,#+0
        BNE      ??OSTimeTick_9
        LDRB     R0,[R4, #+52]
        TST      R0,#0x37
        BEQ      ??OSTimeTick_10
        LDRB     R0,[R4, #+52]
        ANDS     R0,R0,#0xC8
        STRB     R0,[R4, #+52]
        MOV      R0,#+1
        STRB     R0,[R4, #+53]
        B        ??OSTimeTick_11
??OSTimeTick_10:
        MOV      R0,#+0
        STRB     R0,[R4, #+53]
??OSTimeTick_11:
        LDRB     R0,[R4, #+52]
        TST      R0,#0x8
        BNE      ??OSTimeTick_9
        LDR      R0,??DataTable24_5
        LDRB     R0,[R0, #+0]
        LDRB     R1,[R4, #+58]
        ORRS     R0,R1,R0
        LDR      R1,??DataTable24_5
        STRB     R0,[R1, #+0]
        LDRB     R0,[R4, #+56]
        LDR      R1,??DataTable24_6
        LDRB     R0,[R0, +R1]
        LDRB     R1,[R4, #+57]
        ORRS     R0,R1,R0
        LDRB     R1,[R4, #+56]
        LDR      R2,??DataTable24_6
        STRB     R0,[R1, +R2]
??OSTimeTick_9:
        LDR      R4,[R4, #+20]
        MOVS     R0,R6
        BL       OS_CPU_SR_Restore
        B        ??OSTimeTick_8
??OSTimeTick_0:
??OSTimeTick_6:
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSVersion:
        MOV      R0,#+33
        ORR      R0,R0,#0x100
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OS_Dummy:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OS_EventTaskRdy:
        PUSH     {R3-R11,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDRB     R0,[R4, #+10]
        LDR      R1,??DataTable24_7
        LDRB     R0,[R0, +R1]
        MOVS     R9,R0
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADDS     R0,R0,R4
        LDRB     R0,[R0, #+11]
        LDR      R1,??DataTable24_7
        LDRB     R0,[R0, +R1]
        MOVS     R10,R0
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        MOVS     R1,R10
        ANDS     R1,R1,#0xFF      ;; Zero extend
        ADDS     R0,R1,R0, LSL #+3
        MOVS     R11,R0
        MOVS     R0,R11
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable22
        LDR      R0,[R0, +R1]
        MOVS     R8,R0
        MOV      R0,#+0
        STR      R0,[R8, #+48]
        STR      R5,[R8, #+36]
        LDRB     R0,[R8, #+52]
        BICS     R0,R0,R6
        STRB     R0,[R8, #+52]
        STRB     R7,[R8, #+53]
        LDRB     R0,[R8, #+52]
        TST      R0,#0x8
        BNE      ??OS_EventTaskRdy_0
        LDR      R0,??DataTable24_5
        LDRB     R0,[R0, #+0]
        LDRB     R1,[R8, #+58]
        ORRS     R0,R1,R0
        LDR      R1,??DataTable24_5
        STRB     R0,[R1, #+0]
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable24_6
        LDRB     R0,[R0, +R1]
        LDRB     R1,[R8, #+57]
        ORRS     R0,R1,R0
        MOVS     R1,R9
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R2,??DataTable24_6
        STRB     R0,[R1, +R2]
??OS_EventTaskRdy_0:
        MOVS     R1,R4
        MOVS     R0,R8
        BL       OS_EventTaskRemove
        LDR      R0,[R8, #+32]
        CMP      R0,#+0
        BEQ      ??OS_EventTaskRdy_1
        LDR      R1,[R8, #+32]
        MOVS     R0,R8
        BL       OS_EventTaskRemoveMulti
        STR      R4,[R8, #+28]
??OS_EventTaskRdy_1:
        MOVS     R0,R11
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R1,R4-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OS_EventTaskWait:
        LDR      R2,??DataTable20
        LDR      R2,[R2, #+0]
        STR      R0,[R2, #+28]
        LDR      R2,??DataTable20
        LDR      R2,[R2, #+0]
        LDRB     R2,[R2, #+56]
        ADDS     R2,R2,R0
        LDRB     R2,[R2, #+11]
        LDR      R3,??DataTable20
        LDR      R3,[R3, #+0]
        LDRB     R3,[R3, #+57]
        ORRS     R2,R3,R2
        LDR      R3,??DataTable20
        LDR      R3,[R3, #+0]
        LDRB     R3,[R3, #+56]
        ADDS     R3,R3,R0
        STRB     R2,[R3, #+11]
        LDRB     R2,[R0, #+10]
        LDR      R3,??DataTable20
        LDR      R3,[R3, #+0]
        LDRB     R3,[R3, #+58]
        ORRS     R2,R3,R2
        STRB     R2,[R0, #+10]
        LDR      R2,??DataTable20
        LDR      R2,[R2, #+0]
        LDRB     R2,[R2, #+56]
        MOVS     R1,R2
        MOVS     R2,R1
        ANDS     R2,R2,#0xFF      ;; Zero extend
        LDR      R3,??DataTable24_6
        LDRB     R2,[R2, +R3]
        LDR      R3,??DataTable20
        LDR      R3,[R3, #+0]
        LDRB     R3,[R3, #+57]
        BICS     R2,R2,R3
        MOVS     R3,R1
        ANDS     R3,R3,#0xFF      ;; Zero extend
        LDR      R12,??DataTable24_6
        STRB     R2,[R3, +R12]
        MOVS     R2,R1
        ANDS     R2,R2,#0xFF      ;; Zero extend
        LDR      R3,??DataTable24_6
        LDRB     R2,[R2, +R3]
        CMP      R2,#+0
        BNE      ??OS_EventTaskWait_0
        LDR      R2,??DataTable24_5
        LDRB     R2,[R2, #+0]
        LDR      R3,??DataTable20
        LDR      R3,[R3, #+0]
        LDRB     R3,[R3, #+58]
        BICS     R2,R2,R3
        LDR      R3,??DataTable24_5
        STRB     R2,[R3, #+0]
??OS_EventTaskWait_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OS_EventTaskWaitMulti:
        PUSH     {R4,LR}
        MOV      R12,#+0
        LDR      LR,??DataTable20
        LDR      LR,[LR, #+0]
        STR      R12,[LR, #+28]
        LDR      R12,??DataTable20
        LDR      R12,[R12, #+0]
        STR      R0,[R12, #+32]
        MOVS     R1,R0
        LDR      R12,[R1, #+0]
        MOVS     R2,R12
??OS_EventTaskWaitMulti_0:
        CMP      R2,#+0
        BEQ      ??OS_EventTaskWaitMulti_1
        LDR      R12,??DataTable20
        LDR      R12,[R12, #+0]
        LDRB     R12,[R12, #+56]
        ADDS     R12,R12,R2
        LDRB     R12,[R12, #+11]
        LDR      LR,??DataTable20
        LDR      LR,[LR, #+0]
        LDRB     LR,[LR, #+57]
        ORRS     R12,LR,R12
        LDR      LR,??DataTable20
        LDR      LR,[LR, #+0]
        LDRB     LR,[LR, #+56]
        ADDS     LR,LR,R2
        STRB     R12,[LR, #+11]
        LDRB     R12,[R2, #+10]
        LDR      LR,??DataTable20
        LDR      LR,[LR, #+0]
        LDRB     LR,[LR, #+58]
        ORRS     R12,LR,R12
        STRB     R12,[R2, #+10]
        ADDS     R1,R1,#+4
        LDR      R12,[R1, #+0]
        MOVS     R2,R12
        B        ??OS_EventTaskWaitMulti_0
??OS_EventTaskWaitMulti_1:
        LDR      R12,??DataTable20
        LDR      R12,[R12, #+0]
        LDRB     R12,[R12, #+56]
        MOVS     R3,R12
        MOVS     R12,R3
        ANDS     R12,R12,#0xFF    ;; Zero extend
        LDR      LR,??DataTable24_6
        LDRB     R12,[R12, +LR]
        LDR      LR,??DataTable20
        LDR      LR,[LR, #+0]
        LDRB     LR,[LR, #+57]
        BICS     R12,R12,LR
        MOVS     LR,R3
        ANDS     LR,LR,#0xFF      ;; Zero extend
        LDR      R4,??DataTable24_6
        STRB     R12,[LR, +R4]
        MOVS     R12,R3
        ANDS     R12,R12,#0xFF    ;; Zero extend
        LDR      LR,??DataTable24_6
        LDRB     R12,[R12, +LR]
        CMP      R12,#+0
        BNE      ??OS_EventTaskWaitMulti_2
        LDR      R12,??DataTable24_5
        LDRB     R12,[R12, #+0]
        LDR      LR,??DataTable20
        LDR      LR,[LR, #+0]
        LDRB     LR,[LR, #+58]
        BICS     R12,R12,LR
        LDR      LR,??DataTable24_5
        STRB     R12,[LR, #+0]
??OS_EventTaskWaitMulti_2:
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     OSIntNesting

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OS_EventTaskRemove:
        LDRB     R3,[R0, #+56]
        MOVS     R2,R3
        MOVS     R3,R2
        ANDS     R3,R3,#0xFF      ;; Zero extend
        ADDS     R3,R3,R1
        LDRB     R3,[R3, #+11]
        LDRB     R12,[R0, #+57]
        BICS     R3,R3,R12
        MOVS     R12,R2
        ANDS     R12,R12,#0xFF    ;; Zero extend
        ADDS     R12,R12,R1
        STRB     R3,[R12, #+11]
        MOVS     R3,R2
        ANDS     R3,R3,#0xFF      ;; Zero extend
        ADDS     R3,R3,R1
        LDRB     R3,[R3, #+11]
        CMP      R3,#+0
        BNE      ??OS_EventTaskRemove_0
        LDRB     R3,[R1, #+10]
        LDRB     R12,[R0, #+58]
        BICS     R3,R3,R12
        STRB     R3,[R1, #+10]
??OS_EventTaskRemove_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OS_EventTaskRemoveMulti:
        PUSH     {R4-R6,LR}
        LDRB     R5,[R0, #+56]
        MOVS     R12,R5
        LDRB     R5,[R0, #+58]
        MOVS     LR,R5
        LDRB     R5,[R0, #+57]
        MOVS     R4,R5
        MOVS     R2,R1
        LDR      R5,[R2, #+0]
        MOVS     R3,R5
??OS_EventTaskRemoveMulti_0:
        CMP      R3,#+0
        BEQ      ??OS_EventTaskRemoveMulti_1
        MOVS     R5,R12
        ANDS     R5,R5,#0xFF      ;; Zero extend
        ADDS     R5,R5,R3
        LDRB     R5,[R5, #+11]
        BICS     R5,R5,R4
        MOVS     R6,R12
        ANDS     R6,R6,#0xFF      ;; Zero extend
        ADDS     R6,R6,R3
        STRB     R5,[R6, #+11]
        MOVS     R5,R12
        ANDS     R5,R5,#0xFF      ;; Zero extend
        ADDS     R5,R5,R3
        LDRB     R5,[R5, #+11]
        CMP      R5,#+0
        BNE      ??OS_EventTaskRemoveMulti_2
        LDRB     R5,[R3, #+10]
        BICS     R5,R5,LR
        STRB     R5,[R3, #+10]
??OS_EventTaskRemoveMulti_2:
        ADDS     R2,R2,#+4
        LDR      R5,[R2, #+0]
        MOVS     R3,R5
        B        ??OS_EventTaskRemoveMulti_0
??OS_EventTaskRemoveMulti_1:
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OS_EventWaitListInit:
        MOV      R3,#+0
        STRB     R3,[R0, #+10]
        ADDS     R3,R0,#+11
        MOVS     R1,R3
        MOV      R3,#+0
        MOVS     R2,R3
??OS_EventWaitListInit_0:
        MOVS     R3,R2
        ANDS     R3,R3,#0xFF      ;; Zero extend
        CMP      R3,#+8
        BCS      ??OS_EventWaitListInit_1
        MOV      R3,#+0
        STRB     R3,[R1, #+0]
        ADDS     R1,R1,#+1
        ADDS     R2,R2,#+1
        B        ??OS_EventWaitListInit_0
??OS_EventWaitListInit_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OS_InitEventList:
        PUSH     {R4-R6,LR}
        MOV      R1,#+600
        LDR      R0,??DataTable24_8
        BL       OS_MemClr
        LDR      R0,??DataTable24_8
        MOVS     R5,R0
        LDR      R0,??DataTable24_9
        MOVS     R6,R0
        MOV      R0,#+0
        MOVS     R4,R0
??OS_InitEventList_0:
        MOVS     R0,R4
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+24
        BCS      ??OS_InitEventList_1
        MOV      R0,#+0
        STRB     R0,[R5, #+0]
        STR      R6,[R5, #+4]
        ADR      R0,??DataTable18  ;; "\?"
        STR      R0,[R5, #+20]
        ADDS     R5,R5,#+24
        ADDS     R6,R6,#+24
        ADDS     R4,R4,#+1
        B        ??OS_InitEventList_0
??OS_InitEventList_1:
        MOV      R0,#+0
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        STR      R0,[R5, #+4]
        ADR      R0,??DataTable18  ;; "\?"
        STR      R0,[R5, #+20]
        LDR      R0,??DataTable24_8
        LDR      R1,??DataTable24_10
        STR      R0,[R1, #+0]
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OS_InitMisc:
        MOV      R0,#+0
        LDR      R1,??DataTable23_4
        STR      R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable14
        STRB     R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable14_1
        STRB     R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable24_11
        STRB     R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable21
        STRB     R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable23_1
        STR      R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable23_2
        STR      R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable24_12
        STR      R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable23_3
        STR      R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable24_1
        STRB     R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14:
        DC32     OSIntNesting

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_1:
        DC32     OSLockNesting

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OS_InitRdyList:
        MOV      R2,#+0
        LDR      R3,??DataTable24_5
        STRB     R2,[R3, #+0]
        LDR      R2,??DataTable24_6
        MOVS     R0,R2
        MOV      R2,#+0
        MOVS     R1,R2
??OS_InitRdyList_0:
        MOVS     R2,R1
        ANDS     R2,R2,#0xFF      ;; Zero extend
        CMP      R2,#+8
        BCS      ??OS_InitRdyList_1
        MOV      R2,#+0
        STRB     R2,[R0, #+0]
        ADDS     R0,R0,#+1
        ADDS     R1,R1,#+1
        B        ??OS_InitRdyList_0
??OS_InitRdyList_1:
        MOV      R2,#+0
        LDR      R3,??DataTable22_2
        STRB     R2,[R3, #+0]
        MOV      R2,#+0
        LDR      R3,??DataTable23
        STRB     R2,[R3, #+0]
        MOV      R2,#+0
        LDR      R3,??DataTable22_1
        STR      R2,[R3, #+0]
        MOV      R2,#+0
        LDR      R3,??DataTable24
        STR      R2,[R3, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OS_InitTaskIdle:
        PUSH     {R4,LR}
        SUB      SP,SP,#+24
        MOV      R0,#+3
        STR      R0,[SP, #+16]
        MOV      R0,#+0
        STR      R0,[SP, #+12]
        MOV      R0,#+128
        STR      R0,[SP, #+8]
        LDR      R0,??DataTable24_13
        STR      R0,[SP, #+4]
        MOV      R0,#+255
        ORR      R0,R0,#0xFF00
        STR      R0,[SP, #+0]
        MOV      R3,#+63
        LDR      R2,??DataTable24_14
        MOV      R1,#+0
        LDR      R0,??DataTable24_15
        BL       OSTaskCreateExt
        MOVS     R4,R0
        ADD      R2,SP,#+20
        LDR      R1,??DataTable24_16
        MOV      R0,#+63
        BL       OSTaskNameSet
        ADD      SP,SP,#+24       ;; stack cleaning
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OS_InitTaskStat:
        PUSH     {R4,LR}
        SUB      SP,SP,#+24
        MOV      R0,#+3
        STR      R0,[SP, #+16]
        MOV      R0,#+0
        STR      R0,[SP, #+12]
        MOV      R0,#+128
        STR      R0,[SP, #+8]
        LDR      R0,??DataTable24_17
        STR      R0,[SP, #+4]
        MOV      R0,#+254
        ORR      R0,R0,#0xFF00
        STR      R0,[SP, #+0]
        MOV      R3,#+62
        LDR      R2,??DataTable24_18
        MOV      R1,#+0
        LDR      R0,??DataTable24_19
        BL       OSTaskCreateExt
        MOVS     R4,R0
        ADD      R2,SP,#+20
        LDR      R1,??DataTable24_20
        MOV      R0,#+62
        BL       OSTaskNameSet
        ADD      SP,SP,#+24       ;; stack cleaning
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OS_InitTCBList:
        PUSH     {R4-R6,LR}
        MOV      R1,#+216
        ORR      R1,R1,#0x500
        LDR      R0,??DataTable24_21
        BL       OS_MemClr
        MOV      R1,#+256
        LDR      R0,??DataTable22
        BL       OS_MemClr
        LDR      R0,??DataTable24_21
        MOVS     R4,R0
        LDR      R0,??DataTable24_22
        MOVS     R5,R0
        MOV      R0,#+0
        MOVS     R6,R0
??OS_InitTCBList_0:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+16
        BCS      ??OS_InitTCBList_1
        STR      R5,[R4, #+20]
        ADR      R0,??DataTable18  ;; "\?"
        STR      R0,[R4, #+80]
        ADDS     R4,R4,#+88
        ADDS     R5,R5,#+88
        ADDS     R6,R6,#+1
        B        ??OS_InitTCBList_0
??OS_InitTCBList_1:
        MOV      R0,#+0
        STR      R0,[R4, #+20]
        ADR      R0,??DataTable18  ;; "\?"
        STR      R0,[R4, #+80]
        MOV      R0,#+0
        LDR      R1,??DataTable24_3
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable24_21
        LDR      R1,??DataTable24_23
        STR      R0,[R1, #+0]
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18:
        DC8      "\?",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OS_MemClr:
??OS_MemClr_0:
        MOVS     R2,R1
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        CMP      R2,#+0
        BEQ      ??OS_MemClr_1
        MOV      R2,#+0
        STRB     R2,[R0, #+0]
        ADDS     R0,R0,#+1
        SUBS     R1,R1,#+1
        B        ??OS_MemClr_0
??OS_MemClr_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OS_MemCopy:
??OS_MemCopy_0:
        MOVS     R3,R2
        LSL      R3,R3,#+16
        LSRS     R3,R3,#+16
        CMP      R3,#+0
        BEQ      ??OS_MemCopy_1
        LDRB     R3,[R1, #+0]
        STRB     R3,[R0, #+0]
        ADDS     R1,R1,#+1
        ADDS     R0,R0,#+1
        SUBS     R2,R2,#+1
        B        ??OS_MemCopy_0
??OS_MemCopy_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OS_Sched:
        PUSH     {R4,LR}
        MOV      R4,#+0
        BL       OS_CPU_SR_Save
        MOVS     R4,R0
        LDR      R0,??DataTable24_24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??OS_Sched_0
        LDR      R0,??DataTable24_25
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??OS_Sched_0
        BL       OS_SchedNew
        LDR      R0,??DataTable23
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable22
        LDR      R0,[R0, +R1]
        LDR      R1,??DataTable22_1
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable23
        LDRB     R0,[R0, #+0]
        LDR      R1,??DataTable22_2
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BEQ      ??OS_Sched_0
        LDR      R0,??DataTable22_1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+60]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable22_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+60]
        LDR      R0,??DataTable24_26
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable24_26
        STR      R0,[R1, #+0]
        BL       OSCtxSw
??OS_Sched_0:
        MOVS     R0,R4
        BL       OS_CPU_SR_Restore
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OS_SchedNew:
        LDR      R1,??DataTable24_5
        LDRB     R1,[R1, #+0]
        LDR      R2,??DataTable24_7
        LDRB     R1,[R1, +R2]
        MOVS     R0,R1
        MOVS     R1,R0
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOVS     R2,R0
        ANDS     R2,R2,#0xFF      ;; Zero extend
        LDR      R3,??DataTable24_6
        LDRB     R2,[R2, +R3]
        LDR      R3,??DataTable24_7
        LDRB     R2,[R2, +R3]
        ADDS     R1,R2,R1, LSL #+3
        LDR      R2,??DataTable23
        STRB     R1,[R2, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20:
        DC32     OSTCBCur

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OS_StrLen:
        MOVS     R1,R0
        MOV      R2,#+0
        MOVS     R0,R2
??OS_StrLen_0:
        LDRB     R2,[R1, #+0]
        CMP      R2,#+0
        BEQ      ??OS_StrLen_1
        ADDS     R1,R1,#+1
        ADDS     R0,R0,#+1
        B        ??OS_StrLen_0
??OS_StrLen_1:
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OS_TaskIdle:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOV      R5,#+0
??OS_TaskIdle_0:
        BL       OS_CPU_SR_Save
        MOVS     R5,R0
        LDR      R0,??DataTable23_2
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable23_2
        STR      R0,[R1, #+0]
        MOVS     R0,R5
        BL       OS_CPU_SR_Restore
        BL       OSTaskIdleHook
        B        ??OS_TaskIdle_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21:
        DC32     OSRunning

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OS_TaskStat:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOV      R5,#+0
??OS_TaskStat_0:
        LDR      R0,??DataTable24_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??OS_TaskStat_1
        MOV      R0,#+200
        BL       OSTimeDly
        B        ??OS_TaskStat_0
??OS_TaskStat_1:
        LDR      R0,??DataTable23_3
        LDR      R0,[R0, #+0]
        MOV      R1,#+100
        BL       __aeabi_uidiv
        LDR      R1,??DataTable23_3
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable23_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??OS_TaskStat_2
        MOV      R0,#+0
        LDR      R1,??DataTable24_27
        STRB     R0,[R1, #+0]
        MOV      R0,#+255
        BL       OSTaskSuspend
??OS_TaskStat_2:
        BL       OS_CPU_SR_Save
        MOVS     R5,R0
        LDR      R0,??DataTable23_2
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable24_12
        STR      R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable23_2
        STR      R0,[R1, #+0]
        MOVS     R0,R5
        BL       OS_CPU_SR_Restore
        LDR      R0,??DataTable24_12
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable23_3
        LDR      R1,[R1, #+0]
        BL       __aeabi_uidiv
        RSBS     R0,R0,#+100
        LDR      R1,??DataTable24_27
        STRB     R0,[R1, #+0]
        BL       OSTaskStatHook
        BL       OS_TaskStatStkChk
        MOV      R0,#+100
        BL       OSTimeDly
        B        ??OS_TaskStat_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22:
        DC32     OSTCBPrioTbl

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_1:
        DC32     OSTCBHighRdy

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_2:
        DC32     OSPrioCur

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OS_TaskStatStkChk:
        PUSH     {R2-R6,LR}
        MOV      R0,#+0
        MOVS     R6,R0
??OS_TaskStatStkChk_0:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+64
        BCS      ??OS_TaskStatStkChk_1
        MOVS     R1,SP
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       OSTaskStkChk
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??OS_TaskStatStkChk_2
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable24_28
        LDR      R0,[R0, +R1]
        MOVS     R4,R0
        CMP      R4,#+0
        BEQ      ??OS_TaskStatStkChk_2
        CMP      R4,#+1
        BEQ      ??OS_TaskStatStkChk_2
        LDR      R0,[R4, #+12]
        LSLS     R0,R0,#+2
        LDR      R1,[R4, #+8]
        ADDS     R0,R0,R1
        STR      R0,[R4, #+72]
        LDR      R0,[SP, #+4]
        STR      R0,[R4, #+76]
??OS_TaskStatStkChk_2:
        ADDS     R6,R6,#+1
        B        ??OS_TaskStatStkChk_0
??OS_TaskStatStkChk_1:
        POP      {R0,R1,R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23:
        DC32     OSPrioHighRdy

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_1:
        DC32     OSCtxSwCtr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_2:
        DC32     OSIdleCtr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_3:
        DC32     OSIdleCtrMax

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_4:
        DC32     OSTime

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OS_TCBInit:
        PUSH     {R0-R2,R4-R11,LR}
        MOVS     R4,R0
        MOVS     R5,R3
        LDR      R6,[SP, #+48]
        LDR      R7,[SP, #+52]
        LDRH     R8,[SP, #+56]
        MOV      R10,#+0
        BL       OS_CPU_SR_Save
        MOVS     R10,R0
        LDR      R0,??DataTable24_23
        LDR      R0,[R0, #+0]
        MOVS     R9,R0
        CMP      R9,#+0
        BEQ      ??OS_TCBInit_0
        LDR      R0,[R9, #+20]
        LDR      R1,??DataTable24_23
        STR      R0,[R1, #+0]
        MOVS     R0,R10
        BL       OS_CPU_SR_Restore
        LDR      R0,[SP, #+4]
        STR      R0,[R9, #+0]
        STRB     R4,[R9, #+54]
        MOV      R0,#+0
        STRB     R0,[R9, #+52]
        MOV      R0,#+0
        STRB     R0,[R9, #+53]
        MOV      R0,#+0
        STR      R0,[R9, #+48]
        STR      R7,[R9, #+4]
        STR      R6,[R9, #+12]
        LDR      R0,[SP, #+8]
        STR      R0,[R9, #+8]
        STRH     R8,[R9, #+16]
        STRH     R5,[R9, #+18]
        MOV      R0,#+0
        STRB     R0,[R9, #+59]
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+3
        STRB     R0,[R9, #+56]
        ANDS     R0,R4,#0x7
        STRB     R0,[R9, #+55]
        MOV      R0,#+1
        LDRB     R1,[R9, #+56]
        LSLS     R0,R0,R1
        STRB     R0,[R9, #+58]
        MOV      R0,#+1
        LDRB     R1,[R9, #+55]
        LSLS     R0,R0,R1
        STRB     R0,[R9, #+57]
        MOV      R0,#+0
        STR      R0,[R9, #+28]
        MOV      R0,#+0
        STR      R0,[R9, #+32]
        MOV      R0,#+0
        STR      R0,[R9, #+40]
        MOV      R0,#+0
        STR      R0,[R9, #+36]
        MOV      R0,#+0
        STR      R0,[R9, #+60]
        MOV      R0,#+0
        STR      R0,[R9, #+68]
        MOV      R0,#+0
        STR      R0,[R9, #+64]
        MOV      R0,#+0
        STR      R0,[R9, #+72]
        MOV      R0,#+0
        STR      R0,[R9, #+76]
        ADR      R0,??DataTable24_4  ;; "\?"
        STR      R0,[R9, #+80]
        MOV      R0,#+0
        MOVS     R11,R0
??OS_TCBInit_1:
        MOVS     R0,R11
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??OS_TCBInit_2
        MOV      R0,#+0
        MOVS     R1,R11
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        ADDS     R1,R1,R9
        STR      R0,[R1, #+84]
        ADDS     R11,R11,#+1
        B        ??OS_TCBInit_1
??OS_TCBInit_2:
        MOVS     R0,R9
        BL       OSTCBInitHook
        MOVS     R0,R9
        BL       OSTaskCreateHook
        BL       OS_CPU_SR_Save
        MOVS     R10,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable24_28
        STR      R9,[R0, +R1]
        LDR      R0,??DataTable24_3
        LDR      R0,[R0, #+0]
        STR      R0,[R9, #+20]
        MOV      R0,#+0
        STR      R0,[R9, #+24]
        LDR      R0,??DataTable24_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OS_TCBInit_3
        LDR      R0,??DataTable24_3
        LDR      R0,[R0, #+0]
        STR      R9,[R0, #+24]
??OS_TCBInit_3:
        LDR      R0,??DataTable24_3
        STR      R9,[R0, #+0]
        LDR      R0,??DataTable24_5
        LDRB     R0,[R0, #+0]
        LDRB     R1,[R9, #+58]
        ORRS     R0,R1,R0
        LDR      R1,??DataTable24_5
        STRB     R0,[R1, #+0]
        LDRB     R0,[R9, #+56]
        LDR      R1,??DataTable24_6
        LDRB     R0,[R0, +R1]
        LDRB     R1,[R9, #+57]
        ORRS     R0,R1,R0
        LDRB     R1,[R9, #+56]
        LDR      R2,??DataTable24_6
        STRB     R0,[R1, +R2]
        LDR      R0,??DataTable24_11
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable24_11
        STRB     R0,[R1, #+0]
        MOVS     R0,R10
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
        B        ??OS_TCBInit_4
??OS_TCBInit_0:
        MOVS     R0,R10
        BL       OS_CPU_SR_Restore
        MOV      R0,#+66
??OS_TCBInit_4:
        POP      {R1-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24:
        DC32     OSTCBCur

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_1:
        DC32     OSStatRdy

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_2:
        DC32     OSTickStepState

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_3:
        DC32     OSTCBList

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_4:
        DC8      "\?",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_5:
        DC32     OSRdyGrp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_6:
        DC32     OSRdyTbl

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_7:
        DC32     OSUnMapTbl

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_8:
        DC32     OSEventTbl

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_9:
        DC32     OSEventTbl+0x18

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_10:
        DC32     OSEventFreeList

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_11:
        DC32     OSTaskCtr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_12:
        DC32     OSIdleCtrRun

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_13:
        DC32     OSTaskIdleStk

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_14:
        DC32     OSTaskIdleStk+0x1FC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_15:
        DC32     OS_TaskIdle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_16:
        DC32     `?<Constant "uC/OS-II Idle">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_17:
        DC32     OSTaskStatStk

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_18:
        DC32     OSTaskStatStk+0x1FC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_19:
        DC32     OS_TaskStat

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_20:
        DC32     `?<Constant "uC/OS-II Stat">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_21:
        DC32     OSTCBTbl

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_22:
        DC32     OSTCBTbl+0x58

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_23:
        DC32     OSTCBFreeList

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_24:
        DC32     OSIntNesting

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_25:
        DC32     OSLockNesting

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_26:
        DC32     OSCtxSwCtr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_27:
        DC32     OSCPUUsage

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_28:
        DC32     OSTCBPrioTbl

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 4 906 bytes in section .bss
//   290 bytes in section .rodata
// 6 180 bytes in section .text
// 
// 6 180 bytes of CODE  memory
//   290 bytes of CONST memory
// 4 906 bytes of DATA  memory
//
//Errors: none
//Warnings: none
