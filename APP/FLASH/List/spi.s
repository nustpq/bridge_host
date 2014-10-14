///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       05/Sep/2014  09:57:07
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Driver\spi.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Driver\spi.c" -lcN
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
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\spi.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN OSSemCreate
        EXTERN OSSemPend
        EXTERN OSSemPost
        EXTERN OSTimeDly
        EXTERN PIO_Configure
        EXTERN __aeabi_uidiv
        EXTERN delay_us

        PUBLIC SPI_Configure
        PUBLIC SPI_ConfigureNPCS
        PUBLIC SPI_Disable
        PUBLIC SPI_Enable
        PUBLIC SPI_Init
        PUBLIC SPI_Initialize
        PUBLIC SPI_IsFinished
        PUBLIC SPI_Read
        PUBLIC SPI_ReadBuffer
        PUBLIC SPI_Sem
        PUBLIC SPI_Write
        PUBLIC SPI_WriteBuffer
        PUBLIC SPI_WriteBuffer_API
        PUBLIC Select_FPGA_Channel
        PUBLIC spi_fpga


        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
spi_pins:
        DATA
        DC32 32768, 0FFFFF400H
        DC8 2, 0, 1, 0
        DC32 65536, 0FFFFF400H
        DC8 2, 0, 0, 0
        DC32 131072, 0FFFFF400H
        DC8 2, 0, 0, 0
        DC32 16384, 0FFFFF400H
        DC8 2, 0, 0, 0

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
SPI_Sem:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
spi_fpga:
        DATA
        DC32 0FFFE0000H

        SECTION `.text`:CODE:NOROOT(2)
        ARM
SPI_Enable:
        MOV      R1,#+1
        STR      R1,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
SPI_Disable:
        MOV      R1,#+2
        STR      R1,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
