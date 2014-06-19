///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       13/Jun/2014  16:27:45
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\uC-Probe\Target\Communication\Generic\Source\probe_com.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\uC-Probe\Target\Communication\Generic\Source\probe_com.c"
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
//        E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\FLASH\List\probe_com.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN CPU_SR_Restore
        EXTERN CPU_SR_Save
        EXTERN Mem_Clr
        EXTERN Mem_Copy
        EXTERN ProbeCom_OS_Init
        EXTERN ProbeCom_OS_TerminalOutSignal
        EXTERN ProbeCom_OS_TerminalOutWait

        PUBLIC ProbeCom_ErrPktCtr
        PUBLIC ProbeCom_Init
        PUBLIC ProbeCom_ParseRxPkt
        PUBLIC ProbeCom_RxPktCtr
        PUBLIC ProbeCom_RxSymByteCtr
        PUBLIC ProbeCom_RxSymCtr
        PUBLIC ProbeCom_StrRd
        PUBLIC ProbeCom_StrRxCtr
        PUBLIC ProbeCom_StrRxOvfErrCtr
        PUBLIC ProbeCom_StrTxCtr
        PUBLIC ProbeCom_StrTxOvfErrCtr
        PUBLIC ProbeCom_StrWr
        PUBLIC ProbeCom_TerminalExecComplete
        PUBLIC ProbeCom_TerminalExecSet
        PUBLIC ProbeCom_TerminalInSet
        PUBLIC ProbeCom_TerminalOut
        PUBLIC ProbeCom_TxPktCtr
        PUBLIC ProbeCom_TxSymByteCtr
        PUBLIC ProbeCom_TxSymCtr


        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute CPU_INT32U ProbeCom_RxPktCtr
