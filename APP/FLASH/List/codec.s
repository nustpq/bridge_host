///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       21/Jul/2014  19:24:29
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Driver\codec.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Driver\codec.c" -lcN
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
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\codec.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN BSP_Ser_Printf
        EXTERN Get_Switches
        EXTERN SPI_WriteBuffer_API
        EXTERN TWID_Read
        EXTERN TWID_Write
        EXTERN __aeabi_d2f
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_memcpy4
        EXTERN __aeabi_ui2d

        PUBLIC ALL_POWER_OFF
        PUBLIC ALL_POWER_ON
        PUBLIC CODEC_LOUT_Small_Gain_En
        PUBLIC CODEC_Set_Volume
        PUBLIC Codec_DAC_Attenuation
        PUBLIC Codec_Mixer
        PUBLIC Codec_Read
        PUBLIC Codec_Read_SPI
        PUBLIC Codec_SetFCLK
        PUBLIC Codec_SetMode
        PUBLIC Codec_Write
        PUBLIC Codec_Write_SPI
        PUBLIC Get_Codec
        PUBLIC I2CWrite_Codec
        PUBLIC I2CWrite_Codec_AIC3204
        PUBLIC Init_CODEC
        PUBLIC Set_Codec


        SECTION `.text`:CODE:NOROOT(2)
        ARM
