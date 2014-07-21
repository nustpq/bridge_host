///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       21/Jul/2014  19:24:41
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\task_user_if.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\task_user_if.c"
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
//        Bench\Bridge_Host_OS\APP\FLASH\List\task_user_if.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN AB_POST
        EXTERN BSP_Ser_Init
        EXTERN BSP_Ser_Printf
        EXTERN Bsp_Ser_Rx_Sem_lock
        EXTERN Bsp_Ser_Tx_Sem_lock
        EXTERN Buzzer_OnOff
        EXTERN CODEC_LOUT_Small_Gain_En
        EXTERN Debug_COM_Sel
        EXTERN Get_Ruler_Type
        EXTERN Get_Ruler_Version
        EXTERN Global_Mic_Mask
        EXTERN Global_Ruler_State
        EXTERN Head_Info
        EXTERN ISR_PC_UART
        EXTERN Init_Global_Var
        EXTERN Init_Ruler
        EXTERN OSMboxPend
        EXTERN OSSemSet
        EXTERN OSTaskDel
        EXTERN OSTimeDly
        EXTERN Ruler_POST
        EXTERN Ruler_Power_Switch
        EXTERN Setup_Ruler
        EXTERN Task_ReCreate_Shell
        EXTERN UART_Init

        PUBLIC App_TaskUserIF
        PUBLIC App_UserIF_Mbox
        PUBLIC Port_Detect_Enable


        SECTION `.bss`:DATA:REORDER:NOROOT(2)
App_UserIF_Mbox:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(0)
port_enable:
        DATA
        DC8 1

        SECTION `.text`:CODE:NOROOT(2)
        ARM
App_TaskUserIF:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+12
        MOVS     R4,R0
        MOV      R0,#+500
        BL       OSTimeDly
        BL       Head_Info
        MOV      R0,#+1
        BL       Ruler_Power_Switch
        BL       Init_Global_Var
        BL       AB_POST
        LDR      R0,??DataTable1
        BL       BSP_Ser_Printf
