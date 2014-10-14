///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       05/Sep/2014  09:36:50
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\uCOS-II\Ports\ARM\Generic\IAR\os_dcc.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\uCOS-II\Ports\ARM\Generic\IAR\os_dcc.c" -lcN
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
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\os_dcc.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN OS_CPU_SR_Restore
        EXTERN OS_CPU_SR_Save

        PUBLIC OSDCC_Handler


        SECTION `.bss`:DATA:REORDER:NOROOT(2)
OSDCC_Cmd:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
OSDCC_Addr:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
OSDCC_ItemCnt:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
OSDCC_Data:
        DS8 4

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSDCC_ReadCtrl:
        mrc  P14,0,R0,C0,C0
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSDCC_Read:
        mrc  P14,0,R0,C1,C0
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSDCC_Write:
        mcr  P14,0,R0,C1,C0
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSDCC_Handler:
        PUSH     {R3-R5,LR}
        MOV      R5,#+0
        BL       OS_CPU_SR_Save
        MOVS     R5,R0
        BL       OSDCC_ReadCtrl
        TST      R0,#0x1
        BEQ      ??OSDCC_Handler_0
        BL       OSDCC_Read
        MOVS     R4,R0
        TST      R4,#0x1
        BEQ      ??OSDCC_Handler_1
        LDR      R0,??DataTable0
        STR      R4,[R0, #+0]
        LDR      R0,??DataTable0
        LDR      R0,[R0, #+0]
        TST      R0,#0x80000000
        BEQ      ??OSDCC_Handler_2
        LDR      R0,??DataTable0_1
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR      R1,??DataTable0_1
        STR      R0,[R1, #+0]
??OSDCC_Handler_2:
        LDR      R0,??DataTable0
        LDR      R0,[R0, #+0]
        TST      R0,#0xF000000
        BEQ      ??OSDCC_Handler_3
        LDR      R0,??DataTable0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+14
        LSRS     R0,R0,#+16
        LDR      R1,??DataTable0_2
        STR      R0,[R1, #+0]
        B        ??OSDCC_Handler_4
??OSDCC_Handler_3:
        LDR      R0,??DataTable0
        LDR      R0,[R0, #+0]
        TST      R0,#0x10000000
        BEQ      ??OSDCC_Handler_5
        LDR      R0,??DataTable0_3
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable0
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+14
        LSRS     R1,R1,#+16
        ORRS     R0,R0,R1, LSL #+16
        LDR      R1,??DataTable0_3
        STR      R0,[R1, #+0]
        B        ??OSDCC_Handler_6
??OSDCC_Handler_5:
        LDR      R0,??DataTable0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+14
        LSRS     R0,R0,#+16
        LDR      R1,??DataTable0_3
        STR      R0,[R1, #+0]
??OSDCC_Handler_6:
        LDR      R0,??DataTable0
        LDR      R0,[R0, #+0]
        TST      R0,#0x40000000
        BEQ      ??OSDCC_Handler_7
        LDR      R0,??DataTable0_3
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable0_1
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+0]
        LDR      R0,??DataTable0_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable0_1
        STR      R0,[R1, #+0]
??OSDCC_Handler_7:
        LDR      R0,??DataTable0
        LDR      R0,[R0, #+0]
        TST      R0,#0x20000000
        BEQ      ??OSDCC_Handler_8
        LDR      R0,??DataTable0_3
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable0_1
        LDR      R1,[R1, #+0]
        STRH     R0,[R1, #+0]
        LDR      R0,??DataTable0_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+2
        LDR      R1,??DataTable0_1
        STR      R0,[R1, #+0]
??OSDCC_Handler_8:
        LDR      R0,??DataTable0
        LDR      R0,[R0, #+0]
        TST      R0,#0x10000000
        BEQ      ??OSDCC_Handler_4
        LDR      R0,??DataTable0_3
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable0_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable0_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+4
        LDR      R1,??DataTable0_1
        STR      R0,[R1, #+0]
??OSDCC_Handler_4:
        MOVS     R0,R5
        BL       OS_CPU_SR_Restore
        B        ??OSDCC_Handler_9
??OSDCC_Handler_1:
        LDR      R0,??DataTable0_1
        STR      R4,[R0, #+0]
??OSDCC_Handler_0:
        LDR      R0,??DataTable0_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSDCC_Handler_10
        BL       OSDCC_ReadCtrl
        TST      R0,#0x2
        BNE      ??OSDCC_Handler_10
        LDR      R0,??DataTable0_4  ;; 0x91ca0077
        MOVS     R4,R0
        LDR      R0,??DataTable0
        LDR      R0,[R0, #+0]
        TST      R0,#0x4000000
        BEQ      ??OSDCC_Handler_11
        LDR      R0,??DataTable0_1
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+0]
        MOVS     R4,R0
        LDR      R0,??DataTable0_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable0_1
        STR      R0,[R1, #+0]
??OSDCC_Handler_11:
        LDR      R0,??DataTable0
        LDR      R0,[R0, #+0]
        TST      R0,#0x2000000
        BEQ      ??OSDCC_Handler_12
        LDR      R0,??DataTable0_1
        LDR      R0,[R0, #+0]
        LDRH     R0,[R0, #+0]
        MOVS     R4,R0
        LDR      R0,??DataTable0_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+2
        LDR      R1,??DataTable0_1
        STR      R0,[R1, #+0]
??OSDCC_Handler_12:
        LDR      R0,??DataTable0
        LDR      R0,[R0, #+0]
        TST      R0,#0x1000000
        BEQ      ??OSDCC_Handler_13
        LDR      R0,??DataTable0_1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+0]
        MOVS     R4,R0
        LDR      R0,??DataTable0_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+4
        LDR      R1,??DataTable0_1
        STR      R0,[R1, #+0]
??OSDCC_Handler_13:
        MOVS     R0,R4
        BL       OSDCC_Write
        LDR      R0,??DataTable0_2
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR      R1,??DataTable0_2
        STR      R0,[R1, #+0]
??OSDCC_Handler_10:
        MOVS     R0,R5
        BL       OS_CPU_SR_Restore
??OSDCC_Handler_9:
        POP      {R0,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     OSDCC_Cmd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_1:
        DC32     OSDCC_Addr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_2:
        DC32     OSDCC_ItemCnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_3:
        DC32     OSDCC_Data

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_4:
        DC32     0x91ca0077

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//  16 bytes in section .bss
// 680 bytes in section .text
// 
// 680 bytes of CODE memory
//  16 bytes of DATA memory
//
//Errors: none
//Warnings: none
