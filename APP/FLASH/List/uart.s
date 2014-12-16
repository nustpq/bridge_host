///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       16/Dec/2014  22:25:33
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Driver\uart.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Driver\uart.c" -lcN
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
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\uart.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN BSP_IntClr
        EXTERN BSP_IntEn
        EXTERN BSP_IntVectSet
        EXTERN OSSemCreate
        EXTERN OSSemDel
        EXTERN OSSemPend
        EXTERN OSSemPost
        EXTERN OSSemSet
        EXTERN OSTimeDly
        EXTERN OS_CPU_SR_Restore
        EXTERN OS_CPU_SR_Save
        EXTERN PIO_Configure
        EXTERN Queue_Create
        EXTERN Queue_Read
        EXTERN Queue_ReadBuf
        EXTERN Queue_Write
        EXTERN Queue_WriteBuf
        EXTERN Ruler_Power_Switch
        EXTERN __aeabi_uidiv
        EXTERN memcpy
        EXTERN memset
        EXTERN strlen
        EXTERN test_counter5

        PUBLIC DBGU_Configure
        PUBLIC DBGU_Read_Buff
        PUBLIC DBGU_Read_Byte
        PUBLIC DBGU_Read_NULL_RHR
        PUBLIC DBGU_Rx_Sem_lock
        PUBLIC DBGU_Tx_Sem_lock
        PUBLIC DBGU_Write_Buffer
        PUBLIC DBGU_Write_Byte
        PUBLIC ISR_PC_UART
        PUBLIC ISR_Ruler_UART
        PUBLIC UART0_Rece_Buf
        PUBLIC UART0_Rece_Buf_PDC
        PUBLIC UART0_Send_Buf
        PUBLIC UART0_Send_Buf_PDC
        PUBLIC UART1_Rece_Buf
        PUBLIC UART1_Rece_Buf_PDC
        PUBLIC UART1_Send_Buf
        PUBLIC UART1_Send_Buf_PDC
        PUBLIC UART2_Rece_Buf
        PUBLIC UART2_Rece_Buf_PDC
        PUBLIC UART2_Send_Buf
        PUBLIC UART2_Send_Buf_PDC
        PUBLIC UART_Init
        PUBLIC UART_Read
        PUBLIC UART_Write
        PUBLIC UART_WriteStart
        PUBLIC USART_Configure
        PUBLIC USART_Read_Timeout
        PUBLIC USART_SendBuf
        PUBLIC USART_SendBuf_Status
        PUBLIC USART_SendByte
        PUBLIC USART_SendStr
        PUBLIC USART_SetReceiverEnabled
        PUBLIC USART_SetTransmitterEnabled
        PUBLIC USART_Start_Ruler_Bootloader
        PUBLIC memcpy_simple
        PUBLIC pUART_Rece_Buf
        PUBLIC pUART_Rece_Buf_PDC
        PUBLIC pUART_Send_Buf
        PUBLIC pUART_Send_Buf_PDC


        SECTION `.bss`:DATA:REORDER:NOROOT(2)
DBGU_Tx_Sem_lock:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
DBGU_Rx_Sem_lock:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
UART0_Send_Buf:
        DS8 512

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
UART0_Rece_Buf:
        DS8 512

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
UART0_Send_Buf_PDC:
        DS8 32

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
UART0_Rece_Buf_PDC:
        DS8 32

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
UART1_Send_Buf:
        DS8 512

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
UART1_Rece_Buf:
        DS8 512

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
UART1_Send_Buf_PDC:
        DS8 32

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
UART1_Rece_Buf_PDC:
        DS8 32

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
UART2_Send_Buf:
        DS8 64

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
UART2_Rece_Buf:
        DS8 64

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
UART2_Send_Buf_PDC:
        DS8 32

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
UART2_Rece_Buf_PDC:
        DS8 32

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
USART_Sem:
        DS8 12

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
pUARTREG:
        DATA
        DC32 0FFFC0000H, 0FFFC4000H, 0FFFC8000H

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
UART_PINS:
        DATA
        DC32 12, 0FFFFF400H
        DC8 2, 0, 0, 0
        DC32 384, 0FFFFF400H
        DC8 2, 0, 0, 0
        DC32 1536, 0FFFFF400H
        DC8 2, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
UART_PID:
        DATA
        DC8 6, 7, 8, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
