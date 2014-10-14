///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       05/Sep/2014  09:57:04
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Driver\led.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Driver\led.c" -lcN
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
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\led.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN PIO_Clear
        EXTERN PIO_Configure
        EXTERN PIO_GetOutputDataStatus
        EXTERN PIO_Set

        PUBLIC BUZZER_MUTE
        PUBLIC Buzzer_OnOff
        PUBLIC Buzzer_Toggle
        PUBLIC ChannelSet
        PUBLIC IOGetKey
        PUBLIC IOInit
        PUBLIC LED_Clear
        PUBLIC LED_Configure
        PUBLIC LED_Set
        PUBLIC LED_Toggle


        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
pinsLeds:
        DATA
        DC32 67108864, 0FFFFF400H
        DC8 2, 4, 0, 0
        DC32 134217728, 0FFFFF400H
        DC8 2, 4, 0, 0
        DC32 4194304, 0FFFFF400H
        DC8 2, 4, 0, 0
        DC32 8388608, 0FFFFF400H
        DC8 2, 4, 0, 0
        DC32 16777216, 0FFFFF400H
        DC8 2, 4, 0, 0
        DC32 33554432, 0FFFFF400H
        DC8 2, 4, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
numLeds:
        DATA
        DC32 6

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
pinsBuzzer:
        DATA
        DC32 16, 0FFFFF400H
        DC8 2, 4, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        ARM
LED_Configure:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR      R0,??DataTable5
        LDR      R0,[R0, #+0]
        CMP      R4,R0
        BCC      ??LED_Configure_0
        MOV      R0,#+0
        B        ??LED_Configure_1
??LED_Configure_0:
        MOV      R1,#+1
        ADD      R0,R4,R4, LSL #+1
        LDR      R2,??DataTable5_1
        ADDS     R0,R2,R0, LSL #+2
        BL       PIO_Configure
??LED_Configure_1:
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
LED_Set:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR      R0,??DataTable5
        LDR      R0,[R0, #+0]
        CMP      R4,R0
        BCC      ??LED_Set_0
        MOV      R0,#+0
        B        ??LED_Set_1
??LED_Set_0:
        ADD      R0,R4,R4, LSL #+1
        LDR      R1,??DataTable5_1
        ADDS     R0,R1,R0, LSL #+2
        LDRB     R0,[R0, #+9]
        CMP      R0,#+3
        BNE      ??LED_Set_2
        ADD      R0,R4,R4, LSL #+1
        LDR      R1,??DataTable5_1
        ADDS     R0,R1,R0, LSL #+2
        BL       PIO_Set
        B        ??LED_Set_3
??LED_Set_2:
        ADD      R0,R4,R4, LSL #+1
        LDR      R1,??DataTable5_1
        ADDS     R0,R1,R0, LSL #+2
        BL       PIO_Clear
??LED_Set_3:
        MOV      R0,#+1
??LED_Set_1:
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
LED_Clear:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR      R0,??DataTable5
        LDR      R0,[R0, #+0]
        CMP      R4,R0
        BCC      ??LED_Clear_0
        MOV      R0,#+0
        B        ??LED_Clear_1
??LED_Clear_0:
        ADD      R0,R4,R4, LSL #+1
        LDR      R1,??DataTable5_1
        ADDS     R0,R1,R0, LSL #+2
        LDRB     R0,[R0, #+9]
        CMP      R0,#+3
        BNE      ??LED_Clear_2
        ADD      R0,R4,R4, LSL #+1
        LDR      R1,??DataTable5_1
        ADDS     R0,R1,R0, LSL #+2
        BL       PIO_Clear
        B        ??LED_Clear_3
??LED_Clear_2:
        ADD      R0,R4,R4, LSL #+1
        LDR      R1,??DataTable5_1
        ADDS     R0,R1,R0, LSL #+2
        BL       PIO_Set
??LED_Clear_3:
        MOV      R0,#+1
??LED_Clear_1:
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
LED_Toggle:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR      R0,??DataTable5
        LDR      R0,[R0, #+0]
        CMP      R4,R0
        BCC      ??LED_Toggle_0
        MOV      R0,#+0
        B        ??LED_Toggle_1
??LED_Toggle_0:
        ADD      R0,R4,R4, LSL #+1
        LDR      R1,??DataTable5_1
        ADDS     R0,R1,R0, LSL #+2
        BL       PIO_GetOutputDataStatus
        CMP      R0,#+0
        BEQ      ??LED_Toggle_2
        ADD      R0,R4,R4, LSL #+1
        LDR      R1,??DataTable5_1
        ADDS     R0,R1,R0, LSL #+2
        BL       PIO_Clear
        B        ??LED_Toggle_3
??LED_Toggle_2:
        ADD      R0,R4,R4, LSL #+1
        LDR      R1,??DataTable5_1
        ADDS     R0,R1,R0, LSL #+2
        BL       PIO_Set
??LED_Toggle_3:
        MOV      R0,#+1
??LED_Toggle_1:
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ChannelSet:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
IOInit:
        MOV      R0,#+0
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
IOGetKey:
        MOVS     R1,R0
        MVN      R0,#+0
        BX       LR               ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
BUZZER_MUTE:
        DS8 1

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Buzzer_OnOff:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR      R0,??DataTable5_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??Buzzer_OnOff_0
??Buzzer_OnOff_1:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??Buzzer_OnOff_2
        LDR      R0,??DataTable5_3
        BL       PIO_Clear
        B        ??Buzzer_OnOff_3
??Buzzer_OnOff_2:
        LDR      R0,??DataTable5_3
        BL       PIO_Set
??Buzzer_OnOff_3:
??Buzzer_OnOff_0:
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Buzzer_Toggle:
        PUSH     {R12,LR}
        LDR      R0,??DataTable5_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??Buzzer_Toggle_0
??Buzzer_Toggle_1:
        LDR      R0,??DataTable5_3
        BL       PIO_GetOutputDataStatus
        CMP      R0,#+0
        BEQ      ??Buzzer_Toggle_2
        LDR      R0,??DataTable5_3
        BL       PIO_Clear
        B        ??Buzzer_Toggle_3
??Buzzer_Toggle_2:
        LDR      R0,??DataTable5_3
        BL       PIO_Set
??Buzzer_Toggle_3:
??Buzzer_Toggle_0:
        POP      {R0,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     numLeds

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     pinsLeds

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     BUZZER_MUTE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     pinsBuzzer

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
//   1 byte  in section .bss
//  88 bytes in section .rodata
// 544 bytes in section .text
// 
// 544 bytes of CODE  memory
//  88 bytes of CONST memory
//   1 byte  of DATA  memory
//
//Errors: none
//Warnings: none
