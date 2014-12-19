///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       19/Dec/2014  15:13:53
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Noah\noah_cmd.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Noah\noah_cmd.c" -lcN
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\" -lb
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\" -o
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
//        Bench\Bridge_Host_OS\APP\FLASH\List\noah_cmd.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Audio_Version
        EXTERN BSP_Ser_Printf
        EXTERN EVENT_MsgQ_Noah2PCUART
        EXTERN Emb_Buf_Cmd
        EXTERN Emb_Buf_Data
        EXTERN Global_Bridge_POST
        EXTERN Global_Conn_Ready
        EXTERN Global_Idle_Ready
        EXTERN Global_Mic_State
        EXTERN Global_Ruler_State
        EXTERN OSMemGet
        EXTERN OSMemPut
        EXTERN OSMemQuery
        EXTERN OSQPost
        EXTERN OSQPostOpt
        EXTERN OSTimeDly
        EXTERN Read_Mic_Cali_Data
        EXTERN Read_Ruler_Info
        EXTERN Reset_Audio
        EXTERN Reset_Mic_Mask
        EXTERN Ruler_Active_Control
        EXTERN Save_Ruler_FW
        EXTERN Set_Volume
        EXTERN Setup_Audio
        EXTERN Start_Audio
        EXTERN Stop_Audio
        EXTERN Time_Stamp
        EXTERN Toggle_Mic
        EXTERN Update_Ruler_FW
        EXTERN Write_Mic_Cali_Data
        EXTERN Write_Ruler_Info
        EXTERN emb_append_attr_string
        EXTERN emb_append_attr_uint
        EXTERN emb_append_end
        EXTERN emb_attach
        EXTERN emb_get_attr_binary
        EXTERN emb_get_attr_int
        EXTERN emb_get_attr_string
        EXTERN emb_get_id
        EXTERN emb_get_node_replace
        EXTERN emb_init_builder
        EXTERN fw_version
        EXTERN hw_model
        EXTERN hw_version
        EXTERN memcpy
        EXTERN pMEM_Part_MsgUART
        EXTERN strcat
        EXTERN strcpy

        PUBLIC AB_Status_Change_Report
        PUBLIC CheckSum
        PUBLIC EMB_Data_Check
        PUBLIC EMB_Data_Parse
        PUBLIC Init_CMD_Read
        PUBLIC Init_EMB_BUF
        PUBLIC Noah_CMD_Parse_Ruler
        PUBLIC Noah_CMD_Read
        PUBLIC Send_DACK
        PUBLIC Send_GACK
        PUBLIC pcSendDateToBuf


        SECTION `.text`:CODE:NOROOT(2)
        ARM
