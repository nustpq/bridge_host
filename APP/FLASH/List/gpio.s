///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       22/May/2014  14:14:49
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Driver\gpio.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Driver\gpio.c" -lcN
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
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\gpio.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_WRITE 0x1
        #define SHF_EXECINSTR 0x4

        EXTERN OSTimeDly
        EXTERN PIO_Clear
        EXTERN PIO_Configure
        EXTERN PIO_Get
        EXTERN PIO_Set

        PUBLIC Disable_FPGA
        PUBLIC Enable_FPGA
        PUBLIC GPIODIR_FLOAT
        PUBLIC GPIOPIN_Read
        PUBLIC GPIOPIN_Set
        PUBLIC GPIOPIN_Set_Session
        PUBLIC GPIO_Init
        PUBLIC Get_Port_Detect
        PUBLIC Get_Switches
        PUBLIC GpioDir
        PUBLIC GpioPin
        PUBLIC GpioPort
        PUBLIC Init_FPGA
        PUBLIC MonitCount
        PUBLIC Pin_Reset_Audio_MCU
        PUBLIC Pin_Reset_FM36
        PUBLIC RecordGpio
        PUBLIC Ruler_PowerOnOff
        PUBLIC Ruler_Power_Switch
        PUBLIC UART1_Mixer
        PUBLIC UART2_Mixer
        PUBLIC setdir


        SECTION `.bss`:DATA:REORDER:NOROOT(2)
GpioPin:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
GpioDir:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
GpioPort:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
MonitCount:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
setdir:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(2)
pinsGpios:
        DATA
        DC32 32, 0FFFFF400H
        DC8 2, 3, 0, 0
        DC32 64, 0FFFFF400H
        DC8 2, 3, 0, 0
        DC32 2048, 0FFFFF400H
        DC8 2, 3, 0, 0
        DC32 4096, 0FFFFF400H
        DC8 2, 3, 0, 0
        DC32 16777216, 0FFFFF600H
        DC8 3, 3, 1, 0
        DC32 33554432, 0FFFFF600H
        DC8 3, 3, 1, 0
        DC32 67108864, 0FFFFF600H
        DC8 3, 4, 1, 0
        DC32 134217728, 0FFFFF600H
        DC8 3, 4, 1, 0
        DC32 268435456, 0FFFFF600H
        DC8 3, 4, 1, 0
        DC32 262144, 0FFFFF400H
        DC8 2, 2, 1, 0
        DC32 524288, 0FFFFF400H
        DC8 2, 2, 1, 0
        DC32 1048576, 0FFFFF400H
        DC8 2, 2, 1, 0
        DC32 2097152, 0FFFFF400H
        DC8 2, 2, 1, 0
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
        DC32 16, 0FFFFF400H
        DC8 2, 4, 0, 0
        DC32 16384, 0FFFFF400H
        DC8 2, 4, 0, 0
        DC32 65536, 0FFFFF400H
        DC8 2, 4, 0, 0
        DC32 131072, 0FFFFF400H
        DC8 2, 4, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
pinsSwitches:
        DATA
        DC32 268435456, 0FFFFF400H
        DC8 2, 2, 0, 0
        DC32 536870912, 0FFFFF400H
        DC8 2, 2, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
numGpios:
        DATA
        DC32 23

        SECTION `.text`:CODE:NOROOT(2)
        ARM
