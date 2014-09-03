///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       04/Sep/2014  10:10:22
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\uCOS-II\Source\os_tmr.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\uCOS-II\Source\os_tmr.c" -lcN "E:\SVN
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
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\os_tmr.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN OSEventNameSet
        EXTERN OSIntNesting
        EXTERN OSSchedLock
        EXTERN OSSchedUnlock
        EXTERN OSSemCreate
        EXTERN OSSemPend
        EXTERN OSSemPost
        EXTERN OSTaskCreateExt
        EXTERN OSTaskNameSet
        EXTERN OSTmrFree
        EXTERN OSTmrFreeList
        EXTERN OSTmrSem
        EXTERN OSTmrSemSignal
        EXTERN OSTmrTaskStk
        EXTERN OSTmrTbl
        EXTERN OSTmrTime
        EXTERN OSTmrUsed
        EXTERN OSTmrWheelTbl
        EXTERN OS_MemClr
        EXTERN OS_StrLen

        PUBLIC OSTmrCreate
        PUBLIC OSTmrDel
        PUBLIC OSTmrNameGet
        PUBLIC OSTmrRemainGet
        PUBLIC OSTmrSignal
        PUBLIC OSTmrStart
        PUBLIC OSTmrStateGet
        PUBLIC OSTmrStop
        PUBLIC OSTmr_Init


        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTmrCreate:
        PUSH     {R3-R11,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDR      R8,[SP, #+40]
        LDR      R9,[SP, #+44]
        LDR      R10,[SP, #+48]
        CMP      R10,#+0
        BNE      ??OSTmrCreate_0
        MOV      R0,#+0
        B        ??OSTmrCreate_1
??OSTmrCreate_0:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BEQ      ??OSTmrCreate_2
        CMP      R0,#+2
        BNE      ??OSTmrCreate_3
??OSTmrCreate_4:
        CMP      R5,#+0
        BNE      ??OSTmrCreate_5
        MOV      R0,#+131
        STRB     R0,[R10, #+0]
        MOV      R0,#+0
        B        ??OSTmrCreate_1
??OSTmrCreate_5:
        B        ??OSTmrCreate_6
??OSTmrCreate_2:
        CMP      R4,#+0
        BNE      ??OSTmrCreate_7
        MOV      R0,#+130
        STRB     R0,[R10, #+0]
        MOV      R0,#+0
        B        ??OSTmrCreate_1
??OSTmrCreate_7:
        B        ??OSTmrCreate_6
??OSTmrCreate_3:
        MOV      R0,#+132
        STRB     R0,[R10, #+0]
        MOV      R0,#+0
        B        ??OSTmrCreate_1
??OSTmrCreate_6:
        LDR      R0,??DataTable14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSTmrCreate_8
        MOV      R0,#+139
        STRB     R0,[R10, #+0]
        MOV      R0,#+0
        B        ??OSTmrCreate_1
??OSTmrCreate_8:
        BL       OSSchedLock
        BL       OSTmr_Alloc
        MOVS     R11,R0
        CMP      R11,#+0
        BNE      ??OSTmrCreate_9
        BL       OSSchedUnlock
        MOV      R0,#+134
        STRB     R0,[R10, #+0]
        MOV      R0,#+0
        B        ??OSTmrCreate_1
??OSTmrCreate_9:
        MOV      R0,#+1
        STRB     R0,[R11, #+37]
        STR      R4,[R11, #+24]
        STR      R5,[R11, #+28]
        STRB     R6,[R11, #+36]
        STR      R7,[R11, #+4]
        STR      R8,[R11, #+8]
        STR      R9,[R11, #+32]
        BL       OSSchedUnlock
        MOV      R0,#+0
        STRB     R0,[R10, #+0]
        MOVS     R0,R11
??OSTmrCreate_1:
        POP      {R1,R4-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTmrDel:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        CMP      R5,#+0
        BNE      ??OSTmrDel_1
        MOV      R0,#+0
        B        ??OSTmrDel_2
??OSTmrDel_1:
        CMP      R4,#+0
        BNE      ??OSTmrDel_3
        MOV      R0,#+138
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        B        ??OSTmrDel_2
??OSTmrDel_3:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+100
        BEQ      ??OSTmrDel_4
        MOV      R0,#+137
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        B        ??OSTmrDel_2
??OSTmrDel_4:
        LDR      R0,??DataTable14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSTmrDel_5
        MOV      R0,#+139
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        B        ??OSTmrDel_2
??OSTmrDel_5:
        BL       OSSchedLock
        LDRB     R0,[R4, #+37]
        CMP      R0,#+3
        BHI      ??OSTmrDel_6
        LDRB     R1,[PC, R0]
        ADD      PC,PC,R1, LSL #+2
        DATA
??OSTmrDel_0:
        DC8      0x10,0x9,0x9,0x0
        ARM
??OSTmrDel_7:
        MOVS     R0,R4
        BL       OSTmr_Unlink
        MOVS     R0,R4
        BL       OSTmr_Free
        BL       OSSchedUnlock
        MOV      R0,#+0
        STRB     R0,[R5, #+0]
        MOV      R0,#+1
        B        ??OSTmrDel_2
??OSTmrDel_8:
        MOVS     R0,R4
        BL       OSTmr_Free
        BL       OSSchedUnlock
        MOV      R0,#+0
        STRB     R0,[R5, #+0]
        MOV      R0,#+1
        B        ??OSTmrDel_2
??OSTmrDel_9:
        BL       OSSchedUnlock
        MOV      R0,#+135
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        B        ??OSTmrDel_2
??OSTmrDel_6:
        BL       OSSchedUnlock
        MOV      R0,#+141
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
??OSTmrDel_2:
        POP      {R1,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTmrNameGet:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        CMP      R6,#+0
        BNE      ??OSTmrNameGet_1
        MOV      R0,#+0
        B        ??OSTmrNameGet_2
??OSTmrNameGet_1:
        CMP      R5,#+0
        BNE      ??OSTmrNameGet_3
        MOV      R0,#+136
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSTmrNameGet_2
??OSTmrNameGet_3:
        CMP      R4,#+0
        BNE      ??OSTmrNameGet_4
        MOV      R0,#+138
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSTmrNameGet_2
??OSTmrNameGet_4:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+100
        BEQ      ??OSTmrNameGet_5
        MOV      R0,#+137
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSTmrNameGet_2
??OSTmrNameGet_5:
        LDR      R0,??DataTable14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSTmrNameGet_6
        MOV      R0,#+17
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSTmrNameGet_2
??OSTmrNameGet_6:
        BL       OSSchedLock
        LDRB     R0,[R4, #+37]
        CMP      R0,#+3
        BHI      ??OSTmrNameGet_7
        LDRB     R1,[PC, R0]
        ADD      PC,PC,R1, LSL #+2
        DATA
??OSTmrNameGet_0:
        DC8      0xB,0x0,0x0,0x0
        ARM
??OSTmrNameGet_8:
        LDR      R0,[R4, #+32]
        STR      R0,[R5, #+0]
        LDR      R0,[R5, #+0]
        BL       OS_StrLen
        MOVS     R7,R0
        BL       OSSchedUnlock
        MOV      R0,#+0
        STRB     R0,[R6, #+0]
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??OSTmrNameGet_2
??OSTmrNameGet_9:
        BL       OSSchedUnlock
        MOV      R0,#+135
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
        B        ??OSTmrNameGet_2
??OSTmrNameGet_7:
        BL       OSSchedUnlock
        MOV      R0,#+141
        STRB     R0,[R6, #+0]
        MOV      R0,#+0
??OSTmrNameGet_2:
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTmrRemainGet:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        CMP      R5,#+0
        BNE      ??OSTmrRemainGet_1
        MOV      R0,#+0
        B        ??OSTmrRemainGet_2
??OSTmrRemainGet_1:
        CMP      R4,#+0
        BNE      ??OSTmrRemainGet_3
        MOV      R0,#+138
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        B        ??OSTmrRemainGet_2
??OSTmrRemainGet_3:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+100
        BEQ      ??OSTmrRemainGet_4
        MOV      R0,#+137
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        B        ??OSTmrRemainGet_2
??OSTmrRemainGet_4:
        LDR      R0,??DataTable14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSTmrRemainGet_5
        MOV      R0,#+139
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        B        ??OSTmrRemainGet_2
??OSTmrRemainGet_5:
        BL       OSSchedLock
        LDRB     R0,[R4, #+37]
        CMP      R0,#+3
        BHI      ??OSTmrRemainGet_6
        LDRB     R1,[PC, R0]
        ADD      PC,PC,R1, LSL #+2
        DATA
??OSTmrRemainGet_0:
        DC8      0x25,0xA,0x20,0x0
        ARM
??OSTmrRemainGet_7:
        LDR      R0,[R4, #+20]
        LDR      R1,??DataTable14_1
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        MOVS     R6,R0
        BL       OSSchedUnlock
        MOV      R0,#+0
        STRB     R0,[R5, #+0]
        MOVS     R0,R6
        B        ??OSTmrRemainGet_2
??OSTmrRemainGet_8:
        LDRB     R0,[R4, #+36]
        CMP      R0,#+2
        BNE      ??OSTmrRemainGet_9
        LDR      R0,[R4, #+24]
        CMP      R0,#+0
        BNE      ??OSTmrRemainGet_10
        LDR      R0,[R4, #+28]
        MOVS     R6,R0
        B        ??OSTmrRemainGet_11
??OSTmrRemainGet_10:
        LDR      R0,[R4, #+24]
        MOVS     R6,R0
??OSTmrRemainGet_11:
        BL       OSSchedUnlock
        MOV      R0,#+0
        STRB     R0,[R5, #+0]
        B        ??OSTmrRemainGet_12
??OSTmrRemainGet_9:
        LDR      R0,[R4, #+24]
        MOVS     R6,R0
        BL       OSSchedUnlock
        MOV      R0,#+0
        STRB     R0,[R5, #+0]
??OSTmrRemainGet_12:
        MOVS     R0,R6
        B        ??OSTmrRemainGet_2
??OSTmrRemainGet_13:
        BL       OSSchedUnlock
        MOV      R0,#+0
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        B        ??OSTmrRemainGet_2
??OSTmrRemainGet_14:
        BL       OSSchedUnlock
        MOV      R0,#+135
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        B        ??OSTmrRemainGet_2
??OSTmrRemainGet_6:
        BL       OSSchedUnlock
        MOV      R0,#+141
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
??OSTmrRemainGet_2:
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTmrStateGet:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        CMP      R5,#+0
        BNE      ??OSTmrStateGet_1
        MOV      R0,#+0
        B        ??OSTmrStateGet_2
??OSTmrStateGet_1:
        CMP      R4,#+0
        BNE      ??OSTmrStateGet_3
        MOV      R0,#+138
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        B        ??OSTmrStateGet_2
??OSTmrStateGet_3:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+100
        BEQ      ??OSTmrStateGet_4
        MOV      R0,#+137
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        B        ??OSTmrStateGet_2
??OSTmrStateGet_4:
        LDR      R0,??DataTable14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSTmrStateGet_5
        MOV      R0,#+139
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        B        ??OSTmrStateGet_2
??OSTmrStateGet_5:
        BL       OSSchedLock
        LDRB     R0,[R4, #+37]
        MOVS     R6,R0
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+3
        BHI      ??OSTmrStateGet_6
        LDRB     R1,[PC, R0]
        ADD      PC,PC,R1, LSL #+2
        DATA
??OSTmrStateGet_0:
        DC8      0x0,0x0,0x0,0x0
        ARM
??OSTmrStateGet_7:
        MOV      R0,#+0
        STRB     R0,[R5, #+0]
        B        ??OSTmrStateGet_8
??OSTmrStateGet_6:
        MOV      R0,#+141
        STRB     R0,[R5, #+0]
??OSTmrStateGet_8:
        BL       OSSchedUnlock
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
??OSTmrStateGet_2:
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTmrStart:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        CMP      R5,#+0
        BNE      ??OSTmrStart_1
        MOV      R0,#+0
        B        ??OSTmrStart_2
??OSTmrStart_1:
        CMP      R4,#+0
        BNE      ??OSTmrStart_3
        MOV      R0,#+138
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        B        ??OSTmrStart_2
??OSTmrStart_3:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+100
        BEQ      ??OSTmrStart_4
        MOV      R0,#+137
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        B        ??OSTmrStart_2
??OSTmrStart_4:
        LDR      R0,??DataTable14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSTmrStart_5
        MOV      R0,#+139
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        B        ??OSTmrStart_2
??OSTmrStart_5:
        BL       OSSchedLock
        LDRB     R0,[R4, #+37]
        CMP      R0,#+3
        BHI      ??OSTmrStart_6
        LDRB     R1,[PC, R0]
        ADD      PC,PC,R1, LSL #+2
        DATA
??OSTmrStart_0:
        DC8      0x12,0xA,0xA,0x0
        ARM
??OSTmrStart_7:
        MOVS     R0,R4
        BL       OSTmr_Unlink
        MOV      R1,#+0
        MOVS     R0,R4
        BL       OSTmr_Link
        BL       OSSchedUnlock
        MOV      R0,#+0
        STRB     R0,[R5, #+0]
        MOV      R0,#+1
        B        ??OSTmrStart_2
??OSTmrStart_8:
        MOV      R1,#+0
        MOVS     R0,R4
        BL       OSTmr_Link
        BL       OSSchedUnlock
        MOV      R0,#+0
        STRB     R0,[R5, #+0]
        MOV      R0,#+1
        B        ??OSTmrStart_2
??OSTmrStart_9:
        BL       OSSchedUnlock
        MOV      R0,#+135
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        B        ??OSTmrStart_2
??OSTmrStart_6:
        BL       OSSchedUnlock
        MOV      R0,#+141
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
??OSTmrStart_2:
        POP      {R1,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTmrStop:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        CMP      R7,#+0
        BNE      ??OSTmrStop_1
        MOV      R0,#+0
        B        ??OSTmrStop_2
??OSTmrStop_1:
        CMP      R4,#+0
        BNE      ??OSTmrStop_3
        MOV      R0,#+138
        STRB     R0,[R7, #+0]
        MOV      R0,#+0
        B        ??OSTmrStop_2
??OSTmrStop_3:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+100
        BEQ      ??OSTmrStop_4
        MOV      R0,#+137
        STRB     R0,[R7, #+0]
        MOV      R0,#+0
        B        ??OSTmrStop_2
??OSTmrStop_4:
        LDR      R0,??DataTable14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSTmrStop_5
        MOV      R0,#+139
        STRB     R0,[R7, #+0]
        MOV      R0,#+0
        B        ??OSTmrStop_2
??OSTmrStop_5:
        BL       OSSchedLock
        LDRB     R0,[R4, #+37]
        CMP      R0,#+3
        BHI      ??OSTmrStop_6
        LDRB     R1,[PC, R0]
        ADD      PC,PC,R1, LSL #+2
        DATA
??OSTmrStop_0:
        DC8      0x30,0x2B,0x2B,0x0
        ARM
??OSTmrStop_7:
        MOVS     R0,R4
        BL       OSTmr_Unlink
        MOV      R0,#+0
        STRB     R0,[R7, #+0]
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??OSTmrStop_8
        CMP      R0,#+3
        BEQ      ??OSTmrStop_9
        CMP      R0,#+4
        BEQ      ??OSTmrStop_10
        B        ??OSTmrStop_11
??OSTmrStop_9:
        LDR      R0,[R4, #+4]
        MOVS     R8,R0
        CMP      R8,#+0
        BEQ      ??OSTmrStop_12
        LDR      R1,[R4, #+8]
        MOVS     R0,R4
        MOV      LR,PC
        BX       R8
        B        ??OSTmrStop_13
??OSTmrStop_12:
        MOV      R0,#+143
        STRB     R0,[R7, #+0]
??OSTmrStop_13:
        B        ??OSTmrStop_14
??OSTmrStop_10:
        LDR      R0,[R4, #+4]
        MOVS     R8,R0
        CMP      R8,#+0
        BEQ      ??OSTmrStop_15
        MOVS     R1,R6
        MOVS     R0,R4
        MOV      LR,PC
        BX       R8
        B        ??OSTmrStop_16
??OSTmrStop_15:
        MOV      R0,#+143
        STRB     R0,[R7, #+0]
??OSTmrStop_16:
        B        ??OSTmrStop_14
??OSTmrStop_8:
        B        ??OSTmrStop_14
??OSTmrStop_11:
        MOV      R0,#+132
        STRB     R0,[R7, #+0]
??OSTmrStop_14:
        BL       OSSchedUnlock
        MOV      R0,#+1
        B        ??OSTmrStop_2
??OSTmrStop_17:
        BL       OSSchedUnlock
        MOV      R0,#+142
        STRB     R0,[R7, #+0]
        MOV      R0,#+1
        B        ??OSTmrStop_2
??OSTmrStop_18:
        BL       OSSchedUnlock
        MOV      R0,#+135
        STRB     R0,[R7, #+0]
        MOV      R0,#+0
        B        ??OSTmrStop_2
??OSTmrStop_6:
        BL       OSSchedUnlock
        MOV      R0,#+141
        STRB     R0,[R7, #+0]
        MOV      R0,#+0
??OSTmrStop_2:
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTmrSignal:
        PUSH     {R4,LR}
        LDR      R0,??DataTable14_2
        LDR      R0,[R0, #+0]
        BL       OSSemPost
        MOVS     R4,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTmr_Alloc:
        LDR      R0,??DataTable14_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??OSTmr_Alloc_0
        MOV      R0,#+0
        B        ??OSTmr_Alloc_1
??OSTmr_Alloc_0:
        LDR      R0,??DataTable14_3
        LDR      R0,[R0, #+0]
        MOVS     R1,R0
        LDR      R0,[R1, #+12]
        LDR      R2,??DataTable14_3
        STR      R0,[R2, #+0]
        MOV      R0,#+0
        STR      R0,[R1, #+12]
        MOV      R0,#+0
        STR      R0,[R1, #+16]
        LDR      R0,??DataTable14_4
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R2,??DataTable14_4
        STRH     R0,[R2, #+0]
        LDR      R0,??DataTable14_5
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR      R2,??DataTable14_5
        STRH     R0,[R2, #+0]
        MOVS     R0,R1
??OSTmr_Alloc_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTmr_Free:
        MOV      R1,#+0
        STRB     R1,[R0, #+37]
        MOV      R1,#+0
        STRB     R1,[R0, #+36]
        MOV      R1,#+0
        STR      R1,[R0, #+28]
        MOV      R1,#+0
        STR      R1,[R0, #+20]
        MOV      R1,#+0
        STR      R1,[R0, #+4]
        MOV      R1,#+0
        STR      R1,[R0, #+8]
        ADR      R1,??DataTable12  ;; "\?"
        STR      R1,[R0, #+32]
        MOV      R1,#+0
        STR      R1,[R0, #+16]
        LDR      R1,??DataTable14_3
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+12]
        LDR      R1,??DataTable14_3
        STR      R0,[R1, #+0]
        LDR      R1,??DataTable14_4
        LDRH     R1,[R1, #+0]
        SUBS     R1,R1,#+1
        LDR      R2,??DataTable14_4
        STRH     R1,[R2, #+0]
        LDR      R1,??DataTable14_5
        LDRH     R1,[R1, #+0]
        ADDS     R1,R1,#+1
        LDR      R2,??DataTable14_5
        STRH     R1,[R2, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTmr_Init:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+8
        MOV      R1,#+640
        LDR      R0,??DataTable14_6
        BL       OS_MemClr
        MOV      R1,#+64
        LDR      R0,??DataTable14_7
        BL       OS_MemClr
        LDR      R0,??DataTable14_6
        MOVS     R5,R0
        LDR      R0,??DataTable14_8
        MOVS     R6,R0
        MOV      R0,#+0
        MOVS     R4,R0
??OSTmr_Init_0:
        MOVS     R0,R4
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+15
        BCS      ??OSTmr_Init_1
        MOV      R0,#+100
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        STRB     R0,[R5, #+37]
        STR      R6,[R5, #+12]
        ADR      R0,??DataTable12  ;; "\?"
        STR      R0,[R5, #+32]
        ADDS     R5,R5,#+40
        ADDS     R6,R6,#+40
        ADDS     R4,R4,#+1
        B        ??OSTmr_Init_0
??OSTmr_Init_1:
        MOV      R0,#+100
        STRB     R0,[R5, #+0]
        MOV      R0,#+0
        STRB     R0,[R5, #+37]
        MOV      R0,#+0
        STR      R0,[R5, #+12]
        ADR      R0,??DataTable12  ;; "\?"
        STR      R0,[R5, #+32]
        MOV      R0,#+0
        LDR      R1,??DataTable14_1
        STR      R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable14_4
        STRH     R0,[R1, #+0]
        MOV      R0,#+16
        LDR      R1,??DataTable14_5
        STRH     R0,[R1, #+0]
        LDR      R0,??DataTable14_6
        LDR      R1,??DataTable14_3
        STR      R0,[R1, #+0]
        MOV      R0,#+1
        BL       OSSemCreate
        LDR      R1,??DataTable14_9
        STR      R0,[R1, #+0]
        MOV      R0,#+0
        BL       OSSemCreate
        LDR      R1,??DataTable14_2
        STR      R0,[R1, #+0]
        MOVS     R2,SP
        LDR      R1,??DataTable14_10
        LDR      R0,??DataTable14_9
        LDR      R0,[R0, #+0]
        BL       OSEventNameSet
        MOVS     R2,SP
        LDR      R1,??DataTable14_11
        LDR      R0,??DataTable14_2
        LDR      R0,[R0, #+0]
        BL       OSEventNameSet
        BL       OSTmr_InitTask
        POP      {R0,R1,R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTmr_InitTask:
        PUSH     {R4,LR}
        SUB      SP,SP,#+24
        MOV      R0,#+3
        STR      R0,[SP, #+16]
        MOV      R0,#+0
        STR      R0,[SP, #+12]
        MOV      R0,#+128
        STR      R0,[SP, #+8]
        LDR      R0,??DataTable14_12
        STR      R0,[SP, #+4]
        MOV      R0,#+253
        ORR      R0,R0,#0xFF00
        STR      R0,[SP, #+0]
        MOV      R3,#+61
        LDR      R2,??DataTable14_13
        MOV      R1,#+0
        ADR      R0,OSTmr_Task
        BL       OSTaskCreateExt
        MOVS     R4,R0
        ADD      R2,SP,#+20
        LDR      R1,??DataTable14_14
        MOV      R0,#+61
        BL       OSTaskNameSet
        ADD      SP,SP,#+24       ;; stack cleaning
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTmr_Link:
        PUSH     {R4,LR}
        MOV      LR,#+3
        STRB     LR,[R0, #+37]
        MOVS     LR,R1
        ANDS     LR,LR,#0xFF      ;; Zero extend
        CMP      LR,#+1
        BNE      ??OSTmr_Link_0
        LDR      LR,[R0, #+28]
        LDR      R4,??DataTable14_1
        LDR      R4,[R4, #+0]
        ADDS     LR,R4,LR
        STR      LR,[R0, #+20]
        B        ??OSTmr_Link_1
??OSTmr_Link_0:
        LDR      LR,[R0, #+24]
        CMP      LR,#+0
        BNE      ??OSTmr_Link_2
        LDR      LR,[R0, #+28]
        LDR      R4,??DataTable14_1
        LDR      R4,[R4, #+0]
        ADDS     LR,R4,LR
        STR      LR,[R0, #+20]
        B        ??OSTmr_Link_1
??OSTmr_Link_2:
        LDR      LR,[R0, #+24]
        LDR      R4,??DataTable14_1
        LDR      R4,[R4, #+0]
        ADDS     LR,R4,LR
        STR      LR,[R0, #+20]
??OSTmr_Link_1:
        LDR      LR,[R0, #+20]
        ANDS     LR,LR,#0x7       ;; Zero extend
        MOVS     R12,LR
        MOVS     LR,R12
        LSL      LR,LR,#+16
        LSRS     LR,LR,#+16
        LSLS     LR,LR,#+3
        LDR      R4,??DataTable14_7
        ADDS     LR,LR,R4
        MOVS     R3,LR
        LDR      LR,[R3, #+0]
        CMP      LR,#+0
        BNE      ??OSTmr_Link_3
        STR      R0,[R3, #+0]
        MOV      LR,#+0
        STR      LR,[R0, #+12]
        MOV      LR,#+1
        STRH     LR,[R3, #+4]
        B        ??OSTmr_Link_4
??OSTmr_Link_3:
        LDR      LR,[R3, #+0]
        MOVS     R2,LR
        STR      R0,[R3, #+0]
        STR      R2,[R0, #+12]
        STR      R0,[R2, #+16]
        LDRH     LR,[R3, #+4]
        ADDS     LR,LR,#+1
        STRH     LR,[R3, #+4]
??OSTmr_Link_4:
        MOV      LR,#+0
        STR      LR,[R0, #+16]
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC8      "\?",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTmr_Unlink:
        PUSH     {R4,LR}
        LDR      LR,[R0, #+20]
        ANDS     LR,LR,#0x7       ;; Zero extend
        MOVS     R12,LR
        MOVS     LR,R12
        LSL      LR,LR,#+16
        LSRS     LR,LR,#+16
        LSLS     LR,LR,#+3
        LDR      R4,??DataTable14_7
        ADDS     LR,LR,R4
        MOVS     R3,LR
        LDR      LR,[R3, #+0]
        CMP      LR,R0
        BNE      ??OSTmr_Unlink_0
        LDR      LR,[R0, #+12]
        MOVS     R1,LR
        STR      R1,[R3, #+0]
        CMP      R1,#+0
        BEQ      ??OSTmr_Unlink_1
        MOV      LR,#+0
        STR      LR,[R1, #+16]
        B        ??OSTmr_Unlink_1
??OSTmr_Unlink_0:
        LDR      LR,[R0, #+16]
        MOVS     R1,LR
        LDR      LR,[R0, #+12]
        MOVS     R2,LR
        STR      R2,[R1, #+12]
        CMP      R2,#+0
        BEQ      ??OSTmr_Unlink_1
        STR      R1,[R2, #+16]
??OSTmr_Unlink_1:
        MOV      LR,#+1
        STRB     LR,[R0, #+37]
        MOV      LR,#+0
        STR      LR,[R0, #+12]
        MOV      LR,#+0
        STR      LR,[R0, #+16]
        LDRH     LR,[R3, #+4]
        SUBS     LR,LR,#+1
        STRH     LR,[R3, #+4]
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTmr_Task:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
??OSTmr_Task_0:
        MOVS     R2,SP
        MOV      R1,#+0
        LDR      R0,??DataTable14_2
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        BL       OSSchedLock
        LDR      R0,??DataTable14_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable14_1
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable14_1
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x7       ;; Zero extend
        MOVS     R9,R0
        MOVS     R0,R9
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+3
        LDR      R1,??DataTable14_7
        ADDS     R0,R0,R1
        MOVS     R8,R0
        LDR      R0,[R8, #+0]
        MOVS     R5,R0
??OSTmr_Task_1:
        CMP      R5,#+0
        BEQ      ??OSTmr_Task_2
        LDR      R0,[R5, #+12]
        MOVS     R6,R0
        LDR      R0,??DataTable14_1
        LDR      R0,[R0, #+0]
        LDR      R1,[R5, #+20]
        CMP      R0,R1
        BNE      ??OSTmr_Task_3
        MOVS     R0,R5
        BL       OSTmr_Unlink
        LDRB     R0,[R5, #+36]
        CMP      R0,#+2
        BNE      ??OSTmr_Task_4
        MOV      R1,#+1
        MOVS     R0,R5
        BL       OSTmr_Link
        B        ??OSTmr_Task_5
??OSTmr_Task_4:
        MOV      R0,#+2
        STRB     R0,[R5, #+37]
??OSTmr_Task_5:
        LDR      R0,[R5, #+4]
        MOVS     R7,R0
        CMP      R7,#+0
        BEQ      ??OSTmr_Task_3
        LDR      R1,[R5, #+8]
        MOVS     R0,R5
        MOV      LR,PC
        BX       R7
??OSTmr_Task_3:
        MOVS     R5,R6
        B        ??OSTmr_Task_1
??OSTmr_Task_2:
        BL       OSSchedUnlock
        B        ??OSTmr_Task_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14:
        DC32     OSIntNesting

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_1:
        DC32     OSTmrTime

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_2:
        DC32     OSTmrSemSignal

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_3:
        DC32     OSTmrFreeList

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_4:
        DC32     OSTmrUsed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_5:
        DC32     OSTmrFree

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_6:
        DC32     OSTmrTbl

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_7:
        DC32     OSTmrWheelTbl

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_8:
        DC32     OSTmrTbl+0x28

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_9:
        DC32     OSTmrSem

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_10:
        DC32     `?<Constant "uC/OS-II TmrLock">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_11:
        DC32     `?<Constant "uC/OS-II TmrSignal">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_12:
        DC32     OSTmrTaskStk

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_13:
        DC32     OSTmrTaskStk+0x1FC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_14:
        DC32     `?<Constant "uC/OS-II Tmr">`

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
        DC8 "?"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "uC/OS-II TmrLock">`:
        DATA
        DC8 "uC/OS-II TmrLock"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "uC/OS-II TmrSignal">`:
        DATA
        DC8 "uC/OS-II TmrSignal"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "uC/OS-II Tmr">`:
        DATA
        DC8 "uC/OS-II Tmr"
        DC8 0, 0, 0

        END
// 
//    58 bytes in section .rodata
// 3 296 bytes in section .text
// 
// 3 296 bytes of CODE  memory
//    58 bytes of CONST memory
//
//Errors: none
//Warnings: none