Init_EMB_BUF:
        MOV      R1,#+0
        STR      R1,[R0, #+0]
        MOV      R1,#+0
        STR      R1,[R0, #+4]
        MOV      R1,#+0
        STR      R1,[R0, #+8]
        MOV      R1,#+1
        STRB     R1,[R0, #+3084]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Init_CMD_Read:
        MOV      R2,#+0
        STR      R2,[R0, #+0]
        MOV      R2,#+0
        STR      R2,[R0, #+4]
        MOV      R2,#+0
        STR      R2,[R0, #+8]
        MOV      R2,#+0
        STR      R2,[R0, #+12]
        STR      R1,[R0, #+16]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Noah_CMD_Read:
        PUSH     {R4-R10,LR}
        SUB      SP,SP,#+32
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R6,#+0
        LDR      R7,[R4, #+0]
        LDR      R8,[R4, #+4]
        LDR      R9,[R4, #+8]
        LDR      R10,[R4, #+12]
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Noah_CMD_Read_0
        CMP      R0,#+1
        BEQ      ??Noah_CMD_Read_1
        CMP      R0,#+2
        BEQ      ??Noah_CMD_Read_2
        CMP      R0,#+4
        BEQ      ??Noah_CMD_Read_3
        CMP      R0,#+8
        BEQ      ??Noah_CMD_Read_4
        CMP      R0,#+16
        BEQ      ??Noah_CMD_Read_5
        CMP      R0,#+32
        BEQ      ??Noah_CMD_Read_6
        B        ??Noah_CMD_Read_7
??Noah_CMD_Read_0:
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+235
        BNE      ??Noah_CMD_Read_8
        MOV      R0,#+1
        MOVS     R7,R0
??Noah_CMD_Read_8:
        B        ??Noah_CMD_Read_9
??Noah_CMD_Read_1:
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+144
        BNE      ??Noah_CMD_Read_10
        ADD      R1,SP,#+4
        LDR      R0,??DataTable6
        LDR      R0,[R0, #+0]
        BL       OSMemQuery
        STRB     R0,[SP, #+0]
        LDR      R0,[SP, #+20]
        CMP      R0,#+2
        BCC      ??Noah_CMD_Read_11
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BNE      ??Noah_CMD_Read_11
        MOVS     R1,SP
        LDR      R0,??DataTable6
        LDR      R0,[R0, #+0]
        BL       OSMemGet
        MOVS     R8,R0
        CMP      R8,#+0
        BEQ      ??Noah_CMD_Read_11
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BNE      ??Noah_CMD_Read_11
        MOV      R0,#+2
        MOVS     R7,R0
        MOV      R0,#+0
        MOVS     R9,R0
        B        ??Noah_CMD_Read_11
??Noah_CMD_Read_10:
        MOV      R0,#+0
        MOVS     R7,R0
??Noah_CMD_Read_11:
        B        ??Noah_CMD_Read_9
??Noah_CMD_Read_2:
        MOVS     R0,R9
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        STRB     R5,[R0, +R8]
        ADDS     R9,R9,#+1
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ANDS     R0,R0,#0x3F
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Noah_CMD_Read_12
        CMP      R0,#+1
        BEQ      ??Noah_CMD_Read_12
        CMP      R0,#+2
        BEQ      ??Noah_CMD_Read_13
        CMP      R0,#+17
        BEQ      ??Noah_CMD_Read_13
        CMP      R0,#+62
        BEQ      ??Noah_CMD_Read_12
        CMP      R0,#+63
        BEQ      ??Noah_CMD_Read_12
        B        ??Noah_CMD_Read_14
??Noah_CMD_Read_13:
        MOV      R0,#+4
        MOVS     R7,R0
        B        ??Noah_CMD_Read_15
??Noah_CMD_Read_12:
        MOV      R0,#+0
        MOVS     R1,R9
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        STRB     R0,[R1, +R8]
        ADDS     R9,R9,#+1
        MOV      R0,#+32
        MOVS     R7,R0
        B        ??Noah_CMD_Read_15
??Noah_CMD_Read_14:
??Noah_CMD_Read_15:
        B        ??Noah_CMD_Read_9
??Noah_CMD_Read_3:
        MOVS     R0,R9
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        STRB     R5,[R0, +R8]
        ADDS     R9,R9,#+1
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        MOVS     R10,R0
        MOV      R0,#+8
        MOVS     R7,R0
        B        ??Noah_CMD_Read_9
??Noah_CMD_Read_4:
        MOVS     R0,R9
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        STRB     R5,[R0, +R8]
        ADDS     R9,R9,#+1
        MOVS     R0,R9
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+260
        BLT      ??Noah_CMD_Read_16
        MOV      R0,#+0
        MOVS     R7,R0
        MOVS     R1,R8
        LDR      R0,??DataTable6
        LDR      R0,[R0, #+0]
        BL       OSMemPut
        B        ??Noah_CMD_Read_17
??Noah_CMD_Read_16:
        MOVS     R0,R9
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        MOVS     R1,R10
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        ADDS     R1,R1,#+2
        CMP      R0,R1
        BLT      ??Noah_CMD_Read_17
        MOV      R0,#+32
        MOVS     R7,R0
??Noah_CMD_Read_17:
        B        ??Noah_CMD_Read_9
??Noah_CMD_Read_6:
        MOVS     R6,R8
        STRB     R5,[R6, #+258]
        MOVS     R0,R9
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+260
        BLT      ??Noah_CMD_Read_18
        MOV      R0,#+0
        MOVS     R7,R0
        MOVS     R1,R8
        LDR      R0,??DataTable6
        LDR      R0,[R0, #+0]
        BL       OSMemPut
        B        ??Noah_CMD_Read_19
??Noah_CMD_Read_18:
        MOV      R0,#+0
        MOVS     R7,R0
        MOV      R0,#+0
        MOVS     R9,R0
        MOV      R0,#+0
        MOVS     R10,R0
        MOVS     R1,R8
        LDR      R0,[R4, #+16]
        BL       OSQPost
        STRB     R0,[SP, #+0]
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BNE      ??Noah_CMD_Read_20
        MOV      R0,#+0
        MOVS     R8,R0
        B        ??Noah_CMD_Read_19
??Noah_CMD_Read_20:
        MOVS     R1,R8
        LDR      R0,??DataTable6
        LDR      R0,[R0, #+0]
        BL       OSMemPut
??Noah_CMD_Read_19:
        B        ??Noah_CMD_Read_9
??Noah_CMD_Read_5:
        B        ??Noah_CMD_Read_9
??Noah_CMD_Read_7:
        MOV      R0,#+0
        MOVS     R7,R0
        MOV      R0,#+0
        MOVS     R9,R0
??Noah_CMD_Read_9:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        STR      R0,[R4, #+0]
        STR      R8,[R4, #+4]
        MOVS     R0,R9
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        STR      R0,[R4, #+8]
        MOVS     R0,R10
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        STR      R0,[R4, #+12]
        ADD      SP,SP,#+32       ;; stack cleaning
        POP      {R4-R10,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
CheckSum:
        PUSH     {LR}
        MOVS     R3,R0
        MOVS     R0,R3
        MOV      LR,#+0
        MOVS     R12,LR
??CheckSum_0:
        LSL      R12,R12,#+16
        LSRS     R12,R12,#+16
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
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
        PUSH     {R0,R1,R4-R11,LR}
        SUB      SP,SP,#+4
        MOVS     R4,R2
        MOVS     R5,R3
        LDRB     R6,[SP, #+48]
        LDR      R7,[SP, #+52]
        LDRB     R8,[SP, #+56]
        MOV      R0,#+0
        STRB     R0,[SP, #+0]
        MOV      R0,#+0
        MOVS     R9,R0
        MOV      R0,#+0
        MOVS     R10,R0
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??pcSendDateToBuf_0
        MOV      R0,#+0
        B        ??pcSendDateToBuf_1
??pcSendDateToBuf_0:
        MOV      R0,#+2
??pcSendDateToBuf_1:
        STRB     R0,[SP, #+2]
        LDRB     R1,[SP, #+8]
        ANDS     R1,R1,#0x3F
        STRB     R1,[SP, #+1]
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??pcSendDateToBuf_2
        CMP      R4,#+0
        BEQ      ??pcSendDateToBuf_2
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        MOVS     R1,R8
        ANDS     R1,R1,#0xFF      ;; Zero extend
        ADDS     R0,R1,R0
        CMP      R0,#+256
        BLT      ??pcSendDateToBuf_3
??pcSendDateToBuf_2:
        LDRB     R0,[SP, #+1]
        CMP      R0,#+2
        BNE      ??pcSendDateToBuf_3
        MOV      R0,#+194
        STRB     R0,[SP, #+0]
        B        ??pcSendDateToBuf_4
??pcSendDateToBuf_3:
        MOV      R0,#+0
        MOVS     R11,R0
??pcSendDateToBuf_5:
        MOVS     R0,R11
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+100
        BGE      ??pcSendDateToBuf_6
        MOVS     R1,SP
        LDR      R0,??DataTable6
        LDR      R0,[R0, #+0]
        BL       OSMemGet
        MOVS     R10,R0
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BEQ      ??pcSendDateToBuf_6
??pcSendDateToBuf_7:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+93
        BNE      ??pcSendDateToBuf_8
        MOV      R0,#+5
        BL       OSTimeDly
        ADDS     R11,R11,#+1
        B        ??pcSendDateToBuf_5
??pcSendDateToBuf_8:
        LDRB     R0,[SP, #+0]
        B        ??pcSendDateToBuf_9
??pcSendDateToBuf_6:
        MOVS     R0,R11
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+100
        BLT      ??pcSendDateToBuf_10
        LDRB     R0,[SP, #+0]
        B        ??pcSendDateToBuf_9
??pcSendDateToBuf_10:
        MOVS     R9,R10
        LDRB     R0,[SP, #+1]
        CMP      R0,#+2
        BNE      ??pcSendDateToBuf_11
        LDRB     R0,[SP, #+8]
        STRB     R0,[R9, #+0]
        ADDS     R9,R9,#+1
        ADDS     R0,R8,R5
        STRB     R0,[R9, #+0]
        ADDS     R9,R9,#+1
??pcSendDateToBuf_12:
        MOVS     R0,R8
        SUBS     R8,R0,#+1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??pcSendDateToBuf_13
        LDRB     R0,[R7, #+0]
        STRB     R0,[R9, #+0]
        ADDS     R7,R7,#+1
        ADDS     R9,R9,#+1
        B        ??pcSendDateToBuf_12
??pcSendDateToBuf_13:
        MOVS     R0,R5
        SUBS     R5,R0,#+1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??pcSendDateToBuf_14
        LDRB     R0,[R4, #+0]
        STRB     R0,[R9, #+0]
        ADDS     R4,R4,#+1
        ADDS     R9,R9,#+1
        B        ??pcSendDateToBuf_13
??pcSendDateToBuf_14:
        MOV      R0,#+0
        STRB     R0,[R9, #+0]
        ADDS     R9,R9,#+1
        B        ??pcSendDateToBuf_15
??pcSendDateToBuf_11:
        LDRB     R0,[SP, #+8]
        STRB     R0,[R9, #+0]
        ADDS     R9,R9,#+1
        LDRB     R0,[SP, #+8]
        STRB     R0,[R9, #+0]
        ADDS     R9,R9,#+1
??pcSendDateToBuf_15:
        LDRB     R2,[SP, #+2]
        MOVS     R1,R10
        LDR      R0,[SP, #+4]
        BL       OSQPostOpt
        STRB     R0,[SP, #+0]
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BEQ      ??pcSendDateToBuf_4
        MOVS     R1,R10
        LDR      R0,??DataTable6
        LDR      R0,[R0, #+0]
        BL       OSMemPut
??pcSendDateToBuf_4:
        LDRB     R0,[SP, #+0]
??pcSendDateToBuf_9:
        POP      {R1-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
EMB_Data_Check:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R0,#+0
        MOVS     R7,R0
        ADDS     R0,R4,#+2
        MOVS     R9,R0
        LDRB     R0,[R4, #+1]
        MOVS     R8,R0
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADDS     R9,R0,R9
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        SUBS     R8,R8,R0
        LDRB     R0,[R5, #+3084]
        CMP      R0,#+0
        BEQ      ??EMB_Data_Check_0
        MOVS     R0,R9
        ADDS     R9,R0,#+1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+224
        BNE      ??EMB_Data_Check_1
        LDRB     R0,[R9, #+0]
        STR      R0,[R5, #+0]
        ADDS     R9,R9,#+1
        LDR      R0,[R5, #+0]
        LDRB     R1,[R9, #+0]
        ADDS     R0,R0,R1, LSL #+8
        STR      R0,[R5, #+0]
        ADDS     R9,R9,#+1
        LDR      R0,[R5, #+0]
        STR      R0,[R5, #+4]
        LDR      R0,[R5, #+4]
        MOV      R1,#+1
        ORR      R1,R1,#0xC00
        CMP      R0,R1
        BCC      ??EMB_Data_Check_2
        MOV      R1,#+3072
        LDR      R0,??DataTable6_1
        BL       BSP_Ser_Printf
        MOV      R0,#+192
        B        ??EMB_Data_Check_3
??EMB_Data_Check_2:
        ADDS     R0,R5,#+12
        STR      R0,[R5, #+8]
        MOVS     R0,R8
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        SUBS     R0,R0,#+3
        LDR      R1,[R5, #+0]
        CMP      R0,R1
        BCS      ??EMB_Data_Check_4
        LDR      R0,[R5, #+0]
        MOVS     R1,R8
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        SUBS     R1,R1,#+3
        SUBS     R0,R0,R1
        STR      R0,[R5, #+0]
        MOV      R0,#+0
        STRB     R0,[R5, #+3084]
??EMB_Data_Check_4:
        MOVS     R0,R8
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        SUBS     R2,R0,#+3
        MOVS     R1,R9
        LDR      R0,[R5, #+8]
        BL       memcpy
        MOVS     R0,R8
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        LDR      R1,[R5, #+8]
        ADDS     R0,R0,R1
        SUBS     R0,R0,#+3
        STR      R0,[R5, #+8]
        B        ??EMB_Data_Check_5
??EMB_Data_Check_1:
        MOV      R0,#+190
        MOVS     R7,R0
        B        ??EMB_Data_Check_5
??EMB_Data_Check_0:
        MOVS     R0,R8
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        LDR      R1,[R5, #+0]
        CMP      R0,R1
        BCS      ??EMB_Data_Check_6
        LDR      R0,[R5, #+0]
        MOVS     R1,R8
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        SUBS     R0,R0,R1
        STR      R0,[R5, #+0]
        MOVS     R2,R8
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        MOVS     R1,R9
        LDR      R0,[R5, #+8]
        BL       memcpy
        MOVS     R0,R8
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        LDR      R1,[R5, #+8]
        ADDS     R0,R0,R1
        STR      R0,[R5, #+8]
        B        ??EMB_Data_Check_5
??EMB_Data_Check_6:
        LDR      R2,[R5, #+0]
        MOVS     R1,R9
        LDR      R0,[R5, #+8]
        BL       memcpy
        MOV      R0,#+1
        STRB     R0,[R5, #+3084]
??EMB_Data_Check_5:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
??EMB_Data_Check_3:
        POP      {R1,R4-R9,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Noah_CMD_Parse_Ruler:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R0,#+0
        MOVS     R6,R0
        MOV      R0,#+0
        MOVS     R7,R0
        LDR      R0,??DataTable7
        MOVS     R8,R0
        LDRB     R0,[R4, #+2]
        CMP      R0,#+4
        BEQ      ??Noah_CMD_Parse_Ruler_0
        CMP      R0,#+5
        BEQ      ??Noah_CMD_Parse_Ruler_1
        CMP      R0,#+6
        BEQ      ??Noah_CMD_Parse_Ruler_2
        CMP      R0,#+8
        BEQ      ??Noah_CMD_Parse_Ruler_3
        CMP      R0,#+12
        BEQ      ??Noah_CMD_Parse_Ruler_4
        CMP      R0,#+14
        BEQ      ??Noah_CMD_Parse_Ruler_5
        CMP      R0,#+254
        BEQ      ??Noah_CMD_Parse_Ruler_6
        CMP      R0,#+255
        BNE      ??Noah_CMD_Parse_Ruler_7
??Noah_CMD_Parse_Ruler_8:
        LDRB     R0,[R4, #+1]
        CMP      R0,#+2
        BNE      ??Noah_CMD_Parse_Ruler_9
        LDRB     R0,[R4, #+3]
        MOVS     R6,R0
??Noah_CMD_Parse_Ruler_9:
        B        ??Noah_CMD_Parse_Ruler_10
??Noah_CMD_Parse_Ruler_6:
        LDRB     R0,[R4, #+1]
        CMP      R0,#+2
        BNE      ??Noah_CMD_Parse_Ruler_11
        LDRB     R0,[R4, #+3]
        MOVS     R6,R0
        MOV      R0,#+1
        STRB     R0,[R5, #+0]
??Noah_CMD_Parse_Ruler_11:
        B        ??Noah_CMD_Parse_Ruler_10
??Noah_CMD_Parse_Ruler_3:
        ADDS     R7,R7,#+1
??Noah_CMD_Parse_Ruler_2:
        ADDS     R7,R7,#+1
        MOVS     R2,R7
        ANDS     R2,R2,#0xFF      ;; Zero extend
        MOVS     R1,R8
        MOVS     R0,R4
        BL       EMB_Data_Check
        MOVS     R6,R0
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Noah_CMD_Parse_Ruler_12
        MOVS     R0,R8
        BL       Init_EMB_BUF
        B        ??Noah_CMD_Parse_Ruler_13
??Noah_CMD_Parse_Ruler_12:
        LDRB     R0,[R8, #+3084]
        CMP      R0,#+0
        BEQ      ??Noah_CMD_Parse_Ruler_13
        MOV      R0,#+1
        STRB     R0,[R5, #+0]
??Noah_CMD_Parse_Ruler_13:
        B        ??Noah_CMD_Parse_Ruler_10
??Noah_CMD_Parse_Ruler_1:
        LDRB     R0,[R4, #+3]
        STRB     R0,[R8, #+12]
        LDRB     R0,[R4, #+4]
        STRB     R0,[R8, #+13]
        MOV      R0,#+1
        STRB     R0,[R5, #+0]
        B        ??Noah_CMD_Parse_Ruler_10
??Noah_CMD_Parse_Ruler_4:
        LDRB     R0,[R4, #+3]
        STRB     R0,[R8, #+12]
        MOV      R0,#+1
        STRB     R0,[R5, #+0]
        B        ??Noah_CMD_Parse_Ruler_10
??Noah_CMD_Parse_Ruler_5:
        LDRB     R0,[R4, #+1]
        STR      R0,[R8, #+4]
        LDRB     R2,[R4, #+1]
        ADDS     R1,R4,#+3
        ADDS     R0,R8,#+12
        BL       memcpy
        MOV      R0,#+48
        LDRB     R1,[R4, #+1]
        ADDS     R1,R1,R8
        STRB     R0,[R1, #+12]
        MOV      R0,#+1
        STRB     R0,[R5, #+0]
        B        ??Noah_CMD_Parse_Ruler_10
??Noah_CMD_Parse_Ruler_0:
        LDRB     R0,[R4, #+3]
        STRB     R0,[R8, #+12]
        MOV      R0,#+1
        STRB     R0,[R5, #+0]
        B        ??Noah_CMD_Parse_Ruler_10
??Noah_CMD_Parse_Ruler_7:
        MOV      R0,#+169
        MOVS     R6,R0
??Noah_CMD_Parse_Ruler_10:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Send_DACK:
        PUSH     {R0-R4,LR}
        MOVS     R4,R0
        MOV      R0,#+255
        STRB     R0,[SP, #+12]
        STRB     R4,[SP, #+13]
        MOV      R0,#+0
        STR      R0,[SP, #+8]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+0
        STR      R0,[SP, #+0]
        MOV      R3,#+2
        ADD      R2,SP,#+12
        MOV      R1,#+2
        LDR      R0,??DataTable8
        LDR      R0,[R0, #+0]
        BL       pcSendDateToBuf
        POP      {R0-R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Send_GACK:
        PUSH     {R0-R4,LR}
        MOVS     R4,R0
        MOV      R0,#+254
        STRB     R0,[SP, #+12]
        STRB     R4,[SP, #+13]
        MOV      R0,#+0
        STR      R0,[SP, #+8]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+0
        STR      R0,[SP, #+0]
        MOV      R3,#+2
        ADD      R2,SP,#+12
        MOV      R1,#+2
        LDR      R0,??DataTable8
        LDR      R0,[R0, #+0]
        BL       pcSendDateToBuf
        POP      {R0-R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
EMB_Data_Build:
        PUSH     {R4-R8,LR}
        SUB      SP,SP,#+40
        MOVS     R4,R0
        MOVS     R8,R1
        MOV      R0,#+0
        MOVS     R5,R0
        ADDS     R0,R4,#+12
        MOVS     R7,R0
        MOV      R0,#+224
        STRB     R0,[R7, #+0]
        ADDS     R7,R7,#+3
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+10
        BEQ      ??EMB_Data_Build_0
        CMP      R0,#+50
        BEQ      ??EMB_Data_Build_1
        B        ??EMB_Data_Build_2
??EMB_Data_Build_0:
        MOVS     R3,SP
        MOVS     R2,R8
        ANDS     R2,R2,#0xFF      ;; Zero extend
        MOV      R1,#+3072
        MOVS     R0,R7
        BL       emb_init_builder
        MOVS     R6,R0
        LDR      R0,??DataTable8_1
        LDRB     R3,[R0, #+0]
        MOV      R2,#+1
        MOVS     R1,R6
        MOVS     R0,SP
        BL       emb_append_attr_uint
        MOVS     R6,R0
        LDR      R0,??DataTable8_2
        LDR      R3,[R0, #+0]
        MOV      R2,#+2
        MOVS     R1,R6
        MOVS     R0,SP
        BL       emb_append_attr_uint
        MOVS     R6,R0
        LDR      R0,??DataTable8_3
        LDR      R3,[R0, #+0]
        MOV      R2,#+3
        MOVS     R1,R6
        MOVS     R0,SP
        BL       emb_append_attr_uint
        MOVS     R6,R0
        MOVS     R1,R6
        MOVS     R0,SP
        BL       emb_append_end
        MOVS     R6,R0
        STRB     R6,[R4, #+13]
        ASRS     R0,R6,#+8
        STRB     R0,[R4, #+14]
        ADDS     R0,R6,#+3
        STR      R0,[R4, #+4]
        B        ??EMB_Data_Build_2
??EMB_Data_Build_1:
        MOVS     R3,SP
        MOVS     R2,R8
        ANDS     R2,R2,#0xFF      ;; Zero extend
        MOV      R1,#+3072
        MOVS     R0,R7
        BL       emb_init_builder
        MOVS     R6,R0
        LDR      R3,??DataTable8_4
        MOV      R2,#+1
        MOVS     R1,R6
        MOVS     R0,SP
        BL       emb_append_attr_string
        MOVS     R6,R0
        LDR      R3,??DataTable8_5
        MOV      R2,#+2
        MOVS     R1,R6
        MOVS     R0,SP
        BL       emb_append_attr_string
        MOVS     R6,R0
        LDR      R1,??DataTable8_6
        ADD      R0,SP,#+8
        BL       strcpy
        LDR      R1,??DataTable8_7
        ADD      R0,SP,#+8
        BL       strcat
        ADD      R3,SP,#+8
        MOV      R2,#+3
        MOVS     R1,R6
        MOVS     R0,SP
        BL       emb_append_attr_string
        MOVS     R6,R0
        MOVS     R1,R6
        MOVS     R0,SP
        BL       emb_append_end
        MOVS     R6,R0
        STRB     R6,[R4, #+13]
        ASRS     R0,R6,#+8
        STRB     R0,[R4, #+14]
        ADDS     R0,R6,#+3
        STR      R0,[R4, #+4]
??EMB_Data_Build_2:
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADD      SP,SP,#+40       ;; stack cleaning
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     pMEM_Part_MsgUART

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     `?<Constant "EMB data length excee...">`

        SECTION `.text`:CODE:NOROOT(2)
        ARM
EMB_Data_Parse:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+140
        MOVS     R6,R0
        MOV      R0,#+0
        MOVS     R7,R0
        LDR      R0,??DataTable7
        MOVS     R9,R0
        ADD      R2,SP,#+16
        LDR      R1,[R6, #+4]
        ADDS     R0,R6,#+12
        BL       emb_attach
        ADD      R0,SP,#+16
        BL       emb_get_id
        STRB     R0,[SP, #+24]
        LDRB     R0,[SP, #+24]
        CMP      R0,#+1
        BEQ      ??EMB_Data_Parse_0
        CMP      R0,#+2
        BEQ      ??EMB_Data_Parse_1
        CMP      R0,#+3
        BEQ      ??EMB_Data_Parse_2
        CMP      R0,#+4
        BEQ      ??EMB_Data_Parse_3
        CMP      R0,#+5
        BEQ      ??EMB_Data_Parse_4
        CMP      R0,#+6
        BEQ      ??EMB_Data_Parse_5
        CMP      R0,#+7
        BEQ      ??EMB_Data_Parse_6
        CMP      R0,#+8
        BEQ      ??EMB_Data_Parse_7
        CMP      R0,#+9
        BEQ      ??EMB_Data_Parse_8
        CMP      R0,#+11
        BEQ      ??EMB_Data_Parse_9
        CMP      R0,#+12
        BEQ      ??EMB_Data_Parse_10
        CMP      R0,#+13
        BEQ      ??EMB_Data_Parse_11
        CMP      R0,#+14
        BEQ      ??EMB_Data_Parse_12
        CMP      R0,#+15
        BEQ      ??EMB_Data_Parse_13
        CMP      R0,#+100
        BEQ      ??EMB_Data_Parse_14
        CMP      R0,#+101
        BEQ      ??EMB_Data_Parse_15
        CMP      R0,#+102
        BEQ      ??EMB_Data_Parse_16
        B        ??EMB_Data_Parse_17
??EMB_Data_Parse_0:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_DACK
        MVN      R2,#+0
        MOV      R1,#+1
        ADD      R0,SP,#+16
        BL       emb_get_attr_int
        STR      R0,[SP, #+12]
        LDR      R0,[SP, #+12]
        CMN      R0,#+1
        BNE      ??EMB_Data_Parse_18
        MOV      R0,#+191
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_18:
        LDR      R0,[SP, #+12]
        STRB     R0,[SP, #+34]
        MVN      R2,#+0
        MOV      R1,#+2
        ADD      R0,SP,#+16
        BL       emb_get_attr_int
        STR      R0,[SP, #+12]
        LDR      R0,[SP, #+12]
        CMN      R0,#+1
        BNE      ??EMB_Data_Parse_20
        MOV      R0,#+191
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_20:
        LDR      R0,[SP, #+12]
        STRH     R0,[SP, #+32]
        MVN      R2,#+0
        MOV      R1,#+3
        ADD      R0,SP,#+16
        BL       emb_get_attr_int
        STR      R0,[SP, #+12]
        LDR      R0,[SP, #+12]
        CMN      R0,#+1
        BNE      ??EMB_Data_Parse_21
        MOV      R0,#+191
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_21:
        LDR      R0,[SP, #+12]
        STRB     R0,[SP, #+35]
        MOV      R2,#+0
        MOV      R1,#+4
        ADD      R0,SP,#+16
        BL       emb_get_attr_int
        STR      R0,[SP, #+12]
        LDR      R0,[SP, #+12]
        STRB     R0,[SP, #+36]
        ADD      R0,SP,#+32
        BL       Setup_Audio
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_1:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_DACK
        MVN      R2,#+0
        MOV      R1,#+1
        ADD      R0,SP,#+16
        BL       emb_get_attr_int
        STR      R0,[SP, #+12]
        LDR      R0,[SP, #+12]
        CMN      R0,#+1
        BNE      ??EMB_Data_Parse_22
        MOV      R0,#+191
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_22:
        LDR      R0,[SP, #+12]
        STRB     R0,[SP, #+32]
        MVN      R2,#+0
        MOV      R1,#+2
        ADD      R0,SP,#+16
        BL       emb_get_attr_int
        STR      R0,[SP, #+12]
        LDR      R0,[SP, #+12]
        CMN      R0,#+1
        BNE      ??EMB_Data_Parse_23
        MOV      R0,#+191
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_23:
        LDR      R0,[SP, #+12]
        STRB     R0,[SP, #+33]
        MOV      R0,#+1
        BL       Ruler_Active_Control
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??EMB_Data_Parse_24
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_24:
        LDR      R0,[SP, #+32]
        BL       Start_Audio
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_2:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_DACK
        MOV      R0,#+0
        BL       Ruler_Active_Control
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??EMB_Data_Parse_25
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_25:
        BL       Stop_Audio
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_13:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_DACK
        BL       Reset_Audio
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_3:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_DACK
        MVN      R2,#+0
        MOV      R1,#+1
        ADD      R0,SP,#+16
        BL       emb_get_attr_int
        STR      R0,[SP, #+12]
        LDR      R0,[SP, #+12]
        CMN      R0,#+1
        BNE      ??EMB_Data_Parse_26
        MOV      R0,#+191
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_26:
        LDR      R0,[SP, #+12]
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Read_Ruler_Info
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??EMB_Data_Parse_27
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_27:
        ADD      R2,SP,#+16
        LDR      R1,[R9, #+4]
        ADDS     R0,R9,#+12
        BL       emb_attach
        LDR      R2,[SP, #+12]
        ANDS     R2,R2,#0xFF      ;; Zero extend
        MOV      R1,#+1
        ADD      R0,SP,#+16
        BL       emb_get_node_replace
        MOV      R0,#+224
        STRB     R0,[SP, #+28]
        LDR      R0,[R9, #+4]
        STRB     R0,[SP, #+29]
        LDR      R0,[R9, #+4]
        LSRS     R0,R0,#+8
        STRB     R0,[SP, #+30]
        MOV      R0,#+0
        STR      R0,[SP, #+8]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+0
        STR      R0,[SP, #+0]
        MOV      R3,#+3
        ADD      R2,SP,#+28
        MOV      R1,#+2
        LDR      R0,??DataTable8
        LDR      R0,[R0, #+0]
        BL       pcSendDateToBuf
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??EMB_Data_Parse_28
        ADDS     R0,R9,#+12
        MOVS     R10,R0
        LDR      R0,[R9, #+4]
        MOVS     R11,R0
??EMB_Data_Parse_29:
        MOVS     R0,R11
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+0
        BEQ      ??EMB_Data_Parse_28
        MOVS     R0,R11
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+256
        BLT      ??EMB_Data_Parse_30
        MOV      R0,#+255
        STR      R0,[SP, #+12]
        B        ??EMB_Data_Parse_31
??EMB_Data_Parse_30:
        MOVS     R0,R11
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        STR      R0,[SP, #+12]
??EMB_Data_Parse_31:
        MOV      R0,#+0
        STR      R0,[SP, #+8]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+0
        STR      R0,[SP, #+0]
        LDR      R3,[SP, #+12]
        ANDS     R3,R3,#0xFF      ;; Zero extend
        MOVS     R2,R10
        MOV      R1,#+2
        LDR      R0,??DataTable8
        LDR      R0,[R0, #+0]
        BL       pcSendDateToBuf
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??EMB_Data_Parse_28
??EMB_Data_Parse_32:
        LDR      R0,[SP, #+12]
        SUBS     R11,R11,R0
        LDR      R0,[SP, #+12]
        ADDS     R10,R0,R10
        B        ??EMB_Data_Parse_29
??EMB_Data_Parse_28:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_4:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_DACK
        MVN      R2,#+0
        MOV      R1,#+1
        ADD      R0,SP,#+16
        BL       emb_get_attr_int
        STR      R0,[SP, #+12]
        LDR      R0,[SP, #+12]
        CMN      R0,#+1
        BNE      ??EMB_Data_Parse_33
        MOV      R0,#+191
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_33:
        LDR      R0,[SP, #+12]
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Write_Ruler_Info
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_5:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_DACK
        MVN      R2,#+0
        MOV      R1,#+1
        ADD      R0,SP,#+16
        BL       emb_get_attr_int
        STR      R0,[SP, #+12]
        LDR      R0,[SP, #+12]
        CMN      R0,#+1
        BNE      ??EMB_Data_Parse_34
        MOV      R0,#+191
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_34:
        MVN      R2,#+0
        MOV      R1,#+2
        ADD      R0,SP,#+16
        BL       emb_get_attr_int
        MOVS     R8,R0
        CMN      R8,#+1
        BNE      ??EMB_Data_Parse_35
        MOV      R0,#+191
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_35:
        MOVS     R1,R8
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,[SP, #+12]
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Read_Mic_Cali_Data
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??EMB_Data_Parse_36
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_36:
        ADD      R2,SP,#+16
        LDR      R1,[R9, #+4]
        ADDS     R0,R9,#+12
        BL       emb_attach
        LDR      R2,[SP, #+12]
        ANDS     R2,R2,#0xFF      ;; Zero extend
        MOV      R1,#+1
        ADD      R0,SP,#+16
        BL       emb_get_node_replace
        MOVS     R2,R8
        ANDS     R2,R2,#0xFF      ;; Zero extend
        MOV      R1,#+2
        ADD      R0,SP,#+16
        BL       emb_get_node_replace
        MOV      R0,#+224
        STRB     R0,[SP, #+28]
        LDR      R0,[R9, #+4]
        STRB     R0,[SP, #+29]
        LDR      R0,[R9, #+4]
        LSRS     R0,R0,#+8
        STRB     R0,[SP, #+30]
        MOV      R0,#+0
        STR      R0,[SP, #+8]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+0
        STR      R0,[SP, #+0]
        MOV      R3,#+3
        ADD      R2,SP,#+28
        MOV      R1,#+2
        LDR      R0,??DataTable8
        LDR      R0,[R0, #+0]
        BL       pcSendDateToBuf
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??EMB_Data_Parse_37
        ADDS     R0,R9,#+12
        MOVS     R10,R0
        LDR      R0,[R9, #+4]
        MOVS     R11,R0
??EMB_Data_Parse_38:
        MOVS     R0,R11
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+0
        BEQ      ??EMB_Data_Parse_37
        MOVS     R0,R11
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+256
        BLT      ??EMB_Data_Parse_39
        MOV      R0,#+255
        STR      R0,[SP, #+12]
        B        ??EMB_Data_Parse_40
??EMB_Data_Parse_39:
        MOVS     R0,R11
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        STR      R0,[SP, #+12]
??EMB_Data_Parse_40:
        MOV      R0,#+0
        STR      R0,[SP, #+8]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+0
        STR      R0,[SP, #+0]
        LDR      R3,[SP, #+12]
        ANDS     R3,R3,#0xFF      ;; Zero extend
        MOVS     R2,R10
        MOV      R1,#+2
        LDR      R0,??DataTable8
        LDR      R0,[R0, #+0]
        BL       pcSendDateToBuf
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??EMB_Data_Parse_37
??EMB_Data_Parse_41:
        LDR      R0,[SP, #+12]
        SUBS     R11,R11,R0
        LDR      R0,[SP, #+12]
        ADDS     R10,R0,R10
        B        ??EMB_Data_Parse_38
??EMB_Data_Parse_37:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_6:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_DACK
        MVN      R2,#+0
        MOV      R1,#+1
        ADD      R0,SP,#+16
        BL       emb_get_attr_int
        STR      R0,[SP, #+12]
        LDR      R0,[SP, #+12]
        CMN      R0,#+1
        BNE      ??EMB_Data_Parse_42
        MOV      R0,#+191
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_42:
        MVN      R2,#+0
        MOV      R1,#+2
        ADD      R0,SP,#+16
        BL       emb_get_attr_int
        MOVS     R8,R0
        CMN      R8,#+1
        BNE      ??EMB_Data_Parse_43
        MOV      R0,#+191
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_43:
        MOVS     R1,R8
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,[SP, #+12]
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Write_Mic_Cali_Data
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_7:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_DACK
        MVN      R2,#+0
        MOV      R1,#+1
        ADD      R0,SP,#+16
        BL       emb_get_attr_int
        STR      R0,[SP, #+12]
        LDR      R0,[SP, #+12]
        CMN      R0,#+1
        BNE      ??EMB_Data_Parse_44
        MOV      R0,#+191
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_44:
        LDR      R0,[SP, #+12]
        STRB     R0,[SP, #+32]
        MVN      R2,#+0
        MOV      R1,#+2
        ADD      R0,SP,#+16
        BL       emb_get_attr_int
        STR      R0,[SP, #+12]
        LDR      R0,[SP, #+12]
        CMN      R0,#+1
        BNE      ??EMB_Data_Parse_45
        MOV      R0,#+191
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_45:
        LDR      R0,[SP, #+12]
        STRB     R0,[SP, #+33]
        MVN      R2,#+0
        MOV      R1,#+3
        ADD      R0,SP,#+16
        BL       emb_get_attr_int
        STR      R0,[SP, #+12]
        LDR      R0,[SP, #+12]
        CMN      R0,#+1
        BNE      ??EMB_Data_Parse_46
        MOV      R0,#+191
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_46:
        LDR      R0,[SP, #+12]
        STRB     R0,[SP, #+34]
        ADD      R0,SP,#+32
        BL       Toggle_Mic
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_11:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_DACK
        MVN      R2,#+0
        MOV      R1,#+1
        ADD      R0,SP,#+16
        BL       emb_get_attr_int
        STR      R0,[SP, #+12]
        LDR      R0,[SP, #+12]
        CMN      R0,#+1
        BNE      ??EMB_Data_Parse_47
        MOV      R0,#+191
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_47:
        ADD      R0,SP,#+12
        BL       Reset_Mic_Mask
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_12:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_DACK
        MVN      R2,#+0
        MOV      R1,#+1
        ADD      R0,SP,#+16
        BL       emb_get_attr_int
        STR      R0,[SP, #+12]
        LDR      R0,[SP, #+12]
        CMN      R0,#+1
        BNE      ??EMB_Data_Parse_48
        MOV      R0,#+191
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_48:
        LDR      R0,[SP, #+12]
        STR      R0,[SP, #+32]
        MVN      R2,#+0
        MOV      R1,#+2
        ADD      R0,SP,#+16
        BL       emb_get_attr_int
        STR      R0,[SP, #+12]
        LDR      R0,[SP, #+12]
        CMN      R0,#+1
        BNE      ??EMB_Data_Parse_49
        MOV      R0,#+191
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_49:
        LDR      R0,[SP, #+12]
        STR      R0,[SP, #+36]
        MVN      R2,#+0
        MOV      R1,#+3
        ADD      R0,SP,#+16
        BL       emb_get_attr_int
        STR      R0,[SP, #+12]
        LDR      R0,[SP, #+12]
        CMN      R0,#+1
        BNE      ??EMB_Data_Parse_50
        MOV      R0,#+191
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_50:
        LDR      R0,[SP, #+12]
        STR      R0,[SP, #+40]
        ADD      R0,SP,#+32
        BL       Set_Volume
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_8:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_DACK
        MOV      R1,#+10
        MOVS     R0,R9
        BL       EMB_Data_Build
        MOVS     R7,R0
        MOV      R0,#+0
        STR      R0,[SP, #+8]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+0
        STR      R0,[SP, #+0]
        LDR      R3,[R9, #+4]
        ANDS     R3,R3,#0xFF      ;; Zero extend
        ADDS     R2,R9,#+12
        MOV      R1,#+2
        LDR      R0,??DataTable8
        LDR      R0,[R0, #+0]
        BL       pcSendDateToBuf
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_9:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_DACK
        MOV      R1,#+50
        MOVS     R0,R9
        BL       EMB_Data_Build
        MOVS     R7,R0
        MOV      R0,#+0
        STR      R0,[SP, #+8]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+0
        STR      R0,[SP, #+0]
        LDR      R3,[R9, #+4]
        ANDS     R3,R3,#0xFF      ;; Zero extend
        ADDS     R2,R9,#+12
        MOV      R1,#+2
        LDR      R0,??DataTable8
        LDR      R0,[R0, #+0]
        BL       pcSendDateToBuf
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_10:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_DACK
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_14:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_DACK
        MVN      R2,#+0
        MOV      R1,#+1
        ADD      R0,SP,#+16
        BL       emb_get_attr_int
        STR      R0,[SP, #+12]
        LDR      R0,[SP, #+12]
        CMN      R0,#+1
        BNE      ??EMB_Data_Parse_51
        MOV      R0,#+191
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_51:
        MOVS     R2,SP
        MOV      R1,#+2
        ADD      R0,SP,#+16
        BL       emb_get_attr_binary
        MOVS     R4,R0
        CMP      R4,#+0
        BNE      ??EMB_Data_Parse_52
        MOV      R0,#+191
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_52:
        MOV      R1,#+3
        ADD      R0,SP,#+16
        BL       emb_get_attr_string
        MOVS     R5,R0
        CMP      R5,#+0
        BNE      ??EMB_Data_Parse_53
        MOV      R0,#+191
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_53:
        LDR      R3,[SP, #+0]
        MOVS     R2,R5
        MOVS     R1,R4
        LDR      R0,[SP, #+12]
        BL       Save_Ruler_FW
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_15:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_DACK
        MVN      R2,#+0
        MOV      R1,#+1
        ADD      R0,SP,#+16
        BL       emb_get_attr_int
        STR      R0,[SP, #+12]
        LDR      R0,[SP, #+12]
        CMN      R0,#+1
        BNE      ??EMB_Data_Parse_54
        MOV      R0,#+191
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_54:
        LDR      R0,[SP, #+12]
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Update_Ruler_FW
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_16:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_DACK
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_GACK
        B        ??EMB_Data_Parse_19
??EMB_Data_Parse_17:
        MOV      R0,#+169
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Send_DACK
??EMB_Data_Parse_19:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADD      SP,SP,#+140      ;; stack cleaning
        POP      {R4-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     Emb_Buf_Data

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Ruler_State_Previous:
        DS8 4

        SECTION `.text`:CODE:NOROOT(2)
        ARM
AB_Status_Change_Report:
        PUSH     {R1-R7,LR}
        MOV      R0,#+0
        MOVS     R4,R0
        LDR      R0,??DataTable8_8
        MOVS     R5,R0
        MOV      R0,#+0
        MOVS     R6,R0
        MOV      R0,#+0
        MOVS     R7,R0
??AB_Status_Change_Report_0:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+4
        BGE      ??AB_Status_Change_Report_1
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable8_9
        LDRB     R0,[R0, +R1]
        CMP      R0,#+0
        BNE      ??AB_Status_Change_Report_2
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable8_2
        LDRB     R0,[R0, +R1]
        CMP      R0,#+2
        BGE      ??AB_Status_Change_Report_3
??AB_Status_Change_Report_2:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable8_9
        LDRB     R0,[R0, +R1]
        CMP      R0,#+2
        BLT      ??AB_Status_Change_Report_4
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable8_2
        LDRB     R0,[R0, +R1]
        CMP      R0,#+0
        BNE      ??AB_Status_Change_Report_4
??AB_Status_Change_Report_3:
        MOV      R0,#+1
        MOVS     R6,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable8_2
        LDRB     R0,[R0, +R1]
        MOVS     R1,R7
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R2,??DataTable8_9
        STRB     R0,[R1, +R2]
??AB_Status_Change_Report_4:
        ADDS     R7,R7,#+1
        B        ??AB_Status_Change_Report_0
??AB_Status_Change_Report_1:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??AB_Status_Change_Report_5
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??AB_Status_Change_Report_6
??AB_Status_Change_Report_5:
        LDR      R0,??DataTable8_10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??AB_Status_Change_Report_7
        LDR      R0,??DataTable8_11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??AB_Status_Change_Report_8
??AB_Status_Change_Report_7:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??AB_Status_Change_Report_6
??AB_Status_Change_Report_8:
        MOV      R0,#+0
        LDR      R1,??DataTable8_11
        STRB     R0,[R1, #+0]
        MOV      R1,#+10
        MOVS     R0,R5
        BL       EMB_Data_Build
        MOVS     R4,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??AB_Status_Change_Report_9
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??AB_Status_Change_Report_6
??AB_Status_Change_Report_9:
        BL       Time_Stamp
        LDR      R0,??DataTable8_12
        BL       BSP_Ser_Printf
        MOV      R0,#+0
        STR      R0,[SP, #+8]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+0
        STR      R0,[SP, #+0]
        LDR      R3,[R5, #+4]
        ANDS     R3,R3,#0xFF      ;; Zero extend
        ADDS     R2,R5,#+12
        MOV      R1,#+2
        LDR      R0,??DataTable8
        LDR      R0,[R0, #+0]
        BL       pcSendDateToBuf
        MOVS     R4,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
??AB_Status_Change_Report_6:
        POP      {R1-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     EVENT_MsgQ_Noah2PCUART

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     Global_Bridge_POST

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC32     Global_Ruler_State

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC32     Global_Mic_State

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DC32     hw_model

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_5:
        DC32     hw_version

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_6:
        DC32     fw_version

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_7:
        DC32     Audio_Version

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_8:
        DC32     Emb_Buf_Cmd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_9:
        DC32     Ruler_State_Previous

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_10:
        DC32     Global_Conn_Ready

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_11:
        DC32     Global_Idle_Ready

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_12:
        DC32     `?<Constant "AB_Status_Change_Report!">`

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "EMB data length excee...">`:
        DATA
        DC8 "EMB data length exceed the Max %d B\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "AB_Status_Change_Report!">`:
        DATA
        DC8 "AB_Status_Change_Report!"
        DC8 0, 0, 0

        END
// 
//     4 bytes in section .bss
//    68 bytes in section .rodata
// 6 252 bytes in section .text
// 
// 6 252 bytes of CODE  memory
//    68 bytes of CONST memory
//     4 bytes of DATA  memory
//
//Errors: none
//Warnings: none
