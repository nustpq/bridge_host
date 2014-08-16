///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       13/Aug/2014  15:03:14
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\uC-Probe\Target\Communication\Generic\RS-232\OS\uCOS-II\probe_rs232_os.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\uC-Probe\Target\Communication\Generic\RS-232\OS\uCOS-II\probe_rs232_os.c"
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
//        Bench\Bridge_Host_OS\APP\FLASH\List\probe_rs232_os.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN OSEventNameSet
        EXTERN OSSemCreate
        EXTERN OSSemPend
        EXTERN OSSemPost
        EXTERN OSTaskCreateExt
        EXTERN OSTaskNameSet
        EXTERN ProbeRS232_Task

        PUBLIC ProbeRS232_OS_Init
        PUBLIC ProbeRS232_OS_Pend
        PUBLIC ProbeRS232_OS_Post


        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ProbeRS232_OS_TaskStk:
        DS8 512

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ProbeRS232_OS_Sem:
        DS8 4

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeRS232_OS_Init:
        PUSH     {LR}
        SUB      SP,SP,#+28
        MOV      R0,#+0
        BL       OSSemCreate
        LDR      R1,??DataTable2
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable2
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??ProbeRS232_OS_Init_0
        MOV      R0,#+0
        B        ??ProbeRS232_OS_Init_1
??ProbeRS232_OS_Init_0:
        ADD      R2,SP,#+20
        LDR      R1,??DataTable2_1
        LDR      R0,??DataTable2
        LDR      R0,[R0, #+0]
        BL       OSEventNameSet
        MOV      R0,#+3
        STR      R0,[SP, #+16]
        MOV      R0,#+0
        STR      R0,[SP, #+12]
        MOV      R0,#+128
        STR      R0,[SP, #+8]
        LDR      R0,??DataTable2_2
        STR      R0,[SP, #+4]
        MOV      R0,#+12
        STR      R0,[SP, #+0]
        MOV      R3,#+12
        LDR      R2,??DataTable2_3
        MOV      R1,#+0
        ADR      R0,ProbeRS232_OS_Task
        BL       OSTaskCreateExt
        STRB     R0,[SP, #+20]
        LDRB     R0,[SP, #+20]
        CMP      R0,#+0
        BEQ      ??ProbeRS232_OS_Init_2
        MOV      R0,#+0
        B        ??ProbeRS232_OS_Init_1
??ProbeRS232_OS_Init_2:
        ADD      R2,SP,#+20
        LDR      R1,??DataTable2_4
        MOV      R0,#+12
        BL       OSTaskNameSet
        MOV      R0,#+1
??ProbeRS232_OS_Init_1:
        ADD      SP,SP,#+28       ;; stack cleaning
        POP      {LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeRS232_OS_Pend:
        PUSH     {R12,LR}
        MOVS     R2,SP
        MOV      R1,#+0
        LDR      R0,??DataTable2
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        POP      {R0,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeRS232_OS_Post:
        PUSH     {R12,LR}
        LDR      R0,??DataTable2
        LDR      R0,[R0, #+0]
        BL       OSSemPost
        POP      {R0,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     ProbeRS232_OS_Sem

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     `?<Constant "Probe RS-232">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     ProbeRS232_OS_TaskStk

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     ProbeRS232_OS_TaskStk+0x1FC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     `?<Constant "Probe RS232">`

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeRS232_OS_Task:
        PUSH     {R0,LR}
        MOVS     R0,SP
        BL       ProbeRS232_Task
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

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Probe RS-232">`:
        DATA
        DC8 "Probe RS-232"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Probe RS232">`:
        DATA
        DC8 "Probe RS232"

        END
// 
// 516 bytes in section .bss
//  28 bytes in section .rodata
// 280 bytes in section .text
// 
// 280 bytes of CODE  memory
//  28 bytes of CONST memory
// 516 bytes of DATA  memory
//
//Errors: none
//Warnings: none
