///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       21/Jul/2014  19:24:33
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Noah\mem_basic.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Noah\mem_basic.c" -lcN
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
//        Bench\Bridge_Host_OS\APP\FLASH\List\mem_basic.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN DBGU_Read_Byte
        EXTERN DBGU_Read_NULL_RHR
        EXTERN DBGU_Write_Buffer
        EXTERN TWID_Read
        EXTERN TWID_Write

        PUBLIC CM_LegacyRead
        PUBLIC CM_LegacyRead_uart
        PUBLIC CM_SingleWrite
        PUBLIC CM_SingleWrite_uart
        PUBLIC Check_IDMA
        PUBLIC DM_BurstWrite
        PUBLIC DM_BurstWrite_s
        PUBLIC DM_FastRead
        PUBLIC DM_FastReadReStart
        PUBLIC DM_LegacyRead
        PUBLIC DM_LegacyReadReStart
        PUBLIC DM_LegacyRead_uart
        PUBLIC DM_SingleWrite
        PUBLIC DM_SingleWrite_uart
        PUBLIC DM_Write
        PUBLIC DSP_LegacyRead
        PUBLIC DSP_LegacyRead_uart
        PUBLIC DSP_PM_Type
        PUBLIC DSP_SingleWrite_1
        PUBLIC DSP_SingleWrite_1_uart
        PUBLIC DSP_SingleWrite_2
        PUBLIC DSP_SingleWrite_2_uart
        PUBLIC HOST_LegacyRead
        PUBLIC HOST_LegacyRead_uart
        PUBLIC HOST_SingleWrite_1
        PUBLIC HOST_SingleWrite_1_uart
        PUBLIC HOST_SingleWrite_2
        PUBLIC HOST_SingleWrite_2_uart
        PUBLIC MEM_Block_LegacyRead
        PUBLIC MEM_Block_LegacyRead_uart
        PUBLIC MEM_Block_SingleWrite
        PUBLIC MEM_Block_SingleWrite_uart
        PUBLIC PM_BurstWrite_s
        PUBLIC PM_FastWrite_s
        PUBLIC PM_LegacyRead
        PUBLIC PM_LegacyRead_uart
        PUBLIC PM_SingleWrite
        PUBLIC PM_SingleWrite_uart


        SECTION `.data`:DATA:REORDER:NOROOT(0)
DSP_PM_Type:
        DATA
        DC8 1

        SECTION `.text`:CODE:NOROOT(2)
        ARM
