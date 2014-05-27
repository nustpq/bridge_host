///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V5.40.0.51500/W32 for ARM    24/Nov/2011  15:44:26 /
// Copyright (C) 1999-2009 IAR Systems AB.                                    /
//                                                                            /
//    Cpu mode     =  arm                                                     /
//    Endian       =  little                                                  /
//    Source file  =  L:\SII_UCOS\Micrium_SAM7X256\Software\APP\task_uart.c   /
//    Command line =  L:\SII_UCOS\Micrium_SAM7X256\Software\APP\task_uart.c   /
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
//                    VER\ -I L:\SII_UCOS\Micrium_SAM7X256\Software\APP\..\NO /
//                    AH\ -I L:\SII_UCOS\Micrium_SAM7X256\Software\APP\..\uCO /
//                    S-II\Source\ -I L:\SII_UCOS\Micrium_SAM7X256\Software\A /
//                    PP\..\uC-CPU\ -I L:\SII_UCOS\Micrium_SAM7X256\Software\ /
//                    APP\..\uC-LIB\ -I L:\SII_UCOS\Micrium_SAM7X256\Software /
//                    \APP\..\uC-CPU\ARM\IAR\ -I                              /
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
//    List file    =  L:\SII_UCOS\Micrium_SAM7X256\Software\APP\FLASH\List\ta /
//                    sk_uart.s                                               /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME task_uart

        EXTERN ACK_Sem_Mbox
        EXTERN OSMboxAccept
        EXTERN OSMemPut
        EXTERN OSQAccept
        EXTERN OSQGet
        EXTERN OSTimeDly
        EXTERN PC_CMD_Read
        EXTERN Queue_NData
        EXTERN Queue_Read
        EXTERN Queue_WriteBuf
        EXTERN UART1_Rece_Buf
        EXTERN UART1_Send_Buf
        EXTERN UART_WriteStart

        PUBLIC App_TaskUART_Rx
        PUBLIC App_TaskUART_Tx
        PUBLIC EVENT_MsgTask02Uart
        PUBLIC EVENT_MsgUart2Task0
        PUBLIC MemPartition_MsgUART
        PUBLIC MsgTask02UartQueue
        PUBLIC MsgUart2Task0Queue
        PUBLIC USART_Sem
        PUBLIC pMEM_Part_MsgUART


        SECTION `.bss`:DATA:NOROOT(2)
pMEM_Part_MsgUART:
        DS8 4

        SECTION `.bss`:DATA:NOROOT(2)
MemPartition_MsgUART:
        DS8 5200

        SECTION `.bss`:DATA:NOROOT(2)
MsgUart2Task0Queue:
        DS8 64

        SECTION `.bss`:DATA:NOROOT(2)
MsgTask02UartQueue:
        DS8 64

        SECTION `.bss`:DATA:NOROOT(2)
EVENT_MsgTask02Uart:
        DS8 4

        SECTION `.bss`:DATA:NOROOT(2)
EVENT_MsgUart2Task0:
        DS8 4

        SECTION `.bss`:DATA:NOROOT(2)
USART_Sem:
        DS8 12

        SECTION `.text`:CODE:NOROOT(2)
        ARM
