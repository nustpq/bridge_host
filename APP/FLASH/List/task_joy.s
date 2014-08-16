///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       19/Aug/2014  09:37:04
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\task_joy.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\task_joy.c" -lcN
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
//        Bench\Bridge_Host_OS\APP\FLASH\List\task_joy.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN AB_Status_Change_Report
        EXTERN App_UserIF_Mbox
        EXTERN BSP_Ser_Printf
        EXTERN Beep
        EXTERN Flag_Reset_Pin_Trigger
        EXTERN Get_Port_Detect
        EXTERN Get_Switches
        EXTERN OSMboxPost
        EXTERN OSTimeDly
        EXTERN Pin_Reset_Audio_MCU

        PUBLIC App_TaskJoy


        SECTION `.text`:CODE:NOROOT(2)
        ARM
App_TaskJoy:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        BL       Get_Switches
        ANDS     R0,R0,#0xF
        MOVS     R6,R0
        BL       Get_Port_Detect
        ANDS     R0,R0,#0xF
        MOVS     R8,R0
??App_TaskJoy_0:
        LDR      R0,??App_TaskJoy_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??App_TaskJoy_2
        LDR      R0,??App_TaskJoy_1
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR      R1,??App_TaskJoy_1
        STRB     R0,[R1, #+0]
        MOV      R0,#+0
        MOVS     R9,R0
??App_TaskJoy_3:
        CMP      R9,#+100
        BCS      ??App_TaskJoy_4
        MVN      R0,#+251
        BIC      R0,R0,#0x200
        LDR      R0,[R0, #+0]
        TST      R0,#0x10000
        BNE      ??App_TaskJoy_4
??App_TaskJoy_5:
        MOV      R0,#+10
        BL       OSTimeDly
        ADDS     R9,R9,#+1
        B        ??App_TaskJoy_3
??App_TaskJoy_4:
        CMP      R9,#+100
        BCC      ??App_TaskJoy_6
        LDR      R0,??App_TaskJoy_1+0x4
        BL       BSP_Ser_Printf
        LDR      R0,??App_TaskJoy_1+0x8
        BL       BSP_Ser_Printf
        MOV      R0,#+3
        BL       Beep
        BL       Pin_Reset_Audio_MCU
        MOV      R0,#+5
        ORR      R0,R0,#0xA5000000
        MVN      R1,#+255
        BIC      R1,R1,#0x200
        STR      R0,[R1, #+0]
??App_TaskJoy_7:
        B        ??App_TaskJoy_7
??App_TaskJoy_6:
        MOV      R0,#-1610612736
        STR      R0,[SP, #+0]
??App_TaskJoy_8:
        MOVS     R1,SP
        LDR      R0,??App_TaskJoy_1+0xC
        LDR      R0,[R0, #+0]
        BL       OSMboxPost
        CMP      R0,#+20
        BNE      ??App_TaskJoy_2
        MOV      R0,#+10
        BL       OSTimeDly
        B        ??App_TaskJoy_8
??App_TaskJoy_2:
        BL       Get_Switches
        ANDS     R0,R0,#0xF
        MOVS     R5,R0
        CMP      R5,R6
        BEQ      ??App_TaskJoy_9
        MOV      R0,#+100
        BL       OSTimeDly
        BL       Get_Switches
        CMP      R5,R0
        BNE      ??App_TaskJoy_10
        MOV      R0,#+1
        B        ??App_TaskJoy_11
??App_TaskJoy_10:
        MOV      R0,#+0
??App_TaskJoy_11:
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??App_TaskJoy_9
        EORS     R0,R6,R5
        STR      R0,[SP, #+0]
        MOVS     R6,R5
        LDR      R0,[SP, #+0]
        ANDS     R1,R5,#0xFF
        ORRS     R0,R1,R0, LSL #+8
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        LSLS     R0,R0,#+8
        LSRS     R0,R0,#+8
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        ORRS     R0,R0,#0xB0000000
        STR      R0,[SP, #+0]
??App_TaskJoy_12:
        MOVS     R1,SP
        LDR      R0,??App_TaskJoy_1+0xC
        LDR      R0,[R0, #+0]
        BL       OSMboxPost
        CMP      R0,#+20
        BNE      ??App_TaskJoy_9
        MOV      R0,#+10
        BL       OSTimeDly
        B        ??App_TaskJoy_12
??App_TaskJoy_9:
        BL       Get_Port_Detect
        ANDS     R0,R0,#0xF
        MOVS     R7,R0
        CMP      R7,R8
        BEQ      ??App_TaskJoy_13
        MOV      R0,#+100
        BL       OSTimeDly
        BL       Get_Port_Detect
        CMP      R7,R0
        BNE      ??App_TaskJoy_14
        MOV      R0,#+1
        B        ??App_TaskJoy_15
??App_TaskJoy_14:
        MOV      R0,#+0
??App_TaskJoy_15:
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??App_TaskJoy_13
        EORS     R0,R8,R7
        STR      R0,[SP, #+0]
        MOVS     R8,R7
        LDR      R0,[SP, #+0]
        ANDS     R1,R7,#0xFF
        ORRS     R0,R1,R0, LSL #+8
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        LSLS     R0,R0,#+8
        LSRS     R0,R0,#+8
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        ORRS     R0,R0,#0xC0000000
        STR      R0,[SP, #+0]
??App_TaskJoy_16:
        MOVS     R1,SP
        LDR      R0,??App_TaskJoy_1+0xC
        LDR      R0,[R0, #+0]
        BL       OSMboxPost
        CMP      R0,#+20
        BNE      ??App_TaskJoy_13
        MOV      R0,#+10
        BL       OSTimeDly
        B        ??App_TaskJoy_16
??App_TaskJoy_13:
        BL       AB_Status_Change_Report
        MOV      R0,#+100
        BL       OSTimeDly
        B        ??App_TaskJoy_0
        DATA
??App_TaskJoy_1:
        DC32     Flag_Reset_Pin_Trigger
        DC32     `?<Constant ">>User reset pin trig...">`
        DC32     `?<Constant ">>That\\'s all folks !\\r...">`
        DC32     App_UserIF_Mbox

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant ">>User reset pin trig...">`:
        DATA
        DC8 ">>User reset pin triggered... \015\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant ">>That\\'s all folks !\\r...">`:
        DATA
        DC8 ">>That's all folks !\015\012\015\012>> Rebooting...\015\012"
        DC8 0, 0

        END
// 
//  80 bytes in section .rodata
// 568 bytes in section .text
// 
// 568 bytes of CODE  memory
//  80 bytes of CONST memory
//
//Errors: none
//Warnings: none
