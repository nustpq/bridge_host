///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       21/Jun/2016  16:45:22
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        F:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\uC-Probe\Target\Plugins\uCOS-II\os_probe.c
//    Command line =  
//        "F:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\uC-Probe\Target\Plugins\uCOS-II\os_probe.c" -lcN
//        "F:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\" -lb
//        "F:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\" -o
//        "F:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\Obj\"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=ARM7TDMI -e --fpu=None --dlib_config "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Full.h" -I "F:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\" -I "F:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\..\uC-CPU\ARM\IAR\" -I "F:\SVN Dir\PQ\iSAM
//        Test Bench\Bridge_Host_OS\APP\..\BSP\" -I "F:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\..\Driver\" -I "F:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\..\Noah\" -I "F:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\..\Shell\" -I "F:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\..\uCOS-II\Source\" -I "F:\SVN Dir\PQ\iSAM
//        Test Bench\Bridge_Host_OS\APP\..\uC-CPU\" -I "F:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\..\uC-LIB\" -I "F:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\..\uC-CPU\ARM\IAR\" -I "F:\SVN Dir\PQ\iSAM
//        Test Bench\Bridge_Host_OS\APP\..\uCOS-II\Ports\ARM\Generic\IAR\" -I
//        "F:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\..\uC-Probe\Target\Communication\Generic\RS-232\Source\"
//        -I "F:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\..\uC-Probe\Target\Communication\Generic\RS-232\Ports\Atmel\AT91SAM7X\"
//        -I "F:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\..\uC-Probe\Target\Communication\Generic\Source\"
//        -I "F:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\..\uC-Probe\Target\Plugins\uCOS-II\" -I
//        "F:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\..\uC-Probe\Target\Demos\Intro\Source\"
//        --interwork --cpu_mode arm -On --use_c++_inline
//    List file    =  
//        F:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\FLASH\List\os_probe.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN OSProbe_TmrInit
        EXTERN OSProbe_TmrRd
        EXTERN OSTCBCur
        EXTERN OSTCBHighRdy
        EXTERN OSTCBTbl
        EXTERN OSTaskCreateExt
        EXTERN OSTaskNameSet
        EXTERN OSTimeDlyHMSM
        EXTERN OS_CPU_SR_Restore
        EXTERN OS_CPU_SR_Save
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_ui2f

        PUBLIC OSProbe_CallbackFnct
        PUBLIC OSProbe_CyclesCtr
        PUBLIC OSProbe_Delay
        PUBLIC OSProbe_Init
        PUBLIC OSProbe_SetCallback
        PUBLIC OSProbe_SetDelay
        PUBLIC OSProbe_TaskCPUUsage
        PUBLIC OSProbe_TaskCreateHook
        PUBLIC OSProbe_TaskStkUsage
        PUBLIC OSProbe_TaskSwHook
        PUBLIC OSProbe_TickHook
        PUBLIC OSProbe_TimeGetCycles
        PUBLIC OSProbe_TmrCntsPrev


        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute void (*OSProbe_CallbackFnct)(void)