DM_Write:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,R5
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        MOVS     R1,R4
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        MOV      R0,#+192
        BL       DM_SingleWrite
        POP      {R1,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Unlock_PM:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??Unlock_PM_0
        MOV      R0,#+214
        ORR      R0,R0,#0x3F00
        MOVS     R5,R0
        B        ??Unlock_PM_1
??Unlock_PM_0:
        MOV      R0,#+238
        ORR      R0,R0,#0x3F00
        MOVS     R5,R0
??Unlock_PM_1:
        MOV      R1,#+243
        ORR      R1,R1,#0xEC00
        MOVS     R0,R5
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        BL       DM_Write
        MOV      R1,#+7
        ORR      R1,R1,#0x3800
        MOVS     R0,R5
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        BL       DM_Write
        MOV      R1,#+173
        ORR      R1,R1,#0x7900
        MOVS     R0,R5
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        BL       DM_Write
        POP      {R0,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
DM_SingleWrite:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+20
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        ADD      R0,SP,#+8
        LDR      R1,??DataTable10
        LDM      R1!,{R2,R3}
        STM      R0!,{R2,R3}
        SUBS     R1,R1,#+8
        SUBS     R0,R0,#+8
        LSL      R5,R5,#+16
        LSRS     R5,R5,#+16
        LSRS     R0,R5,#+8
        STRB     R0,[SP, #+11]
        STRB     R5,[SP, #+12]
        LSL      R6,R6,#+16
        LSRS     R6,R6,#+16
        LSRS     R0,R6,#+8
        STRB     R0,[SP, #+13]
        STRB     R6,[SP, #+14]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+7
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADD      SP,SP,#+20       ;; stack cleaning
        POP      {R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
PM_SingleWrite:
        PUSH     {R0-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        ADD      R0,SP,#+8
        LDR      R1,??DataTable10_1
        LDM      R1!,{R2,R3}
        STM      R0!,{R2,R3}
        SUBS     R1,R1,#+8
        SUBS     R0,R0,#+8
        LSL      R5,R5,#+16
        LSRS     R5,R5,#+16
        LSRS     R0,R5,#+8
        STRB     R0,[SP, #+11]
        STRB     R5,[SP, #+12]
        LDRB     R0,[R6, #+0]
        LSRS     R1,R7,#+16
        EORS     R0,R1,R0
        STRB     R0,[SP, #+13]
        ADDS     R6,R6,#+1
        LDRB     R0,[R6, #+0]
        LSRS     R1,R7,#+8
        EORS     R0,R1,R0
        STRB     R0,[SP, #+14]
        ADDS     R6,R6,#+1
        LDRB     R0,[R6, #+0]
        MOVS     R1,R7
        EORS     R0,R1,R0
        STRB     R0,[SP, #+15]
        ADDS     R6,R6,#+1
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+8
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R8,R0
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADD      SP,SP,#+16       ;; stack cleaning
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
CM_SingleWrite:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+20
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        ADD      R0,SP,#+8
        LDR      R1,??DataTable10_2
        LDM      R1!,{R2,R3}
        STM      R0!,{R2,R3}
        SUBS     R1,R1,#+8
        SUBS     R0,R0,#+8
        LSL      R5,R5,#+16
        LSRS     R5,R5,#+16
        LSRS     R0,R5,#+8
        STRB     R0,[SP, #+11]
        STRB     R5,[SP, #+12]
        LDRB     R0,[R6, #+0]
        STRB     R0,[SP, #+13]
        ADDS     R6,R6,#+1
        LDRB     R0,[R6, #+0]
        STRB     R0,[SP, #+14]
        ADDS     R6,R6,#+1
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+7
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADD      SP,SP,#+20       ;; stack cleaning
        POP      {R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
DM_LegacyRead:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+20
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        ADD      R0,SP,#+8
        LDR      R1,??DataTable10_3
        LDM      R1!,{R2,R3}
        STM      R0!,{R2,R3}
        SUBS     R1,R1,#+8
        SUBS     R0,R0,#+8
        LSL      R5,R5,#+16
        LSRS     R5,R5,#+16
        LSRS     R0,R5,#+8
        STRB     R0,[SP, #+11]
        STRB     R5,[SP, #+12]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+5
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??DM_LegacyRead_0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??DM_LegacyRead_1
??DM_LegacyRead_0:
        MOV      R0,#+96
        STRB     R0,[SP, #+10]
        MOV      R0,#+37
        STRB     R0,[SP, #+11]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+4
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??DM_LegacyRead_2
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??DM_LegacyRead_1
??DM_LegacyRead_2:
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,R6
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Read
        MOVS     R7,R0
        ADDS     R6,R6,#+1
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??DM_LegacyRead_3
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??DM_LegacyRead_1
??DM_LegacyRead_3:
        MOV      R0,#+38
        STRB     R0,[SP, #+11]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+4
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??DM_LegacyRead_4
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??DM_LegacyRead_1
??DM_LegacyRead_4:
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,R6
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Read
        MOVS     R7,R0
        ADDS     R6,R6,#+1
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??DM_LegacyRead_5
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??DM_LegacyRead_1
??DM_LegacyRead_5:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
??DM_LegacyRead_1:
        ADD      SP,SP,#+20       ;; stack cleaning
        POP      {R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
DM_LegacyReadReStart:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R2,R6
        MOVS     R1,R5
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       DM_LegacyRead
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
PM_LegacyRead:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+20
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        ADD      R0,SP,#+8
        LDR      R1,??DataTable11
        LDM      R1!,{R2,R3}
        STM      R0!,{R2,R3}
        SUBS     R1,R1,#+8
        SUBS     R0,R0,#+8
        LSL      R5,R5,#+16
        LSRS     R5,R5,#+16
        LSRS     R0,R5,#+8
        STRB     R0,[SP, #+11]
        STRB     R5,[SP, #+12]
        LDR      R0,??DataTable12
        LDRB     R0,[R0, #+0]
        BL       Unlock_PM
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+5
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??PM_LegacyRead_0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??PM_LegacyRead_1
??PM_LegacyRead_0:
        MOV      R0,#+96
        STRB     R0,[SP, #+10]
        MOV      R0,#+36
        STRB     R0,[SP, #+11]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+4
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??PM_LegacyRead_2
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??PM_LegacyRead_1
??PM_LegacyRead_2:
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,R6
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Read
        MOVS     R7,R0
        ADDS     R6,R6,#+1
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??PM_LegacyRead_3
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??PM_LegacyRead_1
??PM_LegacyRead_3:
        MOV      R0,#+37
        STRB     R0,[SP, #+11]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+4
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??PM_LegacyRead_4
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??PM_LegacyRead_1
??PM_LegacyRead_4:
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,R6
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Read
        MOVS     R7,R0
        ADDS     R6,R6,#+1
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??PM_LegacyRead_5
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??PM_LegacyRead_1
??PM_LegacyRead_5:
        MOV      R0,#+38
        STRB     R0,[SP, #+11]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+4
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??PM_LegacyRead_6
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??PM_LegacyRead_1
??PM_LegacyRead_6:
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,R6
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Read
        MOVS     R7,R0
        ADDS     R6,R6,#+1
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??PM_LegacyRead_7
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??PM_LegacyRead_1
??PM_LegacyRead_7:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
??PM_LegacyRead_1:
        ADD      SP,SP,#+20       ;; stack cleaning
        POP      {R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
CM_LegacyRead:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+20
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        ADD      R0,SP,#+8
        LDR      R1,??DataTable16
        LDM      R1!,{R2,R3}
        STM      R0!,{R2,R3}
        SUBS     R1,R1,#+8
        SUBS     R0,R0,#+8
        LSL      R5,R5,#+16
        LSRS     R5,R5,#+16
        LSRS     R0,R5,#+8
        STRB     R0,[SP, #+11]
        STRB     R5,[SP, #+12]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+5
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??CM_LegacyRead_0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??CM_LegacyRead_1
??CM_LegacyRead_0:
        MOV      R0,#+96
        STRB     R0,[SP, #+10]
        MOV      R0,#+37
        STRB     R0,[SP, #+11]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+4
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??CM_LegacyRead_2
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??CM_LegacyRead_1
??CM_LegacyRead_2:
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,R6
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Read
        MOVS     R7,R0
        ADDS     R6,R6,#+1
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??CM_LegacyRead_3
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??CM_LegacyRead_1
??CM_LegacyRead_3:
        MOV      R0,#+38
        STRB     R0,[SP, #+11]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+4
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??CM_LegacyRead_4
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??CM_LegacyRead_1
??CM_LegacyRead_4:
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,R6
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Read
        MOVS     R7,R0
        ADDS     R6,R6,#+1
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??CM_LegacyRead_5
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??CM_LegacyRead_1
??CM_LegacyRead_5:
        MOV      R0,#+0
        STRB     R0,[R6, #+0]
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
??CM_LegacyRead_1:
        ADD      SP,SP,#+20       ;; stack cleaning
        POP      {R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
DM_BurstWrite:
        PUSH     {R4-R8,LR}
        SUB      SP,SP,#+16
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        ADD      R0,SP,#+8
        LDR      R1,??DataTable17
        LDR      R2,[R1, #0]
        STR      R2,[R0, #+0]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+2
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??DM_BurstWrite_0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??DM_BurstWrite_1
??DM_BurstWrite_0:
        MOV      R0,#+0
        MOVS     R8,R0
??DM_BurstWrite_2:
        ANDS     R8,R8,#0xFF      ;; Zero extend
        ANDS     R6,R6,#0xFF      ;; Zero extend
        CMP      R8,R6
        BCS      ??DM_BurstWrite_3
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??DM_BurstWrite_3
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDRH     R0,[R0, +R5]
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        LSRS     R0,R0,#+8
        STRB     R0,[SP, #+8]
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDRH     R0,[R0, +R5]
        STRB     R0,[SP, #+9]
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        ADDS     R0,R0,R5
        LDRH     R0,[R0, #+2]
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        LSRS     R0,R0,#+8
        STRB     R0,[SP, #+10]
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        ADDS     R0,R0,R5
        LDRH     R0,[R0, #+2]
        STRB     R0,[SP, #+11]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+4
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+3
        LDR      R1,??DataTable19  ;; 0xfcf33b
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R7,R0
        ADDS     R8,R8,#+1
        B        ??DM_BurstWrite_2
??DM_BurstWrite_3:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
??DM_BurstWrite_1:
        ADD      SP,SP,#+16       ;; stack cleaning
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
DM_BurstWrite_s:
        PUSH     {R4-R10,LR}
        SUB      SP,SP,#+16
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOVS     R9,R7
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        MOV      R1,#+2
        MVN      R2,#+2
        MLA      R10,R1,R0,R2
        ADD      R0,SP,#+8
        LDR      R1,??DataTable19_1
        LDR      R2,[R1, #0]
        STR      R2,[R0, #+0]
        LSL      R10,R10,#+16
        LSRS     R10,R10,#+16
        LSRS     R0,R10,#+8
        STRB     R0,[SP, #+10]
        STRB     R10,[SP, #+11]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+4
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+3
        LDR      R1,??DataTable19  ;; 0xfcf33b
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R8,R0
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??DM_BurstWrite_s_0
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??DM_BurstWrite_s_1
??DM_BurstWrite_s_0:
        LSL      R5,R5,#+16
        LSRS     R5,R5,#+16
        LSRS     R0,R5,#+8
        STRB     R0,[SP, #+8]
        STRB     R5,[SP, #+9]
        LDRB     R0,[R9, #+0]
        STRB     R0,[SP, #+10]
        ADDS     R9,R9,#+1
        LDRB     R0,[R9, #+0]
        STRB     R0,[SP, #+11]
        ADDS     R9,R9,#+1
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+4
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+3
        LDR      R1,??DataTable19  ;; 0xfcf33b
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R8,R0
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??DM_BurstWrite_s_2
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??DM_BurstWrite_s_1
??DM_BurstWrite_s_2:
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOVS     R0,R10
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,R9
        MOV      R2,#+3
        LDR      R1,??DataTable21  ;; 0xfcf3b8
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R8,R0
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??DM_BurstWrite_s_3
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??DM_BurstWrite_s_1
??DM_BurstWrite_s_3:
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
??DM_BurstWrite_s_1:
        ADD      SP,SP,#+16       ;; stack cleaning
        POP      {R4-R10,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
PM_BurstWrite_s:
        PUSH     {R0-R10,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOVS     R9,R7
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        MOV      R1,#+3
        MVN      R2,#+3
        MLA      R10,R1,R0,R2
        ADD      R0,SP,#+8
        LDR      R1,??DataTable21_1
        LDM      R1!,{R2,R3}
        STM      R0!,{R2,R3}
        SUBS     R1,R1,#+8
        SUBS     R0,R0,#+8
        LSL      R10,R10,#+16
        LSRS     R10,R10,#+16
        LSRS     R0,R10,#+8
        STRB     R0,[SP, #+10]
        STRB     R10,[SP, #+11]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+4
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+3
        LDR      R1,??DataTable19  ;; 0xfcf33b
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R8,R0
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??PM_BurstWrite_s_0
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??PM_BurstWrite_s_1
??PM_BurstWrite_s_0:
        LSL      R5,R5,#+16
        LSRS     R5,R5,#+16
        LSRS     R0,R5,#+8
        STRB     R0,[SP, #+8]
        STRB     R5,[SP, #+9]
        LDRB     R0,[R9, #+0]
        STRB     R0,[SP, #+10]
        ADDS     R9,R9,#+1
        LDRB     R0,[R9, #+0]
        STRB     R0,[SP, #+11]
        ADDS     R9,R9,#+1
        LDRB     R0,[R9, #+0]
        STRB     R0,[SP, #+12]
        ADDS     R9,R9,#+1
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+5
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+3
        LDR      R1,??DataTable22  ;; 0xfcf30d
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R8,R0
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??PM_BurstWrite_s_2
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??PM_BurstWrite_s_1
??PM_BurstWrite_s_2:
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOVS     R0,R10
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,R9
        MOV      R2,#+3
        LDR      R1,??DataTable23  ;; 0xfcf388
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R8,R0
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??PM_BurstWrite_s_3
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??PM_BurstWrite_s_1
??PM_BurstWrite_s_3:
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
??PM_BurstWrite_s_1:
        ADD      SP,SP,#+16       ;; stack cleaning
        POP      {R4-R10,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
PM_FastWrite_s:
        PUSH     {R0-R10,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOVS     R8,R7
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADD      R10,R0,R0, LSL #+1
        MOVS     R2,R10
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        MOV      R1,#+15
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       HOST_SingleWrite_2
        MOVS     R9,R0
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??PM_FastWrite_s_0
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??PM_FastWrite_s_1
??PM_FastWrite_s_0:
        ADD      R0,SP,#+8
        LDR      R1,??DataTable23_1
        LDM      R1!,{R2,R3}
        STM      R0!,{R2,R3}
        SUBS     R1,R1,#+8
        SUBS     R0,R0,#+8
        LSL      R5,R5,#+16
        LSRS     R5,R5,#+16
        LSRS     R0,R5,#+8
        STRB     R0,[SP, #+11]
        STRB     R5,[SP, #+12]
        LDRB     R0,[R8, #+0]
        STRB     R0,[SP, #+13]
        ADDS     R8,R8,#+1
        LDRB     R0,[R8, #+0]
        STRB     R0,[SP, #+14]
        ADDS     R8,R8,#+1
        LDRB     R0,[R8, #+0]
        STRB     R0,[SP, #+15]
        ADDS     R8,R8,#+1
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+8
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R9,R0
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??PM_FastWrite_s_2
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??PM_FastWrite_s_1
??PM_FastWrite_s_2:
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
??PM_FastWrite_s_1:
        ADD      SP,SP,#+16       ;; stack cleaning
        POP      {R4-R10,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
DM_FastRead:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+20
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        ADD      R0,SP,#+8
        LDR      R1,??DataTable25
        LDM      R1!,{R2,R3}
        STM      R0!,{R2,R3}
        SUBS     R1,R1,#+8
        SUBS     R0,R0,#+8
        LSL      R5,R5,#+16
        LSRS     R5,R5,#+16
        LSRS     R0,R5,#+8
        STRB     R0,[SP, #+11]
        STRB     R5,[SP, #+12]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+5
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??DM_FastRead_0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??DM_FastRead_1
??DM_FastRead_0:
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+2
        STR      R0,[SP, #+0]
        MOVS     R3,R6
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Read
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
??DM_FastRead_1:
        ADD      SP,SP,#+20       ;; stack cleaning
        POP      {R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     `?<Constant {252, 243, 59, 0, 0, 0, 0}>`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     `?<Constant {252, 243, 13, 0, 0, 0, 0, 0}>`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_2:
        DC32     `?<Constant {252, 243, 43, 0, 0, 0, 0}>`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_3:
        DC32     `?<Constant {252, 243, 55, 0, 0}>`

        SECTION `.text`:CODE:NOROOT(2)
        ARM
DM_FastReadReStart:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R2,R6
        MOVS     R1,R5
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       DM_FastRead
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Check_IDMA:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOV      R6,#+100
        MOV      R0,#+0
        MOVS     R5,R0
??Check_IDMA_0:
        ANDS     R5,R5,#0xFF      ;; Zero extend
        ANDS     R6,R6,#0xFF      ;; Zero extend
        CMP      R5,R6
        BCS      ??Check_IDMA_1
        MOVS     R2,SP
        MOV      R1,#+32
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       HOST_LegacyRead
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Check_IDMA_2
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Check_IDMA_3
??Check_IDMA_2:
        LDRB     R0,[SP, #+0]
        TST      R0,#0x2
        BEQ      ??Check_IDMA_1
??Check_IDMA_4:
        ADDS     R5,R5,#+1
        B        ??Check_IDMA_0
??Check_IDMA_1:
        ANDS     R5,R5,#0xFF      ;; Zero extend
        ANDS     R6,R6,#0xFF      ;; Zero extend
        CMP      R5,R6
        BNE      ??Check_IDMA_5
        MOV      R0,#+68
        B        ??Check_IDMA_3
??Check_IDMA_5:
        MOV      R0,#+0
??Check_IDMA_3:
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
MEM_Block_LegacyRead:
        PUSH     {R4-R10,LR}
        SUB      SP,SP,#+32
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDR      R8,[SP, #+64]
        MOV      R9,#+255
        MOV      R10,#+0
        ADD      R0,SP,#+16
        LDR      R1,??DataTable29
        LDM      R1!,{R2,R3,R12}
        STM      R0!,{R2,R3,R12}
        SUBS     R1,R1,#+12
        SUBS     R0,R0,#+12
        ADD      R0,SP,#+8
        LDR      R1,??DataTable30
        LDM      R1!,{R2,R3}
        STM      R0!,{R2,R3}
        SUBS     R1,R1,#+8
        SUBS     R0,R0,#+8
        LSL      R6,R6,#+16
        LSRS     R6,R6,#+16
        LSRS     R0,R6,#+8
        STRB     R0,[SP, #+11]
        STRB     R6,[SP, #+12]
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??MEM_Block_LegacyRead_0
        LDR      R0,??DataTable12
        LDRB     R0,[R0, #+0]
        BL       Unlock_PM
??MEM_Block_LegacyRead_0:
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        ADD      R1,SP,#+16
        LDR      R0,[R0, +R1]
        STRB     R0,[SP, #+10]
        MOV      R0,#+0
        MOVS     R10,R0
??MEM_Block_LegacyRead_1:
        ANDS     R10,R10,#0xFF    ;; Zero extend
        ANDS     R7,R7,#0xFF      ;; Zero extend
        CMP      R10,R7
        BCS      ??MEM_Block_LegacyRead_2
        LSL      R6,R6,#+16
        LSRS     R6,R6,#+16
        LSRS     R0,R6,#+8
        STRB     R0,[SP, #+8]
        STRB     R6,[SP, #+9]
        ADDS     R6,R6,#+1
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+5
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R9,R0
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??MEM_Block_LegacyRead_3
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??MEM_Block_LegacyRead_4
??MEM_Block_LegacyRead_3:
        MOV      R0,#+96
        STRB     R0,[SP, #+10]
        MOV      R0,#+38
        STRB     R0,[SP, #+11]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+4
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R9,R0
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??MEM_Block_LegacyRead_5
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??MEM_Block_LegacyRead_4
??MEM_Block_LegacyRead_5:
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,R8
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Read
        MOVS     R9,R0
        ADDS     R8,R8,#+1
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??MEM_Block_LegacyRead_6
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??MEM_Block_LegacyRead_4
??MEM_Block_LegacyRead_6:
        MOV      R0,#+37
        STRB     R0,[SP, #+11]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+4
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R9,R0
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??MEM_Block_LegacyRead_7
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??MEM_Block_LegacyRead_4
??MEM_Block_LegacyRead_7:
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,R8
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Read
        MOVS     R9,R0
        ADDS     R8,R8,#+1
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??MEM_Block_LegacyRead_8
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??MEM_Block_LegacyRead_4
??MEM_Block_LegacyRead_8:
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??MEM_Block_LegacyRead_9
        MOV      R0,#+36
        STRB     R0,[SP, #+11]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+4
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R9,R0
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??MEM_Block_LegacyRead_10
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??MEM_Block_LegacyRead_4
??MEM_Block_LegacyRead_10:
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,R8
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Read
        MOVS     R9,R0
        ADDS     R8,R8,#+1
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??MEM_Block_LegacyRead_9
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??MEM_Block_LegacyRead_4
??MEM_Block_LegacyRead_9:
        ADDS     R10,R10,#+1
        B        ??MEM_Block_LegacyRead_1
??MEM_Block_LegacyRead_2:
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
??MEM_Block_LegacyRead_4:
        ADD      SP,SP,#+32       ;; stack cleaning
        POP      {R4-R10,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     `?<Constant {252, 243, 7, 0, 0}>`

        SECTION `.text`:CODE:NOROOT(2)
        ARM
MEM_Block_SingleWrite:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+28
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDR      R8,[SP, #+64]
        ADD      R0,SP,#+16
        LDR      R1,??DataTable32
        LDM      R1!,{R2,R3,R12}
        STM      R0!,{R2,R3,R12}
        SUBS     R1,R1,#+12
        SUBS     R0,R0,#+12
        MOV      R11,#+2
        MOV      R0,#+252
        STRB     R0,[SP, #+8]
        MOV      R0,#+243
        STRB     R0,[SP, #+9]
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        ADD      R1,SP,#+16
        LDR      R0,[R0, +R1]
        STRB     R0,[SP, #+10]
        MOV      R0,#+0
        MOVS     R10,R0
??MEM_Block_SingleWrite_0:
        ANDS     R10,R10,#0xFF    ;; Zero extend
        ANDS     R7,R7,#0xFF      ;; Zero extend
        CMP      R10,R7
        BCS      ??MEM_Block_SingleWrite_1
        LSL      R6,R6,#+16
        LSRS     R6,R6,#+16
        LSRS     R0,R6,#+8
        STRB     R0,[SP, #+11]
        STRB     R6,[SP, #+12]
        LDRB     R0,[R8, #+0]
        STRB     R0,[SP, #+13]
        ADDS     R8,R8,#+1
        LDRB     R0,[R8, #+0]
        STRB     R0,[SP, #+14]
        ADDS     R8,R8,#+1
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??MEM_Block_SingleWrite_2
        LDRB     R0,[R8, #+0]
        STRB     R0,[SP, #+15]
        ADDS     R8,R8,#+1
        MOV      R0,#+3
        MOVS     R11,R0
??MEM_Block_SingleWrite_2:
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOVS     R0,R11
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADDS     R0,R0,#+5
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R9,R0
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??MEM_Block_SingleWrite_3
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??MEM_Block_SingleWrite_4
??MEM_Block_SingleWrite_3:
        ADDS     R6,R6,#+1
        ADDS     R10,R10,#+1
        B        ??MEM_Block_SingleWrite_0
??MEM_Block_SingleWrite_1:
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
??MEM_Block_SingleWrite_4:
        ADD      SP,SP,#+28       ;; stack cleaning
        POP      {R4-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     DSP_PM_Type

        SECTION `.text`:CODE:NOROOT(2)
        ARM
HOST_SingleWrite_1:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+20
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        ADD      R0,SP,#+8
        LDR      R1,??DataTable32_1
        LDM      R1!,{R2,R3}
        STM      R0!,{R2,R3}
        SUBS     R1,R1,#+8
        SUBS     R0,R0,#+8
        STRB     R5,[SP, #+11]
        STRB     R6,[SP, #+12]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+5
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADD      SP,SP,#+20       ;; stack cleaning
        POP      {R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
HOST_SingleWrite_2:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+20
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        ADD      R0,SP,#+8
        LDR      R1,??DataTable32_2
        LDM      R1!,{R2,R3}
        STM      R0!,{R2,R3}
        SUBS     R1,R1,#+8
        SUBS     R0,R0,#+8
        STRB     R5,[SP, #+11]
        LSL      R6,R6,#+16
        LSRS     R6,R6,#+16
        LSRS     R0,R6,#+8
        STRB     R0,[SP, #+12]
        STRB     R6,[SP, #+13]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+6
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADD      SP,SP,#+20       ;; stack cleaning
        POP      {R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
HOST_LegacyRead:
        PUSH     {R1-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        ADD      R0,SP,#+8
        LDR      R1,??DataTable32_3
        LDR      R2,[R1, #0]
        STR      R2,[R0, #+0]
        STRB     R5,[SP, #+11]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+4
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??HOST_LegacyRead_0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??HOST_LegacyRead_1
??HOST_LegacyRead_0:
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,R6
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Read
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??HOST_LegacyRead_2
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??HOST_LegacyRead_1
??HOST_LegacyRead_2:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
??HOST_LegacyRead_1:
        POP      {R1-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
DSP_SingleWrite_1:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+20
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        ADD      R0,SP,#+8
        LDR      R1,??DataTable32_4
        LDM      R1!,{R2,R3}
        STM      R0!,{R2,R3}
        SUBS     R1,R1,#+8
        SUBS     R0,R0,#+8
        STRB     R5,[SP, #+11]
        STRB     R6,[SP, #+12]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+5
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADD      SP,SP,#+20       ;; stack cleaning
        POP      {R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16:
        DC32     `?<Constant {252, 243, 39, 0, 0}>`

        SECTION `.text`:CODE:NOROOT(2)
        ARM
DSP_SingleWrite_2:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+20
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        ADD      R0,SP,#+8
        LDR      R1,??DataTable32_5
        LDM      R1!,{R2,R3}
        STM      R0!,{R2,R3}
        SUBS     R1,R1,#+8
        SUBS     R0,R0,#+8
        STRB     R5,[SP, #+11]
        LSL      R6,R6,#+16
        LSRS     R6,R6,#+16
        LSRS     R0,R6,#+8
        STRB     R0,[SP, #+12]
        STRB     R6,[SP, #+13]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+6
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADD      SP,SP,#+20       ;; stack cleaning
        POP      {R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17:
        DC32     `?<Constant {0, 28, 0, 0}>`

        SECTION `.text`:CODE:NOROOT(2)
        ARM
DSP_LegacyRead:
        PUSH     {R1-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        ADD      R0,SP,#+8
        LDR      R1,??DataTable32_6
        LDR      R2,[R1, #0]
        STR      R2,[R0, #+0]
        STRB     R5,[SP, #+11]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+4
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??DSP_LegacyRead_0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??DSP_LegacyRead_1
??DSP_LegacyRead_0:
        MOV      R0,#+96
        STRB     R0,[SP, #+10]
        MOV      R0,#+75
        STRB     R0,[SP, #+11]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+4
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??DSP_LegacyRead_2
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??DSP_LegacyRead_1
??DSP_LegacyRead_2:
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,R6
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Read
        MOVS     R7,R0
        ADDS     R6,R6,#+1
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??DSP_LegacyRead_3
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??DSP_LegacyRead_1
??DSP_LegacyRead_3:
        MOV      R0,#+74
        STRB     R0,[SP, #+11]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+4
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??DSP_LegacyRead_4
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??DSP_LegacyRead_1
??DSP_LegacyRead_4:
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,R6
        MOV      R2,#+0
        MOV      R1,#+0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Read
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??DSP_LegacyRead_5
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??DSP_LegacyRead_1
??DSP_LegacyRead_5:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
??DSP_LegacyRead_1:
        POP      {R1-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
DM_SingleWrite_uart:
        PUSH     {R2-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R0,SP
        LDR      R1,??DataTable32_7
        LDM      R1!,{R2,R3}
        STM      R0!,{R2,R3}
        SUBS     R1,R1,#+8
        SUBS     R0,R0,#+8
        LSL      R5,R5,#+16
        LSRS     R5,R5,#+16
        LSRS     R0,R5,#+8
        STRB     R0,[SP, #+3]
        STRB     R5,[SP, #+4]
        LSL      R6,R6,#+16
        LSRS     R6,R6,#+16
        LSRS     R0,R6,#+8
        STRB     R0,[SP, #+5]
        STRB     R6,[SP, #+6]
        MOV      R1,#+7
        MOVS     R0,SP
        BL       DBGU_Write_Buffer
        MOV      R0,#+0
        POP      {R1,R2,R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19:
        DC32     0xfcf33b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_1:
        DC32     `?<Constant {63, 232, 0, 0}>`

        SECTION `.text`:CODE:NOROOT(2)
        ARM
DM_LegacyRead_uart:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+12
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R0,SP
        LDR      R1,??DataTable32_8
        LDM      R1!,{R2,R3}
        STM      R0!,{R2,R3}
        SUBS     R1,R1,#+8
        SUBS     R0,R0,#+8
        LSL      R5,R5,#+16
        LSRS     R5,R5,#+16
        LSRS     R0,R5,#+8
        STRB     R0,[SP, #+3]
        STRB     R5,[SP, #+4]
        MOV      R7,#+0
        BL       DBGU_Read_NULL_RHR
        MOV      R1,#+5
        MOVS     R0,SP
        BL       DBGU_Write_Buffer
        MOV      R0,#+96
        STRB     R0,[SP, #+2]
        MOV      R0,#+37
        STRB     R0,[SP, #+3]
        MOV      R1,#+4
        MOVS     R0,SP
        BL       DBGU_Write_Buffer
        MOV      R1,#+1000
        MOVS     R0,R6
        BL       DBGU_Read_Byte
        MOVS     R7,R0
        ADDS     R6,R6,#+1
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??DM_LegacyRead_uart_0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??DM_LegacyRead_uart_1
??DM_LegacyRead_uart_0:
        MOV      R0,#+38
        STRB     R0,[SP, #+3]
        MOV      R1,#+4
        MOVS     R0,SP
        BL       DBGU_Write_Buffer
        MOV      R1,#+1000
        MOVS     R0,R6
        BL       DBGU_Read_Byte
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
??DM_LegacyRead_uart_1:
        POP      {R1-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
PM_SingleWrite_uart:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+12
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOVS     R0,SP
        LDR      R1,??DataTable32_9
        LDM      R1!,{R2,R3}
        STM      R0!,{R2,R3}
        SUBS     R1,R1,#+8
        SUBS     R0,R0,#+8
        LSL      R5,R5,#+16
        LSRS     R5,R5,#+16
        LSRS     R0,R5,#+8
        STRB     R0,[SP, #+3]
        STRB     R5,[SP, #+4]
        LDRB     R0,[R6, #+0]
        LSRS     R1,R7,#+16
        EORS     R0,R1,R0
        STRB     R0,[SP, #+5]
        ADDS     R6,R6,#+1
        LDRB     R0,[R6, #+0]
        LSRS     R1,R7,#+8
        EORS     R0,R1,R0
        STRB     R0,[SP, #+6]
        ADDS     R6,R6,#+1
        LDRB     R0,[R6, #+0]
        MOVS     R1,R7
        EORS     R0,R1,R0
        STRB     R0,[SP, #+7]
        ADDS     R6,R6,#+1
        MOV      R1,#+8
        MOVS     R0,SP
        BL       DBGU_Write_Buffer
        MOV      R0,#+0
        POP      {R1-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21:
        DC32     0xfcf3b8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_1:
        DC32     `?<Constant {63, 232, 0, 0, 0}>`

        SECTION `.text`:CODE:NOROOT(2)
        ARM
PM_LegacyRead_uart:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+12
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R0,SP
        LDR      R1,??DataTable32_10
        LDM      R1!,{R2,R3}
        STM      R0!,{R2,R3}
        SUBS     R1,R1,#+8
        SUBS     R0,R0,#+8
        LSL      R5,R5,#+16
        LSRS     R5,R5,#+16
        LSRS     R0,R5,#+8
        STRB     R0,[SP, #+3]
        STRB     R5,[SP, #+4]
        MOV      R7,#+0
        LDR      R0,??DataTable32_11
        LDRB     R0,[R0, #+0]
        BL       Unlock_PM
        BL       DBGU_Read_NULL_RHR
        MOV      R1,#+5
        MOVS     R0,SP
        BL       DBGU_Write_Buffer
        MOV      R0,#+96
        STRB     R0,[SP, #+2]
        MOV      R0,#+38
        STRB     R0,[SP, #+3]
        MOV      R1,#+4
        MOVS     R0,SP
        BL       DBGU_Write_Buffer
        MOV      R1,#+1000
        MOVS     R0,R6
        BL       DBGU_Read_Byte
        MOVS     R7,R0
        ADDS     R6,R6,#+1
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??PM_LegacyRead_uart_0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??PM_LegacyRead_uart_1
??PM_LegacyRead_uart_0:
        MOV      R0,#+37
        STRB     R0,[SP, #+3]
        MOV      R1,#+4
        MOVS     R0,SP
        BL       DBGU_Write_Buffer
        MOV      R1,#+1000
        MOVS     R0,R6
        BL       DBGU_Read_Byte
        MOVS     R7,R0
        ADDS     R6,R6,#+1
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??PM_LegacyRead_uart_2
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??PM_LegacyRead_uart_1
??PM_LegacyRead_uart_2:
        MOV      R0,#+36
        STRB     R0,[SP, #+3]
        MOV      R1,#+4
        MOVS     R0,SP
        BL       DBGU_Write_Buffer
        MOV      R1,#+1000
        MOVS     R0,R6
        BL       DBGU_Read_Byte
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
??PM_LegacyRead_uart_1:
        POP      {R1-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22:
        DC32     0xfcf30d

        SECTION `.text`:CODE:NOROOT(2)
        ARM
CM_SingleWrite_uart:
        PUSH     {R2-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R0,SP
        LDR      R1,??DataTable32_12
        LDM      R1!,{R2,R3}
        STM      R0!,{R2,R3}
        SUBS     R1,R1,#+8
        SUBS     R0,R0,#+8
        LSL      R5,R5,#+16
        LSRS     R5,R5,#+16
        LSRS     R0,R5,#+8
        STRB     R0,[SP, #+3]
        STRB     R5,[SP, #+4]
        LDRB     R0,[R6, #+0]
        STRB     R0,[SP, #+5]
        ADDS     R6,R6,#+1
        LDRB     R0,[R6, #+0]
        STRB     R0,[SP, #+6]
        ADDS     R6,R6,#+1
        MOV      R1,#+7
        MOVS     R0,SP
        BL       DBGU_Write_Buffer
        MOV      R0,#+0
        POP      {R1,R2,R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23:
        DC32     0xfcf388

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_1:
        DC32     `?<Constant {252, 243, 13, 0, 0, 0, 0, 0}>_1`

        SECTION `.text`:CODE:NOROOT(2)
        ARM
CM_LegacyRead_uart:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+12
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R0,SP
        LDR      R1,??DataTable32_13
        LDM      R1!,{R2,R3}
        STM      R0!,{R2,R3}
        SUBS     R1,R1,#+8
        SUBS     R0,R0,#+8
        LSL      R5,R5,#+16
        LSRS     R5,R5,#+16
        LSRS     R0,R5,#+8
        STRB     R0,[SP, #+3]
        STRB     R5,[SP, #+4]
        MOV      R7,#+0
        BL       DBGU_Read_NULL_RHR
        MOV      R1,#+5
        MOVS     R0,SP
        BL       DBGU_Write_Buffer
        MOV      R0,#+96
        STRB     R0,[SP, #+2]
        MOV      R0,#+37
        STRB     R0,[SP, #+3]
        MOV      R1,#+4
        MOVS     R0,SP
        BL       DBGU_Write_Buffer
        MOV      R1,#+1000
        MOVS     R0,R6
        BL       DBGU_Read_Byte
        MOVS     R7,R0
        ADDS     R6,R6,#+1
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??CM_LegacyRead_uart_0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??CM_LegacyRead_uart_1
??CM_LegacyRead_uart_0:
        MOV      R0,#+38
        STRB     R0,[SP, #+3]
        MOV      R1,#+4
        MOVS     R0,SP
        BL       DBGU_Write_Buffer
        MOV      R1,#+1000
        MOVS     R0,R6
        BL       DBGU_Read_Byte
        MOVS     R7,R0
        ADDS     R6,R6,#+1
        MOV      R0,#+0
        STRB     R0,[R6, #+0]
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
??CM_LegacyRead_uart_1:
        POP      {R1-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
HOST_SingleWrite_1_uart:
        PUSH     {R2-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R0,SP
        LDR      R1,??DataTable32_14
        LDM      R1!,{R2,R3}
        STM      R0!,{R2,R3}
        SUBS     R1,R1,#+8
        SUBS     R0,R0,#+8
        STRB     R5,[SP, #+3]
        STRB     R6,[SP, #+4]
        MOV      R1,#+5
        MOVS     R0,SP
        BL       DBGU_Write_Buffer
        MOV      R0,#+0
        POP      {R1,R2,R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25:
        DC32     `?<Constant {252, 243, 55, 0, 0}>_1`

        SECTION `.text`:CODE:NOROOT(2)
        ARM
HOST_SingleWrite_2_uart:
        PUSH     {R2-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R0,SP
        LDR      R1,??DataTable32_15
        LDM      R1!,{R2,R3}
        STM      R0!,{R2,R3}
        SUBS     R1,R1,#+8
        SUBS     R0,R0,#+8
        STRB     R5,[SP, #+3]
        LSL      R6,R6,#+16
        LSRS     R6,R6,#+16
        LSRS     R0,R6,#+8
        STRB     R0,[SP, #+4]
        STRB     R6,[SP, #+5]
        MOV      R1,#+6
        MOVS     R0,SP
        BL       DBGU_Write_Buffer
        MOV      R0,#+0
        POP      {R1,R2,R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
HOST_LegacyRead_uart:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R0,SP
        LDR      R1,??DataTable32_16
        LDR      R2,[R1, #0]
        STR      R2,[R0, #+0]
        STRB     R5,[SP, #+3]
        MOV      R7,#+0
        BL       DBGU_Read_NULL_RHR
        MOV      R1,#+4
        MOVS     R0,SP
        BL       DBGU_Write_Buffer
        MOV      R1,#+1000
        MOVS     R0,R6
        BL       DBGU_Read_Byte
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
DSP_SingleWrite_1_uart:
        PUSH     {R2-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R0,SP
        LDR      R1,??DataTable32_17
        LDM      R1!,{R2,R3}
        STM      R0!,{R2,R3}
        SUBS     R1,R1,#+8
        SUBS     R0,R0,#+8
        STRB     R5,[SP, #+3]
        STRB     R6,[SP, #+4]
        MOV      R1,#+5
        MOVS     R0,SP
        BL       DBGU_Write_Buffer
        MOV      R0,#+0
        POP      {R1,R2,R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
DSP_SingleWrite_2_uart:
        PUSH     {R2-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R0,SP
        LDR      R1,??DataTable32_18
        LDM      R1!,{R2,R3}
        STM      R0!,{R2,R3}
        SUBS     R1,R1,#+8
        SUBS     R0,R0,#+8
        STRB     R5,[SP, #+3]
        LSL      R6,R6,#+16
        LSRS     R6,R6,#+16
        LSRS     R0,R6,#+8
        STRB     R0,[SP, #+4]
        STRB     R6,[SP, #+5]
        MOV      R1,#+6
        MOVS     R0,SP
        BL       DBGU_Write_Buffer
        MOV      R0,#+0
        POP      {R1,R2,R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29:
        DC32     `?<Constant {55, 7, 39}>`

        SECTION `.text`:CODE:NOROOT(2)
        ARM
DSP_LegacyRead_uart:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R0,SP
        LDR      R1,??DataTable32_19
        LDR      R2,[R1, #0]
        STR      R2,[R0, #+0]
        STRB     R5,[SP, #+3]
        MOV      R7,#+0
        BL       DBGU_Read_NULL_RHR
        MOV      R1,#+4
        MOVS     R0,SP
        BL       DBGU_Write_Buffer
        MOV      R0,#+96
        STRB     R0,[SP, #+2]
        MOV      R0,#+75
        STRB     R0,[SP, #+3]
        MOV      R1,#+4
        MOVS     R0,SP
        BL       DBGU_Write_Buffer
        MOV      R1,#+1000
        MOVS     R0,R6
        BL       DBGU_Read_Byte
        MOVS     R7,R0
        ADDS     R6,R6,#+1
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??DSP_LegacyRead_uart_0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??DSP_LegacyRead_uart_1
??DSP_LegacyRead_uart_0:
        MOV      R0,#+74
        STRB     R0,[SP, #+3]
        MOV      R1,#+4
        MOVS     R0,SP
        BL       DBGU_Write_Buffer
        MOV      R1,#+1000
        MOVS     R0,R6
        BL       DBGU_Read_Byte
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
??DSP_LegacyRead_uart_1:
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30:
        DC32     `?<Constant {252, 243, 0, 0, 0}>`

        SECTION `.text`:CODE:NOROOT(2)
        ARM
MEM_Block_LegacyRead_uart:
        PUSH     {R4-R10,LR}
        SUB      SP,SP,#+24
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDR      R8,[SP, #+56]
        MOV      R9,#+0
        MOV      R10,#+0
        ADD      R0,SP,#+8
        LDR      R1,??DataTable32_20
        LDM      R1!,{R2,R3,R12}
        STM      R0!,{R2,R3,R12}
        SUBS     R1,R1,#+12
        SUBS     R0,R0,#+12
        MOVS     R0,SP
        LDR      R1,??DataTable32_21
        LDM      R1!,{R2,R3}
        STM      R0!,{R2,R3}
        SUBS     R1,R1,#+8
        SUBS     R0,R0,#+8
        BL       DBGU_Read_NULL_RHR
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??MEM_Block_LegacyRead_uart_0
        LDR      R0,??DataTable32_11
        LDRB     R0,[R0, #+0]
        BL       Unlock_PM
??MEM_Block_LegacyRead_uart_0:
        MOV      R0,#+0
        MOVS     R10,R0
??MEM_Block_LegacyRead_uart_1:
        ANDS     R10,R10,#0xFF    ;; Zero extend
        ANDS     R7,R7,#0xFF      ;; Zero extend
        CMP      R10,R7
        BCS      ??MEM_Block_LegacyRead_uart_2
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        ADD      R1,SP,#+8
        LDR      R0,[R0, +R1]
        STRB     R0,[SP, #+2]
        LSL      R6,R6,#+16
        LSRS     R6,R6,#+16
        LSRS     R0,R6,#+8
        STRB     R0,[SP, #+3]
        STRB     R6,[SP, #+4]
        ADDS     R6,R6,#+1
        MOV      R1,#+5
        MOVS     R0,SP
        BL       DBGU_Write_Buffer
        MOV      R0,#+96
        STRB     R0,[SP, #+2]
        MOV      R0,#+38
        STRB     R0,[SP, #+3]
        MOV      R1,#+4
        MOVS     R0,SP
        BL       DBGU_Write_Buffer
        MOV      R1,#+1000
        MOVS     R0,R8
        BL       DBGU_Read_Byte
        MOVS     R9,R0
        ADDS     R8,R8,#+1
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??MEM_Block_LegacyRead_uart_3
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??MEM_Block_LegacyRead_uart_4
??MEM_Block_LegacyRead_uart_3:
        MOV      R0,#+37
        STRB     R0,[SP, #+3]
        MOV      R1,#+4
        MOVS     R0,SP
        BL       DBGU_Write_Buffer
        MOV      R1,#+1000
        MOVS     R0,R8
        BL       DBGU_Read_Byte
        MOVS     R9,R0
        ADDS     R8,R8,#+1
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??MEM_Block_LegacyRead_uart_5
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??MEM_Block_LegacyRead_uart_4
??MEM_Block_LegacyRead_uart_5:
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??MEM_Block_LegacyRead_uart_6
        MOV      R0,#+36
        STRB     R0,[SP, #+3]
        MOV      R1,#+4
        MOVS     R0,SP
        BL       DBGU_Write_Buffer
        MOV      R1,#+1000
        MOVS     R0,R8
        BL       DBGU_Read_Byte
        MOVS     R9,R0
        ADDS     R8,R8,#+1
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??MEM_Block_LegacyRead_uart_6
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??MEM_Block_LegacyRead_uart_4
??MEM_Block_LegacyRead_uart_6:
        ADDS     R10,R10,#+1
        B        ??MEM_Block_LegacyRead_uart_1
??MEM_Block_LegacyRead_uart_2:
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
??MEM_Block_LegacyRead_uart_4:
        ADD      SP,SP,#+24       ;; stack cleaning
        POP      {R4-R10,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
MEM_Block_SingleWrite_uart:
        PUSH     {R4-R10,LR}
        SUB      SP,SP,#+24
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDR      R8,[SP, #+56]
        MOV      R9,#+0
        ADD      R0,SP,#+8
        LDR      R1,??DataTable32_22
        LDM      R1!,{R2,R3,R12}
        STM      R0!,{R2,R3,R12}
        SUBS     R1,R1,#+12
        SUBS     R0,R0,#+12
        MOVS     R0,SP
        LDR      R1,??DataTable32_23
        LDM      R1!,{R2,R3}
        STM      R0!,{R2,R3}
        SUBS     R1,R1,#+8
        SUBS     R0,R0,#+8
        MOV      R10,#+7
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        ADD      R1,SP,#+8
        LDR      R0,[R0, +R1]
        STRB     R0,[SP, #+2]
        MOV      R0,#+0
        MOVS     R9,R0
??MEM_Block_SingleWrite_uart_0:
        ANDS     R9,R9,#0xFF      ;; Zero extend
        ANDS     R7,R7,#0xFF      ;; Zero extend
        CMP      R9,R7
        BCS      ??MEM_Block_SingleWrite_uart_1
        LSL      R6,R6,#+16
        LSRS     R6,R6,#+16
        LSRS     R0,R6,#+8
        STRB     R0,[SP, #+3]
        STRB     R6,[SP, #+4]
        LDRB     R0,[R8, #+0]
        STRB     R0,[SP, #+5]
        ADDS     R8,R8,#+1
        LDRB     R0,[R8, #+0]
        STRB     R0,[SP, #+6]
        ADDS     R8,R8,#+1
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??MEM_Block_SingleWrite_uart_2
        LDRB     R0,[R8, #+0]
        STRB     R0,[SP, #+7]
        ADDS     R8,R8,#+1
        MOV      R0,#+8
        MOVS     R10,R0
??MEM_Block_SingleWrite_uart_2:
        ADDS     R6,R6,#+1
        MOVS     R1,R10
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOVS     R0,SP
        BL       DBGU_Write_Buffer
        ADDS     R9,R9,#+1
        B        ??MEM_Block_SingleWrite_uart_0
??MEM_Block_SingleWrite_uart_1:
        MOV      R0,#+0
        ADD      SP,SP,#+24       ;; stack cleaning
        POP      {R4-R10,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32:
        DC32     `?<Constant {59, 13, 43}>`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_1:
        DC32     `?<Constant {252, 243, 104, 0, 0}>`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_2:
        DC32     `?<Constant {252, 243, 106, 0, 0, 0}>`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_3:
        DC32     `?<Constant {252, 243, 96, 0}>`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_4:
        DC32     `?<Constant {252, 243, 88, 0, 0}>`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_5:
        DC32     `?<Constant {252, 243, 90, 0, 0, 0}>`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_6:
        DC32     `?<Constant {252, 243, 86, 0}>`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_7:
        DC32     `?<Constant {252, 243, 59, 0, 0, 0, 0}>_1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_8:
        DC32     `?<Constant {252, 243, 55, 0, 0}>_2`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_9:
        DC32     `?<Constant {252, 243, 13, 0, 0, 0, 0, 0}>_2`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_10:
        DC32     `?<Constant {252, 243, 7, 0, 0}>_1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_11:
        DC32     DSP_PM_Type

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_12:
        DC32     `?<Constant {252, 243, 43, 0, 0, 0, 0}>_1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_13:
        DC32     `?<Constant {252, 243, 39, 0, 0}>_1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_14:
        DC32     `?<Constant {252, 243, 104, 0, 0}>_1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_15:
        DC32     `?<Constant {252, 243, 106, 0, 0, 0}>_1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_16:
        DC32     `?<Constant {252, 243, 96, 0}>_1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_17:
        DC32     `?<Constant {252, 243, 88, 0, 0}>_1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_18:
        DC32     `?<Constant {252, 243, 90, 0, 0, 0}>_1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_19:
        DC32     `?<Constant {252, 243, 86, 0}>_1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_20:
        DC32     `?<Constant {55, 7, 39}>_1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_21:
        DC32     `?<Constant {252, 243, 0, 0, 0}>_1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_22:
        DC32     `?<Constant {55, 7, 39}>_2`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_23:
        DC32     `?<Constant {252, 243, 0, 0, 0, 0, 0, 0}>`

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {252, 243, 59, 0, 0, 0, 0}>`:
        DATA
        DC8 252, 243, 59, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {252, 243, 13, 0, 0, 0, 0, 0}>`:
        DATA
        DC8 252, 243, 13, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {252, 243, 43, 0, 0, 0, 0}>`:
        DATA
        DC8 252, 243, 43, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {252, 243, 55, 0, 0}>`:
        DATA
        DC8 252, 243, 55, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {252, 243, 7, 0, 0}>`:
        DATA
        DC8 252, 243, 7, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {252, 243, 39, 0, 0}>`:
        DATA
        DC8 252, 243, 39, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {0, 28, 0, 0}>`:
        DATA
        DC8 0, 28, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {63, 232, 0, 0}>`:
        DATA
        DC8 63, 232, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {63, 232, 0, 0, 0}>`:
        DATA
        DC8 63, 232, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {252, 243, 13, 0, 0, 0, 0, 0}>_1`:
        DATA
        DC8 252, 243, 13, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {252, 243, 55, 0, 0}>_1`:
        DATA
        DC8 252, 243, 55, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {55, 7, 39}>`:
        DATA
        DC32 55, 7, 39

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {252, 243, 0, 0, 0}>`:
        DATA
        DC8 252, 243, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {59, 13, 43}>`:
        DATA
        DC32 59, 13, 43

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {252, 243, 104, 0, 0}>`:
        DATA
        DC8 252, 243, 104, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {252, 243, 106, 0, 0, 0}>`:
        DATA
        DC8 252, 243, 106, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {252, 243, 96, 0}>`:
        DATA
        DC8 252, 243, 96, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {252, 243, 88, 0, 0}>`:
        DATA
        DC8 252, 243, 88, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {252, 243, 90, 0, 0, 0}>`:
        DATA
        DC8 252, 243, 90, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {252, 243, 86, 0}>`:
        DATA
        DC8 252, 243, 86, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {252, 243, 59, 0, 0, 0, 0}>_1`:
        DATA
        DC8 252, 243, 59, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {252, 243, 55, 0, 0}>_2`:
        DATA
        DC8 252, 243, 55, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {252, 243, 13, 0, 0, 0, 0, 0}>_2`:
        DATA
        DC8 252, 243, 13, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {252, 243, 7, 0, 0}>_1`:
        DATA
        DC8 252, 243, 7, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {252, 243, 43, 0, 0, 0, 0}>_1`:
        DATA
        DC8 252, 243, 43, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {252, 243, 39, 0, 0}>_1`:
        DATA
        DC8 252, 243, 39, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {252, 243, 104, 0, 0}>_1`:
        DATA
        DC8 252, 243, 104, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {252, 243, 106, 0, 0, 0}>_1`:
        DATA
        DC8 252, 243, 106, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {252, 243, 96, 0}>_1`:
        DATA
        DC8 252, 243, 96, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {252, 243, 88, 0, 0}>_1`:
        DATA
        DC8 252, 243, 88, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {252, 243, 90, 0, 0, 0}>_1`:
        DATA
        DC8 252, 243, 90, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {252, 243, 86, 0}>_1`:
        DATA
        DC8 252, 243, 86, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {55, 7, 39}>_1`:
        DATA
        DC32 55, 7, 39

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {252, 243, 0, 0, 0}>_1`:
        DATA
        DC8 252, 243, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {55, 7, 39}>_2`:
        DATA
        DC32 55, 7, 39

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {252, 243, 0, 0, 0, 0, 0, 0}>`:
        DATA
        DC8 252, 243, 0, 0, 0, 0, 0, 0

        END
// 
//     1 byte  in section .data
//   280 bytes in section .rodata
// 8 896 bytes in section .text
// 
// 8 896 bytes of CODE  memory
//   280 bytes of CONST memory
//     1 byte  of DATA  memory
//
//Errors: none
//Warnings: none