GPIO_Init:
        PUSH     {R12,LR}
        MOV      R1,#+2
        LDR      R0,??DataTable12
        BL       PIO_Configure
        MOV      R1,#+23
        LDR      R0,??DataTable12_1
        BL       PIO_Configure
        POP      {R0,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
GPIODIR_FLOAT:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOV      R0,#+0
        MOVS     R5,R0
??GPIODIR_FLOAT_0:
        LDR      R0,??DataTable12_2
        LDR      R0,[R0, #+0]
        CMP      R5,R0
        BCS      ??GPIODIR_FLOAT_1
        MOV      R0,#+1
        TST      R0,R4, LSR R5
        BEQ      ??GPIODIR_FLOAT_2
        MOV      R0,#+0
        ADD      R1,R5,R5, LSL #+1
        LDR      R2,??DataTable12_1
        ADDS     R1,R2,R1, LSL #+2
        STRB     R0,[R1, #+10]
        MOV      R0,#+2
        ADD      R1,R5,R5, LSL #+1
        LDR      R2,??DataTable12_1
        ADDS     R1,R2,R1, LSL #+2
        STRB     R0,[R1, #+9]
        MOV      R1,#+1
        ADD      R0,R5,R5, LSL #+1
        LDR      R2,??DataTable12_1
        ADDS     R0,R2,R0, LSL #+2
        BL       PIO_Configure
??GPIODIR_FLOAT_2:
        ADDS     R5,R5,#+1
        B        ??GPIODIR_FLOAT_0
??GPIODIR_FLOAT_1:
        POP      {R0,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
GPIOPIN_Set:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R0,#+1
        ADD      R1,R4,R4, LSL #+1
        LDR      R2,??DataTable12_1
        ADDS     R1,R2,R1, LSL #+2
        STRB     R0,[R1, #+10]
        TST      R5,#0x1
        BEQ      ??GPIOPIN_Set_0
        ADD      R0,R4,R4, LSL #+1
        LDR      R1,??DataTable12_1
        ADDS     R0,R1,R0, LSL #+2
        BL       PIO_Set
        B        ??GPIOPIN_Set_1
??GPIOPIN_Set_0:
        ADD      R0,R4,R4, LSL #+1
        LDR      R1,??DataTable12_1
        ADDS     R0,R1,R0, LSL #+2
        BL       PIO_Clear
??GPIOPIN_Set_1:
        POP      {R0,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        ARM
GPIOPIN_Set_Session:
        PUSH     {LR}
        MOV      R3,#+0
        MOVS     R2,R3
??GPIOPIN_Set_Session_0:
        CMP      R2,#+28
        BCS      ??GPIOPIN_Set_Session_1
        MOV      R3,#+1
        TST      R3,R0, LSR R2
        BEQ      ??GPIOPIN_Set_Session_2
        MOV      R3,#+1
        TST      R3,R1, LSR R2
        BEQ      ??GPIOPIN_Set_Session_3
        ADD      R3,R2,R2, LSL #+1
        LDR      R12,??GPIOPIN_Set_Session_4
        LDR      R3,[R12, +R3, LSL #+2]
        ADD      R12,R2,R2, LSL #+1
        LDR      LR,??GPIOPIN_Set_Session_4
        ADDS     R12,LR,R12, LSL #+2
        LDR      R12,[R12, #+4]
        STR      R3,[R12, #+48]
        B        ??GPIOPIN_Set_Session_2
??GPIOPIN_Set_Session_3:
        ADD      R3,R2,R2, LSL #+1
        LDR      R12,??GPIOPIN_Set_Session_4
        LDR      R3,[R12, +R3, LSL #+2]
        ADD      R12,R2,R2, LSL #+1
        LDR      LR,??GPIOPIN_Set_Session_4
        ADDS     R12,LR,R12, LSL #+2
        LDR      R12,[R12, #+4]
        STR      R3,[R12, #+52]
??GPIOPIN_Set_Session_2:
        ADDS     R2,R2,#+1
        B        ??GPIOPIN_Set_Session_0
??GPIOPIN_Set_Session_1:
        POP      {LR}
        BX       LR               ;; return
        DATA
??GPIOPIN_Set_Session_4:
        DC32     pinsGpios

        SECTION `.text`:CODE:NOROOT(2)
        ARM
GPIOPIN_Read:
        MOV      R0,#+0
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
RecordGpio:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Ruler_Power_Switch:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??Ruler_Power_Switch_0
        MOV      R0,#+3
        B        ??Ruler_Power_Switch_1
??Ruler_Power_Switch_0:
        MOV      R0,#+4
??Ruler_Power_Switch_1:
        LDR      R1,??DataTable12_1
        STRB     R0,[R1, #+69]
        MOV      R1,#+1
        LDR      R0,??DataTable12_3
        BL       PIO_Configure
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
UART1_Mixer:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+4
        BGE      ??UART1_Mixer_0
        MOV      R0,#+0
        MOVS     R5,R0
??UART1_Mixer_1:
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+2
        BGE      ??UART1_Mixer_0
        MOV      R0,#+1
        LSLS     R0,R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        TST      R0,R4
        BNE      ??UART1_Mixer_2
        MOV      R0,#+3
        B        ??UART1_Mixer_3
??UART1_Mixer_2:
        MOV      R0,#+4
??UART1_Mixer_3:
        MOVS     R1,R5
        ANDS     R1,R1,#0xFF      ;; Zero extend
        ADD      R2,R1,R1, LSL #+1
        LDR      R1,??DataTable12_1
        ADDS     R1,R1,R2, LSL #+2
        STRB     R0,[R1, #+9]
        MOV      R1,#+1
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADD      R2,R0,R0, LSL #+1
        LDR      R0,??DataTable12_1
        ADDS     R0,R0,R2, LSL #+2
        BL       PIO_Configure
        ADDS     R5,R5,#+1
        B        ??UART1_Mixer_1
??UART1_Mixer_0:
        POP      {R0,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
UART2_Mixer:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Get_Switches:
        PUSH     {R3-R5,LR}
        MOV      R4,#+0
        MOV      R5,#+0
        MOV      R0,#+0
        MOVS     R4,R0
??Get_Switches_0:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+2
        BCS      ??Get_Switches_1
        LSLS     R5,R5,#+1
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADD      R1,R0,R0, LSL #+1
        LDR      R0,??DataTable12
        ADDS     R0,R0,R1, LSL #+2
        BL       PIO_Get
        ADDS     R0,R0,R5
        MOVS     R5,R0
        ADDS     R4,R4,#+1
        B        ??Get_Switches_0
??Get_Switches_1:
        MOVS     R0,R5
        POP      {R1,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Get_Port_Detect:
        PUSH     {R3-R5,LR}
        MOV      R4,#+0
        MOV      R5,#+0
        MOV      R0,#+9
        MOVS     R4,R0
??Get_Port_Detect_0:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+13
        BGE      ??Get_Port_Detect_1
        LSLS     R5,R5,#+1
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADD      R1,R0,R0, LSL #+1
        LDR      R0,??DataTable12_1
        ADDS     R0,R0,R1, LSL #+2
        BL       PIO_Get
        ADDS     R0,R0,R5
        MOVS     R5,R0
        ADDS     R4,R4,#+1
        B        ??Get_Port_Detect_0
??Get_Port_Detect_1:
        MOVS     R0,R5
        POP      {R1,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Ruler_PowerOnOff:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??Ruler_PowerOnOff_0
        LDR      R0,??DataTable12_3
        BL       PIO_Clear
        B        ??Ruler_PowerOnOff_1
??Ruler_PowerOnOff_0:
        LDR      R0,??DataTable12_3
        BL       PIO_Set
??Ruler_PowerOnOff_1:
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Pin_Reset_FM36:
        PUSH     {R12,LR}
        LDR      R0,??DataTable12_4
        BL       PIO_Clear
        MOV      R0,#+20
        BL       OSTimeDly
        LDR      R0,??DataTable12_4
        BL       PIO_Set
        MOV      R0,#+50
        BL       OSTimeDly
        POP      {R0,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Pin_Reset_Audio_MCU:
        PUSH     {R12,LR}
        LDR      R0,??DataTable12_5
        BL       PIO_Clear
        MOV      R0,#+20
        BL       OSTimeDly
        LDR      R0,??DataTable12_5
        BL       PIO_Set
        MOV      R0,#+20
        BL       OSTimeDly
        POP      {R0,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Enable_FPGA:
        PUSH     {R12,LR}
        LDR      R0,??DataTable12_6
        BL       PIO_Set
        POP      {R0,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Disable_FPGA:
        PUSH     {R12,LR}
        LDR      R0,??DataTable12_6
        BL       PIO_Clear
        POP      {R0,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Init_FPGA:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        LDR      R0,??DataTable12_7
        BL       PIO_Set
        LDR      R0,??DataTable12_8
        BL       PIO_Set
        LDR      R0,??DataTable12_9
        BL       PIO_Set
        MOV      R0,#+0
        MOVS     R5,R0
??Init_FPGA_0:
        CMP      R5,#+32
        BCS      ??Init_FPGA_1
        LDR      R0,??DataTable12_7
        BL       PIO_Clear
        LDR      R0,??DataTable12_9
        BL       PIO_Clear
        MOV      R0,#-2147483648
        TST      R0,R4, LSL R5
        BEQ      ??Init_FPGA_2
        LDR      R0,??DataTable12_8
        BL       PIO_Set
        B        ??Init_FPGA_3
??Init_FPGA_2:
        LDR      R0,??DataTable12_8
        BL       PIO_Clear
??Init_FPGA_3:
        LDR      R0,??DataTable12_9
        BL       PIO_Set
        ADDS     R5,R5,#+1
        B        ??Init_FPGA_0
??Init_FPGA_1:
        LDR      R0,??DataTable12_7
        BL       PIO_Set
        POP      {R0,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     pinsSwitches

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_1:
        DC32     pinsGpios

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_2:
        DC32     numGpios

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_3:
        DC32     pinsGpios+0x3C

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_4:
        DC32     pinsGpios+0x60

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_5:
        DC32     pinsGpios+0x54

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_6:
        DC32     pinsGpios+0x30

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_7:
        DC32     pinsGpios+0xF0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_8:
        DC32     pinsGpios+0xFC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_9:
        DC32     pinsGpios+0x108

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
//    17 bytes in section .bss
//   276 bytes in section .data
//    28 bytes in section .rodata
// 1 000 bytes in section .text
//   132 bytes in section .textrw
// 
// 1 132 bytes of CODE  memory
//    28 bytes of CONST memory
//   293 bytes of DATA  memory
//
//Errors: none
//Warnings: none