SPI_Configure:
        MOV      R3,#+1
        LSLS     R3,R3,R1
        MVN      R12,#+239
        BIC      R12,R12,#0x300
        STR      R3,[R12, #+0]
        MOV      R3,#+2
        STR      R3,[R0, #+0]
        MOV      R3,#+128
        STR      R3,[R0, #+0]
        MOV      R3,#+128
        STR      R3,[R0, #+0]
        STR      R2,[R0, #+4]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
SPI_ConfigureNPCS:
        LSLS     R3,R1,#+2
        ADDS     R3,R3,R0
        STR      R2,[R3, #+48]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
SPI_Write:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R2,SP
        MOV      R1,#+0
        LDR      R0,??DataTable4
        LDR      R0,[R0, #+0]
        BL       OSSemPend
??SPI_Write_0:
        LDR      R0,[R4, #+16]
        TST      R0,#0x200
        BEQ      ??SPI_Write_0
        MOVS     R0,R6
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        MOV      R1,#+1
        MVNS     R1,R1, LSL R5
        ANDS     R1,R1,#0xF
        ORRS     R0,R0,R1, LSL #+16
        STR      R0,[R4, #+12]
??SPI_Write_1:
        LDR      R0,[R4, #+16]
        TST      R0,#0x2
        BEQ      ??SPI_Write_1
        LDR      R0,??DataTable4
        LDR      R0,[R0, #+0]
        BL       OSSemPost
        POP      {R0,R1,R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
SPI_WriteBuffer:
        MOVS     R3,R0
        LDR      R0,[R3, #+268]
        CMP      R0,#+0
        BNE      ??SPI_WriteBuffer_0
        STR      R1,[R3, #+264]
        STR      R2,[R3, #+268]
        MOV      R0,#+256
        STR      R0,[R3, #+288]
        MOV      R0,#+1
        B        ??SPI_WriteBuffer_1
??SPI_WriteBuffer_0:
        LDR      R0,[R3, #+284]
        CMP      R0,#+0
        BNE      ??SPI_WriteBuffer_2
        STR      R1,[R3, #+280]
        STR      R2,[R3, #+284]
        MOV      R0,#+1
        B        ??SPI_WriteBuffer_1
??SPI_WriteBuffer_2:
        MOV      R0,#+0
??SPI_WriteBuffer_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
SPI_IsFinished:
        LDR      R0,[R0, #+16]
        ANDS     R0,R0,#0x200
        LSRS     R0,R0,#+9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
SPI_Read:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R2,SP
        MOV      R1,#+0
        LDR      R0,??DataTable4
        LDR      R0,[R0, #+0]
        BL       OSSemPend
??SPI_Read_0:
        LDR      R0,[R4, #+16]
        TST      R0,#0x1
        BEQ      ??SPI_Read_0
        MOV      R0,#+100
        BL       delay_us
        LDR      R0,[R4, #+8]
        MOVS     R5,R0
        LDR      R0,??DataTable4
        LDR      R0,[R0, #+0]
        BL       OSSemPost
        MOVS     R0,R5
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        POP      {R1,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
SPI_ReadBuffer:
        MOVS     R3,R0
        LDR      R0,[R3, #+260]
        CMP      R0,#+0
        BNE      ??SPI_ReadBuffer_0
        STR      R1,[R3, #+256]
        STR      R2,[R3, #+260]
        MOV      R0,#+1
        STR      R0,[R3, #+288]
        MOV      R0,#+1
        B        ??SPI_ReadBuffer_1
??SPI_ReadBuffer_0:
        LDR      R0,[R3, #+276]
        CMP      R0,#+0
        BNE      ??SPI_ReadBuffer_2
        STR      R1,[R3, #+272]
        STR      R2,[R3, #+276]
        MOV      R0,#+1
        B        ??SPI_ReadBuffer_1
??SPI_ReadBuffer_2:
        MOV      R0,#+0
??SPI_ReadBuffer_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
SPI_WriteBuffer_API:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R7,#+0
        MOVS     R2,SP
        MOV      R1,#+0
        LDR      R0,??DataTable4
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        MOVS     R2,R5
        MOVS     R1,R4
        LDR      R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        BL       SPI_WriteBuffer
        MOVS     R6,R0
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??SPI_WriteBuffer_API_0
??SPI_WriteBuffer_API_1:
        LDR      R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        BL       SPI_IsFinished
        CMP      R0,#+0
        BNE      ??SPI_WriteBuffer_API_0
        MOV      R0,#+1
        BL       OSTimeDly
        MOVS     R0,R7
        ADDS     R7,R0,#+1
        MOV      R1,#+209
        ORR      R1,R1,#0x700
        CMP      R0,R1
        BCC      ??SPI_WriteBuffer_API_1
        MOV      R0,#+0
        MOVS     R6,R0
??SPI_WriteBuffer_API_0:
        LDR      R0,??DataTable4
        LDR      R0,[R0, #+0]
        BL       OSSemPost
        ANDS     R6,R6,#0xFF      ;; Zero extend
        CMP      R6,#+0
        BNE      ??SPI_WriteBuffer_API_2
        MOV      R0,#+1
        B        ??SPI_WriteBuffer_API_3
??SPI_WriteBuffer_API_2:
        MOV      R0,#+0
??SPI_WriteBuffer_API_3:
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
SPI_Initialize:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOVS     R0,R7
        MOVS     R1,R6
        BL       __aeabi_uidiv
        MOVS     R8,R0
        CMP      R8,#+256
        BCC      ??SPI_Initialize_0
        MOV      R0,#+255
        MOVS     R8,R0
??SPI_Initialize_0:
        MOV      R0,#+1
        BL       OSSemCreate
        LDR      R1,??DataTable4
        STR      R0,[R1, #+0]
        MOV      R1,#+4
        LDR      R0,??DataTable4_2
        BL       PIO_Configure
        MOV      R2,#+17
        ORR      R2,R2,#0x70000
        MOV      R1,#+11
        MOVS     R0,R4
        BL       SPI_Configure
        MOVS     R0,R4
        BL       SPI_Enable
        MOV      R0,#+9
        ORRS     R2,R0,R8, LSL #+8
        MOVS     R1,R5
        MOVS     R0,R4
        BL       SPI_ConfigureNPCS
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
SPI_Init:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOV      R3,#+47972352
        ORR      R3,R3,#0x6C00
        MOVS     R2,R4
        MOV      R1,#+3
        LDR      R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        BL       SPI_Initialize
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     SPI_Sem

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     spi_fpga

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     spi_pins

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Select_FPGA_Channel:
        PUSH     {R0,R4,LR}
        SUB      SP,SP,#+4
        MOV      R1,#+4
        ADD      R0,SP,#+4
        BL       SPI_WriteBuffer_API
        MOVS     R4,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R1,R2,R4,LR}
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
//   4 bytes in section .bss
//   4 bytes in section .data
//  48 bytes in section .rodata
// 884 bytes in section .text
// 
// 884 bytes of CODE  memory
//  48 bytes of CONST memory
//   8 bytes of DATA  memory
//
//Errors: none
//Warnings: none
