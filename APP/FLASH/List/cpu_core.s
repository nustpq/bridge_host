///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       13/Aug/2014  15:03:07
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\uC-CPU\cpu_core.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\uC-CPU\cpu_core.c" -lcN
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
//        Bench\Bridge_Host_OS\APP\FLASH\List\cpu_core.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN CPU_SR_Restore
        EXTERN CPU_SR_Save
        EXTERN Mem_Clr
        EXTERN Str_Copy
        EXTERN Str_Len

        PUBLIC CPU_CntLeadZeros
        PUBLIC CPU_Init
        PUBLIC CPU_Name
        PUBLIC CPU_NameClr
        PUBLIC CPU_NameGet
        PUBLIC CPU_NameSet


        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute char CPU_Name[16]
CPU_Name:
        DS8 16

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
CPU_CntLeadZerosTbl:
        DATA
        DC8 8, 7, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3
        DC8 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2
        DC8 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1
        DC8 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
        DC8 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
        DC8 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        ARM
CPU_Init:
        PUSH     {R12,LR}
        BL       CPU_NameInit
        POP      {R0,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
CPU_NameClr:
        PUSH     {R4,LR}
        MOV      R4,#+0
        BL       CPU_SR_Save
        MOVS     R4,R0
        MOV      R1,#+16
        LDR      R0,??DataTable3
        BL       Mem_Clr
        MOVS     R0,R4
        BL       CPU_SR_Restore
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
CPU_NameGet:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R6,#+0
        CMP      R4,#+0
        BNE      ??CPU_NameGet_0
        MOV      R0,#+10
        STRH     R0,[R5, #+0]
        B        ??CPU_NameGet_1
??CPU_NameGet_0:
        BL       CPU_SR_Save
        MOVS     R6,R0
        LDR      R1,??DataTable3
        MOVS     R0,R4
        BL       Str_Copy
        MOVS     R0,R6
        BL       CPU_SR_Restore
        MOV      R0,#+0
        STRH     R0,[R5, #+0]
??CPU_NameGet_1:
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
CPU_NameSet:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R7,#+0
        CMP      R4,#+0
        BNE      ??CPU_NameSet_0
        MOV      R0,#+10
        STRH     R0,[R5, #+0]
        B        ??CPU_NameSet_1
??CPU_NameSet_0:
        MOVS     R0,R4
        BL       Str_Len
        MOVS     R6,R0
        CMP      R6,#+16
        BCS      ??CPU_NameSet_2
        BL       CPU_SR_Save
        MOVS     R7,R0
        MOVS     R1,R4
        LDR      R0,??DataTable3
        BL       Str_Copy
        MOVS     R0,R7
        BL       CPU_SR_Restore
        MOV      R0,#+0
        STRH     R0,[R5, #+0]
        B        ??CPU_NameSet_3
??CPU_NameSet_2:
        MOV      R0,#+100
        STRH     R0,[R5, #+0]
??CPU_NameSet_3:
??CPU_NameSet_1:
        POP      {R0,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
CPU_CntLeadZeros:
        PUSH     {R4,R5,LR}
        MOVS     R1,R0
        CMP      R1,#+65536
        BCC      ??CPU_CntLeadZeros_0
        CMP      R1,#+16777216
        BCC      ??CPU_CntLeadZeros_1
        MOV      R4,#+24
        MOVS     R12,R4
        MOV      R4,#+0
        MOVS     R2,R4
        B        ??CPU_CntLeadZeros_2
??CPU_CntLeadZeros_1:
        MOV      R4,#+16
        MOVS     R12,R4
        MOV      R4,#+8
        MOVS     R2,R4
        B        ??CPU_CntLeadZeros_2
??CPU_CntLeadZeros_0:
        CMP      R1,#+256
        BCC      ??CPU_CntLeadZeros_3
        MOV      R4,#+8
        MOVS     R12,R4
        MOV      R4,#+16
        MOVS     R2,R4
        B        ??CPU_CntLeadZeros_2
??CPU_CntLeadZeros_3:
        MOV      R4,#+0
        MOVS     R12,R4
        MOV      R4,#+24
        MOVS     R2,R4
??CPU_CntLeadZeros_2:
        LSRS     R4,R1,R12
        MOVS     LR,R4
        MOVS     R4,LR
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LDR      R5,??DataTable3_1
        LDRB     R4,[R4, +R5]
        MOVS     R3,R4
        ADDS     R4,R3,R2
        MOVS     R0,R4
        POP      {R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     CPU_Name

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     CPU_CntLeadZerosTbl

        SECTION `.text`:CODE:NOROOT(2)
        ARM
CPU_NameInit:
        PUSH     {R12,LR}
        BL       CPU_NameClr
        POP      {R0,LR}
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
//  16 bytes in section .bss
// 256 bytes in section .rodata
// 428 bytes in section .text
// 
// 428 bytes of CODE  memory
// 256 bytes of CONST memory
//  16 bytes of DATA  memory
//
//Errors: none
//Warnings: none