??App_TaskUserIF_0:
        ADD      R2,SP,#+4
        MOV      R1,#+0
        LDR      R0,??DataTable1_1
        LDR      R0,[R0, #+0]
        BL       OSMboxPend
        MOVS     R5,R0
        CMP      R5,#+0
        BEQ      ??App_TaskUserIF_0
        LDR      R0,[R5, #+0]
        MOVS     R6,R0
        LDR      R0,??DataTable1_2
        BL       BSP_Ser_Printf
        ANDS     R0,R6,#0xFF000000
        CMP      R0,#-1610612736
        BEQ      ??App_TaskUserIF_1
        CMP      R0,#-1342177280
        BEQ      ??App_TaskUserIF_2
        CMP      R0,#-1073741824
        BEQ      ??App_TaskUserIF_3
        B        ??App_TaskUserIF_4
??App_TaskUserIF_1:
        BL       Head_Info
        B        ??App_TaskUserIF_4
??App_TaskUserIF_2:
        LDR      R0,??DataTable1_3
        BL       BSP_Ser_Printf
        MOV      R0,#+1
        ANDS     R2,R0,R6, LSR #+1
        ANDS     R1,R6,#0x1
        LDR      R0,??DataTable1_4
        BL       BSP_Ser_Printf
        MOV      R0,#+1
        TST      R0,R6, LSR #+9
        BEQ      ??App_TaskUserIF_5
        MOV      R0,#+20
        BL       OSTaskDel
        ADD      R2,SP,#+4
        MOV      R1,#+1
        LDR      R0,??DataTable1_5
        LDR      R0,[R0, #+0]
        BL       OSSemSet
        ADD      R2,SP,#+4
        MOV      R1,#+1
        LDR      R0,??DataTable1_6
        LDR      R0,[R0, #+0]
        BL       OSSemSet
        BL       Task_ReCreate_Shell
        MOV      R0,#+1
        TST      R0,R6, LSR #+1
        BNE      ??App_TaskUserIF_6
        MOV      R0,#+1
        LDR      R1,??DataTable1_7
        STRB     R0,[R1, #+0]
        MOV      R0,#+65536
        ORR      R0,R0,#0xC200
        BL       BSP_Ser_Init
        B        ??App_TaskUserIF_5
??App_TaskUserIF_6:
        MOV      R0,#+0
        LDR      R1,??DataTable1_7
        STRB     R0,[R1, #+0]
        MOV      R2,#+65536
        ORR      R2,R2,#0xC200
        LDR      R1,??DataTable1_8
        MOV      R0,#+0
        BL       UART_Init
??App_TaskUserIF_5:
        MOV      R0,#+1
        TST      R0,R6, LSR #+8
        BEQ      ??App_TaskUserIF_7
        TST      R6,#0x1
        BNE      ??App_TaskUserIF_8
        MOV      R0,#+1
        BL       CODEC_LOUT_Small_Gain_En
        STRB     R0,[SP, #+4]
        B        ??App_TaskUserIF_9
??App_TaskUserIF_8:
        MOV      R0,#+0
        BL       CODEC_LOUT_Small_Gain_En
        STRB     R0,[SP, #+4]
??App_TaskUserIF_9:
        LDRB     R0,[SP, #+4]
        CMP      R0,#+0
        BEQ      ??App_TaskUserIF_7
        LDRB     R1,[SP, #+4]
        LDR      R0,??DataTable1_9
        BL       BSP_Ser_Printf
??App_TaskUserIF_7:
        B        ??App_TaskUserIF_4
??App_TaskUserIF_3:
        LDR      R0,??DataTable1_10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??App_TaskUserIF_4
??App_TaskUserIF_10:
        MOV      R0,#+1
        ANDS     R0,R0,R6, LSR #+3
        STR      R0,[SP, #+0]
        MOV      R0,#+1
        ANDS     R3,R0,R6, LSR #+2
        MOV      R0,#+1
        ANDS     R2,R0,R6, LSR #+1
        ANDS     R1,R6,#0x1
        LDR      R0,??DataTable1_11
        BL       BSP_Ser_Printf
        MOV      R0,#+0
        MOVS     R7,R0
??App_TaskUserIF_11:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+4
        BGE      ??App_TaskUserIF_12
        RSBS     R0,R7,#+11
        MOV      R1,#+1
        TST      R1,R6, LSR R0
        BEQ      ??App_TaskUserIF_13
        RSBS     R0,R7,#+3
        MOV      R1,#+1
        TST      R1,R6, LSR R0
        BNE      ??App_TaskUserIF_14
        MOVS     R1,R7
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable1_12
        BL       BSP_Ser_Printf
        MOV      R0,#+1
        MOVS     R1,R7
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R2,??DataTable1_13
        STRB     R0,[R1, +R2]
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Init_Ruler
        STRB     R0,[SP, #+4]
        LDRB     R0,[SP, #+4]
        CMP      R0,#+0
        BNE      ??App_TaskUserIF_13
??App_TaskUserIF_15:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Setup_Ruler
        STRB     R0,[SP, #+4]
        LDRB     R0,[SP, #+4]
        CMP      R0,#+0
        BNE      ??App_TaskUserIF_13
??App_TaskUserIF_16:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Get_Ruler_Type
        STRB     R0,[SP, #+4]
        LDRB     R0,[SP, #+4]
        CMP      R0,#+0
        BNE      ??App_TaskUserIF_13
??App_TaskUserIF_17:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Get_Ruler_Version
        STRB     R0,[SP, #+4]
        LDRB     R0,[SP, #+4]
        CMP      R0,#+0
        BNE      ??App_TaskUserIF_13
??App_TaskUserIF_18:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Ruler_POST
        STRB     R0,[SP, #+4]
        LDRB     R0,[SP, #+4]
        CMP      R0,#+0
        BNE      ??App_TaskUserIF_13
??App_TaskUserIF_19:
        MOV      R0,#+2
        MOVS     R1,R7
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R2,??DataTable1_13
        STRB     R0,[R1, +R2]
        B        ??App_TaskUserIF_13
??App_TaskUserIF_14:
        MOVS     R1,R7
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable1_14
        BL       BSP_Ser_Printf
        MOV      R0,#+0
        MOVS     R1,R7
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R2,??DataTable1_13
        STRB     R0,[R1, +R2]
        MOV      R0,#+0
        MOVS     R1,R7
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable1_15
        STR      R0,[R1, +R2]
??App_TaskUserIF_13:
        ADDS     R7,R7,#+1
        B        ??App_TaskUserIF_11
??App_TaskUserIF_12:
??App_TaskUserIF_4:
        MOV      R0,#+1
        BL       Buzzer_OnOff
        MOV      R0,#+10
        BL       OSTimeDly
        MOV      R0,#+0
        BL       Buzzer_OnOff
        MOV      R0,#+30
        BL       OSTimeDly
        MOV      R0,#+1
        BL       Buzzer_OnOff
        MOV      R0,#+10
        BL       OSTimeDly
        MOV      R0,#+0
        BL       Buzzer_OnOff
        B        ??App_TaskUserIF_0

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Port_Detect_Enable:
        MOVS     R1,R0
        ANDS     R1,R1,#0xFF      ;; Zero extend
        CMP      R1,#+0
        BNE      ??Port_Detect_Enable_0
        MOV      R1,#+0
        LDR      R2,??DataTable1_10
        STRB     R1,[R2, #+0]
        B        ??Port_Detect_Enable_1
??Port_Detect_Enable_0:
        MOV      R1,#+1
        LDR      R2,??DataTable1_10
        STRB     R1,[R2, #+0]
??Port_Detect_Enable_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     `?<Constant "\\r\\nWARNING: NOT AB01, ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     App_UserIF_Mbox

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     `?<Constant "\\r\\n\\r\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     `?<Constant "Switch status updated...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     `?<Constant " %4d, %4d\\r\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     Bsp_Ser_Tx_Sem_lock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     Bsp_Ser_Rx_Sem_lock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     Debug_COM_Sel

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DC32     ISR_PC_UART

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DC32     `?<Constant "ERR: Set CODEC_LOUT_S...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_10:
        DC32     port_enable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_11:
        DC32     `?<Constant "Ruler port status cha...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_12:
        DC32     `?<Constant "Ruler[%d] Attached.\\r\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_13:
        DC32     Global_Ruler_State

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_14:
        DC32     `?<Constant "Ruler[%d] Detached.\\r\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_15:
        DC32     Global_Mic_Mask

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\r\\nWARNING: NOT AB01, ...">`:
        DATA
        DC8 "\015\012WARNING: NOT AB01, NO MCU CRT UART SWITCH\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\r\\n\\r\\n">`:
        DATA
        DC8 "\015\012\015\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Switch status updated...">`:
        DATA
        DC8 "Switch status updated: \015\012 SW1, SW0 \015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant " %4d, %4d\\r\\n">`:
        DATA
        DC8 " %4d, %4d\015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "ERR: Set CODEC_LOUT_S...">`:
        DATA
        DC8 "ERR: Set CODEC_LOUT_Small_Gain_En err! [%d]\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Ruler port status cha...">`:
        DATA
        DC8 52H, 75H, 6CH, 65H, 72H, 20H, 70H, 6FH
        DC8 72H, 74H, 20H, 73H, 74H, 61H, 74H, 75H
        DC8 73H, 20H, 63H, 68H, 61H, 6EH, 67H, 65H
        DC8 64H, 3AH, 20H, 20H, 50H, 6FH, 72H, 74H
        DC8 5BH, 33H, 2EH, 2EH, 30H, 5DH, 20H, 3DH
        DC8 20H, 5BH, 25H, 31H, 64H, 25H, 31H, 64H
        DC8 25H, 31H, 64H, 25H, 31H, 64H, 5DH, 0DH
        DC8 0AH, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Ruler[%d] Attached.\\r\\n">`:
        DATA
        DC8 "Ruler[%d] Attached.\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Ruler[%d] Detached.\\r\\n">`:
        DATA
        DC8 "Ruler[%d] Detached.\015\012"
        DC8 0, 0

        END
// 
//   4 bytes in section .bss
//   1 byte  in section .data
// 264 bytes in section .rodata
// 928 bytes in section .text
// 
// 928 bytes of CODE  memory
// 264 bytes of CONST memory
//   5 bytes of DATA  memory
//
//Errors: none
//Warnings: none
