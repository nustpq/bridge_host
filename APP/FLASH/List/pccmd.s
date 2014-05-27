///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V5.40.0.51500/W32 for ARM    25/Jun/2012  10:12:53 /
// Copyright (C) 1999-2009 IAR Systems AB.                                    /
//                                                                            /
//    Cpu mode     =  arm                                                     /
//    Endian       =  little                                                  /
//    Source file  =  G:\SVN Dir\PQ\Saturn II Platform\Saturn_II_Host_OS\Noah /
//                    \pccmd.c                                                /
//    Command line =  "G:\SVN Dir\PQ\Saturn II Platform\Saturn_II_Host_OS\Noa /
//                    h\pccmd.c" -lcN "G:\SVN Dir\PQ\Saturn II                /
//                    Platform\Saturn_II_Host_OS\APP\FLASH\List\" -lb         /
//                    "G:\SVN Dir\PQ\Saturn II Platform\Saturn_II_Host_OS\APP /
//                    \FLASH\List\" -o "G:\SVN Dir\PQ\Saturn II               /
//                    Platform\Saturn_II_Host_OS\APP\FLASH\Obj\" --no_cse     /
//                    --no_unroll --no_inline --no_code_motion --no_tbaa      /
//                    --no_clustering --no_scheduling --debug                 /
//                    --endian=little --cpu=ARM7TDMI -e --fpu=None            /
//                    --dlib_config "D:\Program Files\IAR Systems\Embedded    /
//                    Workbench 5.4ARM\arm\INC\DLib_Config_Normal.h" -I       /
//                    "G:\SVN Dir\PQ\Saturn II Platform\Saturn_II_Host_OS\APP /
//                    \" -I "G:\SVN Dir\PQ\Saturn II                          /
//                    Platform\Saturn_II_Host_OS\APP\..\uC-CPU\ARM\IAR\" -I   /
//                    "G:\SVN Dir\PQ\Saturn II Platform\Saturn_II_Host_OS\APP /
//                    \..\BSP\" -I "G:\SVN Dir\PQ\Saturn II                   /
//                    Platform\Saturn_II_Host_OS\APP\..\Driver\" -I "G:\SVN   /
//                    Dir\PQ\Saturn II Platform\Saturn_II_Host_OS\APP\..\Noah /
//                    \" -I "G:\SVN Dir\PQ\Saturn II                          /
//                    Platform\Saturn_II_Host_OS\APP\..\Shell\" -I "G:\SVN    /
//                    Dir\PQ\Saturn II Platform\Saturn_II_Host_OS\APP\..\uCOS /
//                    -II\Source\" -I "G:\SVN Dir\PQ\Saturn II                /
//                    Platform\Saturn_II_Host_OS\APP\..\uC-CPU\" -I "G:\SVN   /
//                    Dir\PQ\Saturn II Platform\Saturn_II_Host_OS\APP\..\uC-L /
//                    IB\" -I "G:\SVN Dir\PQ\Saturn II                        /
//                    Platform\Saturn_II_Host_OS\APP\..\uC-CPU\ARM\IAR\" -I   /
//                    "G:\SVN Dir\PQ\Saturn II Platform\Saturn_II_Host_OS\APP /
//                    \..\uCOS-II\Ports\ARM\Generic\IAR\" -I "G:\SVN          /
//                    Dir\PQ\Saturn II Platform\Saturn_II_Host_OS\APP\..\uC-P /
//                    robe\Target\Communication\Generic\RS-232\Source\" -I    /
//                    "G:\SVN Dir\PQ\Saturn II Platform\Saturn_II_Host_OS\APP /
//                    \..\uC-Probe\Target\Communication\Generic\RS-232\Ports\ /
//                    Atmel\AT91SAM7X\" -I "G:\SVN Dir\PQ\Saturn II           /
//                    Platform\Saturn_II_Host_OS\APP\..\uC-Probe\Target\Commu /
//                    nication\Generic\Source\" -I "G:\SVN Dir\PQ\Saturn II   /
//                    Platform\Saturn_II_Host_OS\APP\..\uC-Probe\Target\Plugi /
//                    ns\uCOS-II\" -I "G:\SVN Dir\PQ\Saturn II                /
//                    Platform\Saturn_II_Host_OS\APP\..\uC-Probe\Target\Demos /
//                    \Intro\Source\" -I "D:\Program Files\IAR                /
//                    Systems\Embedded Workbench 5.4ARM\arm\INC\"             /
//                    --interwork --cpu_mode arm -On                          /
//    List file    =  G:\SVN Dir\PQ\Saturn II Platform\Saturn_II_Host_OS\APP\ /
//                    FLASH\List\pccmd.s                                      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME pccmd

        EXTERN CTR_AdcReadVoltage
        EXTERN CTR_CmSingRead
        EXTERN CTR_CmSingWrite
        EXTERN CTR_DR_Read
        EXTERN CTR_DelayCtr_ms
        EXTERN CTR_DelayCtr_s
        EXTERN CTR_DelayCtr_us
        EXTERN CTR_DmBustWrite
        EXTERN CTR_DmBustWrite_s
        EXTERN CTR_DmSingRead
        EXTERN CTR_DmSingWrite
        EXTERN CTR_DrWrite_1
        EXTERN CTR_DrWrite_2
        EXTERN CTR_EmRead
        EXTERN CTR_EmWrite
        EXTERN CTR_FrqAdj
        EXTERN CTR_FrqCtr
        EXTERN CTR_GpioDirSet
        EXTERN CTR_GpioRead
        EXTERN CTR_GpioWrite
        EXTERN CTR_HR_Read
        EXTERN CTR_HrWrite_1
        EXTERN CTR_HrWrite_2
        EXTERN CTR_PmBustWrite_s
        EXTERN CTR_PmSingRead
        EXTERN CTR_PmSingWrite
        EXTERN CTR_PowerAdj
        EXTERN CTR_PowerCtr
        EXTERN CTR_RawRead
        EXTERN CTR_RawWrite
        EXTERN CTR_RelayCtr
        EXTERN CTR_SetInterFace
        EXTERN Ctr_GpioMonit
        EXTERN Ctr_TimeTest
        EXTERN DataBufCtr
        EXTERN EVENT_MsgNoah2Uart
        EXTERN EVENT_MsgUart2Noah
        EXTERN FuncStk
        EXTERN FuncStkCtr
        EXTERN Mem_Ctr
        EXTERN OSMemGet
        EXTERN OSMemPut
        EXTERN OSMemQuery
        EXTERN OSQPost
        EXTERN OSQPostOpt
        EXTERN __aeabi_idiv
        EXTERN __aeabi_memcpy
        EXTERN __aeabi_uread4
        EXTERN databuf
        EXTERN pMEM_Part_MsgUART

        PUBLIC CheckSum
        PUBLIC Noah_CMD_Parse
        PUBLIC PC_CMD_Read
        PUBWEAK memcpy
        PUBLIC pcSendDateToBuf


        SECTION `.text`:CODE:NOROOT(2)
        ARM
