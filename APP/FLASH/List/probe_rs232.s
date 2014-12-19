///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       18/Dec/2014  19:24:28
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\uC-Probe\Target\Communication\Generic\RS-232\Source\probe_rs232.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\uC-Probe\Target\Communication\Generic\RS-232\Source\probe_rs232.c"
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
//        Bench\Bridge_Host_OS\APP\FLASH\List\probe_rs232.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN ProbeCom_ParseRxPkt
        EXTERN ProbeRS232_InitTarget
        EXTERN ProbeRS232_OS_Init
        EXTERN ProbeRS232_OS_Pend
        EXTERN ProbeRS232_OS_Post
        EXTERN ProbeRS232_Tx1
        EXTERN ProbeRS232_TxIntDis
        EXTERN ProbeRS232_TxIntEn

        PUBLIC ProbeRS232_Init
        PUBLIC ProbeRS232_RxCtr
        PUBLIC ProbeRS232_RxHandler
        PUBLIC ProbeRS232_Task
        PUBLIC ProbeRS232_TxCtr
        PUBLIC ProbeRS232_TxHandler


        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute CPU_INT32U ProbeRS232_RxCtr
ProbeRS232_RxCtr:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute CPU_INT32U ProbeRS232_TxCtr
ProbeRS232_TxCtr:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
ProbeRS232_RxState:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ProbeRS232_RxLenRem:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ProbeRS232_RxLen:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ProbeRS232_RxBuf:
        DS8 512

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ProbeRS232_RxBufWrIx:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
ProbeRS232_TxState:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
ProbeRS232_TxActiveFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ProbeRS232_TxLen:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ProbeRS232_TxBuf:
        DS8 512

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
ProbeRS232_TxBufInUse:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ProbeRS232_TxBufRdIx:
        DS8 4

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeRS232_Init:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOV      R0,#+0
        LDR      R1,??DataTable7
        STRB     R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable7_1
        STRB     R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable7_2
        STR      R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable7_3
        STRB     R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable7_4
        STRB     R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable7_5
        STR      R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable7_6
        STR      R0,[R1, #+0]
        BL       ProbeRS232_OS_Init
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??ProbeRS232_Init_0
        MOV      R0,#+0
        B        ??ProbeRS232_Init_1
??ProbeRS232_Init_0:
        MOVS     R0,R4
        BL       ProbeRS232_InitTarget
        MOV      R0,#+1
??ProbeRS232_Init_1:
        POP      {R1,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeRS232_Task:
        PUSH     {R4,LR}
??ProbeRS232_Task_0:
        BL       ProbeRS232_OS_Pend
        BL       ProbeRS232_ParseRxPkt
        MOVS     R4,R0
        CMP      R4,#+0
        BEQ      ??ProbeRS232_Task_0
        LDR      R0,??DataTable7_2
        STR      R4,[R0, #+0]
        BL       ProbeRS232_TxStart
        B        ??ProbeRS232_Task_0

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeRS232_RxHandler:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR      R0,??DataTable7_5
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable7_5
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+10
        BHI      ??ProbeRS232_RxHandler_1
        LDRB     R1,[PC, R0]
        ADD      PC,PC,R1, LSL #+2
        DATA
??ProbeRS232_RxHandler_0:
        DC8      0x2,0xB,0x17,0x23
        DC8      0x2F,0x37,0x54,0x58
        DC8      0x5C,0x6C,0x70,0x0
        ARM
??ProbeRS232_RxHandler_2:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+117
        BNE      ??ProbeRS232_RxHandler_3
        MOV      R0,#+1
        LDR      R1,??DataTable7
        STRB     R0,[R1, #+0]
        BL       ProbeRS232_RxBufClr
??ProbeRS232_RxHandler_3:
        B        ??ProbeRS232_RxHandler_4
??ProbeRS232_RxHandler_5:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+67
        BNE      ??ProbeRS232_RxHandler_6
        MOV      R0,#+2
        LDR      R1,??DataTable7
        STRB     R0,[R1, #+0]
        B        ??ProbeRS232_RxHandler_7
??ProbeRS232_RxHandler_6:
        MOV      R0,#+0
        LDR      R1,??DataTable7
        STRB     R0,[R1, #+0]
??ProbeRS232_RxHandler_7:
        B        ??ProbeRS232_RxHandler_4
??ProbeRS232_RxHandler_8:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+80
        BNE      ??ProbeRS232_RxHandler_9
        MOV      R0,#+3
        LDR      R1,??DataTable7
        STRB     R0,[R1, #+0]
        B        ??ProbeRS232_RxHandler_10
??ProbeRS232_RxHandler_9:
        MOV      R0,#+0
        LDR      R1,??DataTable7
        STRB     R0,[R1, #+0]
??ProbeRS232_RxHandler_10:
        B        ??ProbeRS232_RxHandler_4
??ProbeRS232_RxHandler_11:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+114
        BNE      ??ProbeRS232_RxHandler_12
        MOV      R0,#+4
        LDR      R1,??DataTable7
        STRB     R0,[R1, #+0]
        B        ??ProbeRS232_RxHandler_13
??ProbeRS232_RxHandler_12:
        MOV      R0,#+0
        LDR      R1,??DataTable7
        STRB     R0,[R1, #+0]
??ProbeRS232_RxHandler_13:
        B        ??ProbeRS232_RxHandler_4
??ProbeRS232_RxHandler_14:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable7_7
        STR      R0,[R1, #+0]
        MOV      R0,#+5
        LDR      R1,??DataTable7
        STRB     R0,[R1, #+0]
        B        ??ProbeRS232_RxHandler_4
??ProbeRS232_RxHandler_15:
        LDR      R0,??DataTable7_7
        LDR      R0,[R0, #+0]
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        ORRS     R0,R0,R1, LSL #+8
        LDR      R1,??DataTable7_7
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable7_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??ProbeRS232_RxHandler_16
        LDR      R0,??DataTable7_7
        LDR      R0,[R0, #+0]
        MOV      R1,#+1
        ORR      R1,R1,#0x200
        CMP      R0,R1
        BCC      ??ProbeRS232_RxHandler_17
??ProbeRS232_RxHandler_16:
        MOV      R0,#+0
        LDR      R1,??DataTable7
        STRB     R0,[R1, #+0]
        B        ??ProbeRS232_RxHandler_18
??ProbeRS232_RxHandler_17:
        LDR      R0,??DataTable7_7
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable7_8
        STR      R0,[R1, #+0]
        MOV      R0,#+6
        LDR      R1,??DataTable7
        STRB     R0,[R1, #+0]
??ProbeRS232_RxHandler_18:
        B        ??ProbeRS232_RxHandler_4
??ProbeRS232_RxHandler_19:
        MOV      R0,#+7
        LDR      R1,??DataTable7
        STRB     R0,[R1, #+0]
        B        ??ProbeRS232_RxHandler_4
??ProbeRS232_RxHandler_20:
        MOV      R0,#+8
        LDR      R1,??DataTable7
        STRB     R0,[R1, #+0]
        B        ??ProbeRS232_RxHandler_4
??ProbeRS232_RxHandler_21:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       ProbeRS232_RxStoINT8U
        LDR      R0,??DataTable7_7
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR      R1,??DataTable7_7
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable7_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??ProbeRS232_RxHandler_22
        MOV      R0,#+9
        LDR      R1,??DataTable7
        STRB     R0,[R1, #+0]
??ProbeRS232_RxHandler_22:
        B        ??ProbeRS232_RxHandler_4
??ProbeRS232_RxHandler_23:
        MOV      R0,#+10
        LDR      R1,??DataTable7
        STRB     R0,[R1, #+0]
        B        ??ProbeRS232_RxHandler_4
??ProbeRS232_RxHandler_24:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+47
        BNE      ??ProbeRS232_RxHandler_25
        BL       ProbeRS232_RxPkt
??ProbeRS232_RxHandler_25:
        MOV      R0,#+0
        LDR      R1,??DataTable7
        STRB     R0,[R1, #+0]
        B        ??ProbeRS232_RxHandler_4
??ProbeRS232_RxHandler_1:
        MOV      R0,#+0
        LDR      R1,??DataTable7
        STRB     R0,[R1, #+0]
??ProbeRS232_RxHandler_4:
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeRS232_TxHandler:
        PUSH     {R4,LR}
        LDR      R0,??DataTable7_1
        LDRB     R0,[R0, #+0]
        LDR      R1,??DataTable7_2
        LDR      R1,[R1, #+0]
        ORRS     R0,R1,R0
        CMP      R0,#+0
        BEQ      ??ProbeRS232_TxHandler_1
        LDR      R0,??DataTable7_6
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable7_6
        STR      R0,[R1, #+0]
??ProbeRS232_TxHandler_1:
        LDR      R0,??DataTable7_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+10
        BHI      ??ProbeRS232_TxHandler_2
        LDRB     R1,[PC, R0]
        ADD      PC,PC,R1, LSL #+2
        DATA
??ProbeRS232_TxHandler_0:
        DC8      0x2,0x17,0x1D,0x23
        DC8      0x29,0x33,0x3E,0x44
        DC8      0x4A,0x64,0x6A,0x0
        ARM
??ProbeRS232_TxHandler_3:
        LDR      R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??ProbeRS232_TxHandler_4
        MOV      R0,#+117
        BL       ProbeRS232_Tx1
        MOV      R0,#+1
        LDR      R1,??DataTable7_3
        STRB     R0,[R1, #+0]
        MOV      R0,#+1
        LDR      R1,??DataTable7_1
        STRB     R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable7_9
        STR      R0,[R1, #+0]
        B        ??ProbeRS232_TxHandler_5
??ProbeRS232_TxHandler_4:
        MOV      R0,#+0
        LDR      R1,??DataTable7_3
        STRB     R0,[R1, #+0]
        BL       ProbeRS232_TxIntDis
??ProbeRS232_TxHandler_5:
        B        ??ProbeRS232_TxHandler_6
??ProbeRS232_TxHandler_7:
        MOV      R0,#+67
        BL       ProbeRS232_Tx1
        MOV      R0,#+2
        LDR      R1,??DataTable7_1
        STRB     R0,[R1, #+0]
        B        ??ProbeRS232_TxHandler_6
??ProbeRS232_TxHandler_8:
        MOV      R0,#+80
        BL       ProbeRS232_Tx1
        MOV      R0,#+3
        LDR      R1,??DataTable7_1
        STRB     R0,[R1, #+0]
        B        ??ProbeRS232_TxHandler_6
??ProbeRS232_TxHandler_9:
        MOV      R0,#+114
        BL       ProbeRS232_Tx1
        MOV      R0,#+4
        LDR      R1,??DataTable7_1
        STRB     R0,[R1, #+0]
        B        ??ProbeRS232_TxHandler_6
??ProbeRS232_TxHandler_10:
        LDR      R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        MOVS     R4,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       ProbeRS232_Tx1
        MOV      R0,#+5
        LDR      R1,??DataTable7_1
        STRB     R0,[R1, #+0]
        B        ??ProbeRS232_TxHandler_6
??ProbeRS232_TxHandler_11:
        LDR      R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+8
        MOVS     R4,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       ProbeRS232_Tx1
        MOV      R0,#+6
        LDR      R1,??DataTable7_1
        STRB     R0,[R1, #+0]
        B        ??ProbeRS232_TxHandler_6
??ProbeRS232_TxHandler_12:
        MOV      R0,#+0
        BL       ProbeRS232_Tx1
        MOV      R0,#+7
        LDR      R1,??DataTable7_1
        STRB     R0,[R1, #+0]
        B        ??ProbeRS232_TxHandler_6
??ProbeRS232_TxHandler_13:
        MOV      R0,#+0
        BL       ProbeRS232_Tx1
        MOV      R0,#+8
        LDR      R1,??DataTable7_1
        STRB     R0,[R1, #+0]
        B        ??ProbeRS232_TxHandler_6
??ProbeRS232_TxHandler_14:
        LDR      R0,??DataTable7_9
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable7_10
        LDRB     R0,[R0, +R1]
        MOVS     R4,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       ProbeRS232_Tx1
        LDR      R0,??DataTable7_9
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable7_9
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable7_9
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable7_2
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BCC      ??ProbeRS232_TxHandler_15
        MOV      R0,#+9
        LDR      R1,??DataTable7_1
        STRB     R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable7_2
        STR      R0,[R1, #+0]
??ProbeRS232_TxHandler_15:
        B        ??ProbeRS232_TxHandler_6
??ProbeRS232_TxHandler_16:
        MOV      R0,#+0
        BL       ProbeRS232_Tx1
        MOV      R0,#+10
        LDR      R1,??DataTable7_1
        STRB     R0,[R1, #+0]
        B        ??ProbeRS232_TxHandler_6
??ProbeRS232_TxHandler_17:
        MOV      R0,#+47
        BL       ProbeRS232_Tx1
        MOV      R0,#+0
        LDR      R1,??DataTable7_1
        STRB     R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable7_4
        STRB     R0,[R1, #+0]
        B        ??ProbeRS232_TxHandler_6
??ProbeRS232_TxHandler_2:
        MOV      R0,#+0
        LDR      R1,??DataTable7_1
        STRB     R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable7_3
        STRB     R0,[R1, #+0]
        BL       ProbeRS232_TxIntDis
??ProbeRS232_TxHandler_6:
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeRS232_ParseRxPkt:
        PUSH     {R4,LR}
        LDR      R0,??DataTable7_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE      ??ProbeRS232_ParseRxPkt_0
        MOV      R0,#+0
        B        ??ProbeRS232_ParseRxPkt_1
??ProbeRS232_ParseRxPkt_0:
        MOV      R0,#+1
        LDR      R1,??DataTable7_4
        STRB     R0,[R1, #+0]
        MOV      R3,#+512
        LDR      R0,??DataTable7_8
        LDR      R2,[R0, #+0]
        LDR      R1,??DataTable7_10
        LDR      R0,??DataTable7_11
        BL       ProbeCom_ParseRxPkt
        MOVS     R4,R0
        MOVS     R0,R4
??ProbeRS232_ParseRxPkt_1:
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeRS232_RxPkt:
        PUSH     {R12,LR}
        BL       ProbeRS232_OS_Post
        POP      {R0,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeRS232_RxStoINT8U:
        LDR      R1,??DataTable7_12
        LDR      R1,[R1, #+0]
        CMP      R1,#+512
        BCS      ??ProbeRS232_RxStoINT8U_0
        LDR      R1,??DataTable7_12
        LDR      R1,[R1, #+0]
        LDR      R2,??DataTable7_11
        STRB     R0,[R1, +R2]
        LDR      R1,??DataTable7_12
        LDR      R1,[R1, #+0]
        ADDS     R1,R1,#+1
        LDR      R2,??DataTable7_12
        STR      R1,[R2, #+0]
??ProbeRS232_RxStoINT8U_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeRS232_RxBufClr:
        MOV      R0,#+0
        LDR      R1,??DataTable7_12
        STR      R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeRS232_TxStart:
        PUSH     {R12,LR}
        LDR      R0,??DataTable7_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??ProbeRS232_TxStart_0
        BL       ProbeRS232_TxHandler
        BL       ProbeRS232_TxIntEn
??ProbeRS232_TxStart_0:
        POP      {R0,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     ProbeRS232_RxState

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     ProbeRS232_TxState

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     ProbeRS232_TxLen

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     ProbeRS232_TxActiveFlag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     ProbeRS232_TxBufInUse

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DC32     ProbeRS232_RxCtr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_6:
        DC32     ProbeRS232_TxCtr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_7:
        DC32     ProbeRS232_RxLenRem

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_8:
        DC32     ProbeRS232_RxLen

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_9:
        DC32     ProbeRS232_TxBufRdIx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_10:
        DC32     ProbeRS232_TxBuf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_11:
        DC32     ProbeRS232_RxBuf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_12:
        DC32     ProbeRS232_RxBufWrIx

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
// 1 056 bytes in section .bss
// 1 576 bytes in section .text
// 
// 1 576 bytes of CODE memory
// 1 056 bytes of DATA memory
//
//Errors: none
//Warnings: none
