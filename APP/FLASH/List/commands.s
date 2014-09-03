///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       04/Sep/2014  10:10:14
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Shell\commands.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Shell\commands.c" -lcN
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
//        Bench\Bridge_Host_OS\APP\FLASH\List\commands.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Audio_Version
        EXTERN BSP_Ser_Printf
        EXTERN Beep
        EXTERN Buzzer_OnOff
        EXTERN CM_LegacyRead
        EXTERN CM_SingleWrite
        EXTERN DM_LegacyRead
        EXTERN DM_SingleWrite
        EXTERN DSP_LegacyRead
        EXTERN DSP_SingleWrite_1
        EXTERN DSP_SingleWrite_2
        EXTERN GPIODIR_FLOAT
        EXTERN GPIOPIN_Set
        EXTERN HOST_LegacyRead
        EXTERN HOST_SingleWrite_1
        EXTERN HOST_SingleWrite_2
        EXTERN Head_Info
        EXTERN OSTimeDly
        EXTERN PM_LegacyRead
        EXTERN PM_SingleWrite
        EXTERN Str_CmpIgnoreCase
        EXTERN Str_ParseNbr_Int32U
        EXTERN TWI_Init
        EXTERN Update_Ruler_FW
        EXTERN __aeabi_uidivmod
        EXTERN fw_version

        PUBLIC CommandParse
        PUBLIC Get_Ver_Info
        PUBLIC HelpFunc
        PUBLIC HostNameFunc
        PUBLIC InitCommands
        PUBLIC InitI2CFunc
        PUBLIC LsFunc
        PUBLIC ReadCMFunc
        PUBLIC ReadDMFunc
        PUBLIC ReadDSPREGFunc
        PUBLIC ReadHostREGFunc
        PUBLIC ReadPMFunc
        PUBLIC RebootFunc
        PUBLIC ShellComms
        PUBLIC TaskFunc
        PUBLIC WriteCMFunc
        PUBLIC WriteDMFunc
        PUBLIC WriteDSPREGFunc
        PUBLIC WriteGPIOFunc
        PUBLIC WriteHostREGFunc
        PUBLIC WritePMFunc
        PUBLIC Write_Ruler_FW


        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ShellComms:
        DS8 304

        SECTION `.text`:CODE:NOROOT(2)
        ARM