// __??Code32?? __intrinsic __code __interwork void *memcpy(void *, void const *, size_t)
memcpy:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R2,R6
        MOVS     R1,R5
        MOVS     R0,R4
        BL       __aeabi_memcpy
        MOVS     R0,R4
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.bss`:DATA:NOROOT(0)
state_mac:
        DS8 1

        SECTION `.bss`:DATA:NOROOT(2)
pRecvPtr:
        DS8 4

        SECTION `.bss`:DATA:NOROOT(1)
PcCmdCounter:
        DS8 2

        SECTION `.bss`:DATA:NOROOT(1)
PcCmdDataLen:
        DS8 2

        SECTION `.text`:CODE:NOROOT(2)
        ARM
PC_CMD_Read:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+28
        MOVS     R4,R0
        MOV      R0,#+0
        MOVS     R5,R0
        LDR      R0,??PC_CMD_Read_1  ;; state_mac
        LDRB     R0,[R0, #+0]
        CMP      R0,#+32
        BHI      ??PC_CMD_Read_2
        ADR      R1,??PC_CMD_Read_0
        LDRB     R1,[R1, R0]
        ADD      PC,PC,R1, LSL #+2
        DATA
??PC_CMD_Read_0:
        DC8      0x8,0xF,0x35,0xC4
        DC8      0x63,0xC4,0xC4,0xC4
        DC8      0x75,0xC4,0xC4,0xC4
        DC8      0xC4,0xC4,0xC4,0xC4
        DC8      0xCA,0xC4,0xC4,0xC4
        DC8      0xC4,0xC4,0xC4,0xC4
        DC8      0xC4,0xC4,0xC4,0xC4
        DC8      0xC4,0xC4,0xC4,0xC4
        DC8      0x97,0x0,0x0,0x0
        ARM
??PC_CMD_Read_3:
        ANDS     R4,R4,#0xFF      ;; Zero extend
        CMP      R4,#+235
        BNE      ??PC_CMD_Read_4
        LDR      R0,??PC_CMD_Read_1  ;; state_mac
        MOV      R1,#+1
        STRB     R1,[R0, #+0]
        B        ??PC_CMD_Read_4
??PC_CMD_Read_5:
        ANDS     R4,R4,#0xFF      ;; Zero extend
        CMP      R4,#+144
        BNE      ??PC_CMD_Read_6
        ADD      R1,SP,#+4
        LDR      R0,??DataTable20  ;; pMEM_Part_MsgUART
        LDR      R0,[R0, #+0]
        BL       OSMemQuery
        STRB     R0,[SP, #+0]
        LDR      R0,[SP, #+20]
        CMP      R0,#+2
        BCC      ??PC_CMD_Read_4
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BNE      ??PC_CMD_Read_4
        MOVS     R1,SP
        LDR      R0,??DataTable20  ;; pMEM_Part_MsgUART
        LDR      R0,[R0, #+0]
        BL       OSMemGet
        LDR      R1,??DataTable19  ;; pRecvPtr
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable19  ;; pRecvPtr
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??PC_CMD_Read_4
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BNE      ??PC_CMD_Read_4
        LDR      R0,??PC_CMD_Read_1  ;; state_mac
        MOV      R1,#+2
        STRB     R1,[R0, #+0]
        LDR      R0,??PC_CMD_Read_1+0x4  ;; PcCmdCounter
        MOV      R1,#+0
        STRH     R1,[R0, #+0]
        B        ??PC_CMD_Read_4
??PC_CMD_Read_6:
        LDR      R0,??PC_CMD_Read_1  ;; state_mac
        MOV      R1,#+0
        STRB     R1,[R0, #+0]
        B        ??PC_CMD_Read_4
??PC_CMD_Read_7:
        LDR      R0,??PC_CMD_Read_1+0x4  ;; PcCmdCounter
        LDRH     R0,[R0, #+0]
        LDR      R1,??DataTable19  ;; pRecvPtr
        LDR      R1,[R1, #+0]
        STRB     R4,[R0, +R1]
        LDR      R0,??PC_CMD_Read_1+0x4  ;; PcCmdCounter
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??PC_CMD_Read_1+0x4  ;; PcCmdCounter
        STRH     R0,[R1, #+0]
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ANDS     R0,R0,#0x3F
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??PC_CMD_Read_8
        CMP      R0,#+1
        BEQ      ??PC_CMD_Read_8
        CMP      R0,#+2
        BEQ      ??PC_CMD_Read_9
        CMP      R0,#+17
        BEQ      ??PC_CMD_Read_9
        CMP      R0,#+62
        BEQ      ??PC_CMD_Read_8
        CMP      R0,#+63
        BEQ      ??PC_CMD_Read_8
        B        ??PC_CMD_Read_4
??PC_CMD_Read_9:
        LDR      R0,??PC_CMD_Read_1  ;; state_mac
        MOV      R1,#+4
        STRB     R1,[R0, #+0]
        B        ??PC_CMD_Read_4
??PC_CMD_Read_8:
        LDR      R0,??PC_CMD_Read_1+0x4  ;; PcCmdCounter
        LDRH     R0,[R0, #+0]
        LDR      R1,??DataTable19  ;; pRecvPtr
        LDR      R1,[R1, #+0]
        MOV      R2,#+0
        STRB     R2,[R0, +R1]
        LDR      R0,??PC_CMD_Read_1+0x4  ;; PcCmdCounter
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??PC_CMD_Read_1+0x4  ;; PcCmdCounter
        STRH     R0,[R1, #+0]
        LDR      R0,??PC_CMD_Read_1  ;; state_mac
        MOV      R1,#+32
        STRB     R1,[R0, #+0]
        B        ??PC_CMD_Read_4
??PC_CMD_Read_10:
        LDR      R0,??PC_CMD_Read_1+0x4  ;; PcCmdCounter
        LDRH     R0,[R0, #+0]
        LDR      R1,??DataTable19  ;; pRecvPtr
        LDR      R1,[R1, #+0]
        STRB     R4,[R0, +R1]
        LDR      R0,??PC_CMD_Read_1+0x4  ;; PcCmdCounter
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??PC_CMD_Read_1+0x4  ;; PcCmdCounter
        STRH     R0,[R1, #+0]
        LDR      R0,??PC_CMD_Read_1+0x8  ;; PcCmdDataLen
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        STRH     R1,[R0, #+0]
        LDR      R0,??PC_CMD_Read_1  ;; state_mac
        MOV      R1,#+8
        STRB     R1,[R0, #+0]
        B        ??PC_CMD_Read_4
??PC_CMD_Read_11:
        LDR      R0,??PC_CMD_Read_1+0x4  ;; PcCmdCounter
        LDRH     R0,[R0, #+0]
        LDR      R1,??DataTable19  ;; pRecvPtr
        LDR      R1,[R1, #+0]
        STRB     R4,[R0, +R1]
        LDR      R0,??PC_CMD_Read_1+0x4  ;; PcCmdCounter
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??PC_CMD_Read_1+0x4  ;; PcCmdCounter
        STRH     R0,[R1, #+0]
        LDR      R0,??PC_CMD_Read_1+0x4  ;; PcCmdCounter
        LDRH     R0,[R0, #+0]
        CMP      R0,#+260
        BCC      ??PC_CMD_Read_12
        LDR      R0,??PC_CMD_Read_1  ;; state_mac
        MOV      R1,#+0
        STRB     R1,[R0, #+0]
        LDR      R0,??DataTable19  ;; pRecvPtr
        LDR      R1,[R0, #+0]
        LDR      R0,??DataTable20  ;; pMEM_Part_MsgUART
        LDR      R0,[R0, #+0]
        BL       OSMemPut
        B        ??PC_CMD_Read_4
??PC_CMD_Read_12:
        LDR      R0,??PC_CMD_Read_1+0x4  ;; PcCmdCounter
        LDRH     R0,[R0, #+0]
        LDR      R1,??PC_CMD_Read_1+0x8  ;; PcCmdDataLen
        LDRH     R1,[R1, #+0]
        ADDS     R1,R1,#+2
        CMP      R0,R1
        BLT      ??PC_CMD_Read_4
        LDR      R0,??PC_CMD_Read_1  ;; state_mac
        MOV      R1,#+32
        STRB     R1,[R0, #+0]
        B        ??PC_CMD_Read_4
??PC_CMD_Read_13:
        LDR      R0,??DataTable19  ;; pRecvPtr
        LDR      R0,[R0, #+0]
        MOVS     R5,R0
        STRB     R4,[R5, #+258]
        LDR      R0,??PC_CMD_Read_1+0x4  ;; PcCmdCounter
        LDRH     R0,[R0, #+0]
        CMP      R0,#+260
        BCC      ??PC_CMD_Read_14
        LDR      R0,??PC_CMD_Read_1  ;; state_mac
        MOV      R1,#+0
        STRB     R1,[R0, #+0]
        LDR      R0,??DataTable19  ;; pRecvPtr
        LDR      R1,[R0, #+0]
        LDR      R0,??DataTable20  ;; pMEM_Part_MsgUART
        LDR      R0,[R0, #+0]
        BL       OSMemPut
        B        ??PC_CMD_Read_4
??PC_CMD_Read_14:
        LDR      R0,??PC_CMD_Read_1  ;; state_mac
        MOV      R1,#+0
        STRB     R1,[R0, #+0]
        LDR      R0,??PC_CMD_Read_1+0x4  ;; PcCmdCounter
        MOV      R1,#+0
        STRH     R1,[R0, #+0]
        LDR      R0,??PC_CMD_Read_1+0x8  ;; PcCmdDataLen
        MOV      R1,#+0
        STRH     R1,[R0, #+0]
        LDR      R0,??DataTable19  ;; pRecvPtr
        LDR      R1,[R0, #+0]
        LDR      R0,??PC_CMD_Read_1+0xC  ;; EVENT_MsgUart2Noah
        LDR      R0,[R0, #+0]
        BL       OSQPost
        STRB     R0,[SP, #+0]
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BNE      ??PC_CMD_Read_15
        LDR      R0,??DataTable19  ;; pRecvPtr
        MOV      R1,#+0
        STR      R1,[R0, #+0]
        B        ??PC_CMD_Read_4
??PC_CMD_Read_15:
        LDR      R0,??DataTable19  ;; pRecvPtr
        LDR      R1,[R0, #+0]
        LDR      R0,??DataTable20  ;; pMEM_Part_MsgUART
        LDR      R0,[R0, #+0]
        BL       OSMemPut
        B        ??PC_CMD_Read_4
??PC_CMD_Read_2:
        LDR      R0,??PC_CMD_Read_1  ;; state_mac
        MOV      R1,#+0
        STRB     R1,[R0, #+0]
        LDR      R0,??PC_CMD_Read_1+0x4  ;; PcCmdCounter
        MOV      R1,#+0
        STRH     R1,[R0, #+0]
??PC_CMD_Read_4:
        ADD      SP,SP,#+28       ;; stack cleaning
        POP      {R4,R5,LR}
        BX       LR               ;; return
        DATA
??PC_CMD_Read_1:
        DC32     state_mac
        DC32     PcCmdCounter
        DC32     PcCmdDataLen
        DC32     EVENT_MsgUart2Noah

        SECTION `.text`:CODE:NOROOT(2)
        ARM
CheckSum:
        PUSH     {LR}
        MOVS     R3,R0
        MOVS     R0,R3
        MOV      LR,#+0
        MOVS     R12,LR
??CheckSum_0:
        MOV      R12,R12, LSL #+16
        MOVS     R12,R12, LSR #+16
        MOV      R2,R2, LSL #+16
        MOVS     R2,R2, LSR #+16
        CMP      R12,R2
        BCS      ??CheckSum_1
        TST      R0,#0x1
        BEQ      ??CheckSum_2
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSRS     R0,R0,#+1
        SUBS     R0,R0,#+128
        B        ??CheckSum_3
??CheckSum_2:
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSRS     R0,R0,#+1
??CheckSum_3:
        LDRB     LR,[R1, #+0]
        ADDS     R0,LR,R0
        ADDS     R1,R1,#+1
        ADDS     R12,R12,#+1
        B        ??CheckSum_0
??CheckSum_1:
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
pcSendDateToBuf:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+28
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R11,R3
        MOV      R1,#+0
        STRB     R1,[SP, #+0]
        MOV      R0,#+0
        MOVS     R7,R0
        MOV      R0,#+0
        MOVS     R8,R0
        ANDS     R11,R11,#0xFF    ;; Zero extend
        CMP      R11,#+0
        BNE      ??pcSendDateToBuf_0
        MOV      R9,#+0
        B        ??pcSendDateToBuf_1
??pcSendDateToBuf_0:
        MOV      R9,#+2
??pcSendDateToBuf_1:
        ANDS     R0,R4,#0x3F
        MOVS     R10,R0
        ANDS     R6,R6,#0xFF      ;; Zero extend
        CMP      R6,#+0
        BEQ      ??pcSendDateToBuf_2
        CMP      R5,#+0
        BNE      ??pcSendDateToBuf_3
??pcSendDateToBuf_2:
        ANDS     R10,R10,#0xFF    ;; Zero extend
        CMP      R10,#+2
        BNE      ??pcSendDateToBuf_3
        MOV      R1,#+255
        STRB     R1,[SP, #+0]
        B        ??pcSendDateToBuf_4
??pcSendDateToBuf_3:
        ADD      R1,SP,#+4
        LDR      R0,??DataTable20  ;; pMEM_Part_MsgUART
        LDR      R0,[R0, #+0]
        BL       OSMemQuery
        STRB     R0,[SP, #+0]
        LDR      R0,[SP, #+20]
        CMP      R0,#+2
        BCC      ??pcSendDateToBuf_5
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BNE      ??pcSendDateToBuf_5
        MOVS     R1,SP
        LDR      R0,??DataTable20  ;; pMEM_Part_MsgUART
        LDR      R0,[R0, #+0]
        BL       OSMemGet
        MOVS     R8,R0
        CMP      R8,#+0
        BEQ      ??pcSendDateToBuf_6
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BEQ      ??pcSendDateToBuf_5
??pcSendDateToBuf_6:
        LDRB     R0,[SP, #+0]
        B        ??pcSendDateToBuf_7
??pcSendDateToBuf_5:
        MOVS     R7,R8
        ANDS     R10,R10,#0xFF    ;; Zero extend
        CMP      R10,#+2
        BNE      ??pcSendDateToBuf_8
        STRB     R4,[R7, #+0]
        ADDS     R7,R7,#+1
        STRB     R6,[R7, #+0]
        ADDS     R7,R7,#+1
??pcSendDateToBuf_9:
        MOVS     R0,R6
        SUBS     R6,R0,#+1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BCC      ??pcSendDateToBuf_10
        LDRB     R0,[R5, #+0]
        STRB     R0,[R7, #+0]
        ADDS     R5,R5,#+1
        ADDS     R7,R7,#+1
        B        ??pcSendDateToBuf_9
??pcSendDateToBuf_10:
        MOV      R0,#+0
        STRB     R0,[R7, #+0]
        ADDS     R7,R7,#+1
        B        ??pcSendDateToBuf_11
??pcSendDateToBuf_8:
        STRB     R4,[R7, #+0]
        ADDS     R7,R7,#+1
        STRB     R4,[R7, #+0]
        ADDS     R7,R7,#+1
??pcSendDateToBuf_11:
        MOVS     R2,R9
        ANDS     R2,R2,#0xFF      ;; Zero extend
        MOVS     R1,R8
        LDR      R0,??pcSendDateToBuf_12  ;; EVENT_MsgNoah2Uart
        LDR      R0,[R0, #+0]
        BL       OSQPostOpt
        STRB     R0,[SP, #+0]
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BNE      ??pcSendDateToBuf_13
        LDR      R0,??DataTable19  ;; pRecvPtr
        MOV      R1,#+0
        STR      R1,[R0, #+0]
        B        ??pcSendDateToBuf_4
??pcSendDateToBuf_13:
        MOVS     R1,R8
        LDR      R0,??DataTable20  ;; pMEM_Part_MsgUART
        LDR      R0,[R0, #+0]
        BL       OSMemPut
??pcSendDateToBuf_4:
        LDRB     R0,[SP, #+0]
??pcSendDateToBuf_7:
        ADD      SP,SP,#+28       ;; stack cleaning
        POP      {R4-R11,LR}
        BX       LR               ;; return
        DATA
??pcSendDateToBuf_12:
        DC32     EVENT_MsgNoah2Uart

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable19:
        DC32     pRecvPtr

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable20:
        DC32     pMEM_Part_MsgUART

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Noah_CMD_Parse:
        PUSH     {R0-R2,R4-R11,LR}
        SUB      SP,SP,#+16
        LDR      R0,[SP, #+16]
        MOVS     R4,R0
        MOV      R0,#+0
        MOVS     R6,R0
        MOV      R0,#+0
        MOVS     R7,R0
        MOV      R0,#+0
        MOVS     R8,R0
        MOV      R0,#+0
        MOVS     R11,R0
        LDRB     R0,[R4, #+0]
        CMP      R0,#+165
        BHI      ??Noah_CMD_Parse_1
        ADR      R1,??Noah_CMD_Parse_0
        MOV      R0,R0, LSL #+1
        LDRH     R1,[R1, R0]
        ADD      PC,PC,R1, LSL #+2
        DATA
??Noah_CMD_Parse_0:
        DC16     0x52,0x5C,0x63,0x2DE
        DC16     0x2DE,0x2DE,0x2DE,0x2DE
        DC16     0x2DE,0x2DE,0x2DE,0x2DE
        DC16     0x2DE,0x2DE,0x2DE,0x2DE
        DC16     0x67,0x2DE,0xCF,0x105
        DC16     0x12B,0x118,0x2DE,0x167
        DC16     0x196,0x2DE,0x2DE,0x183
        DC16     0x2DE,0x2DE,0x2DE,0x2DE
        DC16     0x206,0x2A8,0x2DE,0x2B4
        DC16     0x294,0x2DE,0x2A0,0x2DE
        DC16     0x2DE,0x2DE,0x2DE,0x2DE
        DC16     0x2DE,0x2DE,0x2DE,0x2DE
        DC16     0x210,0x2DE,0x2DE,0x2DE
        DC16     0x2DE,0x2DE,0x2DE,0x2DE
        DC16     0x2DE,0x2DE,0x2DE,0x2DE
        DC16     0x2DE,0x2DE,0x2DE,0x2DE
        DC16     0x218,0x2DE,0x2DE,0x2DE
        DC16     0x2DE,0x2DE,0x2DE,0x2DE
        DC16     0x2DE,0x2DE,0x2DE,0x2DE
        DC16     0x2DE,0x2DE,0x2DE,0x2DE
        DC16     0x220,0x2E0,0x22B,0x2DE
        DC16     0x2DE,0x2DE,0x2DE,0x2DE
        DC16     0x2DE,0x2DE,0x2DE,0x2DE
        DC16     0x2DE,0x2DE,0x2DE,0x2DE
        DC16     0x26B,0x275,0x2DE,0x2DE
        DC16     0x2DE,0x2DE,0x2DE,0x2DE
        DC16     0x2DE,0x2DE,0x2DE,0x2DE
        DC16     0x2DE,0x2DE,0x2DE,0x2DE
        DC16     0x27D,0x28C,0x2DE,0x2DE
        DC16     0x2DE,0x2DE,0x2DE,0x2DE
        DC16     0x2DE,0x2DE,0x2DE,0x2DE
        DC16     0x2DE,0x2DE,0x2DE,0x2DE
        DC16     0x2E0,0x2BE,0x2DE,0x2D3
        DC16     0x2DE,0x2DE,0x2DE,0x2DE
        DC16     0x2DE,0x2DE,0x2DE,0x2DE
        DC16     0x2DE,0x2DE,0x2DE,0x2DE
        DC16     0x2DE,0x2DE,0x2DE,0x2DE
        DC16     0x2DE,0x2DE,0x2DE,0x2DE
        DC16     0x2DE,0x2DE,0x2DE,0x2DE
        DC16     0x2DE,0x2DE,0x2DE,0x2DE
        DC16     0x1CF,0x1CF,0x1B2,0x1B2
        DC16     0x1EC,0x1EC
        ARM
??Noah_CMD_Parse_2:
        ADDS     R0,R4,#+1
        BL       __aeabi_uread4
        STR      R0,[SP, #+0]
        ADDS     R0,R4,#+5
        BL       __aeabi_uread4
        STR      R0,[SP, #+4]
        MOVS     R1,SP
        LDR      R0,??Noah_CMD_Parse_3  ;; CTR_GpioWrite
        BL       FuncLoad
        B        ??Noah_CMD_Parse_4
??Noah_CMD_Parse_5:
        ADDS     R0,R4,#+1
        BL       __aeabi_uread4
        STR      R0,[SP, #+0]
        MOVS     R1,SP
        LDR      R0,??Noah_CMD_Parse_3+0x4  ;; CTR_GpioDirSet
        BL       FuncLoad
        B        ??Noah_CMD_Parse_4
??Noah_CMD_Parse_6:
        MOV      R1,#+0
        LDR      R0,??Noah_CMD_Parse_3+0x8  ;; CTR_GpioRead
        BL       FuncLoad
        B        ??Noah_CMD_Parse_4
??Noah_CMD_Parse_7:
        LDR      R0,??Noah_CMD_Parse_3+0xC  ;; Mem_Ctr + 2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+32
        BEQ      ??Noah_CMD_Parse_8
        LDR      R0,??Noah_CMD_Parse_3+0xC  ;; Mem_Ctr + 2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+129
        BEQ      ??Noah_CMD_Parse_8
        LDR      R0,??Noah_CMD_Parse_3+0xC  ;; Mem_Ctr + 2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+131
        BNE      ??Noah_CMD_Parse_9
??Noah_CMD_Parse_8:
        ADDS     R0,R4,#+2
        MOVS     R6,R0
        MOV      R0,#+0
        MOVS     R5,R0
??Noah_CMD_Parse_10:
        LDRB     R0,[R4, #+1]
        MOV      R5,R5, LSL #+16
        MOVS     R5,R5, LSR #+16
        MOV      R0,R0, LSL #+16
        MOVS     R0,R0, LSR #+16
        CMP      R5,R0
        BCS      ??Noah_CMD_Parse_4
        LDRH     R1,[R6, #+0]
        STRH     R1,[SP, #+0]
        ADDS     R6,R6,#+2
        LDRH     R1,[R6, #+0]
        STRH     R1,[SP, #+2]
        ADDS     R6,R6,#+2
        MOVS     R1,SP
        LDR      R0,??Noah_CMD_Parse_3+0x10  ;; CTR_DmSingWrite
        BL       FuncLoad
        ADDS     R5,R5,#+1
        B        ??Noah_CMD_Parse_10
??Noah_CMD_Parse_9:
        LDR      R0,??Noah_CMD_Parse_3+0xC  ;; Mem_Ctr + 2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+16
        BNE      ??Noah_CMD_Parse_11
        LDR      R0,[SP, #+24]
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??Noah_CMD_Parse_12
        MOV      R0,#+21
        MOVS     R11,R0
        B        ??Noah_CMD_Parse_4
??Noah_CMD_Parse_12:
        LDRB     R1,[R4, #+1]
        STRB     R1,[SP, #+2]
        ADDS     R0,R4,#+2
        MOVS     R9,R0
        LDR      R1,??Noah_CMD_Parse_3+0x14  ;; DataBufCtr
        LDR      R1,[R1, #+0]
        STR      R1,[SP, #+4]
        MOV      R0,#+0
        MOVS     R10,R0
        MOV      R0,#+0
        MOVS     R5,R0
??Noah_CMD_Parse_13:
        LDRB     R0,[SP, #+2]
        MOV      R10,R10, LSL #+16
        MOVS     R10,R10, LSR #+16
        MOV      R0,R0, LSL #+16
        MOVS     R0,R0, LSR #+16
        CMP      R10,R0
        BCS      ??Noah_CMD_Parse_14
        MOVS     R0,R5
        MOV      R0,R0, LSL #+16
        MOVS     R0,R0, LSR #+16
        LDR      R1,[SP, #+4]
        LDRB     R2,[R9, #+0]
        STRB     R2,[R0, +R1]
        ADDS     R9,R9,#+1
        ADDS     R5,R5,#+1
        MOVS     R0,R5
        MOV      R0,R0, LSL #+16
        MOVS     R0,R0, LSR #+16
        LDR      R1,[SP, #+4]
        LDRB     R2,[R9, #+0]
        STRB     R2,[R0, +R1]
        ADDS     R9,R9,#+1
        ADDS     R5,R5,#+1
        MOVS     R0,R5
        MOV      R0,R0, LSL #+16
        MOVS     R0,R0, LSR #+16
        LDR      R1,[SP, #+4]
        LDRB     R2,[R9, #+0]
        STRB     R2,[R0, +R1]
        ADDS     R9,R9,#+1
        ADDS     R5,R5,#+1
        MOVS     R0,R5
        MOV      R0,R0, LSL #+16
        MOVS     R0,R0, LSR #+16
        LDR      R1,[SP, #+4]
        LDRB     R2,[R9, #+0]
        STRB     R2,[R0, +R1]
        ADDS     R9,R9,#+1
        ADDS     R5,R5,#+1
        ADDS     R10,R10,#+1
        B        ??Noah_CMD_Parse_13
??Noah_CMD_Parse_14:
        MOVS     R1,SP
        LDR      R0,??Noah_CMD_Parse_3+0x18  ;; CTR_DmBustWrite
        BL       FuncLoad
        B        ??Noah_CMD_Parse_4
??Noah_CMD_Parse_11:
        MOV      R0,#+142
        MOVS     R11,R0
        B        ??Noah_CMD_Parse_4
??Noah_CMD_Parse_15:
        LDR      R0,[SP, #+24]
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??Noah_CMD_Parse_16
        MOV      R0,#+21
        MOVS     R11,R0
        B        ??Noah_CMD_Parse_4
??Noah_CMD_Parse_16:
        LDRB     R1,[R4, #+1]
        STRB     R1,[SP, #+2]
        LDRB     R1,[R4, #+3]
        LDRB     R0,[R4, #+2]
        ORRS     R1,R0,R1, LSL #+8
        STRH     R1,[SP, #+0]
        LDR      R1,??Noah_CMD_Parse_3+0x14  ;; DataBufCtr
        LDR      R1,[R1, #+0]
        STR      R1,[SP, #+4]
        ADDS     R0,R4,#+2
        MOVS     R8,R0
        ADDS     R8,R8,#+2
        MOV      R0,#+0
        MOVS     R10,R0
        MOV      R0,#+0
        MOVS     R5,R0
??Noah_CMD_Parse_17:
        LDRB     R0,[SP, #+2]
        MOV      R10,R10, LSL #+16
        MOVS     R10,R10, LSR #+16
        MOV      R0,R0, LSL #+16
        MOVS     R0,R0, LSR #+16
        CMP      R10,R0
        BCS      ??Noah_CMD_Parse_18
        LDRB     R1,[R8, #+0]
        STRB     R1,[SP, #+12]
        ADDS     R8,R8,#+1
        MOVS     R0,R5
        MOV      R0,R0, LSL #+16
        MOVS     R0,R0, LSR #+16
        LDR      R1,[SP, #+4]
        LDRB     R2,[R8, #+0]
        STRB     R2,[R0, +R1]
        ADDS     R8,R8,#+1
        ADDS     R5,R5,#+1
        MOVS     R0,R5
        MOV      R0,R0, LSL #+16
        MOVS     R0,R0, LSR #+16
        LDR      R1,[SP, #+4]
        LDRB     R2,[SP, #+12]
        STRB     R2,[R0, +R1]
        ADDS     R5,R5,#+1
        ADDS     R10,R10,#+1
        B        ??Noah_CMD_Parse_17
??Noah_CMD_Parse_18:
        MOVS     R1,SP
        LDR      R0,??Noah_CMD_Parse_3+0x1C  ;; CTR_DmBustWrite_s
        BL       FuncLoad
        B        ??Noah_CMD_Parse_4
??Noah_CMD_Parse_19:
        ADDS     R0,R4,#+2
        MOVS     R6,R0
        MOV      R0,#+0
        MOVS     R5,R0
??Noah_CMD_Parse_20:
        LDRB     R0,[R4, #+1]
        MOV      R5,R5, LSL #+16
        MOVS     R5,R5, LSR #+16
        MOV      R0,R0, LSL #+16
        MOVS     R0,R0, LSR #+16
        CMP      R5,R0
        BCS      ??Noah_CMD_Parse_4
        LDRH     R1,[R6, #+0]
        STRH     R1,[SP, #+0]
        ADDS     R6,R6,#+2
        MOVS     R1,SP
        LDR      R0,??Noah_CMD_Parse_3+0x20  ;; CTR_DmSingRead
        BL       FuncLoad
        ADDS     R5,R5,#+1
        B        ??Noah_CMD_Parse_20
??Noah_CMD_Parse_21:
        ADDS     R0,R4,#+2
        MOVS     R6,R0
        MOV      R0,#+0
        MOVS     R5,R0
??Noah_CMD_Parse_22:
        LDRB     R0,[R4, #+1]
        MOV      R5,R5, LSL #+16
        MOVS     R5,R5, LSR #+16
        MOV      R0,R0, LSL #+16
        MOVS     R0,R0, LSR #+16
        CMP      R5,R0
        BCS      ??Noah_CMD_Parse_4
        LDRH     R1,[R6, #+0]
        STRH     R1,[SP, #+0]
        ADDS     R6,R6,#+2
        MOVS     R1,SP
        LDR      R0,??Noah_CMD_Parse_3+0x24  ;; CTR_PmSingRead
        BL       FuncLoad
        ADDS     R5,R5,#+1
        B        ??Noah_CMD_Parse_22
??Noah_CMD_Parse_23:
        LDR      R0,[SP, #+24]
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??Noah_CMD_Parse_24
        MOV      R0,#+21
        MOVS     R11,R0
        B        ??Noah_CMD_Parse_4
??Noah_CMD_Parse_24:
        LDRB     R1,[R4, #+1]
        STRB     R1,[SP, #+2]
        LDRB     R1,[R4, #+3]
        LDRB     R0,[R4, #+2]
        ORRS     R1,R0,R1, LSL #+8
        STRH     R1,[SP, #+0]
        LDR      R1,??Noah_CMD_Parse_3+0x14  ;; DataBufCtr
        LDR      R1,[R1, #+0]
        STR      R1,[SP, #+4]
        ADDS     R0,R4,#+2
        MOVS     R8,R0
        ADDS     R8,R8,#+2
        MOV      R0,#+0
        MOVS     R10,R0
        MOV      R0,#+0
        MOVS     R5,R0
??Noah_CMD_Parse_25:
        LDRB     R0,[SP, #+2]
        MOV      R10,R10, LSL #+16
        MOVS     R10,R10, LSR #+16
        MOV      R0,R0, LSL #+16
        MOVS     R0,R0, LSR #+16
        CMP      R10,R0
        BCS      ??Noah_CMD_Parse_26
        MOVS     R0,R5
        MOV      R0,R0, LSL #+16
        MOVS     R0,R0, LSR #+16
        LDR      R1,[SP, #+4]
        LDRB     R2,[R8, #+0]
        STRB     R2,[R0, +R1]
        ADDS     R8,R8,#+1
        ADDS     R5,R5,#+1
        MOVS     R0,R5
        MOV      R0,R0, LSL #+16
        MOVS     R0,R0, LSR #+16
        LDR      R1,[SP, #+4]
        LDRB     R2,[R8, #+0]
        STRB     R2,[R0, +R1]
        ADDS     R8,R8,#+1
        ADDS     R5,R5,#+1
        MOVS     R0,R5
        MOV      R0,R0, LSL #+16
        MOVS     R0,R0, LSR #+16
        LDR      R1,[SP, #+4]
        LDRB     R2,[R8, #+0]
        STRB     R2,[R0, +R1]
        ADDS     R8,R8,#+1
        ADDS     R5,R5,#+1
        ADDS     R10,R10,#+1
        B        ??Noah_CMD_Parse_25
??Noah_CMD_Parse_26:
        MOVS     R1,SP
        LDR      R0,??Noah_CMD_Parse_3+0x28  ;; CTR_PmBustWrite_s
        BL       FuncLoad
        B        ??Noah_CMD_Parse_4
??Noah_CMD_Parse_27:
        ADDS     R0,R4,#+2
        MOVS     R7,R0
        MOV      R0,#+0
        MOVS     R5,R0
??Noah_CMD_Parse_28:
        LDRB     R0,[R4, #+1]
        MOV      R5,R5, LSL #+16
        MOVS     R5,R5, LSR #+16
        MOV      R0,R0, LSL #+16
        MOVS     R0,R0, LSR #+16
        CMP      R5,R0
        BCS      ??Noah_CMD_Parse_4
        LDRH     R1,[R7, #+0]
        STRH     R1,[SP, #+0]
        ADDS     R7,R7,#+2
        LDRB     R1,[R7, #+0]
        STRB     R1,[SP, #+2]
        ADDS     R7,R7,#+1
        LDRB     R1,[R7, #+0]
        STRB     R1,[SP, #+3]
        ADDS     R7,R7,#+1
        LDRB     R1,[R7, #+0]
        STRB     R1,[SP, #+4]
        ADDS     R7,R7,#+1
        MOVS     R1,SP
        LDR      R0,??Noah_CMD_Parse_3+0x2C  ;; CTR_PmSingWrite
        BL       FuncLoad
        ADDS     R5,R5,#+1
        B        ??Noah_CMD_Parse_28
??Noah_CMD_Parse_29:
        ADDS     R0,R4,#+2
        MOVS     R6,R0
        MOV      R0,#+0
        MOVS     R5,R0
??Noah_CMD_Parse_30:
        LDRB     R0,[R4, #+1]
        MOV      R5,R5, LSL #+16
        MOVS     R5,R5, LSR #+16
        MOV      R0,R0, LSL #+16
        MOVS     R0,R0, LSR #+16
        CMP      R5,R0
        BCS      ??Noah_CMD_Parse_4
        LDRH     R1,[R6, #+0]
        STRH     R1,[SP, #+0]
        ADDS     R6,R6,#+2
        MOVS     R1,SP
        LDR      R0,??Noah_CMD_Parse_3+0x30  ;; CTR_CmSingRead
        BL       FuncLoad
        ADDS     R5,R5,#+1
        B        ??Noah_CMD_Parse_30
??Noah_CMD_Parse_31:
        ADDS     R0,R4,#+2
        MOVS     R7,R0
        MOV      R0,#+0
        MOVS     R5,R0
??Noah_CMD_Parse_32:
        LDRB     R0,[R4, #+1]
        MOV      R5,R5, LSL #+16
        MOVS     R5,R5, LSR #+16
        MOV      R0,R0, LSL #+16
        MOVS     R0,R0, LSR #+16
        CMP      R5,R0
        BCS      ??Noah_CMD_Parse_4
        LDRH     R1,[R7, #+0]
        STRH     R1,[SP, #+0]
        ADDS     R7,R7,#+2
        LDRB     R1,[R7, #+0]
        STRB     R1,[SP, #+2]
        ADDS     R7,R7,#+1
        LDRB     R1,[R7, #+0]
        STRB     R1,[SP, #+3]
        ADDS     R7,R7,#+1
        LDRB     R1,[R7, #+0]
        STRB     R1,[SP, #+4]
        ADDS     R7,R7,#+1
        MOVS     R1,SP
        LDR      R0,??Noah_CMD_Parse_3+0x34  ;; CTR_CmSingWrite
        BL       FuncLoad
        ADDS     R5,R5,#+1
        B        ??Noah_CMD_Parse_32
??Noah_CMD_Parse_33:
        ADDS     R0,R4,#+2
        MOVS     R7,R0
        MOV      R0,#+0
        MOVS     R5,R0
??Noah_CMD_Parse_34:
        LDRB     R0,[R4, #+1]
        MOV      R5,R5, LSL #+16
        MOVS     R5,R5, LSR #+16
        MOV      R0,R0, LSL #+16
        MOVS     R0,R0, LSR #+16
        CMP      R5,R0
        BCS      ??Noah_CMD_Parse_4
        LDRH     R1,[R7, #+0]
        STRH     R1,[SP, #+0]
        ADDS     R7,R7,#+2
        LDRB     R1,[R7, #+0]
        STRB     R1,[SP, #+2]
        ADDS     R7,R7,#+1
        LDRB     R0,[R4, #+0]
        CMP      R0,#+162
        BNE      ??Noah_CMD_Parse_35
        MOVS     R1,SP
        LDR      R0,??Noah_CMD_Parse_3+0x38  ;; CTR_HrWrite_1
        BL       FuncLoad
        B        ??Noah_CMD_Parse_36
??Noah_CMD_Parse_35:
        MOVS     R1,SP
        LDR      R0,??Noah_CMD_Parse_3+0x3C  ;; CTR_DrWrite_1
        BL       FuncLoad
??Noah_CMD_Parse_36:
        ADDS     R5,R5,#+1
        B        ??Noah_CMD_Parse_34
??Noah_CMD_Parse_37:
        ADDS     R0,R4,#+2
        MOVS     R6,R0
        MOV      R0,#+0
        MOVS     R5,R0
??Noah_CMD_Parse_38:
        LDRB     R0,[R4, #+1]
        MOV      R5,R5, LSL #+16
        MOVS     R5,R5, LSR #+16
        MOV      R0,R0, LSL #+16
        MOVS     R0,R0, LSR #+16
        CMP      R5,R0
        BCS      ??Noah_CMD_Parse_4
        LDRH     R1,[R6, #+0]
        STRH     R1,[SP, #+0]
        ADDS     R6,R6,#+2
        LDRH     R1,[R6, #+0]
        STRH     R1,[SP, #+2]
        ADDS     R6,R6,#+2
        LDRB     R0,[R4, #+0]
        CMP      R0,#+160
        BNE      ??Noah_CMD_Parse_39
        MOVS     R1,SP
        LDR      R0,??Noah_CMD_Parse_3+0x40  ;; CTR_HrWrite_2
        BL       FuncLoad
        B        ??Noah_CMD_Parse_40
??Noah_CMD_Parse_39:
        MOVS     R1,SP
        LDR      R0,??Noah_CMD_Parse_3+0x44  ;; CTR_DrWrite_2
        BL       FuncLoad
??Noah_CMD_Parse_40:
        ADDS     R5,R5,#+1
        B        ??Noah_CMD_Parse_38
??Noah_CMD_Parse_41:
        ADDS     R0,R4,#+2
        MOVS     R6,R0
        MOV      R0,#+0
        MOVS     R5,R0
??Noah_CMD_Parse_42:
        LDRB     R0,[R4, #+1]
        MOV      R5,R5, LSL #+16
        MOVS     R5,R5, LSR #+16
        MOV      R0,R0, LSL #+16
        MOVS     R0,R0, LSR #+16
        CMP      R5,R0
        BCS      ??Noah_CMD_Parse_4
        LDRH     R1,[R6, #+0]
        STRH     R1,[SP, #+0]
        ADDS     R6,R6,#+2
        LDRB     R0,[R4, #+0]
        CMP      R0,#+164
        BNE      ??Noah_CMD_Parse_43
        MOVS     R1,SP
        LDR      R0,??Noah_CMD_Parse_3+0x48  ;; CTR_HR_Read
        BL       FuncLoad
        B        ??Noah_CMD_Parse_44
??Noah_CMD_Parse_43:
        MOVS     R1,SP
        LDR      R0,??Noah_CMD_Parse_3+0x4C  ;; CTR_DR_Read
        BL       FuncLoad
??Noah_CMD_Parse_44:
        ADDS     R5,R5,#+1
        B        ??Noah_CMD_Parse_42
??Noah_CMD_Parse_45:
        LDRB     R0,[R4, #+1]
        STRB     R0,[SP, #+0]
        LDRB     R1,[R4, #+2]
        STRB     R1,[SP, #+1]
        LDRB     R1,[R4, #+3]
        STRB     R1,[SP, #+2]
        MOVS     R1,SP
        LDR      R0,??Noah_CMD_Parse_3+0x50  ;; CTR_SetInterFace
        BL       FuncLoad
        B        ??Noah_CMD_Parse_4
??Noah_CMD_Parse_46:
        LDRB     R0,[R4, #+1]
        STRB     R0,[SP, #+0]
        LDRB     R1,[R4, #+2]
        STRB     R1,[SP, #+3]
        MOVS     R1,SP
        LDR      R0,??Noah_CMD_Parse_3+0x54  ;; CTR_AdcReadVoltage
        BL       FuncLoad
        B        ??Noah_CMD_Parse_4
??Noah_CMD_Parse_47:
        LDRB     R0,[R4, #+1]
        STRB     R0,[SP, #+0]
        LDRB     R1,[R4, #+2]
        STRB     R1,[SP, #+1]
        MOVS     R1,SP
        LDR      R0,??Noah_CMD_Parse_3+0x58  ;; CTR_RelayCtr
        BL       FuncLoad
        B        ??Noah_CMD_Parse_4
??Noah_CMD_Parse_48:
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BNE      ??Noah_CMD_Parse_49
        LDR      R0,[SP, #+24]
        MOV      R1,#+0
        STRB     R1,[R0, #+0]
        B        ??Noah_CMD_Parse_4
??Noah_CMD_Parse_49:
        LDR      R0,[SP, #+24]
        MOV      R1,#+1
        STRB     R1,[R0, #+0]
        B        ??Noah_CMD_Parse_4
??Noah_CMD_Parse_50:
        LDRB     R1,[R4, #+2]
        LDRB     R0,[R4, #+1]
        ORRS     R1,R0,R1, LSL #+8
        MOV      R1,R1, LSL #+16
        MOVS     R1,R1, LSR #+16
        LSRS     R0,R1,#+14
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Noah_CMD_Parse_51
        CMP      R0,#+2
        BEQ      ??Noah_CMD_Parse_52
        BCC      ??Noah_CMD_Parse_53
        B        ??Noah_CMD_Parse_4
??Noah_CMD_Parse_51:
        LDRB     R1,[R4, #+2]
        LDRB     R0,[R4, #+1]
        ORRS     R1,R0,R1, LSL #+8
        LSLS     R0,R1,#+18
        LSRS     R0,R0,#+18
        MOV      R1,#+233
        ORR      R1,R1,#0x300
        CMP      R0,R1
        BCS      ??Noah_CMD_Parse_54
        LDRB     R1,[R4, #+2]
        LDRB     R0,[R4, #+1]
        ORRS     R1,R0,R1, LSL #+8
        LSLS     R0,R1,#+18
        LSRS     R0,R0,#+18
        STRH     R0,[SP, #+0]
        MOVS     R1,SP
        LDR      R0,??Noah_CMD_Parse_3+0x5C  ;; CTR_DelayCtr_us
        BL       FuncLoad
        B        ??Noah_CMD_Parse_4
??Noah_CMD_Parse_54:
        LDRB     R1,[R4, #+2]
        LDRB     R0,[R4, #+1]
        ORRS     R1,R0,R1, LSL #+8
        LSLS     R0,R1,#+18
        LSRS     R0,R0,#+18
        MOV      R1,#+1000
        BL       __aeabi_idiv
        STRH     R0,[SP, #+0]
        MOVS     R1,SP
        LDR      R0,??Noah_CMD_Parse_3+0x60  ;; CTR_DelayCtr_ms
        BL       FuncLoad
        B        ??Noah_CMD_Parse_4
??Noah_CMD_Parse_53:
        LDRB     R1,[R4, #+2]
        LDRB     R0,[R4, #+1]
        ORRS     R1,R0,R1, LSL #+8
        LSLS     R0,R1,#+18
        LSRS     R0,R0,#+18
        STRH     R0,[SP, #+0]
        MOVS     R1,SP
        LDR      R0,??Noah_CMD_Parse_3+0x60  ;; CTR_DelayCtr_ms
        BL       FuncLoad
        B        ??Noah_CMD_Parse_4
??Noah_CMD_Parse_52:
        LDRB     R1,[R4, #+2]
        LDRB     R0,[R4, #+1]
        ORRS     R1,R0,R1, LSL #+8
        LSLS     R0,R1,#+18
        LSRS     R0,R0,#+18
        STRH     R0,[SP, #+0]
        MOVS     R1,SP
        LDR      R0,??Noah_CMD_Parse_3+0x64  ;; CTR_DelayCtr_s
        BL       FuncLoad
        B        ??Noah_CMD_Parse_4
??Noah_CMD_Parse_55:
        LDRB     R0,[R4, #+1]
        STRB     R0,[SP, #+0]
        LDRB     R1,[R4, #+3]
        LDRB     R0,[R4, #+2]
        ORRS     R1,R0,R1, LSL #+8
        STR      R1,[SP, #+4]
        MOVS     R1,SP
        LDR      R0,??Noah_CMD_Parse_3+0x68  ;; CTR_PowerAdj
        BL       FuncLoad
        B        ??Noah_CMD_Parse_4
??Noah_CMD_Parse_56:
        LDRB     R0,[R4, #+1]
        STRB     R0,[SP, #+0]
        LDRB     R1,[R4, #+2]
        STRB     R1,[SP, #+1]
        MOVS     R1,SP
        LDR      R0,??Noah_CMD_Parse_3+0x6C  ;; CTR_PowerCtr
        BL       FuncLoad
        B        ??Noah_CMD_Parse_4
??Noah_CMD_Parse_57:
        LDRB     R0,[R4, #+1]
        STRB     R0,[SP, #+0]
        LDRB     R1,[R4, #+2]
        STRB     R1,[SP, #+1]
        ADDS     R0,R4,#+3
        BL       __aeabi_uread4
        STR      R0,[SP, #+4]
        LDRB     R1,[R4, #+8]
        LDRB     R0,[R4, #+7]
        ORRS     R1,R0,R1, LSL #+8
        STRH     R1,[SP, #+8]
        MOVS     R1,SP
        LDR      R0,??Noah_CMD_Parse_3+0x70  ;; CTR_FrqAdj
        BL       FuncLoad
        B        ??Noah_CMD_Parse_4
??Noah_CMD_Parse_58:
        LDRB     R0,[R4, #+1]
        STRB     R0,[SP, #+0]
        LDRB     R1,[R4, #+2]
        STRB     R1,[SP, #+1]
        MOVS     R1,SP
        LDR      R0,??Noah_CMD_Parse_3+0x74  ;; CTR_FrqCtr
        BL       FuncLoad
        B        ??Noah_CMD_Parse_4
??Noah_CMD_Parse_59:
        LDRB     R2,[R4, #+1]
        ADDS     R1,R4,#+2
        LDR      R0,??Noah_CMD_Parse_3+0x78  ;; databuf
        BL       memcpy
        LDR      R1,??Noah_CMD_Parse_3+0x78  ;; databuf
        STR      R1,[SP, #+4]
        LDRB     R1,[R4, #+1]
        STRB     R1,[SP, #+1]
        MOVS     R1,SP
        LDR      R0,??Noah_CMD_Parse_3+0x7C  ;; CTR_RawWrite
        BL       FuncLoad
        B        ??Noah_CMD_Parse_4
??Noah_CMD_Parse_60:
        LDRB     R1,[R4, #+1]
        STRB     R1,[SP, #+1]
        ADDS     R1,R4,#+2
        STR      R1,[SP, #+4]
        MOVS     R1,SP
        LDR      R0,??Noah_CMD_Parse_3+0x80  ;; CTR_RawRead
        BL       FuncLoad
        B        ??Noah_CMD_Parse_4
??Noah_CMD_Parse_61:
        LDRB     R1,[R4, #+1]
        STRB     R1,[SP, #+1]
        LDRB     R1,[R4, #+3]
        LDRB     R0,[R4, #+2]
        ORRS     R1,R0,R1, LSL #+8
        STRH     R1,[SP, #+2]
        ADDS     R1,R4,#+4
        STR      R1,[SP, #+4]
        MOVS     R1,SP
        LDR      R0,??Noah_CMD_Parse_3+0x84  ;; CTR_EmWrite
        BL       FuncLoad
        B        ??Noah_CMD_Parse_4
??Noah_CMD_Parse_62:
        LDRB     R1,[R4, #+1]
        STRB     R1,[SP, #+1]
        LDRB     R1,[R4, #+3]
        LDRB     R0,[R4, #+2]
        ORRS     R1,R0,R1, LSL #+8
        STRH     R1,[SP, #+2]
        MOVS     R1,SP
        LDR      R0,??Noah_CMD_Parse_3+0x88  ;; CTR_EmRead
        BL       FuncLoad
        B        ??Noah_CMD_Parse_4
??Noah_CMD_Parse_63:
        ADDS     R0,R4,#+1
        BL       __aeabi_uread4
        STR      R0,[SP, #+0]
        LDRB     R1,[R4, #+5]
        STRB     R1,[SP, #+4]
        LDRB     R0,[R4, #+6]
        TST      R0,#0x80
        BEQ      ??Noah_CMD_Parse_64
        LDRB     R0,[R4, #+6]
        ANDS     R0,R0,#0x7F
        MOV      R1,#+1000
        MULS     R0,R1,R0
        B        ??Noah_CMD_Parse_65
??Noah_CMD_Parse_64:
        LDRB     R0,[R4, #+6]
        MOV      R1,#+10
        MULS     R0,R1,R0
??Noah_CMD_Parse_65:
        STRH     R0,[SP, #+6]
        MOVS     R1,SP
        LDR      R0,??Noah_CMD_Parse_3+0x8C  ;; Ctr_GpioMonit
        BL       FuncLoad
        B        ??Noah_CMD_Parse_4
??Noah_CMD_Parse_66:
        LDRB     R1,[R4, #+2]
        LDRB     R0,[R4, #+1]
        ORRS     R1,R0,R1, LSL #+8
        STRH     R1,[SP, #+0]
        ADDS     R0,R4,#+5
        BL       __aeabi_uread4
        STRH     R0,[SP, #+2]
        MOVS     R1,SP
        LDR      R0,??Noah_CMD_Parse_3+0x90  ;; Ctr_TimeTest
        BL       FuncLoad
        B        ??Noah_CMD_Parse_4
??Noah_CMD_Parse_1:
        MOV      R0,#+25
        MOVS     R11,R0
??Noah_CMD_Parse_4:
        MOVS     R0,R11
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADD      SP,SP,#+28       ;; stack cleaning
        POP      {R4-R11,LR}
        BX       LR               ;; return
        DATA
??Noah_CMD_Parse_3:
        DC32     CTR_GpioWrite
        DC32     CTR_GpioDirSet
        DC32     CTR_GpioRead
        DC32     Mem_Ctr + 2
        DC32     CTR_DmSingWrite
        DC32     DataBufCtr
        DC32     CTR_DmBustWrite
        DC32     CTR_DmBustWrite_s
        DC32     CTR_DmSingRead
        DC32     CTR_PmSingRead
        DC32     CTR_PmBustWrite_s
        DC32     CTR_PmSingWrite
        DC32     CTR_CmSingRead
        DC32     CTR_CmSingWrite
        DC32     CTR_HrWrite_1
        DC32     CTR_DrWrite_1
        DC32     CTR_HrWrite_2
        DC32     CTR_DrWrite_2
        DC32     CTR_HR_Read
        DC32     CTR_DR_Read
        DC32     CTR_SetInterFace
        DC32     CTR_AdcReadVoltage
        DC32     CTR_RelayCtr
        DC32     CTR_DelayCtr_us
        DC32     CTR_DelayCtr_ms
        DC32     CTR_DelayCtr_s
        DC32     CTR_PowerAdj
        DC32     CTR_PowerCtr
        DC32     CTR_FrqAdj
        DC32     CTR_FrqCtr
        DC32     databuf
        DC32     CTR_RawWrite
        DC32     CTR_RawRead
        DC32     CTR_EmWrite
        DC32     CTR_EmRead
        DC32     Ctr_GpioMonit
        DC32     Ctr_TimeTest

        SECTION `.text`:CODE:NOROOT(2)
        ARM
FuncLoad:
        PUSH     {R4,R5,LR}
        MOV      R12,#+12
        MOVS     R3,R12
        LDR      R12,??FuncLoad_0  ;; FuncStkCtr
        LDRH     R12,[R12, #+0]
        MOV      LR,#+16
        LDR      R4,??FuncLoad_0+0x4  ;; FuncStk
        MLA      R12,LR,R12,R4
        STR      R0,[R12, #+0]
        MOV      R12,#+0
        MOVS     R2,R12
??FuncLoad_1:
        ANDS     R2,R2,#0xFF      ;; Zero extend
        ANDS     R3,R3,#0xFF      ;; Zero extend
        CMP      R2,R3
        BCS      ??FuncLoad_2
        MOVS     R12,R2
        ANDS     R12,R12,#0xFF    ;; Zero extend
        LDR      LR,??FuncLoad_0  ;; FuncStkCtr
        LDRH     LR,[LR, #+0]
        MOV      R4,#+16
        LDR      R5,??FuncLoad_0+0x4  ;; FuncStk
        MLA      LR,R4,LR,R5
        ADDS     R12,R12,LR
        MOVS     LR,R2
        ANDS     LR,LR,#0xFF      ;; Zero extend
        LDRB     LR,[LR, +R1]
        STRB     LR,[R12, #+4]
        ADDS     R2,R2,#+1
        B        ??FuncLoad_1
??FuncLoad_2:
        LDR      R12,??FuncLoad_0  ;; FuncStkCtr
        LDRH     R12,[R12, #+0]
        ADDS     LR,R12,#+1
        LDR      R4,??FuncLoad_0  ;; FuncStkCtr
        STRH     LR,[R4, #+0]
        MOV      R12,R12, LSL #+16
        MOVS     R12,R12, LSR #+16
        CMP      R12,#+100
        BCC      ??FuncLoad_3
        LDR      R12,??FuncLoad_0  ;; FuncStkCtr
        MOV      LR,#+0
        STRH     LR,[R12, #+0]
??FuncLoad_3:
        POP      {R4,R5,LR}
        BX       LR               ;; return
        DATA
??FuncLoad_0:
        DC32     FuncStkCtr
        DC32     FuncStk

        END
// 
//     9 bytes in section .bss
// 4 832 bytes in section .text
// 
// 4 788 bytes of CODE memory (+ 44 bytes shared)
//     9 bytes of DATA memory
//
//Errors: none
//Warnings: 12