App_TaskUART_Tx:
        PUSH     {R4-R8,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+0
        MOVS     R6,R0
        MOV      R0,#+0
        MOVS     R8,R0
        MOV      R0,#+0
        MOVS     R5,R0
??App_TaskUART_Tx_0:
        MOVS     R1,SP
        LDR      R0,??App_TaskUART_Tx_1  ;; EVENT_MsgTask02Uart
        LDR      R0,[R0, #+0]
        BL       OSQGet
        MOVS     R6,R0
        CMP      R6,#+0
        BEQ      ??App_TaskUART_Tx_2
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BNE      ??App_TaskUART_Tx_2
        LDR      R0,??App_TaskUART_Tx_1+0x4  ;; ACK_Sem_Mbox
        LDR      R0,[R0, #+0]
        BL       OSMboxAccept
        MOVS     R7,R0
        CMP      R7,#+0
        BEQ      ??App_TaskUART_Tx_3
        LDRB     R0,[R7, #+0]
        ANDS     R5,R5,#0xFF      ;; Zero extend
        CMP      R0,R5
        BNE      ??App_TaskUART_Tx_3
        MOVS     R1,SP
        LDR      R0,??App_TaskUART_Tx_1  ;; EVENT_MsgTask02Uart
        LDR      R0,[R0, #+0]
        BL       OSQAccept
        MOVS     R1,R6
        LDR      R0,??App_TaskUART_Tx_1+0x8  ;; pMEM_Part_MsgUART
        LDR      R0,[R0, #+0]
        BL       OSMemPut
        ADDS     R5,R5,#+64
        B        ??App_TaskUART_Tx_2
??App_TaskUART_Tx_3:
        ADDS     R0,R6,#+2
        MOVS     R8,R0
        LDRB     R0,[R8, #+0]
        ANDS     R0,R0,#0x3F
        CMP      R0,#+2
        BNE      ??App_TaskUART_Tx_4
        ANDS     R0,R5,#0xC0
        ORRS     R0,R0,#0x2
        STRB     R0,[R8, #+0]
        LDRB     R0,[R8, #+1]
        ADDS     R2,R0,#+5
        ANDS     R2,R2,#0xFF      ;; Zero extend
        LDR      R1,??App_TaskUART_Tx_1+0xC  ;; UART1_Send_Buf
        MOVS     R0,R6
        BL       Queue_WriteBuf
        MOV      R0,#+1
        BL       UART_WriteStart
        B        ??App_TaskUART_Tx_2
??App_TaskUART_Tx_4:
        MOV      R2,#+4
        LDR      R1,??App_TaskUART_Tx_1+0xC  ;; UART1_Send_Buf
        MOVS     R0,R6
        BL       Queue_WriteBuf
        MOVS     R1,SP
        LDR      R0,??App_TaskUART_Tx_1  ;; EVENT_MsgTask02Uart
        LDR      R0,[R0, #+0]
        BL       OSQAccept
        MOVS     R1,R6
        LDR      R0,??App_TaskUART_Tx_1+0x8  ;; pMEM_Part_MsgUART
        LDR      R0,[R0, #+0]
        BL       OSMemPut
        MOV      R0,#+1
        BL       UART_WriteStart
??App_TaskUART_Tx_2:
        MOV      R0,#+2
        BL       OSTimeDly
        B        ??App_TaskUART_Tx_0
        DATA
??App_TaskUART_Tx_1:
        DC32     EVENT_MsgTask02Uart
        DC32     ACK_Sem_Mbox
        DC32     pMEM_Part_MsgUART
        DC32     UART1_Send_Buf

        SECTION `.text`:CODE:NOROOT(2)
        ARM
App_TaskUART_Rx:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
??App_TaskUART_Rx_0:
        LDR      R0,??App_TaskUART_Rx_1  ;; UART1_Rece_Buf
        BL       Queue_NData
        MOVS     R5,R0
??App_TaskUART_Rx_2:
        MOVS     R0,R5
        SUBS     R5,R0,#+1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??App_TaskUART_Rx_3
        LDR      R1,??App_TaskUART_Rx_1  ;; UART1_Rece_Buf
        MOVS     R0,SP
        BL       Queue_Read
        LDRB     R0,[SP, #+0]
        BL       PC_CMD_Read
        B        ??App_TaskUART_Rx_2
??App_TaskUART_Rx_3:
        MOV      R0,#+10
        BL       OSTimeDly
        B        ??App_TaskUART_Rx_0
        DATA
??App_TaskUART_Rx_1:
        DC32     UART1_Rece_Buf

        END
// 
// 5 352 bytes in section .bss
//   392 bytes in section .text
// 
//   392 bytes of CODE memory
// 5 352 bytes of DATA memory
//
//Errors: none
//Warnings: 1