Codec_Read:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+12
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R7,#+0
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,R6
        MOV      R2,#+1
        MOVS     R1,R5
        ANDS     R1,R1,#0xFF      ;; Zero extend
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Read
        MOVS     R7,R0
        ADDS     R6,R6,#+1
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R1-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Codec_Write:
        PUSH     {R1-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        STRB     R6,[SP, #+8]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+1
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+1
        MOVS     R1,R5
        ANDS     R1,R1,#0xFF      ;; Zero extend
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSRS     R0,R4,#+1
        BL       TWID_Write
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R1-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Codec_Read_SPI:
        MOVS     R3,R0
        MOV      R0,#+0
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Codec_Write_SPI:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        LSLS     R0,R4,#+1
        STRB     R0,[SP, #+0]
        STRB     R5,[SP, #+1]
        STRB     R6,[SP, #+2]
        MOV      R1,#+3
        MOVS     R0,SP
        BL       SPI_WriteBuffer_API
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Codec_Mixer:
        PUSH     {R1-R5,LR}
        MOVS     R4,R0
        MOV      R0,#+224
        MOVS     R5,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+4
        BGE      ??Codec_Mixer_0
        MOV      R0,#+1
        LSLS     R0,R0,R4
        STRB     R0,[SP, #+8]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+1
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+0
        MOV      R1,#+0
        MOV      R0,#+119
        BL       TWID_Write
        MOVS     R5,R0
??Codec_Mixer_0:
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R1-R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Set_Codec:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R8,#+0
        MOV      R0,#+0
        MOVS     R7,R0
??Set_Codec_0:
        ANDS     R7,R7,#0xFF      ;; Zero extend
        ANDS     R5,R5,#0xFF      ;; Zero extend
        CMP      R7,R5
        BCS      ??Set_Codec_1
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??Set_Codec_2
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+1
        ADDS     R0,R0,R6
        LDRB     R2,[R0, #+1]
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+1
        LDRB     R1,[R0, +R6]
        MOV      R0,#+48
        BL       Codec_Write
        MOVS     R8,R0
        B        ??Set_Codec_3
??Set_Codec_2:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+1
        ADDS     R0,R0,R6
        LDRB     R2,[R0, #+1]
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+1
        LDRB     R1,[R0, +R6]
        MOV      R0,#+4
        BL       Codec_Write_SPI
        MOVS     R8,R0
??Set_Codec_3:
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??Set_Codec_1
??Set_Codec_4:
        ADDS     R7,R7,#+1
        B        ??Set_Codec_0
??Set_Codec_1:
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Get_Codec:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R7,#+0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??Get_Codec_0
        MOVS     R2,R6
        MOVS     R1,R5
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOV      R0,#+48
        BL       Codec_Read
        MOVS     R7,R0
        B        ??Get_Codec_1
??Get_Codec_0:
        MOVS     R2,R6
        MOVS     R1,R5
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOV      R0,#+48
        BL       Codec_Read_SPI
        MOVS     R7,R0
??Get_Codec_1:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
I2CWrite_Codec:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,R5
        ANDS     R2,R2,#0xFF      ;; Zero extend
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOV      R0,#+8
        BL       Codec_Write
        MOVS     R6,R0
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
I2CWrite_Codec_AIC3204:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,R5
        ANDS     R2,R2,#0xFF      ;; Zero extend
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOV      R0,#+48
        BL       Codec_Write
        MOVS     R6,R0
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ALL_POWER_ON:
        PUSH     {R12,LR}
        MOV      R1,#+0
        MOV      R0,#+2
        BL       I2CWrite_Codec
        MOV      R1,#+0
        MOV      R0,#+14
        BL       I2CWrite_Codec
        POP      {R0,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ALL_POWER_OFF:
        PUSH     {R12,LR}
        MOV      R1,#+1
        MOV      R0,#+2
        BL       I2CWrite_Codec
        MOV      R1,#+1
        MOV      R0,#+14
        BL       I2CWrite_Codec
        POP      {R0,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Codec_DAC_Attenuation:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        CMP      R5,#+1000
        BNE      ??Codec_DAC_Attenuation_0
        MOV      R0,#+0
        B        ??Codec_DAC_Attenuation_1
??Codec_DAC_Attenuation_0:
        MOV      R0,#+178
        ORR      R0,R0,#0x300
        CMP      R5,R0
        BCC      ??Codec_DAC_Attenuation_2
        MOV      R0,#+231
        MOVS     R6,R0
        LDR      R0,??DataTable2
        BL       BSP_Ser_Printf
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Codec_DAC_Attenuation_1
??Codec_DAC_Attenuation_2:
        MOVS     R0,R5
        BL       __aeabi_ui2d
        MOV      R2,#+0
        MOV      R3,#+1073741824
        ORR      R3,R3,#0xE0000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        MOVS     R7,R0
        MOVS     R0,R7
        BL       __aeabi_f2iz
        MOVS     R1,R0
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       I2CWrite_Codec
        MOVS     R6,R0
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Codec_DAC_Attenuation_3
        MOV      R0,#+230
        MOVS     R6,R0
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Codec_DAC_Attenuation_1
??Codec_DAC_Attenuation_3:
        MOV      R0,#+0
??Codec_DAC_Attenuation_1:
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Codec_SetFCLK:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R0,R4
        CMP      R0,#+0
        BEQ      ??Codec_SetFCLK_0
        CMP      R0,#+8000
        BEQ      ??Codec_SetFCLK_1
        CMP      R0,#+16000
        BEQ      ??Codec_SetFCLK_2
        MOV      R1,#+192
        ORR      R1,R1,#0x5D00
        CMP      R0,R1
        BEQ      ??Codec_SetFCLK_3
        CMP      R0,#+32000
        BEQ      ??Codec_SetFCLK_4
        MOV      R1,#+68
        ORR      R1,R1,#0xAC00
        CMP      R0,R1
        BEQ      ??Codec_SetFCLK_5
        MOV      R1,#+128
        ORR      R1,R1,#0xBB00
        CMP      R0,R1
        BEQ      ??Codec_SetFCLK_6
        MOV      R1,#+65536
        ORR      R1,R1,#0x7700
        CMP      R0,R1
        BEQ      ??Codec_SetFCLK_7
        B        ??Codec_SetFCLK_8
??Codec_SetFCLK_1:
        MOV      R0,#+158
        MOVS     R6,R0
        MOV      R0,#+232
        B        ??Codec_SetFCLK_9
??Codec_SetFCLK_2:
        MOV      R0,#+158
        MOVS     R6,R0
        B        ??Codec_SetFCLK_10
??Codec_SetFCLK_3:
        MOV      R0,#+156
        MOVS     R6,R0
        B        ??Codec_SetFCLK_10
??Codec_SetFCLK_4:
        MOV      R0,#+154
        MOVS     R6,R0
        B        ??Codec_SetFCLK_10
??Codec_SetFCLK_5:
        MOV      R0,#+152
        MOVS     R6,R0
        MOV      R0,#+232
        B        ??Codec_SetFCLK_9
??Codec_SetFCLK_6:
        MOV      R0,#+152
        MOVS     R6,R0
        B        ??Codec_SetFCLK_10
??Codec_SetFCLK_7:
        MOV      R0,#+152
        MOVS     R6,R0
        MOV      R0,#+232
        B        ??Codec_SetFCLK_9
??Codec_SetFCLK_0:
        MOV      R0,#+1
        MOVS     R6,R0
        B        ??Codec_SetFCLK_10
??Codec_SetFCLK_8:
        MOV      R0,#+232
        B        ??Codec_SetFCLK_9
??Codec_SetFCLK_10:
        MOVS     R1,R6
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOV      R0,#+0
        BL       I2CWrite_Codec
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Codec_SetFCLK_11
        MOV      R0,#+230
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Codec_SetFCLK_9
??Codec_SetFCLK_11:
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
??Codec_SetFCLK_9:
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Codec_SetMode:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BEQ      ??Codec_SetMode_0
        BCC      ??Codec_SetMode_1
        CMP      R0,#+3
        BEQ      ??Codec_SetMode_2
        BCC      ??Codec_SetMode_3
        B        ??Codec_SetMode_1
??Codec_SetMode_0:
        MOV      R0,#+0
        MOVS     R6,R0
        MOV      R0,#+112
        MOVS     R7,R0
        MOV      R0,#+3
        MOVS     R8,R0
        MOV      R0,#+1
        MOVS     R9,R0
        B        ??Codec_SetMode_4
??Codec_SetMode_3:
        MOV      R0,#+64
        MOVS     R6,R0
        MOV      R0,#+116
        MOVS     R7,R0
        MOV      R0,#+35
        MOVS     R8,R0
        MOV      R0,#+33
        MOVS     R9,R0
        B        ??Codec_SetMode_4
??Codec_SetMode_2:
        MOV      R0,#+64
        MOVS     R6,R0
        MOV      R0,#+118
        MOVS     R7,R0
        MOV      R0,#+35
        MOVS     R8,R0
        MOV      R0,#+49
        MOVS     R9,R0
        B        ??Codec_SetMode_4
??Codec_SetMode_1:
        MOV      R0,#+233
        B        ??Codec_SetMode_5
??Codec_SetMode_4:
        MOVS     R1,R6
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOV      R0,#+2
        BL       I2CWrite_Codec
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Codec_SetMode_6
        MOV      R0,#+230
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Codec_SetMode_5
??Codec_SetMode_6:
        MOVS     R1,R7
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOV      R0,#+3
        BL       I2CWrite_Codec
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Codec_SetMode_7
        MOV      R0,#+230
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Codec_SetMode_5
??Codec_SetMode_7:
        MOVS     R1,R8
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOV      R0,#+15
        BL       I2CWrite_Codec
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Codec_SetMode_8
        MOV      R0,#+230
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Codec_SetMode_5
??Codec_SetMode_8:
        MOVS     R1,R9
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOV      R0,#+16
        BL       I2CWrite_Codec
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Codec_SetMode_9
        MOV      R0,#+230
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Codec_SetMode_5
??Codec_SetMode_9:
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
??Codec_SetMode_5:
        POP      {R1,R4-R9,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Init_CODEC:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+24
        MOVS     R4,R0
        MOVS     R0,SP
        LDR      R1,??DataTable2_1
        MOV      R2,#+20
        BL       __aeabi_memcpy4
        LDR      R0,??DataTable2_2
        LDR      R0,[R0, #+0]
        CMP      R4,R0
        BNE      ??Init_CODEC_0
        MOV      R0,#+0
        B        ??Init_CODEC_1
??Init_CODEC_0:
        LDR      R0,??DataTable2_2
        STR      R4,[R0, #+0]
        MOV      R0,#+0
        MOVS     R6,R0
??Init_CODEC_2:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+9
        BCS      ??Init_CODEC_3
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+1
        MOVS     R1,SP
        ADDS     R0,R0,R1
        LDRB     R1,[R0, #+1]
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+1
        MOVS     R2,SP
        LDRB     R0,[R0, +R2]
        BL       I2CWrite_Codec
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Init_CODEC_4
        MOV      R0,#+230
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Init_CODEC_1
??Init_CODEC_4:
        ADDS     R6,R6,#+1
        B        ??Init_CODEC_2
??Init_CODEC_3:
        MOVS     R0,R4
        BL       Codec_SetFCLK
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Init_CODEC_5
        MOV      R0,#+230
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Init_CODEC_1
??Init_CODEC_5:
        MOV      R0,#+2
        BL       Codec_SetMode
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Init_CODEC_6
        MOV      R0,#+230
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Init_CODEC_1
??Init_CODEC_6:
        BL       Get_Switches
        TST      R0,#0x1
        BNE      ??Init_CODEC_7
        MOV      R0,#+1
        BL       CODEC_LOUT_Small_Gain_En
        MOVS     R5,R0
??Init_CODEC_7:
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
??Init_CODEC_1:
        ADD      SP,SP,#+24       ;; stack cleaning
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??sr_saved:
        DS8 4

        SECTION `.text`:CODE:NOROOT(2)
        ARM
CODEC_LOUT_Small_Gain_En:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??CODEC_LOUT_Small_Gain_En_0
        MOV      R0,#+64
        MOVS     R5,R0
        LDR      R0,??DataTable2_3
        BL       BSP_Ser_Printf
        B        ??CODEC_LOUT_Small_Gain_En_1
??CODEC_LOUT_Small_Gain_En_0:
        MOV      R0,#+0
        MOVS     R5,R0
        LDR      R0,??DataTable2_4
        BL       BSP_Ser_Printf
??CODEC_LOUT_Small_Gain_En_1:
        MOVS     R1,R5
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOV      R0,#+8
        BL       I2CWrite_Codec
        MOVS     R6,R0
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??CODEC_LOUT_Small_Gain_En_2
        MOV      R0,#+230
        MOVS     R6,R0
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??CODEC_LOUT_Small_Gain_En_3
??CODEC_LOUT_Small_Gain_En_2:
        MOVS     R1,R5
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOV      R0,#+9
        BL       I2CWrite_Codec
        MOVS     R6,R0
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??CODEC_LOUT_Small_Gain_En_4
        MOV      R0,#+230
        MOVS     R6,R0
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??CODEC_LOUT_Small_Gain_En_3
??CODEC_LOUT_Small_Gain_En_4:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
??CODEC_LOUT_Small_Gain_En_3:
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     `?<Constant "ERR: CODEC Gain Over ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     `?<Constant {{0, 152}, {1, 0}, {4, 24}, {5, 240`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     ??sr_saved

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     `?<Constant "Lout Gain 24dB attenu...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     `?<Constant "Lout Gain 24dB attenu...">_1`

        SECTION `.text`:CODE:NOROOT(2)
        ARM
CODEC_Set_Volume:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R0,#+240
        MOVS     R6,R0
        MOVS     R1,R4
        MOV      R0,#+6
        BL       Codec_DAC_Attenuation
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??CODEC_Set_Volume_0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??CODEC_Set_Volume_1
??CODEC_Set_Volume_0:
        MOVS     R1,R4
        MOV      R0,#+7
        BL       Codec_DAC_Attenuation
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??CODEC_Set_Volume_2
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??CODEC_Set_Volume_1
??CODEC_Set_Volume_2:
        MOVS     R1,R5
        MOV      R0,#+8
        BL       Codec_DAC_Attenuation
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??CODEC_Set_Volume_3
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??CODEC_Set_Volume_1
??CODEC_Set_Volume_3:
        MOVS     R1,R5
        MOV      R0,#+9
        BL       Codec_DAC_Attenuation
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??CODEC_Set_Volume_4
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??CODEC_Set_Volume_1
??CODEC_Set_Volume_4:
        CMP      R4,#+1000
        BNE      ??CODEC_Set_Volume_5
        ADDS     R6,R6,#+3
??CODEC_Set_Volume_5:
        CMP      R5,#+1000
        BNE      ??CODEC_Set_Volume_6
        ADDS     R6,R6,#+12
??CODEC_Set_Volume_6:
        MOVS     R1,R6
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOV      R0,#+5
        BL       I2CWrite_Codec
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
??CODEC_Set_Volume_1:
        POP      {R1,R4-R7,LR}
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
`?<Constant "ERR: CODEC Gain Over ...">`:
        DATA
        DC8 "ERR: CODEC Gain Over Range!\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {{0, 152}, {1, 0}, {4, 24}, {5, 240`:
        DATA
        DC8 0, 152, 1, 0, 4, 24, 5, 240, 6, 0, 7, 0, 8, 0, 9, 0, 14, 48, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Lout Gain 24dB attenu...">`:
        DATA
        DC8 "Lout Gain 24dB attenuation: Enabled \015\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Lout Gain 24dB attenu...">_1`:
        DATA
        DC8 "Lout Gain 24dB attenuation: Disabled \015\012"

        END
// 
//     4 bytes in section .bss
//   132 bytes in section .rodata
// 2 512 bytes in section .text
// 
// 2 512 bytes of CODE  memory
//   132 bytes of CONST memory
//     4 bytes of DATA  memory
//
//Errors: none
//Warnings: none