pUART_Send_Buf:
        DATA
        DC32 UART0_Send_Buf, UART1_Send_Buf, UART2_Send_Buf

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
pUART_Rece_Buf:
        DATA
        DC32 UART0_Rece_Buf, UART1_Rece_Buf, UART2_Rece_Buf

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
pUART_Send_Buf_PDC:
        DATA
        DC32 UART0_Send_Buf_PDC, UART1_Send_Buf_PDC, UART2_Send_Buf_PDC

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
pUART_Rece_Buf_PDC:
        DATA
        DC32 UART0_Rece_Buf_PDC, UART1_Rece_Buf_PDC, UART2_Rece_Buf_PDC

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
UART_Send_Buf_Size:
        DATA
        DC32 512, 512, 64

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
UART_Rece_Buf_Size:
        DATA
        DC32 512, 512, 64

        SECTION `.text`:CODE:NOROOT(2)
        ARM
UART_Init:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R0,#+0
        STRB     R0,[SP, #+0]
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+3
        BGE      ??UART_Init_0
        MOV      R1,#+1
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADD      R2,R0,R0, LSL #+1
        LDR      R0,??DataTable10
        ADDS     R0,R0,R2, LSL #+2
        BL       PIO_Configure
        MOV      R3,#+47972352
        ORR      R3,R3,#0x6C00
        MOVS     R2,R6
        MOV      R1,#+2240
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R12,??DataTable10_1
        LDR      R0,[R0, +R12]
        BL       USART_Configure
        MOV      R0,#+1
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R2,??DataTable10_2
        LDRSB    R1,[R1, +R2]
        LSLS     R0,R0,R1
        MVN      R1,#+239
        BIC      R1,R1,#0x300
        STR      R0,[R1, #+0]
        MVN      R0,#+0
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable10_1
        LDR      R1,[R1, +R2]
        STR      R0,[R1, #+12]
        MOV      R0,#+2048
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable10_1
        LDR      R1,[R1, +R2]
        STR      R0,[R1, #+0]
        MOV      R0,#+500
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable10_1
        LDR      R1,[R1, +R2]
        STR      R0,[R1, #+36]
        MOV      R0,#+0
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable10_1
        LDR      R1,[R1, +R2]
        STR      R0,[R1, #+268]
        MOV      R0,#+0
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable10_1
        LDR      R1,[R1, +R2]
        STR      R0,[R1, #+260]
        CMP      R5,#+0
        BNE      ??UART_Init_1
        MOVS     R2,SP
        MOV      R1,#+1
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R3,??DataTable11
        LDR      R0,[R0, +R3]
        BL       OSSemDel
        MOV      R0,#+1
        BL       OSSemCreate
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable11
        STR      R0,[R1, +R2]
        B        ??UART_Init_2
??UART_Init_1:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable11_1
        LDR      R0,[R0, +R1]
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable10_1
        LDR      R1,[R1, +R2]
        STR      R0,[R1, #+256]
        MOV      R0,#+32
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable10_1
        LDR      R1,[R1, +R2]
        STR      R0,[R1, #+260]
        MOV      R0,#+1
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable10_1
        LDR      R1,[R1, +R2]
        STR      R0,[R1, #+288]
        MOVS     R3,R5
        MOV      R2,#+0
        MOV      R1,#+0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R12,??DataTable10_2
        LDRB     R0,[R0, +R12]
        BL       BSP_IntVectSet
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable10_2
        LDRB     R0,[R0, +R1]
        BL       BSP_IntClr
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable10_2
        LDRB     R0,[R0, +R1]
        BL       BSP_IntEn
        MOV      R0,#+264
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable10_1
        LDR      R1,[R1, +R2]
        STR      R0,[R1, #+8]
??UART_Init_2:
        MOV      R1,#+1
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R2,??DataTable10_1
        LDR      R0,[R0, +R2]
        BL       USART_SetTransmitterEnabled
        MOV      R1,#+1
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R2,??DataTable10_1
        LDR      R0,[R0, +R2]
        BL       USART_SetReceiverEnabled
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable13
        LDR      R1,[R0, +R1]
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R2,??DataTable13_1
        LDR      R0,[R0, +R2]
        BL       Queue_Create
        CMP      R0,#+0
        BNE      ??UART_Init_3
        LDRB     R0,[SP, #+0]
        ADDS     R0,R0,#+1
        STRB     R0,[SP, #+0]
??UART_Init_3:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable13_2
        LDR      R1,[R0, +R1]
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R2,??DataTable14
        LDR      R0,[R0, +R2]
        BL       Queue_Create
        CMP      R0,#+0
        BNE      ??UART_Init_4
        LDRB     R0,[SP, #+0]
        ADDS     R0,R0,#+1
        STRB     R0,[SP, #+0]
        B        ??UART_Init_4
??UART_Init_0:
        MOV      R1,#+47972352
        ORR      R1,R1,#0x6C00
        MOVS     R0,R6
        BL       DBGU_Configure
        MOVS     R2,SP
        MOV      R1,#+1
        LDR      R0,??DataTable14_1
        LDR      R0,[R0, #+0]
        BL       OSSemSet
        MOVS     R2,SP
        MOV      R1,#+1
        LDR      R0,??DataTable15
        LDR      R0,[R0, #+0]
        BL       OSSemSet
??UART_Init_4:
        LDRB     R0,[SP, #+0]
        POP      {R1,R2,R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
UART_WriteStart:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R6,#+0
        MOV      R0,#+0
        MOVS     R5,R0
        BL       OS_CPU_SR_Save
        MOVS     R6,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable10_1
        LDR      R0,[R0, +R1]
        LDR      R0,[R0, #+268]
        CMP      R0,#+0
        BNE      ??UART_WriteStart_0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable10_1
        LDR      R0,[R0, +R1]
        LDR      R0,[R0, #+284]
        CMP      R0,#+0
        BNE      ??UART_WriteStart_0
        MOVS     R3,SP
        MOV      R2,#+32
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable13_1
        LDR      R1,[R0, +R1]
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R12,??DataTable15_1
        LDR      R0,[R0, +R12]
        BL       Queue_ReadBuf
        CMP      R0,#+1
        BNE      ??UART_WriteStart_1
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable15_1
        LDR      R0,[R0, +R1]
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable10_1
        LDR      R1,[R1, +R2]
        STR      R0,[R1, #+264]
        LDRH     R0,[SP, #+0]
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable10_1
        LDR      R1,[R1, +R2]
        STR      R0,[R1, #+268]
        MOV      R0,#+256
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable10_1
        LDR      R1,[R1, +R2]
        STR      R0,[R1, #+288]
        MOV      R0,#+16
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable10_1
        LDR      R1,[R1, +R2]
        STR      R0,[R1, #+8]
        B        ??UART_WriteStart_0
??UART_WriteStart_1:
        MOV      R0,#+1
        MOVS     R5,R0
        LDR      R0,??DataTable15_2
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable15_2
        STR      R0,[R1, #+0]
??UART_WriteStart_0:
        MOVS     R0,R6
        BL       OS_CPU_SR_Restore
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R1,R2,R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
UART_Write:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R7,#+0
        MOV      R0,#+0
        MOVS     R6,R0
        BL       OS_CPU_SR_Save
        MOVS     R7,R0
        MOVS     R1,R5
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R2,??DataTable13_1
        LDR      R0,[R0, +R2]
        BL       Queue_Write
        CMP      R0,#+1
        BEQ      ??UART_Write_0
        MOV      R0,#+1
        MOVS     R6,R0
??UART_Write_0:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable10_1
        LDR      R0,[R0, +R1]
        LDR      R0,[R0, #+268]
        CMP      R0,#+0
        BNE      ??UART_Write_1
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable10_1
        LDR      R0,[R0, +R1]
        LDR      R0,[R0, #+284]
        CMP      R0,#+0
        BNE      ??UART_Write_1
        MOVS     R3,SP
        MOV      R2,#+32
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable13_1
        LDR      R1,[R0, +R1]
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R12,??DataTable15_1
        LDR      R0,[R0, +R12]
        BL       Queue_ReadBuf
        CMP      R0,#+1
        BNE      ??UART_Write_2
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable15_1
        LDR      R0,[R0, +R1]
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable10_1
        LDR      R1,[R1, +R2]
        STR      R0,[R1, #+264]
        LDRH     R0,[SP, #+0]
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable10_1
        LDR      R1,[R1, +R2]
        STR      R0,[R1, #+268]
        MOV      R0,#+256
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable10_1
        LDR      R1,[R1, +R2]
        STR      R0,[R1, #+288]
        MOV      R0,#+16
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable10_1
        LDR      R1,[R1, +R2]
        STR      R0,[R1, #+8]
        B        ??UART_Write_1
??UART_Write_2:
        MOV      R0,#+2
        MOVS     R6,R0
??UART_Write_1:
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
UART_Read:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R0,#+0
        MOVS     R6,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable14
        LDR      R1,[R0, +R1]
        MOVS     R0,R5
        BL       Queue_Read
        CMP      R0,#+1
        BEQ      ??UART_Read_0
        MOV      R0,#+1
        MOVS     R6,R0
??UART_Read_0:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ISR_PC_UART:
        PUSH     {R3-R5,LR}
        MOV      R5,#+0
        MOV      R0,#+0
        STRH     R0,[SP, #+0]
        BL       OS_CPU_SR_Save
        MOVS     R5,R0
        MOV      R0,#+0
        MVN      R1,#+255
        BIC      R1,R1,#0xE00
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable10_1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+20]
        MOVS     R4,R0
        TST      R4,#0x10
        BEQ      ??ISR_PC_UART_0
        MOVS     R3,SP
        MOV      R2,#+32
        LDR      R0,??DataTable13_1
        LDR      R1,[R0, #+0]
        LDR      R0,??DataTable15_1
        LDR      R0,[R0, #+0]
        BL       Queue_ReadBuf
        CMP      R0,#+1
        BNE      ??ISR_PC_UART_1
        LDR      R0,??DataTable15_1
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable10_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+264]
        LDRH     R0,[SP, #+0]
        LDR      R1,??DataTable10_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+268]
        MOV      R0,#+256
        LDR      R1,??DataTable10_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+288]
        B        ??ISR_PC_UART_0
??ISR_PC_UART_1:
        MOV      R0,#+16
        LDR      R1,??DataTable10_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+12]
??ISR_PC_UART_0:
        TST      R4,#0x8
        BEQ      ??ISR_PC_UART_2
        MOV      R2,#+32
        LDR      R0,??DataTable14
        LDR      R1,[R0, #+0]
        LDR      R0,??DataTable11_1
        LDR      R0,[R0, #+0]
        BL       Queue_WriteBuf
        LDR      R0,??DataTable11_1
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable10_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+256]
        MOV      R0,#+32
        LDR      R1,??DataTable10_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+260]
        MOV      R0,#+1
        LDR      R1,??DataTable10_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+288]
??ISR_PC_UART_2:
        TST      R4,#0x100
        BEQ      ??ISR_PC_UART_3
        LDR      R0,??DataTable10_1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+260]
        RSBS     R2,R0,#+32
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        LDR      R0,??DataTable14
        LDR      R1,[R0, #+0]
        LDR      R0,??DataTable11_1
        LDR      R0,[R0, #+0]
        BL       Queue_WriteBuf
        LDR      R0,??DataTable11_1
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable10_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+256]
        MOV      R0,#+32
        LDR      R1,??DataTable10_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+260]
        MOV      R0,#+1
        LDR      R1,??DataTable10_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+288]
        MOV      R0,#+2048
        LDR      R1,??DataTable10_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+0]
        MOV      R0,#+500
        LDR      R1,??DataTable10_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+36]
??ISR_PC_UART_3:
        MOVS     R0,R5
        BL       OS_CPU_SR_Restore
        LDR      R0,??DataTable10_2
        LDRB     R0,[R0, #+0]
        BL       BSP_IntClr
        POP      {R0,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ISR_Ruler_UART:
        PUSH     {R3-R5,LR}
        MOV      R5,#+0
        MOV      R0,#+0
        STRH     R0,[SP, #+0]
        BL       OS_CPU_SR_Save
        MOVS     R5,R0
        MOV      R0,#+0
        MVN      R1,#+255
        BIC      R1,R1,#0xE00
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable10_1
        LDR      R0,[R0, #+4]
        LDR      R0,[R0, #+20]
        MOVS     R4,R0
        TST      R4,#0x10
        BEQ      ??ISR_Ruler_UART_0
        MOVS     R3,SP
        MOV      R2,#+32
        LDR      R0,??DataTable13_1
        LDR      R1,[R0, #+4]
        LDR      R0,??DataTable15_1
        LDR      R0,[R0, #+4]
        BL       Queue_ReadBuf
        CMP      R0,#+1
        BNE      ??ISR_Ruler_UART_1
        LDR      R0,??DataTable15_1
        LDR      R0,[R0, #+4]
        LDR      R1,??DataTable10_1
        LDR      R1,[R1, #+4]
        STR      R0,[R1, #+264]
        LDRH     R0,[SP, #+0]
        LDR      R1,??DataTable10_1
        LDR      R1,[R1, #+4]
        STR      R0,[R1, #+268]
        MOV      R0,#+256
        LDR      R1,??DataTable10_1
        LDR      R1,[R1, #+4]
        STR      R0,[R1, #+288]
        B        ??ISR_Ruler_UART_0
??ISR_Ruler_UART_1:
        MOV      R0,#+16
        LDR      R1,??DataTable10_1
        LDR      R1,[R1, #+4]
        STR      R0,[R1, #+12]
??ISR_Ruler_UART_0:
        TST      R4,#0x8
        BEQ      ??ISR_Ruler_UART_2
        MOV      R2,#+32
        LDR      R0,??DataTable14
        LDR      R1,[R0, #+4]
        LDR      R0,??DataTable11_1
        LDR      R0,[R0, #+4]
        BL       Queue_WriteBuf
        LDR      R0,??DataTable11_1
        LDR      R0,[R0, #+4]
        LDR      R1,??DataTable10_1
        LDR      R1,[R1, #+4]
        STR      R0,[R1, #+256]
        MOV      R0,#+32
        LDR      R1,??DataTable10_1
        LDR      R1,[R1, #+4]
        STR      R0,[R1, #+260]
        MOV      R0,#+1
        LDR      R1,??DataTable10_1
        LDR      R1,[R1, #+4]
        STR      R0,[R1, #+288]
??ISR_Ruler_UART_2:
        TST      R4,#0x100
        BEQ      ??ISR_Ruler_UART_3
        LDR      R0,??DataTable10_1
        LDR      R0,[R0, #+4]
        LDR      R0,[R0, #+260]
        RSBS     R2,R0,#+32
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        LDR      R0,??DataTable14
        LDR      R1,[R0, #+4]
        LDR      R0,??DataTable11_1
        LDR      R0,[R0, #+4]
        BL       Queue_WriteBuf
        LDR      R0,??DataTable11_1
        LDR      R0,[R0, #+4]
        LDR      R1,??DataTable10_1
        LDR      R1,[R1, #+4]
        STR      R0,[R1, #+256]
        MOV      R0,#+32
        LDR      R1,??DataTable10_1
        LDR      R1,[R1, #+4]
        STR      R0,[R1, #+260]
        MOV      R0,#+1
        LDR      R1,??DataTable10_1
        LDR      R1,[R1, #+4]
        STR      R0,[R1, #+288]
        MOV      R0,#+2048
        LDR      R1,??DataTable10_1
        LDR      R1,[R1, #+4]
        STR      R0,[R1, #+0]
        MOV      R0,#+500
        LDR      R1,??DataTable10_1
        LDR      R1,[R1, #+4]
        STR      R0,[R1, #+36]
??ISR_Ruler_UART_3:
        MOVS     R0,R5
        BL       OS_CPU_SR_Restore
        LDR      R0,??DataTable10_2
        LDRB     R0,[R0, #+1]
        BL       BSP_IntClr
        POP      {R0,R4,R5,LR}
        BX       LR               ;; return

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
        MOVS     R2,R1
        ANDS     R2,R2,#0xFF      ;; Zero extend
        CMP      R2,#+0
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
        MOVS     R2,R1
        ANDS     R2,R2,#0xFF      ;; Zero extend
        CMP      R2,#+0
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
USART_Read_Timeout:
        PUSH     {R4-R8,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOVS     R8,R7
        MOV      R0,#+0
        STRB     R0,[SP, #+0]
        MOVS     R2,SP
        MOV      R1,#+0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R3,??DataTable11
        LDR      R0,[R0, +R3]
        BL       OSSemPend
        MOV      R0,#+0
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable10_1
        LDR      R1,[R1, +R2]
        STR      R0,[R1, #+260]
        MOV      R0,#+0
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable10_1
        LDR      R1,[R1, +R2]
        STR      R0,[R1, #+276]
        MOV      R0,#+2048
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable10_1
        LDR      R1,[R1, +R2]
        STR      R0,[R1, #+0]
??USART_Read_Timeout_0:
        MOVS     R2,R6
        MOVS     R1,R5
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R3,??DataTable10_1
        LDR      R0,[R0, +R3]
        BL       USART_ReadBuffer
        CMP      R0,#+0
        BNE      ??USART_Read_Timeout_1
        MOV      R0,#+1
        BL       OSTimeDly
        B        ??USART_Read_Timeout_0
??USART_Read_Timeout_1:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable10_1
        LDR      R0,[R0, +R1]
        LDR      R0,[R0, #+20]
        TST      R0,#0x100
        BNE      ??USART_Read_Timeout_2
        MOV      R0,#+1
        BL       OSTimeDly
        SUBS     R8,R8,#+1
        CMP      R8,#+0
        BNE      ??USART_Read_Timeout_1
        MOV      R0,#+189
        STRB     R0,[SP, #+0]
??USART_Read_Timeout_2:
        MOV      R0,#+2
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable10_1
        LDR      R1,[R1, +R2]
        STR      R0,[R1, #+288]
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable11
        LDR      R0,[R0, +R1]
        BL       OSSemPost
        LDRB     R0,[SP, #+0]
        POP      {R1,R2,R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
USART_SendByte:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,SP
        MOV      R1,#+0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R3,??DataTable11
        LDR      R0,[R0, +R3]
        BL       OSSemPend
??USART_SendByte_0:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable10_1
        LDR      R0,[R0, +R1]
        LDR      R0,[R0, #+20]
        TST      R0,#0x200
        BNE      ??USART_SendByte_1
        MOV      R0,#+1
        BL       OSTimeDly
        B        ??USART_SendByte_0
??USART_SendByte_1:
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable10_1
        LDR      R1,[R1, +R2]
        STR      R0,[R1, #+28]
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable11
        LDR      R0,[R0, +R1]
        BL       OSSemPost
        POP      {R0,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
USART_SendBuf:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R2,SP
        MOV      R1,#+0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R3,??DataTable11
        LDR      R0,[R0, +R3]
        BL       OSSemPend
        MOVS     R2,R6
        MOVS     R1,R5
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R3,??DataTable10_1
        LDR      R0,[R0, +R3]
        BL       USART_WriteBuffer
        STRB     R0,[SP, #+0]
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable11
        LDR      R0,[R0, +R1]
        BL       OSSemPost
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BNE      ??USART_SendBuf_0
        MOV      R0,#+1
        B        ??USART_SendBuf_1
??USART_SendBuf_0:
        MOV      R0,#+0
??USART_SendBuf_1:
        STRB     R0,[SP, #+0]
        LDRB     R0,[SP, #+0]
        POP      {R1,R2,R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
USART_SendBuf_Status:
        MOVS     R1,R0
        MOVS     R2,R1
        ANDS     R2,R2,#0xFF      ;; Zero extend
        LSLS     R2,R2,#+2
        LDR      R3,??DataTable10_1
        LDR      R2,[R2, +R3]
        LDR      R2,[R2, #+288]
        CMP      R2,#+0
        BNE      ??USART_SendBuf_Status_0
        MOVS     R2,R1
        ANDS     R2,R2,#0xFF      ;; Zero extend
        LSLS     R2,R2,#+2
        LDR      R3,??DataTable10_1
        LDR      R2,[R2, +R3]
        LDR      R2,[R2, #+284]
        CMP      R2,#+0
        BNE      ??USART_SendBuf_Status_0
        MOV      R2,#+0
        MOVS     R0,R2
        B        ??USART_SendBuf_Status_1
??USART_SendBuf_Status_0:
        MOV      R2,#+1
        MOVS     R0,R2
??USART_SendBuf_Status_1:
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
USART_SendStr:
        PUSH     {R3-R5,LR}
        MOVS     R5,R0
        MOVS     R4,R1
        MOVS     R2,SP
        MOV      R1,#+0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R3,??DataTable11
        LDR      R0,[R0, +R3]
        BL       OSSemPend
        MOVS     R0,R4
        BL       strlen
        MOVS     R2,R0
        MOVS     R1,R4
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R3,??DataTable13_1
        LDR      R0,[R0, +R3]
        BL       memcpy
        MOVS     R0,R4
        BL       strlen
        MOVS     R2,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable13_1
        LDR      R1,[R0, +R1]
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R3,??DataTable10_1
        LDR      R0,[R0, +R3]
        BL       USART_WriteBuffer
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable11
        LDR      R0,[R0, +R1]
        BL       OSSemPost
        POP      {R0,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     UART_PINS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     pUARTREG

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_2:
        DC32     UART_PID

        SECTION `.text`:CODE:NOROOT(2)
        ARM
DBGU_Configure:
        PUSH     {R4,R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MVN      R0,#+251
        BIC      R0,R0,#0xB00
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0xC0000000
        MVN      R1,#+251
        BIC      R1,R1,#0xB00
        STR      R0,[R1, #+0]
        MVN      R0,#+143
        BIC      R0,R0,#0xB00
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0xC0000000
        MVN      R1,#+143
        BIC      R1,R1,#0xB00
        STR      R0,[R1, #+0]
        MOV      R0,#+12
        MVN      R1,#+255
        BIC      R1,R1,#0xD00
        STR      R0,[R1, #+0]
        MOV      R0,#+3
        MVN      R1,#+243
        BIC      R1,R1,#0xD00
        STR      R0,[R1, #+0]
        MOV      R0,#+80
        MVN      R1,#+255
        BIC      R1,R1,#0xD00
        STR      R0,[R1, #+0]
        MOV      R0,#+2048
        MVN      R1,#+251
        BIC      R1,R1,#0xD00
        STR      R0,[R1, #+0]
        MOV      R0,#+47972352
        ORR      R0,R0,#0x6C00
        MOVS     R1,R4
        BL       __aeabi_uidiv
        LSRS     R0,R0,#+4
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        MVN      R1,#+223
        BIC      R1,R1,#0xD00
        STR      R0,[R1, #+0]
        MOV      R0,#+2
        MVN      R1,#+239
        BIC      R1,R1,#0x300
        STR      R0,[R1, #+0]
        POP      {R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
DBGU_Write_Byte:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R2,SP
        MOV      R1,#+0
        LDR      R0,??DataTable15
        LDR      R0,[R0, #+0]
        BL       OSSemPend
??DBGU_Write_Byte_0:
        MVN      R0,#+235
        BIC      R0,R0,#0xD00
        LDR      R0,[R0, #+0]
        TST      R0,#0x2
        BEQ      ??DBGU_Write_Byte_0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        MVN      R1,#+227
        BIC      R1,R1,#0xD00
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable15
        LDR      R0,[R0, #+0]
        BL       OSSemPost
        POP      {R0,R1,R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     USART_Sem

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_1:
        DC32     pUART_Rece_Buf_PDC

        SECTION `.text`:CODE:NOROOT(2)
        ARM
DBGU_Read_Byte:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R0,#+0
        STRB     R0,[SP, #+0]
        MOVS     R2,SP
        MOV      R1,#+0
        LDR      R0,??DataTable14_1
        LDR      R0,[R0, #+0]
        BL       OSSemPend
??DBGU_Read_Byte_0:
        MVN      R0,#+235
        BIC      R0,R0,#0xD00
        LDR      R0,[R0, #+0]
        TST      R0,#0x1
        BNE      ??DBGU_Read_Byte_1
        MOV      R0,#+1
        BL       OSTimeDly
        MOVS     R0,R5
        SUBS     R5,R0,#+1
        CMP      R0,#+0
        BNE      ??DBGU_Read_Byte_0
        MOV      R0,#+1
        STRB     R0,[SP, #+0]
??DBGU_Read_Byte_1:
        MVN      R0,#+231
        BIC      R0,R0,#0xD00
        LDR      R0,[R0, #+0]
        STRB     R0,[R4, #+0]
        LDR      R0,??DataTable14_1
        LDR      R0,[R0, #+0]
        BL       OSSemPost
        LDRB     R0,[SP, #+0]
        POP      {R1,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
DBGU_Read_NULL_RHR:
        MVN      R0,#+231
        BIC      R0,R0,#0xD00
        LDR      R0,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
DBGU_Write_Buffer:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,SP
        MOV      R1,#+0
        LDR      R0,??DataTable15
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        MOV      R0,#+0
        MOVS     R6,R0
??DBGU_Write_Buffer_0:
        CMP      R6,R5
        BCS      ??DBGU_Write_Buffer_1
??DBGU_Write_Buffer_2:
        MVN      R0,#+235
        BIC      R0,R0,#0xD00
        LDR      R0,[R0, #+0]
        TST      R0,#0x2
        BEQ      ??DBGU_Write_Buffer_2
        LDRB     R0,[R6, +R4]
        MVN      R1,#+227
        BIC      R1,R1,#0xD00
        STR      R0,[R1, #+0]
        ADDS     R6,R6,#+1
        B        ??DBGU_Write_Buffer_0
??DBGU_Write_Buffer_1:
        LDR      R0,??DataTable15
        LDR      R0,[R0, #+0]
        BL       OSSemPost
        POP      {R0,R1,R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13:
        DC32     UART_Send_Buf_Size

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_1:
        DC32     pUART_Send_Buf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_2:
        DC32     UART_Rece_Buf_Size

        SECTION `.text`:CODE:NOROOT(2)
        ARM
DBGU_Read_Buff:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R0,#+0
        STRB     R0,[SP, #+0]
        MOVS     R2,SP
        MOV      R1,#+0
        LDR      R0,??DataTable14_1
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        MOV      R0,#+0
        MOVS     R7,R0
??DBGU_Read_Buff_0:
        CMP      R7,R5
        BCS      ??DBGU_Read_Buff_1
??DBGU_Read_Buff_2:
        MVN      R0,#+235
        BIC      R0,R0,#0xD00
        LDR      R0,[R0, #+0]
        TST      R0,#0x1
        BNE      ??DBGU_Read_Buff_3
        MOV      R0,#+1
        BL       OSTimeDly
        MOVS     R0,R6
        SUBS     R6,R0,#+1
        CMP      R0,#+0
        BNE      ??DBGU_Read_Buff_2
        MOV      R0,#+1
        STRB     R0,[SP, #+0]
        LDR      R0,??DataTable14_1
        LDR      R0,[R0, #+0]
        BL       OSSemPost
        LDRB     R0,[SP, #+0]
        B        ??DBGU_Read_Buff_4
??DBGU_Read_Buff_3:
        MVN      R0,#+231
        BIC      R0,R0,#0xD00
        LDR      R0,[R0, #+0]
        STRB     R0,[R7, +R4]
        ADDS     R7,R7,#+1
        B        ??DBGU_Read_Buff_0
??DBGU_Read_Buff_1:
        LDR      R0,??DataTable14_1
        LDR      R0,[R0, #+0]
        BL       OSSemPost
        LDRB     R0,[SP, #+0]
??DBGU_Read_Buff_4:
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14:
        DC32     pUART_Rece_Buf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_1:
        DC32     DBGU_Rx_Sem_lock

        SECTION `.text`:CODE:NOROOT(2)
        ARM
USART_Start_Ruler_Bootloader:
        PUSH     {R4,LR}
        SUB      SP,SP,#+16
        LDR      R0,??DataTable15_3
        LDR      R4,[R0, #+4]
        MOV      R0,#+512
        STR      R0,[R4, #+288]
        LDR      R0,[R4, #+268]
        CMP      R0,#+0
        BNE      ??USART_Start_Ruler_Bootloader_0
        LDR      R0,[R4, #+284]
        CMP      R0,#+0
        BEQ      ??USART_Start_Ruler_Bootloader_1
??USART_Start_Ruler_Bootloader_0:
        MOV      R0,#+1
        B        ??USART_Start_Ruler_Bootloader_2
??USART_Start_Ruler_Bootloader_1:
        MOV      R2,#+9
        MOV      R1,#+100
        MOVS     R0,SP
        BL       memset
        MOVS     R0,SP
        STR      R0,[R4, #+264]
        MOV      R0,#+9
        STR      R0,[R4, #+268]
        MOV      R0,#+0
        BL       Ruler_Power_Switch
        MOV      R0,#+50
        BL       OSTimeDly
        MOV      R0,#+1
        BL       Ruler_Power_Switch
        MOV      R0,#+200
        BL       OSTimeDly
        MOV      R0,#+256
        STR      R0,[R4, #+288]
        MOV      R0,#+800
        BL       OSTimeDly
        MOV      R3,#+136
        ORR      R3,R3,#0x1300
        MOV      R2,#+3
        MOVS     R1,SP
        MOV      R0,#+1
        BL       USART_Read_Timeout
        CMP      R0,#+0
        BNE      ??USART_Start_Ruler_Bootloader_3
        LDRB     R0,[SP, #+0]
        CMP      R0,#+99
        BEQ      ??USART_Start_Ruler_Bootloader_4
        LDRB     R0,[SP, #+0]
        CMP      R0,#+67
        BNE      ??USART_Start_Ruler_Bootloader_3
??USART_Start_Ruler_Bootloader_4:
        MOV      R0,#+0
        B        ??USART_Start_Ruler_Bootloader_2
??USART_Start_Ruler_Bootloader_3:
        MOV      R0,#+2
??USART_Start_Ruler_Bootloader_2:
        ADD      SP,SP,#+16       ;; stack cleaning
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15:
        DC32     DBGU_Tx_Sem_lock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_1:
        DC32     pUART_Send_Buf_PDC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_2:
        DC32     test_counter5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_3:
        DC32     pUARTREG

        SECTION `.text`:CODE:NOROOT(2)
        ARM
memcpy_simple:
??memcpy_simple_0:
        CMP      R2,#+0
        BEQ      ??memcpy_simple_1
        LDRB     R3,[R1, #+0]
        STRB     R3,[R0, #+0]
        ADDS     R1,R1,#+1
        ADDS     R0,R0,#+1
        SUBS     R2,R2,#+1
        B        ??memcpy_simple_0
??memcpy_simple_1:
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
// 2 388 bytes in section .bss
//   124 bytes in section .rodata
// 4 716 bytes in section .text
// 
// 4 716 bytes of CODE  memory
//   124 bytes of CONST memory
// 2 388 bytes of DATA  memory
//
//Errors: none
//Warnings: none
