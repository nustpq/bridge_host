///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       21/Jul/2014  19:24:39
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\task_cmd_parse.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\task_cmd_parse.c"
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
//        Bench\Bridge_Host_OS\APP\FLASH\List\task_cmd_parse.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN EMB_Data_Check
        EXTERN EMB_Data_Parse
        EXTERN Init_EMB_BUF
        EXTERN OSMemPut
        EXTERN OSQPend
        EXTERN Send_DACK
        EXTERN pMEM_Part_MsgUART

        PUBLIC App_TaskCMDParse
        PUBLIC EVENT_MsgQ_Noah2CMDParse
        PUBLIC Emb_Buf_Cmd
        PUBLIC Emb_Buf_Data
        PUBLIC MsgQ_Noah2CMDParse


        SECTION `.bss`:DATA:REORDER:NOROOT(2)
MsgQ_Noah2CMDParse:
        DS8 40

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
EVENT_MsgQ_Noah2CMDParse:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Emb_Buf_Cmd:
        DS8 3088

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Emb_Buf_Data:
        DS8 3088

        SECTION `.text`:CODE:NOROOT(2)
        ARM
App_TaskCMDParse:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOV      R0,#+0
        MOVS     R5,R0
        LDR      R0,??App_TaskCMDParse_0
        MOVS     R7,R0
        MOVS     R0,R7
        BL       Init_EMB_BUF
        LDR      R0,??App_TaskCMDParse_0+0x4
        MOVS     R7,R0
        MOVS     R0,R7
        BL       Init_EMB_BUF
??App_TaskCMDParse_1:
        MOVS     R2,SP
        MOV      R1,#+0
        LDR      R0,??App_TaskCMDParse_0+0x8
        LDR      R0,[R0, #+0]
        BL       OSQPend
        MOVS     R5,R0
        CMP      R5,#+0
        BEQ      ??App_TaskCMDParse_1
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BNE      ??App_TaskCMDParse_1
        MOVS     R6,R5
        MOV      R2,#+0
        MOVS     R1,R7
        MOVS     R0,R6
        BL       EMB_Data_Check
        STRB     R0,[SP, #+0]
        MOVS     R1,R5
        LDR      R0,??App_TaskCMDParse_0+0xC
        LDR      R0,[R0, #+0]
        BL       OSMemPut
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BNE      ??App_TaskCMDParse_2
        LDRB     R0,[R7, #+3084]
        CMP      R0,#+0
        BEQ      ??App_TaskCMDParse_1
        MOVS     R0,R7
        BL       EMB_Data_Parse
        STRB     R0,[SP, #+0]
        B        ??App_TaskCMDParse_1
??App_TaskCMDParse_2:
        LDRB     R0,[SP, #+0]
        BL       Send_DACK
        MOVS     R0,R7
        BL       Init_EMB_BUF
        B        ??App_TaskCMDParse_1
        DATA
??App_TaskCMDParse_0:
        DC32     Emb_Buf_Data
        DC32     Emb_Buf_Cmd
        DC32     EVENT_MsgQ_Noah2CMDParse
        DC32     pMEM_Part_MsgUART

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
// 6 220 bytes in section .bss
//   208 bytes in section .text
// 
//   208 bytes of CODE memory
// 6 220 bytes of DATA memory
//
//Errors: none
//Warnings: none
