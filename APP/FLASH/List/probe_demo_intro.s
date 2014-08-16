///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       13/Aug/2014  15:03:14
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\uC-Probe\Target\Demos\Intro\Source\probe_demo_intro.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\uC-Probe\Target\Demos\Intro\Source\probe_demo_intro.c"
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
//        Bench\Bridge_Host_OS\APP\FLASH\List\probe_demo_intro.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN OSTaskCreateExt
        EXTERN OSTaskNameSet
        EXTERN OSTimeDlyHMSM

        PUBLIC ProbeDemoIntro_Init


        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ProbeDemoIntro_Dial:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
ProbeDemoIntro_LED_Sel:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
ProbeDemoIntro_LED1:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
ProbeDemoIntro_LED2:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
ProbeDemoIntro_LED3:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ProbeDemoIntro_PicIx:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ProbeDemoIntro_TaskLED_Stk:
        DS8 1024

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeDemoIntro_Init:
        PUSH     {LR}
        SUB      SP,SP,#+28
        LDR      R0,??DataTable1
        LDR      R0,??DataTable1_1
        LDR      R0,??DataTable1_2
        LDR      R0,??DataTable1_3
        LDR      R0,??DataTable1_4
        LDR      R0,??DataTable1_5
        MOV      R0,#+3
        STR      R0,[SP, #+16]
        MOV      R0,#+0
        STR      R0,[SP, #+12]
        MOV      R0,#+256
        STR      R0,[SP, #+8]
        LDR      R0,??DataTable1_6
        STR      R0,[SP, #+4]
        MOV      R0,#+38
        STR      R0,[SP, #+0]
        MOV      R3,#+38
        LDR      R2,??DataTable1_7
        MOV      R1,#+0
        ADR      R0,ProbeDemoIntro_TaskLED
        BL       OSTaskCreateExt
        STRB     R0,[SP, #+20]
        ADD      R2,SP,#+20
        LDR      R1,??DataTable1_8
        MOV      R0,#+38
        BL       OSTaskNameSet
        ADD      SP,SP,#+28       ;; stack cleaning
        POP      {LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeDemoIntro_TaskLED:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOV      R0,#+0
        MOVS     R5,R0
        MOV      R0,#+0
        LDR      R1,??DataTable1_2
        STRB     R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable1_3
        STRB     R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable1_4
        STRB     R0,[R1, #+0]
??ProbeDemoIntro_TaskLED_0:
        LDR      R0,??DataTable1_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??ProbeDemoIntro_TaskLED_1
        MOV      R0,#+0
        LDR      R1,??DataTable1_2
        STRB     R0,[R1, #+0]
        MOV      R0,#+1
        LDR      R1,??DataTable1_3
        STRB     R0,[R1, #+0]
        B        ??ProbeDemoIntro_TaskLED_2
??ProbeDemoIntro_TaskLED_1:
        MOV      R0,#+1
        LDR      R1,??DataTable1_2
        STRB     R0,[R1, #+0]
        MOV      R0,#+0
        LDR      R1,??DataTable1_3
        STRB     R0,[R1, #+0]
??ProbeDemoIntro_TaskLED_2:
        CMP      R5,#+101
        BCC      ??ProbeDemoIntro_TaskLED_3
        LDR      R0,??DataTable1_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??ProbeDemoIntro_TaskLED_4
        MOV      R0,#+1
        LDR      R1,??DataTable1_4
        STRB     R0,[R1, #+0]
        B        ??ProbeDemoIntro_TaskLED_5
??ProbeDemoIntro_TaskLED_4:
        MOV      R0,#+0
        LDR      R1,??DataTable1_4
        STRB     R0,[R1, #+0]
??ProbeDemoIntro_TaskLED_5:
        MOV      R0,#+0
        MOVS     R5,R0
        B        ??ProbeDemoIntro_TaskLED_6
??ProbeDemoIntro_TaskLED_3:
        ADDS     R5,R5,#+1
??ProbeDemoIntro_TaskLED_6:
        MOV      R3,#+10
        MOV      R2,#+0
        MOV      R1,#+0
        MOV      R0,#+0
        BL       OSTimeDlyHMSM
        B        ??ProbeDemoIntro_TaskLED_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     ProbeDemoIntro_Dial

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     ProbeDemoIntro_LED_Sel

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     ProbeDemoIntro_LED1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     ProbeDemoIntro_LED2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     ProbeDemoIntro_LED3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     ProbeDemoIntro_PicIx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     ProbeDemoIntro_TaskLED_Stk

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     ProbeDemoIntro_TaskLED_Stk+0x3FC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DC32     `?<Constant "Probe Demo Intro">`

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Probe Demo Intro">`:
        DATA
        DC8 "Probe Demo Intro"
        DC8 0, 0, 0

        END
// 
// 1 036 bytes in section .bss
//    20 bytes in section .rodata
//   372 bytes in section .text
// 
//   372 bytes of CODE  memory
//    20 bytes of CONST memory
// 1 036 bytes of DATA  memory
//
//Errors: none
//Warnings: none