InitCommands:
        LDR      R0,??DataTable15
        MOV      R1,#+1
        STRB     R1,[R0, #+0]
        ADDS     R1,R1,#+1
        LDR      R2,??DataTable15_1
        STR      R2,[R0, #+4]
        LDR      R2,??DataTable15_2
        STR      R2,[R0, #+8]
        LDR      R2,??DataTable15_3
        STR      R2,[R0, #+12]
        ADDS     R0,R0,#+16
        STRB     R1,[R0, #+0]
        ADDS     R1,R1,#+1
        LDR      R2,??DataTable15_4
        STR      R2,[R0, #+4]
        LDR      R2,??DataTable15_5
        STR      R2,[R0, #+8]
        LDR      R2,??DataTable15_6
        STR      R2,[R0, #+12]
        ADDS     R0,R0,#+16
        STRB     R1,[R0, #+0]
        ADDS     R1,R1,#+1
        LDR      R2,??DataTable15_7
        STR      R2,[R0, #+4]
        LDR      R2,??DataTable15_8
        STR      R2,[R0, #+8]
        LDR      R2,??DataTable15_9
        STR      R2,[R0, #+12]
        ADDS     R0,R0,#+16
        STRB     R1,[R0, #+0]
        ADDS     R1,R1,#+1
        LDR      R2,??DataTable15_10
        STR      R2,[R0, #+4]
        LDR      R2,??DataTable15_11
        STR      R2,[R0, #+8]
        LDR      R2,??DataTable15_12
        STR      R2,[R0, #+12]
        ADDS     R0,R0,#+16
        STRB     R1,[R0, #+0]
        ADDS     R1,R1,#+1
        ADR      R2,??DataTable0  ;; 0x6C, 0x73, 0x00, 0x00
        STR      R2,[R0, #+4]
        ADR      R2,LsFunc
        STR      R2,[R0, #+8]
        LDR      R2,??DataTable15_13
        STR      R2,[R0, #+12]
        ADDS     R0,R0,#+16
        STRB     R1,[R0, #+0]
        ADDS     R1,R1,#+1
        LDR      R2,??DataTable15_14
        STR      R2,[R0, #+4]
        ADR      R2,TaskFunc
        STR      R2,[R0, #+8]
        LDR      R2,??DataTable16
        STR      R2,[R0, #+12]
        ADDS     R0,R0,#+16
        STRB     R1,[R0, #+0]
        ADDS     R1,R1,#+1
        LDR      R2,??DataTable16_1
        STR      R2,[R0, #+4]
        LDR      R2,??DataTable16_2
        STR      R2,[R0, #+8]
        LDR      R2,??DataTable16_3
        STR      R2,[R0, #+12]
        ADDS     R0,R0,#+16
        STRB     R1,[R0, #+0]
        ADDS     R1,R1,#+1
        LDR      R2,??DataTable16_4
        STR      R2,[R0, #+4]
        LDR      R2,??DataTable16_5
        STR      R2,[R0, #+8]
        LDR      R2,??DataTable16_6
        STR      R2,[R0, #+12]
        ADDS     R0,R0,#+16
        STRB     R1,[R0, #+0]
        ADDS     R1,R1,#+1
        LDR      R2,??DataTable16_7
        STR      R2,[R0, #+4]
        LDR      R2,??DataTable16_8
        STR      R2,[R0, #+8]
        LDR      R2,??DataTable16_9
        STR      R2,[R0, #+12]
        ADDS     R0,R0,#+16
        STRB     R1,[R0, #+0]
        ADDS     R1,R1,#+1
        LDR      R2,??DataTable16_10
        STR      R2,[R0, #+4]
        LDR      R2,??DataTable16_11
        STR      R2,[R0, #+8]
        LDR      R2,??DataTable16_12
        STR      R2,[R0, #+12]
        ADDS     R0,R0,#+16
        STRB     R1,[R0, #+0]
        ADDS     R1,R1,#+1
        LDR      R2,??DataTable17
        STR      R2,[R0, #+4]
        LDR      R2,??DataTable17_1
        STR      R2,[R0, #+8]
        LDR      R2,??DataTable17_2
        STR      R2,[R0, #+12]
        ADDS     R0,R0,#+16
        STRB     R1,[R0, #+0]
        ADDS     R1,R1,#+1
        LDR      R2,??DataTable17_3
        STR      R2,[R0, #+4]
        LDR      R2,??DataTable17_4
        STR      R2,[R0, #+8]
        LDR      R2,??DataTable17_5
        STR      R2,[R0, #+12]
        ADDS     R0,R0,#+16
        STRB     R1,[R0, #+0]
        ADDS     R1,R1,#+1
        LDR      R2,??DataTable17_6
        STR      R2,[R0, #+4]
        LDR      R2,??DataTable17_7
        STR      R2,[R0, #+8]
        LDR      R2,??DataTable17_8
        STR      R2,[R0, #+12]
        ADDS     R0,R0,#+16
        STRB     R1,[R0, #+0]
        ADDS     R1,R1,#+1
        LDR      R2,??DataTable17_9
        STR      R2,[R0, #+4]
        LDR      R2,??DataTable17_10
        STR      R2,[R0, #+8]
        LDR      R2,??DataTable17_11
        STR      R2,[R0, #+12]
        ADDS     R0,R0,#+16
        STRB     R1,[R0, #+0]
        ADDS     R1,R1,#+1
        LDR      R2,??DataTable17_12
        STR      R2,[R0, #+4]
        LDR      R2,??DataTable17_13
        STR      R2,[R0, #+8]
        LDR      R2,??DataTable17_14
        STR      R2,[R0, #+12]
        ADDS     R0,R0,#+16
        STRB     R1,[R0, #+0]
        ADDS     R1,R1,#+1
        LDR      R2,??DataTable17_15
        STR      R2,[R0, #+4]
        LDR      R2,??DataTable17_16
        STR      R2,[R0, #+8]
        LDR      R2,??DataTable17_17
        STR      R2,[R0, #+12]
        ADDS     R0,R0,#+16
        STRB     R1,[R0, #+0]
        ADDS     R1,R1,#+1
        LDR      R2,??DataTable17_18
        STR      R2,[R0, #+4]
        LDR      R2,??DataTable17_19
        STR      R2,[R0, #+8]
        LDR      R2,??DataTable17_20
        STR      R2,[R0, #+12]
        ADDS     R0,R0,#+16
        STRB     R1,[R0, #+0]
        ADDS     R1,R1,#+1
        ADR      R2,??DataTable4  ;; "ver"
        STR      R2,[R0, #+4]
        LDR      R2,??DataTable17_21
        STR      R2,[R0, #+8]
        LDR      R2,??DataTable17_22
        STR      R2,[R0, #+12]
        ADDS     R0,R0,#+16
        STRB     R1,[R0, #+0]
        ADDS     R1,R1,#+1
        LDR      R2,??DataTable17_23
        STR      R2,[R0, #+4]
        LDR      R2,??DataTable17_24
        STR      R2,[R0, #+8]
        LDR      R2,??DataTable18
        STR      R2,[R0, #+12]
        ADDS     R0,R0,#+16
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC8      0x6C, 0x73, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        ARM
LsFunc:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,??DataTable18_1
        BL       BSP_Ser_Printf
        MOV      R0,#+0
        MOVS     R6,R0
??LsFunc_0:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+19
        BGE      ??LsFunc_1
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+4
        LDR      R1,??DataTable15
        ADDS     R0,R0,R1
        LDR      R2,[R0, #+4]
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+4
        LDR      R1,??DataTable15
        LDRB     R1,[R0, +R1]
        LDR      R0,??DataTable18_2
        BL       BSP_Ser_Printf
        ADDS     R6,R6,#+1
        B        ??LsFunc_0
??LsFunc_1:
        MOV      R0,#+0
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
TaskFunc:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R0,#+1
        MOVS     R6,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??TaskFunc_0
        MOV      R2,#+16
        MOVS     R1,R5
        LDR      R0,[R5, #+0]
        BL       Str_ParseNbr_Int32U
        MOVS     R6,R0
        MOVS     R0,R6
        MOV      R1,#+10
        BL       __aeabi_uidivmod
        MOVS     R6,R1
??TaskFunc_0:
        BL       Head_Info
        MOV      R0,#+1
        BL       Buzzer_OnOff
        ADD      R0,R6,R6, LSL #+2
        LSLS     R0,R0,#+1
        BL       OSTimeDly
        MOV      R0,#+0
        BL       Buzzer_OnOff
        RSB      R0,R6,R6, LSL #+4
        LSLS     R0,R0,#+1
        BL       OSTimeDly
        MOV      R0,#+1
        BL       Buzzer_OnOff
        ADD      R0,R6,R6, LSL #+2
        LSLS     R0,R0,#+1
        BL       OSTimeDly
        MOV      R0,#+0
        BL       Buzzer_OnOff
        MOV      R0,#+0
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
HelpFunc:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??HelpFunc_0
        LDR      R0,??DataTable18_3
        BL       BSP_Ser_Printf
        MOV      R1,#+0
        MOV      R0,#+0
        BL       LsFunc
        LDR      R0,??DataTable18_4
        BL       BSP_Ser_Printf
        LDR      R0,??DataTable18_5
        BL       BSP_Ser_Printf
        B        ??HelpFunc_1
??HelpFunc_0:
        MOV      R0,#+0
        MOVS     R6,R0
??HelpFunc_2:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+19
        BGE      ??HelpFunc_3
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+4
        LDR      R1,??DataTable15
        ADDS     R0,R0,R1
        LDR      R1,[R0, #+4]
        LDR      R0,[R5, #+0]
        BL       Str_CmpIgnoreCase
        CMP      R0,#+0
        BEQ      ??HelpFunc_3
??HelpFunc_4:
        ADDS     R6,R6,#+1
        B        ??HelpFunc_2
??HelpFunc_3:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+19
        BNE      ??HelpFunc_5
        MOV      R0,#+2
        B        ??HelpFunc_6
??HelpFunc_5:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+4
        LDR      R1,??DataTable15
        ADDS     R0,R0,R1
        LDR      R0,[R0, #+12]
        BL       BSP_Ser_Printf
??HelpFunc_1:
        MOV      R0,#+0
??HelpFunc_6:
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
HostNameFunc:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,??DataTable18_7
        BL       BSP_Ser_Printf
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??HostNameFunc_0
        MOV      R0,#+0
        MOVS     R6,R0
??HostNameFunc_1:
        ANDS     R6,R6,#0xFF      ;; Zero extend
        ANDS     R4,R4,#0xFF      ;; Zero extend
        CMP      R6,R4
        BCS      ??HostNameFunc_0
        ADR      R0,??DataTable8  ;; 0x0A, 0x0D, 0x00, 0x00
        BL       BSP_Ser_Printf
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R0,[R0, +R5]
        BL       BSP_Ser_Printf
        ADDS     R6,R6,#+1
        B        ??HostNameFunc_1
??HostNameFunc_0:
        MOV      R0,#+0
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
WriteGPIOFunc:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+2
        BEQ      ??WriteGPIOFunc_0
        MOV      R0,#+1
        B        ??WriteGPIOFunc_1
??WriteGPIOFunc_0:
        MOV      R2,#+16
        MOVS     R1,R5
        LDR      R0,[R5, #+0]
        BL       Str_ParseNbr_Int32U
        MOVS     R6,R0
        MOV      R2,#+16
        MOVS     R1,R5
        LDR      R0,[R5, #+4]
        BL       Str_ParseNbr_Int32U
        MOVS     R7,R0
        CMP      R6,#+33
        BCS      ??WriteGPIOFunc_2
        CMP      R7,#+3
        BCS      ??WriteGPIOFunc_2
        CMP      R7,#+2
        BNE      ??WriteGPIOFunc_3
        MOVS     R0,R6
        BL       GPIODIR_FLOAT
        MOVS     R1,R6
        LDR      R0,??DataTable18_8
        BL       BSP_Ser_Printf
        B        ??WriteGPIOFunc_4
??WriteGPIOFunc_3:
        MOVS     R1,R7
        MOVS     R0,R6
        BL       GPIOPIN_Set
        MOVS     R2,R7
        MOVS     R1,R6
        LDR      R0,??DataTable18_9
        BL       BSP_Ser_Printf
??WriteGPIOFunc_4:
        MOV      R0,#+0
        B        ??WriteGPIOFunc_1
??WriteGPIOFunc_2:
        MOV      R0,#+2
??WriteGPIOFunc_1:
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC8      "ver"

        SECTION `.text`:CODE:NOROOT(2)
        ARM
InitI2CFunc:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BEQ      ??InitI2CFunc_0
        MOV      R0,#+1
        B        ??InitI2CFunc_1
??InitI2CFunc_0:
        MOV      R2,#+16
        MOVS     R1,R5
        LDR      R0,[R5, #+0]
        BL       Str_ParseNbr_Int32U
        MOVS     R6,R0
        MOV      R0,#+145
        ORR      R0,R0,#0x100
        CMP      R6,R0
        BCS      ??InitI2CFunc_2
        CMP      R6,#+10
        BCC      ??InitI2CFunc_2
        MOV      R1,#+1000
        MULS     R0,R1,R6
        BL       TWI_Init
        MOVS     R1,R6
        LDR      R0,??DataTable18_10
        BL       BSP_Ser_Printf
        MOV      R0,#+0
        B        ??InitI2CFunc_1
??InitI2CFunc_2:
        MOV      R0,#+2
??InitI2CFunc_1:
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
RebootFunc:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,??DataTable18_11
        BL       BSP_Ser_Printf
        LDR      R0,??DataTable18_12
        BL       BSP_Ser_Printf
        MOV      R0,#+1000
        BL       OSTimeDly
        MOV      R0,#+3
        BL       Beep
        MOV      R0,#+5
        ORR      R0,R0,#0xA5000000
        MVN      R1,#+255
        BIC      R1,R1,#0x200
        STR      R0,[R1, #+0]
        MOV      R0,#+0
        POP      {R1,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ReadDMFunc:
        PUSH     {R4-R8,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BEQ      ??ReadDMFunc_0
        MOV      R0,#+1
        B        ??ReadDMFunc_1
??ReadDMFunc_0:
        MOV      R2,#+16
        MOVS     R1,R5
        LDR      R0,[R5, #+0]
        BL       Str_ParseNbr_Int32U
        MOVS     R8,R0
        CMP      R8,#+65536
        BCS      ??ReadDMFunc_2
        MOVS     R0,R8
        MOVS     R7,R0
        MOVS     R2,SP
        MOVS     R1,R7
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        MOV      R0,#+192
        BL       DM_LegacyRead
        MOVS     R6,R0
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??ReadDMFunc_3
        LDRH     R2,[SP, #+0]
        MOVS     R1,R7
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LDR      R0,??DataTable18_13
        BL       BSP_Ser_Printf
        MOV      R0,#+0
        B        ??ReadDMFunc_1
??ReadDMFunc_3:
        MOV      R0,#+3
        B        ??ReadDMFunc_1
??ReadDMFunc_2:
        MOV      R0,#+2
??ReadDMFunc_1:
        POP      {R1,R2,R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
WriteDMFunc:
        PUSH     {R4-R10,LR}
        MOVS     R10,R0
        MOVS     R4,R1
        MOV      R0,#+0
        MOVS     R5,R0
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+2
        BEQ      ??WriteDMFunc_0
        MOV      R0,#+1
        B        ??WriteDMFunc_1
??WriteDMFunc_0:
        MOV      R2,#+16
        MOVS     R1,R4
        LDR      R0,[R4, #+0]
        BL       Str_ParseNbr_Int32U
        MOVS     R8,R0
        MOV      R2,#+16
        MOVS     R1,R4
        LDR      R0,[R4, #+4]
        BL       Str_ParseNbr_Int32U
        MOVS     R9,R0
        CMP      R8,#+65536
        BCS      ??WriteDMFunc_2
        CMP      R9,#+65536
        BCS      ??WriteDMFunc_2
        MOVS     R0,R8
        MOVS     R6,R0
        MOVS     R0,R9
        MOVS     R7,R0
        MOVS     R2,R7
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        MOVS     R1,R6
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        MOV      R0,#+192
        BL       DM_SingleWrite
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??WriteDMFunc_3
        MOVS     R2,R7
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        MOVS     R1,R6
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LDR      R0,??DataTable18_14
        BL       BSP_Ser_Printf
        MOV      R0,#+0
        B        ??WriteDMFunc_1
??WriteDMFunc_3:
        MOV      R0,#+3
        B        ??WriteDMFunc_1
??WriteDMFunc_2:
        MOV      R0,#+2
??WriteDMFunc_1:
        POP      {R4-R10,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC8      0x0A, 0x0D, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ReadCMFunc:
        PUSH     {R4-R8,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BEQ      ??ReadCMFunc_0
        MOV      R0,#+1
        B        ??ReadCMFunc_1
??ReadCMFunc_0:
        MOV      R2,#+16
        MOVS     R1,R5
        LDR      R0,[R5, #+0]
        BL       Str_ParseNbr_Int32U
        MOVS     R8,R0
        CMP      R8,#+65536
        BCS      ??ReadCMFunc_2
        MOVS     R0,R8
        MOVS     R7,R0
        MOVS     R2,SP
        MOVS     R1,R7
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        MOV      R0,#+192
        BL       CM_LegacyRead
        MOVS     R6,R0
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??ReadCMFunc_3
        LDRH     R2,[SP, #+0]
        MOVS     R1,R7
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LDR      R0,??DataTable18_15
        BL       BSP_Ser_Printf
        MOV      R0,#+0
        B        ??ReadCMFunc_1
??ReadCMFunc_3:
        MOV      R0,#+3
        B        ??ReadCMFunc_1
??ReadCMFunc_2:
        MOV      R0,#+2
??ReadCMFunc_1:
        POP      {R1,R2,R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
WriteCMFunc:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R0,#+0
        MOVS     R6,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+2
        BEQ      ??WriteCMFunc_0
        MOV      R0,#+1
        B        ??WriteCMFunc_1
??WriteCMFunc_0:
        MOV      R2,#+16
        MOVS     R1,R5
        LDR      R0,[R5, #+0]
        BL       Str_ParseNbr_Int32U
        MOVS     R9,R0
        MOV      R2,#+16
        MOVS     R1,R5
        LDR      R0,[R5, #+4]
        BL       Str_ParseNbr_Int32U
        MOVS     R8,R0
        CMP      R9,#+65536
        BCS      ??WriteCMFunc_2
        CMP      R8,#+65536
        BCS      ??WriteCMFunc_2
        MOVS     R0,R9
        MOVS     R7,R0
        STRH     R8,[SP, #+0]
        MOVS     R2,SP
        MOVS     R1,R7
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        MOV      R0,#+192
        BL       CM_SingleWrite
        MOVS     R6,R0
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??WriteCMFunc_3
        LDRH     R2,[SP, #+0]
        MOVS     R1,R7
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LDR      R0,??DataTable18_16
        BL       BSP_Ser_Printf
        MOV      R0,#+0
        B        ??WriteCMFunc_1
??WriteCMFunc_3:
        MOV      R0,#+3
        B        ??WriteCMFunc_1
??WriteCMFunc_2:
        MOV      R0,#+2
??WriteCMFunc_1:
        POP      {R1,R4-R9,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ReadPMFunc:
        PUSH     {R4-R8,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R0,#+0
        MOVS     R8,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BEQ      ??ReadPMFunc_0
        MOV      R0,#+1
        B        ??ReadPMFunc_1
??ReadPMFunc_0:
        MOV      R2,#+16
        MOVS     R1,R5
        LDR      R0,[R5, #+0]
        BL       Str_ParseNbr_Int32U
        MOVS     R7,R0
        CMP      R7,#+65536
        BCS      ??ReadPMFunc_2
        MOVS     R0,R7
        MOVS     R6,R0
        MOVS     R2,SP
        MOVS     R1,R6
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        MOV      R0,#+192
        BL       PM_LegacyRead
        MOVS     R8,R0
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??ReadPMFunc_3
        LDR      R2,[SP, #+0]
        MOVS     R1,R6
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LDR      R0,??DataTable18_17
        BL       BSP_Ser_Printf
        MOV      R0,#+0
        B        ??ReadPMFunc_1
??ReadPMFunc_3:
        MOV      R0,#+3
        B        ??ReadPMFunc_1
??ReadPMFunc_2:
        MOV      R0,#+2
??ReadPMFunc_1:
        POP      {R1,R2,R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
WritePMFunc:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R0,#+0
        MOVS     R6,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+2
        BEQ      ??WritePMFunc_0
        MOV      R0,#+1
        B        ??WritePMFunc_1
??WritePMFunc_0:
        MOV      R2,#+16
        MOVS     R1,R5
        LDR      R0,[R5, #+0]
        BL       Str_ParseNbr_Int32U
        MOVS     R9,R0
        MOV      R2,#+16
        MOVS     R1,R5
        LDR      R0,[R5, #+4]
        BL       Str_ParseNbr_Int32U
        MOVS     R8,R0
        CMP      R9,#+65536
        BCS      ??WritePMFunc_2
        CMP      R8,#+16777216
        BCS      ??WritePMFunc_2
        MOVS     R0,R9
        MOVS     R7,R0
        STR      R8,[SP, #+0]
        MOV      R3,#+0
        MOVS     R2,SP
        MOVS     R1,R7
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        MOV      R0,#+192
        BL       PM_SingleWrite
        MOVS     R6,R0
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??WritePMFunc_3
        LDR      R2,[SP, #+0]
        MOVS     R1,R7
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LDR      R0,??DataTable18_18
        BL       BSP_Ser_Printf
        MOV      R0,#+0
        B        ??WritePMFunc_1
??WritePMFunc_3:
        MOV      R0,#+3
        B        ??WritePMFunc_1
??WritePMFunc_2:
        MOV      R0,#+2
??WritePMFunc_1:
        POP      {R1,R4-R9,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ReadDSPREGFunc:
        PUSH     {R4-R8,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R0,#+0
        MOVS     R8,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BEQ      ??ReadDSPREGFunc_0
        MOV      R0,#+1
        B        ??ReadDSPREGFunc_1
??ReadDSPREGFunc_0:
        MOV      R2,#+16
        MOVS     R1,R5
        LDR      R0,[R5, #+0]
        BL       Str_ParseNbr_Int32U
        MOVS     R7,R0
        CMP      R7,#+256
        BCS      ??ReadDSPREGFunc_2
        MOVS     R0,R7
        MOVS     R6,R0
        MOVS     R2,SP
        MOVS     R1,R6
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOV      R0,#+192
        BL       DSP_LegacyRead
        MOVS     R8,R0
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??ReadDSPREGFunc_3
        LDRH     R2,[SP, #+0]
        MOVS     R1,R6
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable18_19
        BL       BSP_Ser_Printf
        MOV      R0,#+0
        B        ??ReadDSPREGFunc_1
??ReadDSPREGFunc_3:
        MOV      R0,#+3
        B        ??ReadDSPREGFunc_1
??ReadDSPREGFunc_2:
        MOV      R0,#+2
??ReadDSPREGFunc_1:
        POP      {R1,R2,R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
WriteDSPREGFunc:
        PUSH     {R4-R10,LR}
        MOVS     R10,R0
        MOVS     R4,R1
        MOV      R0,#+0
        MOVS     R5,R0
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+2
        BEQ      ??WriteDSPREGFunc_0
        MOV      R0,#+1
        B        ??WriteDSPREGFunc_1
??WriteDSPREGFunc_0:
        MOV      R2,#+16
        MOVS     R1,R4
        LDR      R0,[R4, #+0]
        BL       Str_ParseNbr_Int32U
        MOVS     R8,R0
        MOV      R2,#+16
        MOVS     R1,R4
        LDR      R0,[R4, #+4]
        BL       Str_ParseNbr_Int32U
        MOVS     R9,R0
        CMP      R8,#+256
        BCS      ??WriteDSPREGFunc_2
        CMP      R9,#+65536
        BCS      ??WriteDSPREGFunc_2
        MOVS     R0,R8
        MOVS     R6,R0
        MOVS     R0,R9
        MOVS     R7,R0
        TST      R7,#0xFF00
        BEQ      ??WriteDSPREGFunc_3
        MOVS     R2,R7
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        MOVS     R1,R6
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOV      R0,#+192
        BL       DSP_SingleWrite_2
        MOVS     R5,R0
        B        ??WriteDSPREGFunc_4
??WriteDSPREGFunc_3:
        MOVS     R2,R7
        ANDS     R2,R2,#0xFF      ;; Zero extend
        MOVS     R1,R6
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOV      R0,#+192
        BL       DSP_SingleWrite_1
        MOVS     R5,R0
??WriteDSPREGFunc_4:
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??WriteDSPREGFunc_5
        MOVS     R2,R7
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        MOVS     R1,R6
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LDR      R0,??DataTable18_20
        BL       BSP_Ser_Printf
        MOV      R0,#+0
        B        ??WriteDSPREGFunc_1
??WriteDSPREGFunc_5:
        MOV      R0,#+3
        B        ??WriteDSPREGFunc_1
??WriteDSPREGFunc_2:
        MOV      R0,#+2
??WriteDSPREGFunc_1:
        POP      {R4-R10,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ReadHostREGFunc:
        PUSH     {R4-R8,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R0,#+0
        MOVS     R8,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BEQ      ??ReadHostREGFunc_0
        MOV      R0,#+1
        B        ??ReadHostREGFunc_1
??ReadHostREGFunc_0:
        MOV      R2,#+16
        MOVS     R1,R5
        LDR      R0,[R5, #+0]
        BL       Str_ParseNbr_Int32U
        MOVS     R7,R0
        CMP      R7,#+256
        BCS      ??ReadHostREGFunc_2
        MOVS     R0,R7
        MOVS     R6,R0
        MOVS     R2,SP
        MOVS     R1,R6
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOV      R0,#+192
        BL       HOST_LegacyRead
        MOVS     R8,R0
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??ReadHostREGFunc_3
        LDRH     R2,[SP, #+0]
        MOVS     R1,R6
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable18_21
        BL       BSP_Ser_Printf
        MOV      R0,#+0
        B        ??ReadHostREGFunc_1
??ReadHostREGFunc_3:
        MOV      R0,#+3
        B        ??ReadHostREGFunc_1
??ReadHostREGFunc_2:
        MOV      R0,#+2
??ReadHostREGFunc_1:
        POP      {R1,R2,R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15:
        DC32     ShellComms

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_1:
        DC32     `?<Constant "help">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_2:
        DC32     HelpFunc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_3:
        DC32     `?<Constant "Show descrptions on c...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_4:
        DC32     `?<Constant "hostname">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_5:
        DC32     HostNameFunc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_6:
        DC32     `?<Constant "Print the title and a...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_7:
        DC32     `?<Constant "setgpio">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_8:
        DC32     WriteGPIOFunc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_9:
        DC32     `?<Constant "Set Noah defined GPIO...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_10:
        DC32     `?<Constant "initi2c">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_11:
        DC32     InitI2CFunc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_12:
        DC32     `?<Constant "Re-initialize board I...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_13:
        DC32     `?<Constant "List all command supp...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_14:
        DC32     `?<Constant "task">`

        SECTION `.text`:CODE:NOROOT(2)
        ARM
WriteHostREGFunc:
        PUSH     {R4-R10,LR}
        MOVS     R10,R0
        MOVS     R4,R1
        MOV      R0,#+0
        MOVS     R5,R0
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+2
        BEQ      ??WriteHostREGFunc_0
        MOV      R0,#+1
        B        ??WriteHostREGFunc_1
??WriteHostREGFunc_0:
        MOV      R2,#+16
        MOVS     R1,R4
        LDR      R0,[R4, #+0]
        BL       Str_ParseNbr_Int32U
        MOVS     R8,R0
        MOV      R2,#+16
        MOVS     R1,R4
        LDR      R0,[R4, #+4]
        BL       Str_ParseNbr_Int32U
        MOVS     R9,R0
        CMP      R8,#+256
        BCS      ??WriteHostREGFunc_2
        CMP      R9,#+65536
        BCS      ??WriteHostREGFunc_2
        MOVS     R0,R8
        MOVS     R6,R0
        MOVS     R0,R9
        MOVS     R7,R0
        TST      R7,#0xFF00
        BEQ      ??WriteHostREGFunc_3
        MOVS     R2,R7
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        MOVS     R1,R6
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOV      R0,#+192
        BL       HOST_SingleWrite_2
        MOVS     R5,R0
        B        ??WriteHostREGFunc_4
??WriteHostREGFunc_3:
        MOVS     R2,R7
        ANDS     R2,R2,#0xFF      ;; Zero extend
        MOVS     R1,R6
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOV      R0,#+192
        BL       HOST_SingleWrite_1
        MOVS     R5,R0
??WriteHostREGFunc_4:
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??WriteHostREGFunc_5
        MOVS     R2,R7
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        MOVS     R1,R6
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LDR      R0,??DataTable18_22
        BL       BSP_Ser_Printf
        MOV      R0,#+0
        B        ??WriteHostREGFunc_1
??WriteHostREGFunc_5:
        MOV      R0,#+3
        B        ??WriteHostREGFunc_1
??WriteHostREGFunc_2:
        MOV      R0,#+2
??WriteHostREGFunc_1:
        POP      {R4-R10,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16:
        DC32     `?<Constant "List all task informa...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_1:
        DC32     `?<Constant "reboot">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_2:
        DC32     RebootFunc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_3:
        DC32     `?<Constant "Reboot the MCU.">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_4:
        DC32     `?<Constant "readdm">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_5:
        DC32     ReadDMFunc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_6:
        DC32     `?<Constant "Read DSP DM. {cmd add...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_7:
        DC32     `?<Constant "writedm">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_8:
        DC32     WriteDMFunc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_9:
        DC32     `?<Constant "Write DSP DM.{cmd add...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_10:
        DC32     `?<Constant "readpm">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_11:
        DC32     ReadPMFunc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_12:
        DC32     `?<Constant "Read DSP PM.{cmd addr...">`

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Write_Ruler_FW:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R0,#+0
        MOVS     R6,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BEQ      ??Write_Ruler_FW_0
        MOV      R0,#+1
        B        ??Write_Ruler_FW_1
??Write_Ruler_FW_0:
        MOV      R2,#+16
        MOVS     R1,R5
        LDR      R0,[R5, #+0]
        BL       Str_ParseNbr_Int32U
        MOVS     R7,R0
        CMP      R7,#+4
        BCS      ??Write_Ruler_FW_2
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Update_Ruler_FW
        MOVS     R6,R0
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Write_Ruler_FW_3
        MOV      R0,#+3
        B        ??Write_Ruler_FW_1
??Write_Ruler_FW_3:
        MOV      R0,#+0
        B        ??Write_Ruler_FW_1
??Write_Ruler_FW_2:
        MOV      R0,#+2
??Write_Ruler_FW_1:
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Get_Ver_Info:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R1,??DataTable18_23
        LDR      R0,??DataTable18_24
        BL       BSP_Ser_Printf
        LDR      R1,??DataTable18_25
        LDR      R0,??DataTable18_26
        BL       BSP_Ser_Printf
        MOV      R0,#+0
        POP      {R1,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17:
        DC32     `?<Constant "writepm">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_1:
        DC32     WritePMFunc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_2:
        DC32     `?<Constant "Write DSP PM.{cmd add...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_3:
        DC32     `?<Constant "readcm">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_4:
        DC32     ReadCMFunc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_5:
        DC32     `?<Constant "Read DSP CM. {cmd add...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_6:
        DC32     `?<Constant "writecm">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_7:
        DC32     WriteCMFunc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_8:
        DC32     `?<Constant "Write DSP CM.{cmd add...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_9:
        DC32     `?<Constant "readdsp">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_10:
        DC32     ReadDSPREGFunc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_11:
        DC32     `?<Constant "Read DSP register.{cm...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_12:
        DC32     `?<Constant "writedsp">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_13:
        DC32     WriteDSPREGFunc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_14:
        DC32     `?<Constant "Write DSP register.{c...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_15:
        DC32     `?<Constant "readhost">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_16:
        DC32     ReadHostREGFunc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_17:
        DC32     `?<Constant "Read Host register.{c...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_18:
        DC32     `?<Constant "writehost">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_19:
        DC32     WriteHostREGFunc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_20:
        DC32     `?<Constant "Write Host register.{...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_21:
        DC32     Get_Ver_Info

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_22:
        DC32     `?<Constant "List MCU firmware ver...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_23:
        DC32     `?<Constant "rulerfw">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_24:
        DC32     Write_Ruler_FW

        SECTION `.text`:CODE:NOROOT(2)
        ARM
CommandParse:
        PUSH     {R4-R10,LR}
        SUB      SP,SP,#+24
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R0,#+0
        MOVS     R10,R0
        MOV      R0,#+0
        MOVS     R8,R0
        MOV      R0,#+0
        MOVS     R9,R0
        ADR      R0,??DataTable18_6  ;; 0x0A, 0x0D, 0x00, 0x00
        BL       BSP_Ser_Printf
??CommandParse_0:
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDRB     R0,[R0, +R4]
        CMP      R0,#+32
        BEQ      ??CommandParse_1
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDRB     R0,[R0, +R4]
        CMP      R0,#+0
        BEQ      ??CommandParse_1
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+20
        BGE      ??CommandParse_1
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDRB     R0,[R0, +R4]
        MOVS     R1,R8
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOVS     R2,SP
        STRB     R0,[R1, +R2]
        ADDS     R8,R8,#+1
        B        ??CommandParse_0
??CommandParse_1:
        MOV      R0,#+0
        MOVS     R1,R8
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOVS     R2,SP
        STRB     R0,[R1, +R2]
        MOV      R0,#+0
        MOVS     R8,R0
        MOV      R0,#+0
        MOVS     R7,R0
??CommandParse_2:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+19
        BGE      ??CommandParse_3
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+4
        LDR      R1,??DataTable18_27
        ADDS     R0,R0,R1
        LDR      R1,[R0, #+4]
        MOVS     R0,SP
        BL       Str_CmpIgnoreCase
        CMP      R0,#+0
        BNE      ??CommandParse_4
        MOVS     R9,R7
        B        ??CommandParse_3
??CommandParse_4:
        ADDS     R7,R7,#+1
        B        ??CommandParse_2
??CommandParse_3:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+19
        BNE      ??CommandParse_5
        MOV      R0,#+255
        B        ??CommandParse_6
??CommandParse_5:
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDRB     R0,[R0, +R4]
        CMP      R0,#+0
        BEQ      ??CommandParse_7
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDRB     R0,[R0, +R4]
        CMP      R0,#+32
        BNE      ??CommandParse_8
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??CommandParse_9
        MOV      R0,#+0
        MOVS     R1,R8
        ANDS     R1,R1,#0xFF      ;; Zero extend
        STRB     R0,[R1, +R4]
??CommandParse_9:
        ADDS     R8,R8,#+1
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADDS     R0,R0,R4
        MOVS     R1,R10
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        STR      R0,[R1, +R6]
        ADDS     R10,R10,#+1
        B        ??CommandParse_5
??CommandParse_8:
        ADDS     R8,R8,#+1
        B        ??CommandParse_5
??CommandParse_7:
        STRB     R10,[R5, #+0]
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
??CommandParse_6:
        ADD      SP,SP,#+24       ;; stack cleaning
        POP      {R4-R10,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18:
        DC32     `?<Constant "Update ruler firmware...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_1:
        DC32     `?<Constant "\\n\\rCommand list :">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_2:
        DC32     `?<Constant "\\n\\r %2d. %s">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_3:
        DC32     `?<Constant "Genieshell only suppo...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_4:
        DC32     `?<Constant "\\n\\r\\n\\rFor detailed info...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_5:
        DC32     `?<Constant "e.g.: help readdm\\n\\r">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_6:
        DC8      0x0A, 0x0D, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_7:
        DC32     `?<Constant "Hostname is Genies ^_...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_8:
        DC32     `?<Constant "\\n\\rSet GPIO %d to Float">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_9:
        DC32     `?<Constant "\\n\\rSet GPIO %d = %d">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_10:
        DC32     `?<Constant "\\n\\rI2C port is re-init...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_11:
        DC32     `?<Constant ">>User cmd reset trig...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_12:
        DC32     `?<Constant ">>That\\'s all folks !\\r...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_13:
        DC32     `?<Constant "\\n\\rRead DM[0x%X] = 0x%X">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_14:
        DC32     `?<Constant "\\n\\rWrite DM[0x%X] = 0x%X">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_15:
        DC32     `?<Constant "\\n\\rRead CM[0x%X] = 0x%X">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_16:
        DC32     `?<Constant "\\n\\rWrite CM[0x%X] = 0x%X">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_17:
        DC32     `?<Constant "\\n\\rRead PM[0x%X] = 0x%X">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_18:
        DC32     `?<Constant "\\n\\rWrite PM[0x%X] = 0x%X">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_19:
        DC32     `?<Constant "\\n\\rRead DSP REG[0x%X] ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_20:
        DC32     `?<Constant "\\n\\rWrite DSP REG[0x%X]...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_21:
        DC32     `?<Constant "\\n\\rRead Host REG[0x%X]...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_22:
        DC32     `?<Constant "\\n\\rWrite Host REG[0x%X...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_23:
        DC32     fw_version

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_24:
        DC32     `?<Constant "\\n\\rHost  MCU Version : %s">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_25:
        DC32     Audio_Version

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_26:
        DC32     `?<Constant "\\n\\rAudio MCU Version : %s">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_27:
        DC32     ShellComms

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "help">`:
        DATA
        DC8 "help"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Show descrptions on c...">`:
        DATA
        DC8 "Show descrptions on commands ."
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "hostname">`:
        DATA
        DC8 "hostname"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Print the title and a...">`:
        DATA
        DC8 "Print the title and argcs followed."

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "setgpio">`:
        DATA
        DC8 "setgpio"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Set Noah defined GPIO...">`:
        DATA
        DC8 53H, 65H, 74H, 20H, 4EH, 6FH, 61H, 68H
        DC8 20H, 64H, 65H, 66H, 69H, 6EH, 65H, 64H
        DC8 20H, 47H, 50H, 49H, 4FH, 2EH, 7BH, 63H
        DC8 6DH, 64H, 20H, 6EH, 47H, 50H, 49H, 4FH
        DC8 20H, 73H, 74H, 61H, 74H, 65H, 28H, 30H
        DC8 2FH, 31H, 2FH, 32H, 29H, 7DH, 20H, 0AH
        DC8 0DH, 65H, 67H, 3AH, 20H, 73H, 65H, 74H
        DC8 67H, 70H, 69H, 6FH, 20H, 31H, 20H, 30H
        DC8 0
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "initi2c">`:
        DATA
        DC8 "initi2c"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Re-initialize board I...">`:
        DATA
        DC8 52H, 65H, 2DH, 69H, 6EH, 69H, 74H, 69H
        DC8 61H, 6CH, 69H, 7AH, 65H, 20H, 62H, 6FH
        DC8 61H, 72H, 64H, 20H, 49H, 32H, 43H, 20H
        DC8 70H, 6FH, 72H, 74H, 7BH, 63H, 6DH, 64H
        DC8 20H, 69H, 32H, 63H, 5FH, 73H, 70H, 65H
        DC8 65H, 64H, 7DH, 20H, 0AH, 0DH, 65H, 67H
        DC8 3AH, 20H, 69H, 6EH, 69H, 74H, 69H, 32H
        DC8 63H, 20H, 34H, 30H, 30H, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "ls"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "List all command supp...">`:
        DATA
        DC8 "List all command supported."

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "task">`:
        DATA
        DC8 "task"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "List all task informa...">`:
        DATA
        DC8 "List all task information."
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "reboot">`:
        DATA
        DC8 "reboot"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Reboot the MCU.">`:
        DATA
        DC8 "Reboot the MCU."

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "readdm">`:
        DATA
        DC8 "readdm"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Read DSP DM. {cmd add...">`:
        DATA
        DC8 "Read DSP DM. {cmd address}\012\015eg: readdm 0x2300"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "writedm">`:
        DATA
        DC8 "writedm"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Write DSP DM.{cmd add...">`:
        DATA
        DC8 57H, 72H, 69H, 74H, 65H, 20H, 44H, 53H
        DC8 50H, 20H, 44H, 4DH, 2EH, 7BH, 63H, 6DH
        DC8 64H, 20H, 61H, 64H, 64H, 72H, 65H, 73H
        DC8 73H, 20H, 64H, 61H, 74H, 61H, 7DH, 20H
        DC8 0AH, 0DH, 65H, 67H, 3AH, 20H, 77H, 72H
        DC8 69H, 74H, 65H, 64H, 6DH, 20H, 30H, 78H
        DC8 32H, 33H, 30H, 30H, 20H, 30H, 78H, 35H
        DC8 35H, 35H, 35H, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "readpm">`:
        DATA
        DC8 "readpm"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Read DSP PM.{cmd addr...">`:
        DATA
        DC8 "Read DSP PM.{cmd address} \012\015eg: readpm 0x1000"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "writepm">`:
        DATA
        DC8 "writepm"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Write DSP PM.{cmd add...">`:
        DATA
        DC8 57H, 72H, 69H, 74H, 65H, 20H, 44H, 53H
        DC8 50H, 20H, 50H, 4DH, 2EH, 7BH, 63H, 6DH
        DC8 64H, 20H, 61H, 64H, 64H, 72H, 65H, 73H
        DC8 73H, 20H, 64H, 61H, 74H, 61H, 7DH, 20H
        DC8 0AH, 0DH, 65H, 67H, 3AH, 20H, 77H, 72H
        DC8 69H, 74H, 65H, 70H, 6DH, 20H, 30H, 78H
        DC8 31H, 30H, 30H, 30H, 20H, 30H, 78H, 35H
        DC8 35H, 35H, 35H, 35H, 35H, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "readcm">`:
        DATA
        DC8 "readcm"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Read DSP CM. {cmd add...">`:
        DATA
        DC8 "Read DSP CM. {cmd address}\012\015eg: readcm 0x37FF"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "writecm">`:
        DATA
        DC8 "writecm"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Write DSP CM.{cmd add...">`:
        DATA
        DC8 57H, 72H, 69H, 74H, 65H, 20H, 44H, 53H
        DC8 50H, 20H, 43H, 4DH, 2EH, 7BH, 63H, 6DH
        DC8 64H, 20H, 61H, 64H, 64H, 72H, 65H, 73H
        DC8 73H, 20H, 64H, 61H, 74H, 61H, 7DH, 20H
        DC8 0AH, 0DH, 65H, 67H, 3AH, 20H, 77H, 72H
        DC8 69H, 74H, 65H, 63H, 6DH, 20H, 30H, 78H
        DC8 33H, 38H, 30H, 30H, 20H, 30H, 78H, 35H
        DC8 35H, 35H, 35H, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "readdsp">`:
        DATA
        DC8 "readdsp"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Read DSP register.{cm...">`:
        DATA
        DC8 52H, 65H, 61H, 64H, 20H, 44H, 53H, 50H
        DC8 20H, 72H, 65H, 67H, 69H, 73H, 74H, 65H
        DC8 72H, 2EH, 7BH, 63H, 6DH, 64H, 20H, 61H
        DC8 64H, 64H, 72H, 65H, 73H, 73H, 7DH, 20H
        DC8 0AH, 0DH, 65H, 67H, 3AH, 20H, 72H, 65H
        DC8 61H, 64H, 64H, 73H, 70H, 20H, 30H, 78H
        DC8 32H, 30H, 0
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "writedsp">`:
        DATA
        DC8 "writedsp"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Write DSP register.{c...">`:
        DATA
        DC8 57H, 72H, 69H, 74H, 65H, 20H, 44H, 53H
        DC8 50H, 20H, 72H, 65H, 67H, 69H, 73H, 74H
        DC8 65H, 72H, 2EH, 7BH, 63H, 6DH, 64H, 20H
        DC8 61H, 64H, 64H, 72H, 65H, 73H, 73H, 20H
        DC8 64H, 61H, 74H, 61H, 7DH, 20H, 0AH, 0DH
        DC8 65H, 67H, 3AH, 20H, 77H, 72H, 69H, 74H
        DC8 65H, 64H, 73H, 70H, 20H, 30H, 78H, 32H
        DC8 30H, 20H, 30H, 78H, 35H, 35H, 0AH, 0DH
        DC8 65H, 67H, 3AH, 20H, 77H, 72H, 69H, 74H
        DC8 65H, 64H, 73H, 70H, 20H, 30H, 78H, 33H
        DC8 30H, 20H, 30H, 78H, 35H, 35H, 61H, 61H
        DC8 0
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "readhost">`:
        DATA
        DC8 "readhost"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Read Host register.{c...">`:
        DATA
        DC8 52H, 65H, 61H, 64H, 20H, 48H, 6FH, 73H
        DC8 74H, 20H, 72H, 65H, 67H, 69H, 73H, 74H
        DC8 65H, 72H, 2EH, 7BH, 63H, 6DH, 64H, 20H
        DC8 61H, 64H, 64H, 72H, 65H, 73H, 73H, 7DH
        DC8 20H, 0AH, 0DH, 65H, 67H, 3AH, 20H, 72H
        DC8 65H, 61H, 64H, 68H, 6FH, 73H, 74H, 20H
        DC8 30H, 78H, 38H, 30H, 0
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "writehost">`:
        DATA
        DC8 "writehost"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Write Host register.{...">`:
        DATA
        DC8 57H, 72H, 69H, 74H, 65H, 20H, 48H, 6FH
        DC8 73H, 74H, 20H, 72H, 65H, 67H, 69H, 73H
        DC8 74H, 65H, 72H, 2EH, 7BH, 63H, 6DH, 64H
        DC8 20H, 61H, 64H, 64H, 72H, 65H, 73H, 73H
        DC8 20H, 64H, 61H, 74H, 61H, 7DH, 20H, 0AH
        DC8 0DH, 65H, 67H, 3AH, 20H, 77H, 72H, 69H
        DC8 74H, 65H, 68H, 6FH, 73H, 74H, 20H, 30H
        DC8 78H, 32H, 30H, 20H, 30H, 78H, 35H, 35H
        DC8 0AH, 0DH, 65H, 67H, 3AH, 20H, 77H, 72H
        DC8 69H, 74H, 65H, 68H, 6FH, 73H, 74H, 20H
        DC8 30H, 78H, 33H, 30H, 20H, 30H, 78H, 35H
        DC8 35H, 61H, 61H, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "ver"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "List MCU firmware ver...">`:
        DATA
        DC8 "List MCU firmware version info."

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "rulerfw">`:
        DATA
        DC8 "rulerfw"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Update ruler firmware...">`:
        DATA
        DC8 55H, 70H, 64H, 61H, 74H, 65H, 20H, 72H
        DC8 75H, 6CH, 65H, 72H, 20H, 66H, 69H, 72H
        DC8 6DH, 77H, 61H, 72H, 65H, 2EH, 20H, 7BH
        DC8 63H, 6DH, 64H, 20H, 72H, 75H, 6CH, 65H
        DC8 72H, 5FH, 69H, 64H, 7DH, 0AH, 0DH, 65H
        DC8 67H, 3AH, 20H, 72H, 75H, 6CH, 65H, 72H
        DC8 66H, 77H, 20H, 30H, 0
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n\\rCommand list :">`:
        DATA
        DC8 "\012\015Command list :"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n\\r %2d. %s">`:
        DATA
        DC8 "\012\015 %2d. %s"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Genieshell only suppo...">`:
        DATA
        DC8 47H, 65H, 6EH, 69H, 65H, 73H, 68H, 65H
        DC8 6CH, 6CH, 20H, 6FH, 6EH, 6CH, 79H, 20H
        DC8 73H, 75H, 70H, 70H, 6FH, 72H, 74H, 20H
        DC8 74H, 68H, 65H, 20H, 66H, 6FH, 6CH, 6CH
        DC8 6FH, 77H, 69H, 6EH, 67H, 20H, 63H, 6FH
        DC8 6DH, 6DH, 61H, 6EH, 64H, 20H, 6EH, 6FH
        DC8 77H, 2EH, 20H, 49H, 66H, 20H, 79H, 6FH
        DC8 75H, 20H, 77H, 61H, 6EH, 6EH, 61H, 20H
        DC8 75H, 73H, 65H, 20H, 0AH, 0DH, 20H, 6DH
        DC8 6FH, 72H, 65H, 20H, 66H, 75H, 6EH, 63H
        DC8 74H, 69H, 6FH, 6EH, 73H, 2CH, 20H, 70H
        DC8 6CH, 73H, 20H, 63H, 6FH, 6EH, 74H, 61H
        DC8 63H, 74H, 20H, 50H, 51H, 2CH, 20H, 74H
        DC8 68H, 78H, 20H, 21H, 0
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n\\r\\n\\rFor detailed info...">`:
        DATA
        DC8 0AH, 0DH, 0AH, 0DH, 46H, 6FH, 72H, 20H
        DC8 64H, 65H, 74H, 61H, 69H, 6CH, 65H, 64H
        DC8 20H, 69H, 6EH, 66H, 6FH, 2CH, 20H, 70H
        DC8 6CH, 73H, 20H, 75H, 73H, 65H, 20H, 63H
        DC8 6FH, 6DH, 6DH, 61H, 6EH, 64H, 3AH, 20H
        DC8 68H, 65H, 6CH, 70H, 20H, 5BH, 63H, 6FH
        DC8 6DH, 6DH, 61H, 6EH, 64H, 5DH, 0AH, 0DH
        DC8 0
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "e.g.: help readdm\\n\\r">`:
        DATA
        DC8 "e.g.: help readdm\012\015"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Hostname is Genies ^_...">`:
        DATA
        DC8 "Hostname is Genies ^_<  : "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "\012\015"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n\\rSet GPIO %d to Float">`:
        DATA
        DC8 "\012\015Set GPIO %d to Float"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n\\rSet GPIO %d = %d">`:
        DATA
        DC8 "\012\015Set GPIO %d = %d"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n\\rI2C port is re-init...">`:
        DATA
        DC8 "\012\015I2C port is re-initialized to %d kHz"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant ">>User cmd reset trig...">`:
        DATA
        DC8 ">>User cmd reset triggered... \015\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant ">>That\\'s all folks !\\r...">`:
        DATA
        DC8 ">>That's all folks !\015\012\015\012>> Rebooting...\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n\\rRead DM[0x%X] = 0x%X">`:
        DATA
        DC8 "\012\015Read DM[0x%X] = 0x%X"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n\\rWrite DM[0x%X] = 0x%X">`:
        DATA
        DC8 "\012\015Write DM[0x%X] = 0x%X"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n\\rRead CM[0x%X] = 0x%X">`:
        DATA
        DC8 "\012\015Read CM[0x%X] = 0x%X"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n\\rWrite CM[0x%X] = 0x%X">`:
        DATA
        DC8 "\012\015Write CM[0x%X] = 0x%X"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n\\rRead PM[0x%X] = 0x%X">`:
        DATA
        DC8 "\012\015Read PM[0x%X] = 0x%X"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n\\rWrite PM[0x%X] = 0x%X">`:
        DATA
        DC8 "\012\015Write PM[0x%X] = 0x%X"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n\\rRead DSP REG[0x%X] ...">`:
        DATA
        DC8 "\012\015Read DSP REG[0x%X] = 0x%X"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n\\rWrite DSP REG[0x%X]...">`:
        DATA
        DC8 "\012\015Write DSP REG[0x%X] = 0x%X"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n\\rRead Host REG[0x%X]...">`:
        DATA
        DC8 "\012\015Read Host REG[0x%X] = 0x%X"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n\\rWrite Host REG[0x%X...">`:
        DATA
        DC8 "\012\015Write Host REG[0x%X] = 0x%X"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n\\rHost  MCU Version : %s">`:
        DATA
        DC8 "\012\015Host  MCU Version : %s"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n\\rAudio MCU Version : %s">`:
        DATA
        DC8 "\012\015Audio MCU Version : %s"
        DC8 0, 0, 0

        END
// 
//   304 bytes in section .bss
// 1 884 bytes in section .rodata
// 4 632 bytes in section .text
// 
// 4 632 bytes of CODE  memory
// 1 884 bytes of CONST memory
//   304 bytes of DATA  memory
//
//Errors: none
//Warnings: none
