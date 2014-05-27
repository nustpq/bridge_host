///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V5.40.0.51500/W32 for ARM    11/Nov/2011  10:18:53 /
// Copyright (C) 1999-2009 IAR Systems AB.                                    /
//                                                                            /
//    Cpu mode     =  arm                                                     /
//    Endian       =  little                                                  /
//    Source file  =  L:\SII_UCOS\Micrium_SAM7X256\Software\Driver\usart.c    /
//    Command line =  L:\SII_UCOS\Micrium_SAM7X256\Software\Driver\usart.c    /
//                    -lcN L:\SII_UCOS\Micrium_SAM7X256\Software\APP\FLASH\Li /
//                    st\ -lb L:\SII_UCOS\Micrium_SAM7X256\Software\APP\FLASH /
//                    \List\ -o L:\SII_UCOS\Micrium_SAM7X256\Software\APP\FLA /
//                    SH\Obj\ --no_cse --no_unroll --no_inline                /
//                    --no_code_motion --no_tbaa --no_clustering              /
//                    --no_scheduling --debug --endian=little --cpu=ARM7TDMI  /
//                    -e --fpu=None --dlib_config "D:\Program Files\IAR       /
//                    Systems\Embedded Workbench                              /
//                    5.4ARM\arm\INC\DLib_Config_Normal.h" -I                 /
//                    L:\SII_UCOS\Micrium_SAM7X256\Software\APP\ -I           /
//                    L:\SII_UCOS\Micrium_SAM7X256\Software\APP\..\uC-CPU\ARM /
//                    \IAR\ -I L:\SII_UCOS\Micrium_SAM7X256\Software\APP\..\B /
//                    SP\ -I L:\SII_UCOS\Micrium_SAM7X256\Software\APP\..\DRI /
//                    VER\ -I L:\SII_UCOS\Micrium_SAM7X256\Software\APP\..\uC /
//                    OS-II\Source\ -I L:\SII_UCOS\Micrium_SAM7X256\Software\ /
//                    APP\..\uC-CPU\ -I L:\SII_UCOS\Micrium_SAM7X256\Software /
//                    \APP\..\uC-LIB\ -I L:\SII_UCOS\Micrium_SAM7X256\Softwar /
//                    e\APP\..\uC-CPU\ARM\IAR\ -I                             /
//                    L:\SII_UCOS\Micrium_SAM7X256\Software\APP\..\uCOS-II\Po /
//                    rts\ARM\Generic\IAR\ -I L:\SII_UCOS\Micrium_SAM7X256\So /
//                    ftware\APP\..\uC-Probe\Target\Communication\Generic\RS- /
//                    232\Source\ -I L:\SII_UCOS\Micrium_SAM7X256\Software\AP /
//                    P\..\uC-Probe\Target\Communication\Generic\RS-232\Ports /
//                    \Atmel\AT91SAM7X\ -I L:\SII_UCOS\Micrium_SAM7X256\Softw /
//                    are\APP\..\uC-Probe\Target\Communication\Generic\Source /
//                    \ -I L:\SII_UCOS\Micrium_SAM7X256\Software\APP\..\uC-Pr /
//                    obe\Target\Plugins\uCOS-II\ -I                          /
//                    L:\SII_UCOS\Micrium_SAM7X256\Software\APP\..\uC-Probe\T /
//                    arget\Demos\Intro\Source\ -I "D:\Program Files\IAR      /
//                    Systems\Embedded Workbench 5.4ARM\arm\INC\"             /
//                    --interwork --cpu_mode arm -On                          /
//    List file    =  L:\SII_UCOS\Micrium_SAM7X256\Software\APP\FLASH\List\us /
//                    art.s                                                   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME usart

        EXTERN __aeabi_uidiv

        PUBLIC UART_SendStr
        PUBLIC USART_Configure
        PUBLIC USART_IsDataAvailable
        PUBLIC USART_Read
        PUBLIC USART_ReadBuffer
        PUBLIC USART_SetIrdaFilter
        PUBLIC USART_SetReceiverEnabled
        PUBLIC USART_SetTransmitterEnabled
        PUBLIC USART_Write
        PUBLIC USART_WriteBuffer


        SECTION `.text`:CODE:NOROOT(2)
        ARM
