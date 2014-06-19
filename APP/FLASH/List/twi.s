///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       13/Jun/2014  16:27:50
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Driver\twi.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Driver\twi.c" -lcN
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
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\twi.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_uidiv
        EXTERN power

        PUBLIC TWI_ByteReceived
        PUBLIC TWI_ByteSent
        PUBLIC TWI_ConfigureMaster
        PUBLIC TWI_DisableIt
        PUBLIC TWI_EnableIt
        PUBLIC TWI_GetMaskedStatus
        PUBLIC TWI_GetStatus
        PUBLIC TWI_ReadByte
        PUBLIC TWI_SendSTOPCondition
        PUBLIC TWI_StartRead
        PUBLIC TWI_StartWrite
        PUBLIC TWI_Stop
        PUBLIC TWI_TransferComplete
        PUBLIC TWI_WriteByte


        SECTION `.text`:CODE:NOROOT(2)
        ARM
TWI_ConfigureMaster:
        PUSH     {R4-R10,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R7,#+0
        MOV      R9,#+0
        MOV      R0,#+128
        STR      R0,[R4, #+0]
        LDR      R0,[R4, #+48]
        MOV      R1,#+8
        STR      R1,[R4, #+0]
        MOV      R1,#+4
        STR      R1,[R4, #+0]
??TWI_ConfigureMaster_0:
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??TWI_ConfigureMaster_1
        MOVS     R0,R6
        LSLS     R1,R5,#+1
        BL       __aeabi_uidiv
        SUBS     R0,R0,#+3
        MOVS     R10,R0
        MOVS     R1,R7
        MOV      R0,#+2
        BL       power
        MOVS     R1,R0
        MOVS     R0,R10
        BL       __aeabi_uidiv
        MOVS     R8,R0
        CMP      R8,#+256
        BCS      ??TWI_ConfigureMaster_2
        MOV      R0,#+1
        MOVS     R9,R0
        B        ??TWI_ConfigureMaster_0
??TWI_ConfigureMaster_2:
        ADDS     R7,R7,#+1
        B        ??TWI_ConfigureMaster_0
??TWI_ConfigureMaster_1:
        MOV      R0,#+0
        STR      R0,[R4, #+16]
        LSLS     R0,R8,#+8
        ORRS     R0,R0,R7, LSL #+16
        ORRS     R0,R8,R0
        STR      R0,[R4, #+16]
        POP      {R4-R10,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
TWI_Stop:
        MOV      R1,#+2
        STR      R1,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
TWI_StartRead:
        PUSH     {LR}
        MOV      R12,#+0
        STR      R12,[R0, #+4]
        MOVS     R12,R3
        ANDS     R12,R12,#0xFF    ;; Zero extend
        MOVS     LR,R1
        ANDS     LR,LR,#0xFF      ;; Zero extend
        LSLS     LR,LR,#+16
        ORRS     R12,LR,R12, LSL #+8
        ORRS     R12,R12,#0x1000
        STR      R12,[R0, #+4]
        MOV      R12,#+0
        STR      R12,[R0, #+12]
        STR      R2,[R0, #+12]
        MOV      R12,#+1
        STR      R12,[R0, #+0]
        POP      {LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
TWI_ReadByte:
        LDR      R0,[R0, #+48]
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
TWI_WriteByte:
        MOVS     R2,R1
        ANDS     R2,R2,#0xFF      ;; Zero extend
        STR      R2,[R0, #+52]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
TWI_StartWrite:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R7,R1
        MOVS     R5,R2
        MOVS     R6,R3
        LDRB     R8,[SP, #+24]
        MOV      R0,#+0
        STR      R0,[R4, #+4]
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        MOVS     R1,R7
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+16
        ORRS     R0,R1,R0, LSL #+8
        STR      R0,[R4, #+4]
        MOV      R0,#+0
        STR      R0,[R4, #+12]
        STR      R5,[R4, #+12]
        MOVS     R1,R8
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOVS     R0,R4
        BL       TWI_WriteByte
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
TWI_ByteReceived:
        LDR      R0,[R0, #+32]
        ANDS     R0,R0,#0x2
        LSRS     R0,R0,#+1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
TWI_ByteSent:
        LDR      R0,[R0, #+32]
        ANDS     R0,R0,#0x4
        LSRS     R0,R0,#+2
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
TWI_TransferComplete:
        LDR      R0,[R0, #+32]
        ANDS     R0,R0,#0x1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
TWI_EnableIt:
        STR      R1,[R0, #+36]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
TWI_DisableIt:
        STR      R1,[R0, #+40]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
TWI_GetStatus:
        LDR      R0,[R0, #+32]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
TWI_GetMaskedStatus:
        MOVS     R1,R0
        LDR      R2,[R1, #+32]
        MOVS     R0,R2
        LDR      R2,[R1, #+44]
        ANDS     R0,R2,R0
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
TWI_SendSTOPCondition:
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x2
        STR      R1,[R0, #+0]
        BX       LR               ;; return

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 504 bytes in section .text
// 
// 504 bytes of CODE memory
//
//Errors: none
//Warnings: none
