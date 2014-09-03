///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       04/Sep/2014  10:10:29
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\BSP\Xmodem.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\BSP\Xmodem.c" -lcN
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
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\Xmodem.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN BSP_Ser_Printf
        EXTERN Buzzer_OnOff
        EXTERN Buzzer_Toggle
        EXTERN USART_Read_Timeout
        EXTERN USART_SendBuf
        EXTERN USART_SendByte
        EXTERN memcpy
        EXTERN memset

        PUBLIC Xmodem_Transmit


        SECTION `.text`:CODE:NOROOT(2)
        ARM
calc_crc:
        MOVS     R2,R0
        MOV      R0,#+0
??calc_crc_0:
        SUBS     R1,R1,#+1
        MOVS     R12,R1
        LSL      R12,R12,#+16
        ASRS     R12,R12,#+16
        CMP      R12,#+0
        BMI      ??calc_crc_1
        LDRB     R12,[R2, #+0]
        EORS     R0,R0,R12, LSL #+8
        ADDS     R2,R2,#+1
        MOV      R12,#+8
        MOVS     R3,R12
??calc_crc_2:
        TST      R0,#0x8000
        BEQ      ??calc_crc_3
        MOV      R12,#+33
        ORR      R12,R12,#0x1000
        EORS     R0,R12,R0, LSL #+1
        B        ??calc_crc_4
??calc_crc_3:
        LSLS     R0,R0,#+1
??calc_crc_4:
        SUBS     R3,R3,#+1
        MOVS     R12,R3
        ANDS     R12,R12,#0xFF    ;; Zero extend
        CMP      R12,#+0
        BNE      ??calc_crc_2
        B        ??calc_crc_0
??calc_crc_1:
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
flushinput:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Xmodem_Transmit:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+140
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R7,#+1
        MOV      R9,#+0
        MOV      R0,#+0
        MOVS     R11,R0
        MOV      R0,#+0
        MOVS     R10,R0
??Xmodem_Transmit_0:
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+5
        BGE      ??Xmodem_Transmit_1
        MOV      R0,#+0
        STRB     R0,[SP, #+0]
        MOV      R3,#+1000
        MOV      R2,#+1
        MOVS     R1,SP
        MOV      R0,#+1
        BL       USART_Read_Timeout
        CMP      R0,#+0
        BNE      ??Xmodem_Transmit_2
        LDRB     R0,[SP, #+0]
        CMP      R0,#+21
        BEQ      ??Xmodem_Transmit_3
        CMP      R0,#+24
        BEQ      ??Xmodem_Transmit_4
        CMP      R0,#+67
        BNE      ??Xmodem_Transmit_5
??Xmodem_Transmit_6:
        B        ??Xmodem_Transmit_7
??Xmodem_Transmit_3:
        B        ??Xmodem_Transmit_7
??Xmodem_Transmit_4:
        MOV      R0,#+0
        STRB     R0,[SP, #+0]
        MOV      R3,#+1000
        MOV      R2,#+1
        MOVS     R1,SP
        MOV      R0,#+1
        BL       USART_Read_Timeout
        LDRB     R0,[SP, #+0]
        CMP      R0,#+24
        BNE      ??Xmodem_Transmit_8
        MOV      R1,#+6
        MOV      R0,#+1
        BL       USART_SendByte
        BL       flushinput
        MOV      R0,#+112
        B        ??Xmodem_Transmit_9
??Xmodem_Transmit_8:
        B        ??Xmodem_Transmit_2
??Xmodem_Transmit_5:
??Xmodem_Transmit_2:
        ADDS     R10,R10,#+1
        B        ??Xmodem_Transmit_0
??Xmodem_Transmit_1:
        MOV      R1,#+24
        MOV      R0,#+1
        BL       USART_SendByte
        MOV      R1,#+24
        MOV      R0,#+1
        BL       USART_SendByte
        MOV      R1,#+24
        MOV      R0,#+1
        BL       USART_SendByte
        BL       flushinput
        MOV      R0,#+113
        B        ??Xmodem_Transmit_9
??Xmodem_Transmit_7:
        BL       Buzzer_Toggle
        MOV      R0,#+1
        STRB     R0,[SP, #+4]
        STRB     R7,[SP, #+5]
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        MVNS     R0,R0
        STRB     R0,[SP, #+6]
        CMP      R9,R5
        BGE      ??Xmodem_Transmit_10
        SUBS     R0,R5,R9
        MOVS     R8,R0
        CMP      R8,#+129
        BLT      ??Xmodem_Transmit_11
        MOV      R8,#+128
        B        ??Xmodem_Transmit_12
??Xmodem_Transmit_11:
??Xmodem_Transmit_12:
        MOV      R2,#+128
        MOV      R1,#+0
        ADD      R0,SP,#+7
        BL       memset
        MOVS     R2,R8
        ADDS     R1,R9,R4
        ADD      R0,SP,#+7
        BL       memcpy
        MOV      R1,#+128
        ADD      R0,SP,#+7
        BL       calc_crc
        MOVS     R6,R0
        LSL      R6,R6,#+16
        LSRS     R6,R6,#+16
        LSRS     R0,R6,#+8
        STRB     R0,[SP, #+135]
        STRB     R6,[SP, #+136]
        MOV      R0,#+0
        MOVS     R10,R0
??Xmodem_Transmit_13:
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+5
        BGE      ??Xmodem_Transmit_14
        MOV      R2,#+133
        ADD      R1,SP,#+4
        MOV      R0,#+1
        BL       USART_SendBuf
        MOV      R0,#+0
        STRB     R0,[SP, #+0]
        MOV      R3,#+136
        ORR      R3,R3,#0x1300
        MOV      R2,#+1
        MOVS     R1,SP
        MOV      R0,#+1
        BL       USART_Read_Timeout
        CMP      R0,#+0
        BNE      ??Xmodem_Transmit_15
        LDRB     R0,[SP, #+0]
        CMP      R0,#+6
        BEQ      ??Xmodem_Transmit_16
        CMP      R0,#+21
        BEQ      ??Xmodem_Transmit_17
        CMP      R0,#+24
        BEQ      ??Xmodem_Transmit_18
        B        ??Xmodem_Transmit_19
??Xmodem_Transmit_16:
        ADDS     R7,R7,#+1
        ADDS     R9,R8,R9
        ADR      R0,??DataTable0  ;; 0x3E, 0x20, 0x00, 0x00
        BL       BSP_Ser_Printf
        B        ??Xmodem_Transmit_7
??Xmodem_Transmit_18:
        LDR      R0,??DataTable0_1
        BL       BSP_Ser_Printf
        MOV      R0,#+0
        STRB     R0,[SP, #+0]
        MOV      R3,#+1000
        MOV      R2,#+1
        MOVS     R1,SP
        MOV      R0,#+1
        BL       USART_Read_Timeout
        LDRB     R0,[SP, #+0]
        CMP      R0,#+24
        BNE      ??Xmodem_Transmit_20
        MOV      R1,#+6
        MOV      R0,#+1
        BL       USART_SendByte
        BL       flushinput
        MOV      R0,#+0
        BL       Buzzer_OnOff
        MOV      R0,#+112
        B        ??Xmodem_Transmit_9
??Xmodem_Transmit_20:
        B        ??Xmodem_Transmit_15
??Xmodem_Transmit_17:
        LDR      R0,??DataTable0_2
        BL       BSP_Ser_Printf
??Xmodem_Transmit_19:
        LDR      R0,??DataTable0_3
        BL       BSP_Ser_Printf
??Xmodem_Transmit_15:
        ADDS     R10,R10,#+1
        B        ??Xmodem_Transmit_13
??Xmodem_Transmit_14:
        MOV      R1,#+24
        MOV      R0,#+1
        BL       USART_SendByte
        MOV      R1,#+24
        MOV      R0,#+1
        BL       USART_SendByte
        MOV      R1,#+24
        MOV      R0,#+1
        BL       USART_SendByte
        BL       flushinput
        MOV      R0,#+0
        BL       Buzzer_OnOff
        MOV      R0,#+114
        B        ??Xmodem_Transmit_9
??Xmodem_Transmit_10:
        MOV      R0,#+115
        MOVS     R11,R0
        MOV      R0,#+0
        STRB     R0,[SP, #+0]
        MOV      R0,#+0
        MOVS     R10,R0
??Xmodem_Transmit_21:
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+5
        BGE      ??Xmodem_Transmit_22
        MOV      R1,#+4
        MOV      R0,#+1
        BL       USART_SendByte
        MOV      R3,#+1000
        MOV      R2,#+1
        MOVS     R1,SP
        MOV      R0,#+1
        BL       USART_Read_Timeout
        LDRB     R0,[SP, #+0]
        CMP      R0,#+6
        BNE      ??Xmodem_Transmit_23
        MOV      R0,#+0
        MOVS     R11,R0
        B        ??Xmodem_Transmit_22
??Xmodem_Transmit_23:
        ADDS     R10,R10,#+1
        B        ??Xmodem_Transmit_21
??Xmodem_Transmit_22:
        BL       flushinput
        MOV      R0,#+0
        BL       Buzzer_OnOff
        MOVS     R0,R11
        ANDS     R0,R0,#0xFF      ;; Zero extend
??Xmodem_Transmit_9:
        ADD      SP,SP,#+140      ;; stack cleaning
        POP      {R4-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC8      0x3E, 0x20, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_1:
        DC32     `?<Constant "CAN ">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_2:
        DC32     `?<Constant "NAK ">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_3:
        DC32     `?<Constant "DEFAULT ">`

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "> "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "CAN ">`:
        DATA
        DC8 "CAN "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "NAK ">`:
        DATA
        DC8 "NAK "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "DEFAULT ">`:
        DATA
        DC8 "DEFAULT "
        DC8 0, 0, 0

        END
// 
//  32 bytes in section .rodata
// 952 bytes in section .text
// 
// 952 bytes of CODE  memory
//  32 bytes of CONST memory
//
//Errors: none
//Warnings: none