USART_Configure:
        PUSH     {R4-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOV      R0,#+172
        STR      R0,[R4, #+0]
        STR      R5,[R4, #+4]
        MOV      R0,#+524288
        ORR      R0,R0,#0x100
        TST      R0,R5
        BNE      ??USART_Configure_0
        MOVS     R0,R7
        MOVS     R1,R6
        BL       __aeabi_uidiv
        LSRS     R0,R0,#+4
        STR      R0,[R4, #+32]
??USART_Configure_0:
        POP      {R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
USART_SetTransmitterEnabled:
        ANDS     R1,R1,#0xFF      ;; Zero extend
        CMP      R1,#+0
        BEQ      ??USART_SetTransmitterEnabled_0
        MOV      R2,#+64
        STR      R2,[R0, #+0]
        B        ??USART_SetTransmitterEnabled_1
??USART_SetTransmitterEnabled_0:
        MOV      R2,#+128
        STR      R2,[R0, #+0]
??USART_SetTransmitterEnabled_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
USART_SetReceiverEnabled:
        ANDS     R1,R1,#0xFF      ;; Zero extend
        CMP      R1,#+0
        BEQ      ??USART_SetReceiverEnabled_0
        MOV      R2,#+16
        STR      R2,[R0, #+0]
        B        ??USART_SetReceiverEnabled_1
??USART_SetReceiverEnabled_0:
        MOV      R2,#+32
        STR      R2,[R0, #+0]
??USART_SetReceiverEnabled_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
USART_Write:
        PUSH     {R2}
        LDR      R2,[SP, #+0]
        CMP      R2,#+0
        BNE      ??USART_Write_0
??USART_Write_1:
        LDR      R2,[R0, #+20]
        TST      R2,#0x200
        BNE      ??USART_Write_2
        B        ??USART_Write_1
??USART_Write_0:
        LDR      R2,[R0, #+20]
        TST      R2,#0x200
        BNE      ??USART_Write_2
        LDR      R2,[SP, #+0]
        CMP      R2,#+0
        BEQ      ??USART_Write_3
??USART_Write_4:
        LDR      R2,[SP, #+0]
        SUBS     R2,R2,#+1
        STR      R2,[SP, #+0]
        B        ??USART_Write_0
??USART_Write_2:
        MOVS     R2,R1
        MOV      R2,R2, LSL #+16
        MOVS     R2,R2, LSR #+16
        STR      R2,[R0, #+28]
??USART_Write_3:
        ADD      SP,SP,#+4        ;; stack cleaning
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
USART_WriteBuffer:
        MOVS     R3,R0
        LDR      R0,[R3, #+268]
        CMP      R0,#+0
        BNE      ??USART_WriteBuffer_0
        LDR      R0,[R3, #+284]
        CMP      R0,#+0
        BNE      ??USART_WriteBuffer_0
        STR      R1,[R3, #+264]
        STR      R2,[R3, #+268]
        MOV      R0,#+256
        STR      R0,[R3, #+288]
        MOV      R0,#+1
        B        ??USART_WriteBuffer_1
??USART_WriteBuffer_0:
        LDR      R0,[R3, #+284]
        CMP      R0,#+0
        BNE      ??USART_WriteBuffer_2
        STR      R1,[R3, #+280]
        STR      R2,[R3, #+284]
        MOV      R0,#+1
        B        ??USART_WriteBuffer_1
??USART_WriteBuffer_2:
        MOV      R0,#+0
??USART_WriteBuffer_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
USART_Read:
        PUSH     {R1}
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        CMP      R0,#+0
        BNE      ??USART_Read_0
??USART_Read_1:
        LDR      R0,[R1, #+20]
        TST      R0,#0x1
        BNE      ??USART_Read_2
        B        ??USART_Read_1
??USART_Read_0:
        LDR      R0,[R1, #+20]
        TST      R0,#0x1
        BNE      ??USART_Read_2
        LDR      R0,[SP, #+0]
        CMP      R0,#+0
        BNE      ??USART_Read_3
        MOV      R0,#+0
        B        ??USART_Read_4
??USART_Read_3:
        LDR      R0,[SP, #+0]
        SUBS     R0,R0,#+1
        STR      R0,[SP, #+0]
        B        ??USART_Read_0
??USART_Read_2:
        LDR      R0,[R1, #+24]
        MOV      R0,R0, LSL #+16
        MOVS     R0,R0, LSR #+16
??USART_Read_4:
        ADD      SP,SP,#+4        ;; stack cleaning
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
USART_ReadBuffer:
        MOVS     R3,R0
        LDR      R0,[R3, #+260]
        CMP      R0,#+0
        BNE      ??USART_ReadBuffer_0
        LDR      R0,[R3, #+276]
        CMP      R0,#+0
        BNE      ??USART_ReadBuffer_0
        STR      R1,[R3, #+256]
        STR      R2,[R3, #+260]
        MOV      R0,#+1
        STR      R0,[R3, #+288]
        MOV      R0,#+1
        B        ??USART_ReadBuffer_1
??USART_ReadBuffer_0:
        LDR      R0,[R3, #+276]
        CMP      R0,#+0
        BNE      ??USART_ReadBuffer_2
        STR      R1,[R3, #+272]
        STR      R2,[R3, #+276]
        MOV      R0,#+1
        B        ??USART_ReadBuffer_1
??USART_ReadBuffer_2:
        MOV      R0,#+0
??USART_ReadBuffer_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
USART_IsDataAvailable:
        MOVS     R1,R0
        LDR      R0,[R1, #+20]
        TST      R0,#0x1
        BEQ      ??USART_IsDataAvailable_0
        MOV      R0,#+1
        B        ??USART_IsDataAvailable_1
??USART_IsDataAvailable_0:
        MOV      R0,#+0
??USART_IsDataAvailable_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
USART_SetIrdaFilter:
        MOVS     R2,R1
        ANDS     R2,R2,#0xFF      ;; Zero extend
        STR      R2,[R0, #+76]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
UART_SendStr:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
??UART_SendStr_0:
        LDRB     R0,[R5, #+0]
        CMP      R0,#+0
        BEQ      ??UART_SendStr_1
        MOV      R2,#+0
        LDRB     R1,[R5, #+0]
        MOV      R1,R1, LSL #+16
        MOVS     R1,R1, LSR #+16
        MOVS     R0,R4
        BL       USART_Write
        ADDS     R5,R5,#+1
        B        ??UART_SendStr_0
??UART_SendStr_1:
        POP      {R0,R4,R5,LR}
        BX       LR               ;; return

        END
// 
// 636 bytes in section .text
// 
// 636 bytes of CODE memory
//
//Errors: none
//Warnings: none