ProbeCom_RxPktCtr:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute CPU_INT32U ProbeCom_TxPktCtr
ProbeCom_TxPktCtr:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute CPU_INT32U ProbeCom_TxSymCtr
ProbeCom_TxSymCtr:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute CPU_INT32U ProbeCom_TxSymByteCtr
ProbeCom_TxSymByteCtr:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute CPU_INT32U ProbeCom_ErrPktCtr
ProbeCom_ErrPktCtr:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute CPU_INT32U ProbeCom_StrRxCtr
ProbeCom_StrRxCtr:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute CPU_INT32U ProbeCom_StrRxOvfErrCtr
ProbeCom_StrRxOvfErrCtr:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute CPU_INT32U ProbeCom_StrTxCtr
ProbeCom_StrTxCtr:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute CPU_INT32U ProbeCom_StrTxOvfErrCtr
ProbeCom_StrTxOvfErrCtr:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute CPU_INT32U ProbeCom_RxSymCtr
ProbeCom_RxSymCtr:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute CPU_INT32U ProbeCom_RxSymByteCtr
ProbeCom_RxSymByteCtr:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ProbeCom_StrInBufData:
        DS8 128

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ProbeCom_StrInBuf:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ProbeCom_StrOutBufData:
        DS8 2048

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ProbeCom_StrOutBuf:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ProbeCom_TerminalExecHandler:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
ProbeCom_TerminalExecuting:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ProbeCom_TerminalInHandler:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ProbeCom_TerminalOutBufPtr:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ProbeCom_TerminalOutBufIx:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ProbeCom_TerminalOutBufLen:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ProbeCom_EndiannessTest:
        DS8 4

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeCom_Init:
        PUSH     {R4,LR}
        MOV      R1,#+128
        LDR      R0,??DataTable16
        BL       Mem_Clr
        MOV      R2,#+128
        LDR      R1,??DataTable16
        LDR      R0,??DataTable17
        BL       ProbeCom_BufInit
        MOV      R1,#+2048
        LDR      R0,??DataTable17_1
        BL       Mem_Clr
        MOV      R2,#+2048
        LDR      R1,??DataTable17_1
        LDR      R0,??DataTable17_2
        BL       ProbeCom_BufInit
        MOV      R0,#+0
        LDR      R1,??DataTable17_3
        STR      R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable17_4
        STRB     R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable17_5
        STR      R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable17_6
        STR      R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable17_7
        STR      R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable17_8
        STR      R0,[R1, #+0]
        BL       ProbeCom_OS_Init
        MOVS     R4,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??ProbeCom_Init_0
        MOV      R0,#+0
        B        ??ProbeCom_Init_1
??ProbeCom_Init_0:
        MOV      R0,#+0
        LDR      R1,??DataTable17_9
        STR      R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable17_10
        STR      R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable17_11
        STR      R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable18
        STR      R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable18_1
        STR      R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable18_2
        STR      R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable18_3
        STR      R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable18_4
        STR      R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable18_5
        STR      R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable18_6
        STR      R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable18_7
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable18_8  ;; 0x12345678
        LDR      R1,??DataTable19
        STR      R0,[R1, #+0]
        MOV      R0,#+1
??ProbeCom_Init_1:
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeCom_StrRd:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,R5
        MOVS     R1,R4
        LDR      R0,??DataTable17
        BL       ProbeCom_BufRd
        MOVS     R6,R0
        MOVS     R0,R6
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeCom_StrWr:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,R5
        MOVS     R1,R4
        LDR      R0,??DataTable17_2
        BL       ProbeCom_BufWr
        MOVS     R6,R0
        CMP      R6,R5
        BCS      ??ProbeCom_StrWr_0
        LDR      R0,??DataTable18_5
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable18_5
        STR      R0,[R1, #+0]
??ProbeCom_StrWr_0:
        MOVS     R0,R6
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeCom_TerminalOut:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R6,#+0
        CMP      R4,#+0
        BNE      ??ProbeCom_TerminalOut_0
        MOV      R0,#+0
        B        ??ProbeCom_TerminalOut_1
??ProbeCom_TerminalOut_0:
        CMP      R5,#+0
        BNE      ??ProbeCom_TerminalOut_2
        MOV      R0,#+0
        B        ??ProbeCom_TerminalOut_1
??ProbeCom_TerminalOut_2:
        BL       CPU_SR_Save
        MOVS     R6,R0
        LDR      R0,??DataTable17_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??ProbeCom_TerminalOut_3
        MOV      R0,#+0
        B        ??ProbeCom_TerminalOut_1
??ProbeCom_TerminalOut_3:
        LDR      R0,??DataTable17_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??ProbeCom_TerminalOut_4
        MOV      R0,#+0
        B        ??ProbeCom_TerminalOut_1
??ProbeCom_TerminalOut_4:
        LDR      R0,??DataTable17_6
        STR      R4,[R0, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable17_7
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable17_8
        STR      R5,[R0, #+0]
        BL       ProbeCom_OS_TerminalOutWait
        MOV      R0,#+0
        LDR      R1,??DataTable17_6
        STR      R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable17_7
        STR      R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable17_8
        STR      R0,[R1, #+0]
        MOVS     R0,R6
        BL       CPU_SR_Restore
        MOVS     R0,R5
??ProbeCom_TerminalOut_1:
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeCom_TerminalExecComplete:
        PUSH     {R3-R5,LR}
        MOV      R5,#+0
        BL       CPU_SR_Save
        MOVS     R5,R0
        LDR      R0,??DataTable17_4
        LDRB     R0,[R0, #+0]
        MOVS     R4,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??ProbeCom_TerminalExecComplete_0
        MOV      R0,#+0
        LDR      R1,??DataTable17_4
        STRB     R0,[R1, #+0]
??ProbeCom_TerminalExecComplete_0:
        MOVS     R0,R5
        BL       CPU_SR_Restore
        POP      {R0,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeCom_TerminalExecSet:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOV      R5,#+0
        BL       CPU_SR_Save
        MOVS     R5,R0
        LDR      R0,??DataTable17_3
        STR      R4,[R0, #+0]
        MOVS     R0,R5
        BL       CPU_SR_Restore
        POP      {R0,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeCom_TerminalInSet:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        BL       CPU_SR_Save
        MOVS     R5,R0
        LDR      R0,??DataTable17_5
        STR      R4,[R0, #+0]
        MOVS     R0,R5
        BL       CPU_SR_Restore
        POP      {R0,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeCom_ParseRxPkt:
        PUSH     {R3-R11,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        CMP      R6,#+2
        BCS      ??ProbeCom_ParseRxPkt_1
        MOV      R0,#+0
        B        ??ProbeCom_ParseRxPkt_2
??ProbeCom_ParseRxPkt_1:
        MOVS     R10,R4
        MOVS     R11,R5
        LDRB     R0,[R10, #+1]
        LDRB     R1,[R10, #+0]
        ADDS     R0,R1,R0, LSL #+8
        MOVS     R9,R0
        ADDS     R10,R10,#+2
        LDR      R0,??DataTable17_9
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable17_9
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable17_10
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable17_10
        STR      R0,[R1, #+0]
        MOVS     R0,R9
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        SUB      R0,R0,#+1
        CMP      R0,#+12
        BHI      ??ProbeCom_ParseRxPkt_3
        LDRB     R1,[PC, R0]
        ADD      PC,PC,R1, LSL #+2
        DATA
??ProbeCom_ParseRxPkt_0:
        DC8      0x3,0xA,0x18,0x49
        DC8      0x49,0x49,0x11,0x1F
        DC8      0x2D,0x26,0x34,0x42
        DC8      0x3B,0x0,0x0,0x0
        ARM
??ProbeCom_ParseRxPkt_4:
        MOVS     R3,R7
        MOVS     R2,R6
        MOVS     R1,R11
        MOVS     R0,R10
        BL       ProbeCom_ReqQuery
        MOVS     R8,R0
        B        ??ProbeCom_ParseRxPkt_5
??ProbeCom_ParseRxPkt_6:
        MOVS     R3,R7
        MOVS     R2,R6
        MOVS     R1,R11
        MOVS     R0,R10
        BL       ProbeCom_ReqRd
        MOVS     R8,R0
        B        ??ProbeCom_ParseRxPkt_5
??ProbeCom_ParseRxPkt_7:
        MOVS     R3,R7
        MOVS     R2,R6
        MOVS     R1,R11
        MOVS     R0,R10
        BL       ProbeCom_ReqRdMulti
        MOVS     R8,R0
        B        ??ProbeCom_ParseRxPkt_5
??ProbeCom_ParseRxPkt_8:
        MOVS     R3,R7
        MOVS     R2,R6
        MOVS     R1,R11
        MOVS     R0,R10
        BL       ProbeCom_ReqWr
        MOVS     R8,R0
        B        ??ProbeCom_ParseRxPkt_5
??ProbeCom_ParseRxPkt_9:
        MOVS     R3,R7
        MOVS     R2,R6
        MOVS     R1,R11
        MOVS     R0,R10
        BL       ProbeCom_ReqWrMulti
        MOVS     R8,R0
        B        ??ProbeCom_ParseRxPkt_5
??ProbeCom_ParseRxPkt_10:
        MOVS     R3,R7
        MOVS     R2,R6
        MOVS     R1,R11
        MOVS     R0,R10
        BL       ProbeCom_ReqStrIn
        MOVS     R8,R0
        B        ??ProbeCom_ParseRxPkt_5
??ProbeCom_ParseRxPkt_11:
        MOVS     R3,R7
        MOVS     R2,R6
        MOVS     R1,R11
        MOVS     R0,R10
        BL       ProbeCom_ReqStrOut
        MOVS     R8,R0
        B        ??ProbeCom_ParseRxPkt_5
??ProbeCom_ParseRxPkt_12:
        MOVS     R3,R7
        MOVS     R2,R6
        MOVS     R1,R11
        MOVS     R0,R10
        BL       ProbeCom_ReqTerminalExec
        MOVS     R8,R0
        B        ??ProbeCom_ParseRxPkt_5
??ProbeCom_ParseRxPkt_13:
        MOVS     R3,R7
        MOVS     R2,R6
        MOVS     R1,R11
        MOVS     R0,R10
        BL       ProbeCom_ReqTerminalIn
        MOVS     R8,R0
        B        ??ProbeCom_ParseRxPkt_5
??ProbeCom_ParseRxPkt_14:
        MOVS     R3,R7
        MOVS     R2,R6
        MOVS     R1,R11
        MOVS     R0,R10
        BL       ProbeCom_ReqTerminalOut
        MOVS     R8,R0
        B        ??ProbeCom_ParseRxPkt_5
??ProbeCom_ParseRxPkt_3:
        MOV      R1,#+249
        MOVS     R0,R11
        BL       ProbeCom_ReqErr
        MOVS     R8,R0
??ProbeCom_ParseRxPkt_5:
        MOVS     R0,R8
??ProbeCom_ParseRxPkt_2:
        POP      {R1,R4-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeCom_StrOutAvail:
        PUSH     {R3-R5,LR}
        LDR      R0,??DataTable21
        BL       ProbeCom_BufIsEmpty
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??ProbeCom_StrOutAvail_0
        MOV      R4,#+0
        B        ??ProbeCom_StrOutAvail_1
??ProbeCom_StrOutAvail_0:
        MOV      R4,#+1
??ProbeCom_StrOutAvail_1:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R1,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeCom_TerminalOutAvail:
        PUSH     {R4-R6,LR}
        MOV      R6,#+0
        BL       CPU_SR_Save
        MOVS     R6,R0
        LDR      R0,??DataTable21_1
        LDR      R0,[R0, #+0]
        MOVS     R4,R0
        MOVS     R0,R6
        BL       CPU_SR_Restore
        CMP      R4,#+0
        BNE      ??ProbeCom_TerminalOutAvail_0
        MOV      R5,#+0
        B        ??ProbeCom_TerminalOutAvail_1
??ProbeCom_TerminalOutAvail_0:
        MOV      R5,#+1
??ProbeCom_TerminalOutAvail_1:
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeCom_TerminalExecDone:
        PUSH     {R4-R6,LR}
        BL       CPU_SR_Save
        MOVS     R4,R0
        LDR      R0,??DataTable17_4
        LDRB     R0,[R0, #+0]
        MOVS     R5,R0
        MOVS     R0,R4
        BL       CPU_SR_Restore
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??ProbeCom_TerminalExecDone_0
        MOV      R6,#+0
        B        ??ProbeCom_TerminalExecDone_1
??ProbeCom_TerminalExecDone_0:
        MOV      R6,#+1
??ProbeCom_TerminalExecDone_1:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeCom_PktModifier:
        PUSH     {R4-R6,LR}
        MOV      R0,#+0
        MOVS     R6,R0
        BL       ProbeCom_StrOutAvail
        MOVS     R4,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??ProbeCom_PktModifier_0
        ORRS     R6,R6,#0x1
??ProbeCom_PktModifier_0:
        BL       ProbeCom_TerminalOutAvail
        MOVS     R4,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??ProbeCom_PktModifier_1
        ORRS     R6,R6,#0x4
??ProbeCom_PktModifier_1:
        BL       ProbeCom_TerminalExecDone
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??ProbeCom_PktModifier_2
        ORRS     R6,R6,#0x2
??ProbeCom_PktModifier_2:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeCom_ReqErr:
        PUSH     {R0,R4,R5,LR}
        MOVS     R4,R1
        LDR      R0,??DataTable18_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable18_1
        STR      R0,[R1, #+0]
        MOV      R1,#+32768
        MOVS     R0,SP
        BL       ProbeCom_StoINT16U
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOVS     R0,SP
        BL       ProbeCom_StoINT08U
        BL       ProbeCom_PktModifier
        MOVS     R1,R0
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOVS     R0,SP
        BL       ProbeCom_StoINT08U
        MOV      R0,#+4
        MOVS     R5,R0
        MOVS     R0,R5
        POP      {R1,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeCom_ReqQuery:
        PUSH     {R0,R1,R3-R6,LR}
        SUB      SP,SP,#+12
        MOVS     R4,R2
        ADD      R0,SP,#+20
        CMP      R4,#+4
        BEQ      ??ProbeCom_ReqQuery_0
        MOV      R1,#+254
        LDR      R0,[SP, #+16]
        BL       ProbeCom_ReqErr
        MOVS     R6,R0
        MOVS     R0,R6
        B        ??ProbeCom_ReqQuery_1
??ProbeCom_ReqQuery_0:
        ADD      R0,SP,#+12
        BL       ProbeCom_GetINT16U
        MOVS     R5,R0
        MOVS     R0,R5
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        MOV      R1,#+1
        ORR      R1,R1,#0x100
        CMP      R0,R1
        BEQ      ??ProbeCom_ReqQuery_2
        MOV      R1,#+2
        ORR      R1,R1,#0x100
        CMP      R0,R1
        BEQ      ??ProbeCom_ReqQuery_2
        MOV      R1,#+1
        ORR      R1,R1,#0x200
        CMP      R0,R1
        BEQ      ??ProbeCom_ReqQuery_2
        MOV      R1,#+2
        ORR      R1,R1,#0x200
        CMP      R0,R1
        BEQ      ??ProbeCom_ReqQuery_2
        MOV      R1,#+1
        ORR      R1,R1,#0x1000
        CMP      R0,R1
        BEQ      ??ProbeCom_ReqQuery_2
        MOV      R1,#+2
        ORR      R1,R1,#0x1000
        CMP      R0,R1
        BNE      ??ProbeCom_ReqQuery_3
??ProbeCom_ReqQuery_2:
        MOV      R1,#+1
        ORR      R1,R1,#0x8000
        ADD      R0,SP,#+16
        BL       ProbeCom_StoINT16U
        MOV      R1,#+1
        ADD      R0,SP,#+16
        BL       ProbeCom_StoINT08U
        BL       ProbeCom_PktModifier
        MOVS     R1,R0
        ANDS     R1,R1,#0xFF      ;; Zero extend
        ADD      R0,SP,#+16
        BL       ProbeCom_StoINT08U
        MOVS     R0,R5
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        MOV      R1,#+1
        ORR      R1,R1,#0x100
        CMP      R0,R1
        BEQ      ??ProbeCom_ReqQuery_4
        MOV      R1,#+2
        ORR      R1,R1,#0x100
        CMP      R0,R1
        BEQ      ??ProbeCom_ReqQuery_5
        MOV      R1,#+1
        ORR      R1,R1,#0x200
        CMP      R0,R1
        BEQ      ??ProbeCom_ReqQuery_6
        MOV      R1,#+2
        ORR      R1,R1,#0x200
        CMP      R0,R1
        BEQ      ??ProbeCom_ReqQuery_7
        MOV      R1,#+1
        ORR      R1,R1,#0x1000
        CMP      R0,R1
        BEQ      ??ProbeCom_ReqQuery_8
        MOV      R1,#+2
        ORR      R1,R1,#0x1000
        CMP      R0,R1
        BEQ      ??ProbeCom_ReqQuery_9
        B        ??ProbeCom_ReqQuery_10
??ProbeCom_ReqQuery_3:
        MOV      R1,#+252
        LDR      R0,[SP, #+16]
        BL       ProbeCom_ReqErr
        MOVS     R6,R0
        MOVS     R0,R6
        B        ??ProbeCom_ReqQuery_1
??ProbeCom_ReqQuery_4:
        MOV      R1,#+512
        ADD      R0,SP,#+16
        BL       ProbeCom_StoINT16U
        MOV      R1,#+0
        ADD      R0,SP,#+16
        BL       ProbeCom_StoINT16U
        MOV      R0,#+4
        MOVS     R6,R0
        B        ??ProbeCom_ReqQuery_11
??ProbeCom_ReqQuery_5:
        MOV      R1,#+512
        ADD      R0,SP,#+16
        BL       ProbeCom_StoINT16U
        MOV      R1,#+0
        ADD      R0,SP,#+16
        BL       ProbeCom_StoINT16U
        MOV      R0,#+4
        MOVS     R6,R0
        B        ??ProbeCom_ReqQuery_11
??ProbeCom_ReqQuery_8:
        MOV      R1,#+1
        ADD      R0,SP,#+16
        BL       ProbeCom_StoINT16U
        MOV      R1,#+2
        ADD      R0,SP,#+16
        BL       ProbeCom_StoINT16U
        MOV      R1,#+7
        ADD      R0,SP,#+16
        BL       ProbeCom_StoINT16U
        MOV      R0,#+8
        MOVS     R6,R0
        MOV      R1,#+3
        ADD      R0,SP,#+16
        BL       ProbeCom_StoINT16U
        MOV      R1,#+8
        ADD      R0,SP,#+16
        BL       ProbeCom_StoINT16U
        ADDS     R6,R6,#+4
        MOV      R1,#+10
        ADD      R0,SP,#+16
        BL       ProbeCom_StoINT16U
        MOV      R1,#+9
        ADD      R0,SP,#+16
        BL       ProbeCom_StoINT16U
        ADDS     R6,R6,#+4
        MOV      R1,#+11
        ADD      R0,SP,#+16
        BL       ProbeCom_StoINT16U
        MOV      R1,#+13
        ADD      R0,SP,#+16
        BL       ProbeCom_StoINT16U
        MOV      R1,#+12
        ADD      R0,SP,#+16
        BL       ProbeCom_StoINT16U
        ADDS     R6,R6,#+6
        B        ??ProbeCom_ReqQuery_11
??ProbeCom_ReqQuery_6:
        LDR      R0,??DataTable18_8  ;; 0x12345678
        LDR      R1,??DataTable19
        STR      R0,[R1, #+0]
        MOV      R2,#+4
        LDR      R1,??DataTable19
        LDR      R0,[SP, #+16]
        BL       Mem_Copy
        MOV      R0,#+4
        MOVS     R6,R0
        B        ??ProbeCom_ReqQuery_11
??ProbeCom_ReqQuery_7:
        BL       ProbeCom_PktModifier
        STR      R0,[SP, #+4]
        MOV      R2,#+4
        ADD      R1,SP,#+4
        LDR      R0,[SP, #+16]
        BL       Mem_Copy
        MOV      R0,#+4
        MOVS     R6,R0
        B        ??ProbeCom_ReqQuery_11
??ProbeCom_ReqQuery_9:
        MOV      R0,#+220
        STR      R0,[SP, #+0]
        MOV      R2,#+4
        MOVS     R1,SP
        LDR      R0,[SP, #+16]
        BL       Mem_Copy
        MOV      R0,#+4
        MOVS     R6,R0
        B        ??ProbeCom_ReqQuery_11
??ProbeCom_ReqQuery_10:
        MOV      R0,#+0
        MOVS     R6,R0
??ProbeCom_ReqQuery_11:
        ADDS     R6,R6,#+4
        MOVS     R0,R6
??ProbeCom_ReqQuery_1:
        ADD      SP,SP,#+24       ;; stack cleaning
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeCom_ReqRd:
        PUSH     {R0,R1,R4-R8,LR}
        MOVS     R4,R2
        MOVS     R5,R3
        CMP      R4,#+8
        BEQ      ??ProbeCom_ReqRd_0
        MOV      R1,#+254
        LDR      R0,[SP, #+4]
        BL       ProbeCom_ReqErr
        MOVS     R8,R0
        MOVS     R0,R8
        B        ??ProbeCom_ReqRd_1
??ProbeCom_ReqRd_0:
        MOVS     R0,SP
        BL       ProbeCom_GetINT16U
        MOVS     R7,R0
        MOVS     R0,SP
        BL       ProbeCom_GetINT32U
        MOVS     R6,R0
        ADDS     R0,R7,#+4
        CMP      R5,R0
        BCS      ??ProbeCom_ReqRd_2
        MOV      R1,#+253
        LDR      R0,[SP, #+4]
        BL       ProbeCom_ReqErr
        MOVS     R8,R0
        MOVS     R0,R8
        B        ??ProbeCom_ReqRd_1
??ProbeCom_ReqRd_2:
        LDR      R0,??DataTable17_11
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable17_11
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable18
        LDR      R0,[R0, #+0]
        ADDS     R0,R7,R0
        LDR      R1,??DataTable18
        STR      R0,[R1, #+0]
        MOV      R1,#+2
        ORR      R1,R1,#0x8000
        ADD      R0,SP,#+4
        BL       ProbeCom_StoINT16U
        MOV      R1,#+1
        ADD      R0,SP,#+4
        BL       ProbeCom_StoINT08U
        BL       ProbeCom_PktModifier
        MOVS     R1,R0
        ANDS     R1,R1,#0xFF      ;; Zero extend
        ADD      R0,SP,#+4
        BL       ProbeCom_StoINT08U
        MOVS     R2,R7
        MOVS     R1,R6
        LDR      R0,[SP, #+4]
        BL       Mem_Copy
        ADDS     R0,R7,#+4
        MOVS     R8,R0
        MOVS     R0,R8
??ProbeCom_ReqRd_1:
        POP      {R1,R2,R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeCom_ReqRdMulti:
        PUSH     {R1-R11,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[SP, #+4]
        CMP      R0,#+7
        BCS      ??ProbeCom_ReqRdMulti_0
        MOV      R1,#+254
        MOVS     R0,R5
        BL       ProbeCom_ReqErr
        MOVS     R11,R0
        MOVS     R0,R11
        B        ??ProbeCom_ReqRdMulti_1
??ProbeCom_ReqRdMulti_0:
        STR      R5,[SP, #+0]
        MOV      R0,#+4
        MOVS     R11,R0
        MOV      R0,#+7
        STRB     R0,[R5, #+0]
        MOV      R0,#+128
        STRB     R0,[R5, #+1]
        MOV      R0,#+1
        STRB     R0,[R5, #+2]
        BL       ProbeCom_PktModifier
        STRB     R0,[R5, #+3]
        ADDS     R5,R5,#+4
        MOV      R0,#+7
        MOVS     R6,R0
        MOV      R0,#+0
        MOVS     R8,R0
        MOV      R0,#+0
        MOVS     R7,R0
??ProbeCom_ReqRdMulti_2:
        LDR      R0,[SP, #+4]
        CMP      R0,R6
        BCC      ??ProbeCom_ReqRdMulti_3
        LDRB     R0,[R4, #+0]
        MOVS     R10,R0
        LDRB     R0,[R4, #+4]
        LDRB     R1,[R4, #+3]
        ADDS     R0,R1,R0, LSL #+8
        MOVS     R9,R0
        LDRB     R0,[R4, #+2]
        ADDS     R9,R0,R9, LSL #+8
        LDRB     R0,[R4, #+1]
        ADDS     R9,R0,R9, LSL #+8
        ADDS     R4,R4,#+5
        ADDS     R6,R6,#+5
        ADDS     R11,R10,R11
        LDR      R0,[SP, #+8]
        CMP      R0,R11
        BCS      ??ProbeCom_ReqRdMulti_4
        LDR      R0,[SP, #+0]
        MOVS     R5,R0
        MOV      R1,#+253
        MOVS     R0,R5
        BL       ProbeCom_ReqErr
        MOVS     R11,R0
        MOVS     R0,R11
        B        ??ProbeCom_ReqRdMulti_1
??ProbeCom_ReqRdMulti_4:
        ADDS     R8,R8,#+1
        ADDS     R7,R10,R7
        MOVS     R2,R10
        MOVS     R1,R9
        MOVS     R0,R5
        BL       Mem_Copy
        ADDS     R5,R10,R5
        B        ??ProbeCom_ReqRdMulti_2
??ProbeCom_ReqRdMulti_3:
        LDR      R0,??DataTable17_11
        LDR      R0,[R0, #+0]
        ADDS     R0,R8,R0
        LDR      R1,??DataTable17_11
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable18
        LDR      R0,[R0, #+0]
        ADDS     R0,R7,R0
        LDR      R1,??DataTable18
        STR      R0,[R1, #+0]
        MOVS     R0,R11
??ProbeCom_ReqRdMulti_1:
        POP      {R1-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeCom_ReqWr:
        PUSH     {R0,R1,R3-R8,LR}
        SUB      SP,SP,#+4
        MOVS     R4,R2
        MOV      R7,#+0
        ADD      R0,SP,#+12
        CMP      R4,#+8
        BCS      ??ProbeCom_ReqWr_0
        MOV      R1,#+254
        LDR      R0,[SP, #+8]
        BL       ProbeCom_ReqErr
        MOVS     R8,R0
        MOVS     R0,R8
        B        ??ProbeCom_ReqWr_1
??ProbeCom_ReqWr_0:
        ADD      R0,SP,#+4
        BL       ProbeCom_GetINT16U
        MOVS     R5,R0
        ADD      R0,SP,#+4
        BL       ProbeCom_GetINT32U
        MOVS     R6,R0
        ADDS     R0,R5,#+8
        CMP      R4,R0
        BEQ      ??ProbeCom_ReqWr_2
        MOV      R1,#+254
        LDR      R0,[SP, #+8]
        BL       ProbeCom_ReqErr
        MOVS     R8,R0
        MOVS     R0,R8
        B        ??ProbeCom_ReqWr_1
??ProbeCom_ReqWr_2:
        BL       CPU_SR_Save
        MOVS     R7,R0
        MOVS     R2,R5
        LDR      R1,[SP, #+4]
        MOVS     R0,R6
        BL       Mem_Copy
        MOVS     R0,R7
        BL       CPU_SR_Restore
        LDR      R0,??DataTable18_6
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable18_6
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable18_7
        LDR      R0,[R0, #+0]
        ADDS     R0,R5,R0
        LDR      R1,??DataTable18_7
        STR      R0,[R1, #+0]
        MOV      R1,#+3
        ORR      R1,R1,#0x8000
        ADD      R0,SP,#+8
        BL       ProbeCom_StoINT16U
        MOV      R1,#+1
        ADD      R0,SP,#+8
        BL       ProbeCom_StoINT08U
        BL       ProbeCom_PktModifier
        MOVS     R1,R0
        ANDS     R1,R1,#0xFF      ;; Zero extend
        ADD      R0,SP,#+8
        BL       ProbeCom_StoINT08U
        MOV      R0,#+4
        MOVS     R8,R0
        MOVS     R0,R8
??ProbeCom_ReqWr_1:
        ADD      SP,SP,#+16       ;; stack cleaning
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeCom_ReqWrMulti:
        PUSH     {R1-R11,LR}
        MOVS     R4,R0
        MOV      R11,#+0
        ADD      R0,SP,#+8
        LDR      R0,[SP, #+4]
        CMP      R0,#+7
        BCS      ??ProbeCom_ReqWrMulti_0
        MOV      R1,#+254
        LDR      R0,[SP, #+0]
        BL       ProbeCom_ReqErr
        MOVS     R10,R0
        MOVS     R0,R10
        B        ??ProbeCom_ReqWrMulti_1
??ProbeCom_ReqWrMulti_0:
        MOV      R0,#+7
        MOVS     R5,R0
        MOV      R0,#+0
        MOVS     R6,R0
        MOV      R0,#+0
        MOVS     R7,R0
??ProbeCom_ReqWrMulti_2:
        LDR      R0,[SP, #+4]
        CMP      R0,R5
        BCC      ??ProbeCom_ReqWrMulti_3
        LDRB     R0,[R4, #+0]
        MOVS     R9,R0
        LDRB     R0,[R4, #+4]
        LDRB     R1,[R4, #+3]
        ADDS     R0,R1,R0, LSL #+8
        MOVS     R8,R0
        LDRB     R0,[R4, #+2]
        ADDS     R8,R0,R8, LSL #+8
        LDRB     R0,[R4, #+1]
        ADDS     R8,R0,R8, LSL #+8
        ADDS     R4,R4,#+5
        LDR      R0,[SP, #+4]
        ADDS     R1,R9,R5
        CMP      R0,R1
        BCS      ??ProbeCom_ReqWrMulti_4
        MOV      R1,#+254
        LDR      R0,[SP, #+0]
        BL       ProbeCom_ReqErr
        MOVS     R10,R0
        MOVS     R0,R10
        B        ??ProbeCom_ReqWrMulti_1
??ProbeCom_ReqWrMulti_4:
        ADDS     R6,R6,#+1
        ADDS     R7,R9,R7
        BL       CPU_SR_Save
        MOVS     R11,R0
        MOVS     R2,R9
        MOVS     R1,R4
        MOVS     R0,R8
        BL       Mem_Copy
        MOVS     R0,R11
        BL       CPU_SR_Restore
        ADDS     R4,R9,R4
        ADDS     R0,R9,#+5
        ADDS     R5,R0,R5
        B        ??ProbeCom_ReqWrMulti_2
??ProbeCom_ReqWrMulti_3:
        LDR      R0,??DataTable18_6
        LDR      R0,[R0, #+0]
        ADDS     R0,R6,R0
        LDR      R1,??DataTable18_6
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable18_7
        LDR      R0,[R0, #+0]
        ADDS     R0,R7,R0
        LDR      R1,??DataTable18_7
        STR      R0,[R1, #+0]
        MOV      R1,#+8
        ORR      R1,R1,#0x8000
        MOVS     R0,SP
        BL       ProbeCom_StoINT16U
        MOV      R1,#+1
        MOVS     R0,SP
        BL       ProbeCom_StoINT08U
        BL       ProbeCom_PktModifier
        MOVS     R1,R0
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOVS     R0,SP
        BL       ProbeCom_StoINT08U
        MOV      R0,#+4
        MOVS     R10,R0
        MOVS     R0,R10
??ProbeCom_ReqWrMulti_1:
        POP      {R1-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16:
        DC32     ProbeCom_StrInBufData

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeCom_ReqStrIn:
        PUSH     {R0,R1,R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R2
        ADD      R0,SP,#+8
        CMP      R5,#+5
        BCS      ??ProbeCom_ReqStrIn_0
        MOV      R1,#+254
        LDR      R0,[SP, #+4]
        BL       ProbeCom_ReqErr
        MOVS     R9,R0
        MOVS     R0,R9
        B        ??ProbeCom_ReqStrIn_1
??ProbeCom_ReqStrIn_0:
        ADDS     R0,R4,#+2
        MOVS     R8,R0
        SUBS     R0,R5,#+4
        MOVS     R6,R0
        MOVS     R2,R6
        MOVS     R1,R8
        LDR      R0,??DataTable17
        BL       ProbeCom_BufWr
        MOVS     R7,R0
        CMP      R7,R6
        BCS      ??ProbeCom_ReqStrIn_2
        LDR      R0,??DataTable18_3
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable18_3
        STR      R0,[R1, #+0]
??ProbeCom_ReqStrIn_2:
        LDR      R0,??DataTable18_2
        LDR      R0,[R0, #+0]
        ADDS     R0,R7,R0
        LDR      R1,??DataTable18_2
        STR      R0,[R1, #+0]
        MOV      R1,#+10
        ORR      R1,R1,#0x8000
        ADD      R0,SP,#+4
        BL       ProbeCom_StoINT16U
        MOV      R1,#+1
        ADD      R0,SP,#+4
        BL       ProbeCom_StoINT08U
        BL       ProbeCom_PktModifier
        MOVS     R1,R0
        ANDS     R1,R1,#0xFF      ;; Zero extend
        ADD      R0,SP,#+4
        BL       ProbeCom_StoINT08U
        MOV      R0,#+4
        MOVS     R9,R0
        MOVS     R0,R9
??ProbeCom_ReqStrIn_1:
        POP      {R1-R9,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17:
        DC32     ProbeCom_StrInBuf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_1:
        DC32     ProbeCom_StrOutBufData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_2:
        DC32     ProbeCom_StrOutBuf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_3:
        DC32     ProbeCom_TerminalExecHandler

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_4:
        DC32     ProbeCom_TerminalExecuting

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_5:
        DC32     ProbeCom_TerminalInHandler

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_6:
        DC32     ProbeCom_TerminalOutBufPtr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_7:
        DC32     ProbeCom_TerminalOutBufIx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_8:
        DC32     ProbeCom_TerminalOutBufLen

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_9:
        DC32     ProbeCom_RxPktCtr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_10:
        DC32     ProbeCom_TxPktCtr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_11:
        DC32     ProbeCom_TxSymCtr

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeCom_ReqStrOut:
        PUSH     {R0,R1,R4-R8,LR}
        MOVS     R4,R2
        MOVS     R5,R3
        MOVS     R0,SP
        CMP      R4,#+4
        BEQ      ??ProbeCom_ReqStrOut_0
        MOV      R1,#+254
        LDR      R0,[SP, #+4]
        BL       ProbeCom_ReqErr
        MOVS     R8,R0
        MOVS     R0,R8
        B        ??ProbeCom_ReqStrOut_1
??ProbeCom_ReqStrOut_0:
        MOV      R1,#+9
        ORR      R1,R1,#0x8000
        ADD      R0,SP,#+4
        BL       ProbeCom_StoINT16U
        MOV      R1,#+1
        ADD      R0,SP,#+4
        BL       ProbeCom_StoINT08U
        BL       ProbeCom_PktModifier
        MOVS     R1,R0
        ANDS     R1,R1,#0xFF      ;; Zero extend
        ADD      R0,SP,#+4
        BL       ProbeCom_StoINT08U
        SUBS     R0,R5,#+5
        MOVS     R7,R0
        MOVS     R2,R7
        LDR      R1,[SP, #+4]
        LDR      R0,??DataTable21
        BL       ProbeCom_BufRd
        MOVS     R6,R0
        CMP      R6,#+0
        BNE      ??ProbeCom_ReqStrOut_2
        MOV      R1,#+248
        LDR      R0,[SP, #+4]
        BL       ProbeCom_ReqErr
        MOVS     R8,R0
        MOVS     R0,R8
        B        ??ProbeCom_ReqStrOut_1
??ProbeCom_ReqStrOut_2:
        MOV      R0,#+0
        LDR      R1,[SP, #+4]
        STRB     R0,[R6, +R1]
        LDR      R0,??DataTable18_4
        LDR      R0,[R0, #+0]
        ADDS     R0,R6,R0
        LDR      R1,??DataTable18_4
        STR      R0,[R1, #+0]
        ADDS     R0,R6,#+5
        MOVS     R8,R0
        MOVS     R0,R8
??ProbeCom_ReqStrOut_1:
        POP      {R1,R2,R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18:
        DC32     ProbeCom_TxSymByteCtr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_1:
        DC32     ProbeCom_ErrPktCtr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_2:
        DC32     ProbeCom_StrRxCtr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_3:
        DC32     ProbeCom_StrRxOvfErrCtr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_4:
        DC32     ProbeCom_StrTxCtr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_5:
        DC32     ProbeCom_StrTxOvfErrCtr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_6:
        DC32     ProbeCom_RxSymCtr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_7:
        DC32     ProbeCom_RxSymByteCtr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_8:
        DC32     0x12345678

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeCom_ReqTerminalExec:
        PUSH     {R1,R3-R10,LR}
        MOVS     R4,R0
        MOVS     R5,R2
        MOV      R10,#+0
        ADD      R0,SP,#+4
        CMP      R5,#+5
        BCS      ??ProbeCom_ReqTerminalExec_0
        MOV      R1,#+254
        LDR      R0,[SP, #+0]
        BL       ProbeCom_ReqErr
        MOVS     R8,R0
        MOVS     R0,R8
        B        ??ProbeCom_ReqTerminalExec_1
??ProbeCom_ReqTerminalExec_0:
        BL       CPU_SR_Save
        MOVS     R10,R0
        LDR      R0,??DataTable21_2
        LDR      R0,[R0, #+0]
        MOVS     R6,R0
        MOVS     R0,R10
        BL       CPU_SR_Restore
        CMP      R6,#+0
        BEQ      ??ProbeCom_ReqTerminalExec_2
        ADDS     R0,R4,#+2
        MOVS     R9,R0
        SUBS     R0,R5,#+2
        MOVS     R7,R0
        MOV      R0,#+1
        LDR      R1,??DataTable21_3
        STRB     R0,[R1, #+0]
        MOVS     R1,R7
        MOVS     R0,R9
        MOV      LR,PC
        BX       R6
??ProbeCom_ReqTerminalExec_2:
        MOV      R1,#+11
        ORR      R1,R1,#0x8000
        MOVS     R0,SP
        BL       ProbeCom_StoINT16U
        MOV      R1,#+1
        MOVS     R0,SP
        BL       ProbeCom_StoINT08U
        BL       ProbeCom_PktModifier
        MOVS     R1,R0
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOVS     R0,SP
        BL       ProbeCom_StoINT08U
        MOV      R0,#+4
        MOVS     R8,R0
        MOVS     R0,R8
??ProbeCom_ReqTerminalExec_1:
        POP      {R1,R2,R4-R10,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19:
        DC32     ProbeCom_EndiannessTest

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeCom_ReqTerminalIn:
        PUSH     {R1,R3-R10,LR}
        MOVS     R4,R0
        MOVS     R5,R2
        MOV      R10,#+0
        ADD      R0,SP,#+4
        CMP      R5,#+5
        BCS      ??ProbeCom_ReqTerminalIn_0
        MOV      R1,#+254
        LDR      R0,[SP, #+0]
        BL       ProbeCom_ReqErr
        MOVS     R8,R0
        MOVS     R0,R8
        B        ??ProbeCom_ReqTerminalIn_1
??ProbeCom_ReqTerminalIn_0:
        BL       CPU_SR_Save
        MOVS     R10,R0
        LDR      R0,??DataTable21_4
        LDR      R0,[R0, #+0]
        MOVS     R6,R0
        MOVS     R0,R10
        BL       CPU_SR_Restore
        CMP      R6,#+0
        BEQ      ??ProbeCom_ReqTerminalIn_2
        ADDS     R0,R4,#+4
        MOVS     R9,R0
        SUBS     R0,R5,#+4
        MOVS     R7,R0
        MOVS     R1,R7
        MOVS     R0,R9
        MOV      LR,PC
        BX       R6
??ProbeCom_ReqTerminalIn_2:
        MOV      R1,#+13
        ORR      R1,R1,#0x8000
        MOVS     R0,SP
        BL       ProbeCom_StoINT16U
        MOV      R1,#+1
        MOVS     R0,SP
        BL       ProbeCom_StoINT08U
        BL       ProbeCom_PktModifier
        MOVS     R1,R0
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOVS     R0,SP
        BL       ProbeCom_StoINT08U
        MOV      R0,#+4
        MOVS     R8,R0
        MOVS     R0,R8
??ProbeCom_ReqTerminalIn_1:
        POP      {R1,R2,R4-R10,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeCom_ReqTerminalOut:
        PUSH     {R0,R1,R4-R11,LR}
        SUB      SP,SP,#+4
        MOVS     R4,R2
        MOVS     R5,R3
        MOV      R11,#+0
        ADD      R0,SP,#+4
        CMP      R4,#+4
        BEQ      ??ProbeCom_ReqTerminalOut_0
        MOV      R1,#+254
        LDR      R0,[SP, #+8]
        BL       ProbeCom_ReqErr
        MOVS     R8,R0
        MOVS     R0,R8
        B        ??ProbeCom_ReqTerminalOut_1
??ProbeCom_ReqTerminalOut_0:
        BL       CPU_SR_Save
        MOVS     R11,R0
        LDR      R0,??DataTable21_5
        LDR      R0,[R0, #+0]
        MOVS     R10,R0
        LDR      R0,??DataTable21_6
        LDR      R0,[R0, #+0]
        MOVS     R6,R0
        LDR      R0,??DataTable21_1
        LDR      R0,[R0, #+0]
        MOVS     R7,R0
        MOVS     R0,R11
        BL       CPU_SR_Restore
        CMP      R10,#+0
        BNE      ??ProbeCom_ReqTerminalOut_2
        MOV      R1,#+246
        LDR      R0,[SP, #+8]
        BL       ProbeCom_ReqErr
        MOVS     R8,R0
        MOVS     R0,R8
        B        ??ProbeCom_ReqTerminalOut_1
??ProbeCom_ReqTerminalOut_2:
        CMP      R6,R7
        BNE      ??ProbeCom_ReqTerminalOut_3
        MOV      R1,#+246
        LDR      R0,[SP, #+8]
        BL       ProbeCom_ReqErr
        MOVS     R8,R0
        MOVS     R0,R8
        B        ??ProbeCom_ReqTerminalOut_1
??ProbeCom_ReqTerminalOut_3:
        SUBS     R0,R7,R6
        MOVS     R9,R0
        SUBS     R0,R5,#+5
        CMP      R0,R9
        BCS      ??ProbeCom_ReqTerminalOut_4
        SUBS     R0,R5,#+5
        MOVS     R9,R0
??ProbeCom_ReqTerminalOut_4:
        MOV      R1,#+12
        ORR      R1,R1,#0x8000
        ADD      R0,SP,#+8
        BL       ProbeCom_StoINT16U
        MOV      R1,#+1
        ADD      R0,SP,#+8
        BL       ProbeCom_StoINT08U
        MOV      R1,#+0
        ADD      R0,SP,#+8
        BL       ProbeCom_StoINT08U
        MOVS     R2,R9
        ADDS     R1,R6,R10
        LDR      R0,[SP, #+8]
        BL       Mem_Copy
        MOV      R0,#+0
        LDR      R1,[SP, #+8]
        STRB     R0,[R9, +R1]
        BL       CPU_SR_Save
        MOVS     R11,R0
        ADDS     R0,R9,R6
        LDR      R1,??DataTable21_6
        STR      R0,[R1, #+0]
        MOVS     R0,R11
        BL       CPU_SR_Restore
        ADDS     R0,R9,R6
        CMP      R0,R7
        BCC      ??ProbeCom_ReqTerminalOut_5
        BL       ProbeCom_OS_TerminalOutSignal
??ProbeCom_ReqTerminalOut_5:
        ADDS     R0,R9,#+5
        MOVS     R8,R0
        MOVS     R0,R8
??ProbeCom_ReqTerminalOut_1:
        POP      {R1-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21:
        DC32     ProbeCom_StrOutBuf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_1:
        DC32     ProbeCom_TerminalOutBufLen

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_2:
        DC32     ProbeCom_TerminalExecHandler

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_3:
        DC32     ProbeCom_TerminalExecuting

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_4:
        DC32     ProbeCom_TerminalInHandler

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_5:
        DC32     ProbeCom_TerminalOutBufPtr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_6:
        DC32     ProbeCom_TerminalOutBufIx

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeCom_BufInit:
        STR      R2,[R0, #+0]
        MOV      R3,#+0
        STR      R3,[R0, #+4]
        MOV      R3,#+0
        STR      R3,[R0, #+8]
        STR      R1,[R0, #+12]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeCom_BufRd:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+12
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R11,#+0
        BL       CPU_SR_Save
        MOVS     R11,R0
        LDR      R0,[R4, #+4]
        MOVS     R8,R0
        LDR      R0,[R4, #+8]
        MOVS     R9,R0
        LDR      R0,[R4, #+0]
        MOVS     R10,R0
        CMP      R9,R8
        BNE      ??ProbeCom_BufRd_0
        MOVS     R0,R11
        BL       CPU_SR_Restore
        MOV      R0,#+0
        B        ??ProbeCom_BufRd_1
??ProbeCom_BufRd_0:
        CMP      R8,R9
        BCS      ??ProbeCom_BufRd_2
        SUBS     R1,R9,R8
        STR      R1,[SP, #+4]
        B        ??ProbeCom_BufRd_3
??ProbeCom_BufRd_2:
        SUBS     R1,R10,R8
        STR      R1,[SP, #+4]
??ProbeCom_BufRd_3:
        LDR      R0,[SP, #+4]
        CMP      R0,R6
        BCS      ??ProbeCom_BufRd_4
        LDR      R7,[SP, #+4]
        B        ??ProbeCom_BufRd_5
??ProbeCom_BufRd_4:
        MOVS     R7,R6
??ProbeCom_BufRd_5:
        MOVS     R2,R7
        LDR      R0,[R4, #+12]
        ADDS     R1,R8,R0
        MOVS     R0,R5
        BL       Mem_Copy
        CMP      R8,R9
        BCC      ??ProbeCom_BufRd_6
        CMP      R9,#+0
        BNE      ??ProbeCom_BufRd_7
??ProbeCom_BufRd_6:
        ADDS     R8,R7,R8
        CMP      R8,R10
        BNE      ??ProbeCom_BufRd_8
        MOV      R0,#+0
        STR      R0,[R4, #+4]
        B        ??ProbeCom_BufRd_9
??ProbeCom_BufRd_8:
        STR      R8,[R4, #+4]
??ProbeCom_BufRd_9:
        MOVS     R0,R11
        BL       CPU_SR_Restore
        MOVS     R0,R7
        B        ??ProbeCom_BufRd_1
??ProbeCom_BufRd_7:
        ADDS     R8,R7,R8
        ADDS     R5,R7,R5
        SUBS     R1,R6,R7
        STR      R1,[SP, #+0]
        LDR      R0,[SP, #+0]
        CMP      R9,R0
        BCS      ??ProbeCom_BufRd_10
        MOVS     R7,R9
        B        ??ProbeCom_BufRd_11
??ProbeCom_BufRd_10:
        LDR      R7,[SP, #+0]
??ProbeCom_BufRd_11:
        CMP      R7,#+0
        BEQ      ??ProbeCom_BufRd_12
        MOVS     R2,R7
        LDR      R1,[R4, #+12]
        MOVS     R0,R5
        BL       Mem_Copy
        STR      R7,[R4, #+4]
        B        ??ProbeCom_BufRd_13
??ProbeCom_BufRd_12:
        CMP      R8,R10
        BNE      ??ProbeCom_BufRd_14
        MOV      R0,#+0
        STR      R0,[R4, #+4]
        B        ??ProbeCom_BufRd_13
??ProbeCom_BufRd_14:
        STR      R8,[R4, #+4]
??ProbeCom_BufRd_13:
        MOVS     R0,R11
        BL       CPU_SR_Restore
        LDR      R0,[SP, #+0]
        SUBS     R0,R6,R0
        ADDS     R0,R7,R0
??ProbeCom_BufRd_1:
        POP      {R1-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeCom_BufWr:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+12
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R11,#+0
        BL       CPU_SR_Save
        MOVS     R11,R0
        LDR      R0,[R4, #+4]
        MOVS     R9,R0
        LDR      R0,[R4, #+8]
        MOVS     R10,R0
        LDR      R0,[R4, #+0]
        STR      R0,[SP, #+0]
        CMP      R10,R9
        BCS      ??ProbeCom_BufWr_0
        SUBS     R0,R9,R10
        SUBS     R0,R0,#+1
        MOVS     R8,R0
        B        ??ProbeCom_BufWr_1
??ProbeCom_BufWr_0:
        CMP      R9,#+0
        BNE      ??ProbeCom_BufWr_2
        LDR      R0,[SP, #+0]
        SUBS     R0,R0,R10
        SUBS     R0,R0,#+1
        MOVS     R8,R0
        B        ??ProbeCom_BufWr_1
??ProbeCom_BufWr_2:
        LDR      R0,[SP, #+0]
        SUBS     R0,R0,R10
        MOVS     R8,R0
??ProbeCom_BufWr_1:
        CMP      R8,R6
        BCS      ??ProbeCom_BufWr_3
        MOVS     R7,R8
        B        ??ProbeCom_BufWr_4
??ProbeCom_BufWr_3:
        MOVS     R7,R6
??ProbeCom_BufWr_4:
        MOVS     R2,R7
        MOVS     R1,R5
        LDR      R0,[R4, #+12]
        ADDS     R0,R10,R0
        BL       Mem_Copy
        CMP      R10,R9
        BCC      ??ProbeCom_BufWr_5
        CMP      R9,#+0
        BNE      ??ProbeCom_BufWr_6
??ProbeCom_BufWr_5:
        ADDS     R0,R7,R10
        STR      R0,[R4, #+8]
        MOVS     R0,R11
        BL       CPU_SR_Restore
        MOVS     R0,R7
        B        ??ProbeCom_BufWr_7
??ProbeCom_BufWr_6:
        ADDS     R10,R7,R10
        ADDS     R5,R7,R5
        SUBS     R1,R6,R7
        STR      R1,[SP, #+4]
        SUBS     R0,R9,#+1
        LDR      R1,[SP, #+4]
        CMP      R0,R1
        BCS      ??ProbeCom_BufWr_8
        SUBS     R7,R9,#+1
        B        ??ProbeCom_BufWr_9
??ProbeCom_BufWr_8:
        LDR      R7,[SP, #+4]
??ProbeCom_BufWr_9:
        CMP      R7,#+0
        BEQ      ??ProbeCom_BufWr_10
        MOVS     R2,R7
        MOVS     R1,R5
        LDR      R0,[R4, #+12]
        BL       Mem_Copy
        STR      R7,[R4, #+8]
        B        ??ProbeCom_BufWr_11
??ProbeCom_BufWr_10:
        LDR      R0,[SP, #+0]
        CMP      R10,R0
        BNE      ??ProbeCom_BufWr_12
        MOV      R0,#+0
        STR      R0,[R4, #+8]
        B        ??ProbeCom_BufWr_11
??ProbeCom_BufWr_12:
        STR      R10,[R4, #+8]
??ProbeCom_BufWr_11:
        MOVS     R0,R11
        BL       CPU_SR_Restore
        LDR      R0,[SP, #+4]
        SUBS     R0,R6,R0
        ADDS     R0,R7,R0
??ProbeCom_BufWr_7:
        POP      {R1-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeCom_BufIsEmpty:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOV      R6,#+0
        BL       CPU_SR_Save
        MOVS     R6,R0
        LDR      R0,[R4, #+4]
        LDR      R1,[R4, #+8]
        CMP      R0,R1
        BNE      ??ProbeCom_BufIsEmpty_0
        MOV      R5,#+1
        B        ??ProbeCom_BufIsEmpty_1
??ProbeCom_BufIsEmpty_0:
        MOV      R5,#+0
??ProbeCom_BufIsEmpty_1:
        MOVS     R0,R6
        BL       CPU_SR_Restore
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeCom_GetINT08U:
        LDR      R1,[R0, #+0]
        ADDS     R2,R1,#+1
        STR      R2,[R0, #+0]
        LDRB     R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeCom_GetINT16U:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R0,R4
        BL       ProbeCom_GetINT08U
        MOVS     R5,R0
        MOVS     R0,R4
        BL       ProbeCom_GetINT08U
        MOVS     R6,R0
        ORRS     R0,R5,R6, LSL #+8
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeCom_GetINT32U:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R0,R4
        BL       ProbeCom_GetINT16U
        MOVS     R6,R0
        MOVS     R0,R4
        BL       ProbeCom_GetINT16U
        MOVS     R5,R0
        ORRS     R0,R6,R5, LSL #+16
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeCom_StoINT08U:
        LDR      R2,[R0, #+0]
        ADDS     R3,R2,#+1
        STR      R3,[R0, #+0]
        STRB     R1,[R2, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeCom_StoINT16U:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R1,R5
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOVS     R0,R4
        BL       ProbeCom_StoINT08U
        LSL      R5,R5,#+16
        LSRS     R5,R5,#+16
        LSRS     R1,R5,#+8
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOVS     R0,R4
        BL       ProbeCom_StoINT08U
        POP      {R0,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
// 2 277 bytes in section .bss
// 5 712 bytes in section .text
// 
// 5 712 bytes of CODE memory
// 2 277 bytes of DATA memory
//
//Errors: none
//Warnings: none