OSProbe_CallbackFnct:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// __absolute INT16U OSProbe_Delay
OSProbe_Delay:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute float volatile OSProbe_TaskCPUUsage[17U]
OSProbe_TaskCPUUsage:
        DS8 68

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute float volatile OSProbe_TaskStkUsage[17U]
OSProbe_TaskStkUsage:
        DS8 68

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute INT32U OSProbe_CyclesCtr
OSProbe_CyclesCtr:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// __absolute INT16U OSProbe_TmrCntsPrev
OSProbe_TmrCntsPrev:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
OSProbe_TaskStk:
        DS8 2048

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSProbe_Init:
        PUSH     {R12,LR}
        MOV      R0,#+100
        BL       OSProbe_SetDelay
        MOV      R0,#+0
        BL       OSProbe_SetCallback
        BL       OSProbe_InitOS
        BL       OSProbe_TmrInit
        MOV      R0,#+0
        LDR      R1,??DataTable6
        STR      R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable6_1
        STRH     R0,[R1, #+0]
        POP      {R0,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSProbe_SetCallback:
        LDR      R1,??DataTable6_2
        STR      R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSProbe_SetDelay:
        LDR      R1,??DataTable6_3
        STRH     R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSProbe_TimeGetCycles:
        PUSH     {R3-R7,LR}
        MOV      R7,#+0
        BL       OS_CPU_SR_Save
        MOVS     R7,R0
        BL       OSProbe_TmrRd
        MOVS     R5,R0
        LDR      R0,??DataTable6_1
        LDRH     R0,[R0, #+0]
        SUBS     R0,R5,R0
        MOVS     R6,R0
        LDR      R0,??DataTable6_1
        STRH     R5,[R0, #+0]
        LDR      R0,??DataTable6
        LDR      R0,[R0, #+0]
        MOVS     R1,R6
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        ADDS     R0,R1,R0
        LDR      R1,??DataTable6
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable6
        LDR      R0,[R0, #+0]
        MOVS     R4,R0
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOVS     R0,R4
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSProbe_TaskCreateHook:
        PUSH     {R4,LR}
        MOVS     R4,R0
        BL       OSProbe_TimeGetCycles
        STR      R0,[R4, #+68]
        MOV      R0,#+0
        STR      R0,[R4, #+64]
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSProbe_TaskSwHook:
        PUSH     {R4,LR}
        BL       OSProbe_TimeGetCycles
        MOVS     R4,R0
        LDR      R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+64]
        ADDS     R0,R4,R0
        LDR      R1,??DataTable6_4
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+68]
        SUBS     R0,R0,R1
        LDR      R1,??DataTable6_4
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+64]
        LDR      R0,??DataTable6_5
        LDR      R0,[R0, #+0]
        STR      R4,[R0, #+68]
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSProbe_TickHook:
        PUSH     {R12,LR}
        BL       OSProbe_TimeGetCycles
        POP      {R0,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSProbe_InitOS:
        PUSH     {LR}
        SUB      SP,SP,#+28
        MOV      R0,#+3
        STR      R0,[SP, #+16]
        MOV      R0,#+0
        STR      R0,[SP, #+12]
        MOV      R0,#+512
        STR      R0,[SP, #+8]
        LDR      R0,??DataTable6_6
        STR      R0,[SP, #+4]
        MOV      R0,#+40
        STR      R0,[SP, #+0]
        MOV      R3,#+40
        LDR      R2,??DataTable6_7
        MOV      R1,#+0
        ADR      R0,OSProbe_Task
        BL       OSTaskCreateExt
        STRB     R0,[SP, #+20]
        ADD      R2,SP,#+20
        LDR      R1,??DataTable6_8
        MOV      R0,#+40
        BL       OSTaskNameSet
        ADD      R0,SP,#+20
        ADD      SP,SP,#+28       ;; stack cleaning
        POP      {LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSProbe_Task:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOV      R0,#+0
        MOVS     R8,R0
??OSProbe_Task_0:
        MOVS     R0,R8
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+15
        BCS      ??OSProbe_Task_1
        MOV      R0,#+0
        MOVS     R1,R8
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable6_9
        STR      R0,[R1, +R2]
        MOV      R0,#+0
        MOVS     R1,R8
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable6_10
        STR      R0,[R1, +R2]
        MOV      R0,#+0
        MOVS     R1,R8
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable6_11
        STR      R0,[R1, +R2]
        ADDS     R8,R8,#+1
        B        ??OSProbe_Task_0
??OSProbe_Task_1:
        LDR      R0,??DataTable6_3
        LDRH     R3,[R0, #+0]
        MOV      R2,#+0
        MOV      R1,#+0
        MOV      R0,#+0
        BL       OSTimeDlyHMSM
        LDR      R0,??DataTable6_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSProbe_Task_2
        LDR      R0,??DataTable6_2
        LDR      R0,[R0, #+0]
        MOV      LR,PC
        BX       R0
??OSProbe_Task_2:
        MOV      R0,#+0
        MOVS     R8,R0
        MOV      R0,#+0
        MOVS     R6,R0
        LDR      R0,??DataTable6_12
        MOVS     R5,R0
??OSProbe_Task_3:
        MOVS     R0,R8
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+17
        BCS      ??OSProbe_Task_4
        CMP      R5,#+0
        BEQ      ??OSProbe_Task_4
        CMP      R5,#+1
        BEQ      ??OSProbe_Task_4
        LDR      R0,[R5, #+64]
        MOVS     R1,R8
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable6_9
        LDR      R1,[R1, +R2]
        SUBS     R0,R0,R1
        MOVS     R1,R8
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable6_13
        LDR      R1,[R1, +R2]
        LSRS     R1,R1,#+1
        ADDS     R0,R1,R0, LSR #+1
        MOVS     R1,R8
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable6_13
        STR      R0,[R1, +R2]
        LDR      R0,[R5, #+64]
        MOVS     R1,R8
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable6_9
        STR      R0,[R1, +R2]
        MOVS     R0,R8
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable6_13
        LDR      R0,[R0, +R1]
        ADDS     R6,R0,R6
        LDR      R0,[R5, #+12]
        CMP      R0,#+0
        BNE      ??OSProbe_Task_5
        MOV      R0,#+0
        MOVS     R1,R8
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable6_10
        STR      R0,[R1, +R2]
        B        ??OSProbe_Task_6
??OSProbe_Task_5:
        LDR      R0,[R5, #+72]
        CMP      R0,#+0
        BNE      ??OSProbe_Task_7
        MOV      R0,#+0
        MOVS     R1,R8
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable6_10
        STR      R0,[R1, +R2]
        B        ??OSProbe_Task_6
??OSProbe_Task_7:
        LDR      R0,[R5, #+12]
        LSLS     R0,R0,#+2
        MOVS     R7,R0
        LDR      R0,[R5, #+72]
        LDR      R1,[R5, #+0]
        SUBS     R0,R0,R1
        MOV      R1,#+100
        MULS     R0,R1,R0
        BL       __aeabi_ui2f
        MOVS     R9,R0
        MOVS     R0,R7
        BL       __aeabi_ui2f
        MOVS     R1,R0
        MOVS     R0,R9
        BL       __aeabi_fdiv
        MOVS     R1,R8
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable6_10
        STR      R0,[R1, +R2]
??OSProbe_Task_6:
        LDR      R5,[R5, #+24]
        ADDS     R8,R8,#+1
        B        ??OSProbe_Task_3
??OSProbe_Task_4:
        CMP      R6,#+0
        BNE      ??OSProbe_Task_8
        MOV      R0,#+0
        MOVS     R8,R0
??OSProbe_Task_9:
        MOVS     R0,R8
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+17
        BCS      ??OSProbe_Task_1
        MOV      R0,#+0
        MOVS     R1,R8
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable6_11
        STR      R0,[R1, +R2]
        ADDS     R8,R8,#+1
        B        ??OSProbe_Task_9
??OSProbe_Task_8:
        MOV      R0,#+0
        MOVS     R8,R0
??OSProbe_Task_10:
        MOVS     R0,R8
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+17
        BCS      ??OSProbe_Task_1
        MOVS     R0,R8
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable6_13
        LDR      R0,[R0, +R1]
        MOV      R1,#+100
        MULS     R0,R1,R0
        BL       __aeabi_ui2f
        MOVS     R9,R0
        MOVS     R0,R6
        BL       __aeabi_ui2f
        MOVS     R1,R0
        MOVS     R0,R9
        BL       __aeabi_fdiv
        MOVS     R1,R8
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable6_11
        STR      R0,[R1, +R2]
        ADDS     R8,R8,#+1
        B        ??OSProbe_Task_10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     OSProbe_CyclesCtr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     OSProbe_TmrCntsPrev

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     OSProbe_CallbackFnct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     OSProbe_Delay

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     OSTCBCur

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     OSTCBHighRdy

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     OSProbe_TaskStk

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_7:
        DC32     OSProbe_TaskStk+0x7FC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_8:
        DC32     `?<Constant "Probe OS PlugIn">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_9:
        DC32     ??cycles_tot_last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_10:
        DC32     OSProbe_TaskStkUsage

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_11:
        DC32     OSProbe_TaskCPUUsage

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_12:
        DC32     OSTCBTbl

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_13:
        DC32     ??cycles_dif

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??cycles_dif:
        DS8 68

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??cycles_tot_last:
        DS8 68

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Probe OS PlugIn">`:
        DATA
        DC8 "Probe OS PlugIn"

        END
// 
// 2 332 bytes in section .bss
//    16 bytes in section .rodata
// 1 244 bytes in section .text
// 
// 1 244 bytes of CODE  memory
//    16 bytes of CONST memory
// 2 332 bytes of DATA  memory
//
//Errors: none
//Warnings: none
