///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       22/May/2014  14:14:58
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Driver\twid.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Driver\twid.c" -lcN
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
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\twid.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN BSP_IntClr
        EXTERN BSP_IntEn
        EXTERN BSP_IntVectSet
        EXTERN OSEventNameSet
        EXTERN OSSemCreate
        EXTERN OSSemPend
        EXTERN OSSemPost
        EXTERN PIO_Configure
        EXTERN TWI_ByteReceived
        EXTERN TWI_ByteSent
        EXTERN TWI_ConfigureMaster
        EXTERN TWI_DisableIt
        EXTERN TWI_EnableIt
        EXTERN TWI_GetMaskedStatus
        EXTERN TWI_ReadByte
        EXTERN TWI_StartRead
        EXTERN TWI_StartWrite
        EXTERN TWI_Stop
        EXTERN TWI_TransferComplete
        EXTERN TWI_WriteByte

        PUBLIC TWID_Handler
        PUBLIC TWID_Initialize
        PUBLIC TWID_Read
        PUBLIC TWID_Write
        PUBLIC TWI_Init
        PUBLIC TWI_Sem_done
        PUBLIC TWI_Sem_lock
        PUBLIC twi_async
        PUBLIC twid


        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "TWI_Sem_lock">`:
        DATA
        DC8 "TWI_Sem_lock"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "TWI_Sem_done">`:
        DATA
        DC8 "TWI_Sem_done"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
twi_pins:
        DATA
        DC32 3, 0FFFFF400H
        DC8 2, 0, 0, 0

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
twid:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
twi_async:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
TWI_Sem_lock:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
TWI_Sem_done:
        DS8 4

        SECTION `.text`:CODE:NOROOT(2)
        ARM
TWID_Initialize:
        STR      R1,[R0, #+0]
        MOV      R2,#+0
        STR      R2,[R0, #+4]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
TWID_Handler:
        PUSH     {R4-R6,LR}
        LDR      R0,??DataTable3
        LDR      R0,[R0, #+4]
        MOVS     R5,R0
        LDR      R0,??DataTable3
        LDR      R0,[R0, #+0]
        MOVS     R6,R0
        MOVS     R0,R6
        BL       TWI_GetMaskedStatus
        MOVS     R4,R0
        TST      R4,#0x100
        BEQ      ??TWID_Handler_0
        MOV      R1,#+7
        ORR      R1,R1,#0x100
        MOVS     R0,R6
        BL       TWI_DisableIt
        MOV      R0,#+1
        STRB     R0,[R5, #+0]
        LDR      R0,[R5, #+4]
        CMP      R0,#+0
        BEQ      ??TWID_Handler_1
        MOVS     R0,R5
        LDR      R1,[R5, #+4]
        MOV      LR,PC
        BX       R1
??TWID_Handler_1:
        LDR      R0,??DataTable3_1
        LDR      R0,[R0, #+0]
        BL       OSSemPost
        B        ??TWID_Handler_2
??TWID_Handler_0:
        TST      R4,#0x2
        BEQ      ??TWID_Handler_3
        MOVS     R0,R6
        BL       TWI_ReadByte
        LDR      R1,[R5, #+16]
        LDR      R2,[R5, #+8]
        STRB     R0,[R1, +R2]
        LDR      R0,[R5, #+16]
        ADDS     R0,R0,#+1
        STR      R0,[R5, #+16]
        LDR      R0,[R5, #+16]
        LDR      R1,[R5, #+12]
        CMP      R0,R1
        BNE      ??TWID_Handler_4
        MOV      R1,#+2
        MOVS     R0,R6
        BL       TWI_DisableIt
        MOV      R1,#+1
        MOVS     R0,R6
        BL       TWI_EnableIt
        B        ??TWID_Handler_2
??TWID_Handler_4:
        LDR      R0,[R5, #+16]
        LDR      R1,[R5, #+12]
        SUBS     R1,R1,#+1
        CMP      R0,R1
        BNE      ??TWID_Handler_2
        MOVS     R0,R6
        BL       TWI_Stop
        B        ??TWID_Handler_2
??TWID_Handler_3:
        TST      R4,#0x4
        BEQ      ??TWID_Handler_5
        LDR      R0,[R5, #+16]
        LDR      R1,[R5, #+12]
        CMP      R0,R1
        BNE      ??TWID_Handler_6
        MOV      R1,#+4
        MOVS     R0,R6
        BL       TWI_DisableIt
        MOV      R1,#+1
        MOVS     R0,R6
        BL       TWI_EnableIt
        B        ??TWID_Handler_2
??TWID_Handler_6:
        LDR      R0,[R5, #+16]
        LDR      R1,[R5, #+8]
        LDRB     R1,[R0, +R1]
        MOVS     R0,R6
        BL       TWI_WriteByte
        LDR      R0,[R5, #+16]
        ADDS     R0,R0,#+1
        STR      R0,[R5, #+16]
        B        ??TWID_Handler_2
??TWID_Handler_5:
        TST      R4,#0x1
        BEQ      ??TWID_Handler_2
        MOV      R1,#+1
        ORR      R1,R1,#0x100
        MOVS     R0,R6
        BL       TWI_DisableIt
        MOV      R0,#+0
        STRB     R0,[R5, #+0]
        LDR      R0,[R5, #+4]
        CMP      R0,#+0
        BEQ      ??TWID_Handler_7
        MOVS     R0,R5
        LDR      R1,[R5, #+4]
        MOV      LR,PC
        BX       R1
??TWID_Handler_7:
        LDR      R0,??DataTable3_1
        LDR      R0,[R0, #+0]
        BL       OSSemPost
??TWID_Handler_2:
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
TWID_Read:
        PUSH     {R0,R1,R4-R11,LR}
        SUB      SP,SP,#+4
        MOVS     R4,R2
        MOVS     R5,R3
        LDR      R6,[SP, #+48]
        LDR      R7,[SP, #+52]
        LDR      R0,??DataTable3_2
        MOVS     R7,R0
        LDR      R0,??DataTable3
        LDR      R0,[R0, #+0]
        MOVS     R8,R0
        LDR      R0,??DataTable3
        LDR      R0,[R0, #+4]
        MOVS     R9,R0
        MOV      R0,#+0
        MOVS     R11,R0
        CMP      R7,#+0
        BEQ      ??TWID_Read_0
        CMP      R9,#+0
        BEQ      ??TWID_Read_1
        MOV      R0,#+1
        MOVS     R11,R0
        MOVS     R0,R11
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??TWID_Read_2
??TWID_Read_1:
        CMP      R6,#+1
        BNE      ??TWID_Read_3
        MOVS     R0,R8
        BL       TWI_Stop
??TWID_Read_3:
        LDR      R0,??DataTable3
        STR      R7,[R0, #+4]
        MOVS     R9,R7
        MOV      R0,#+255
        STRB     R0,[R9, #+0]
        STR      R5,[R9, #+8]
        STR      R6,[R9, #+12]
        MOV      R0,#+0
        STR      R0,[R9, #+16]
        MOVS     R3,R4
        ANDS     R3,R3,#0xFF      ;; Zero extend
        LDR      R2,[SP, #+8]
        LDRB     R1,[SP, #+4]
        MOVS     R0,R8
        BL       TWI_StartRead
        MOV      R1,#+2
        MOVS     R0,R8
        BL       TWI_EnableIt
        MOV      R1,#+256
        MOVS     R0,R8
        BL       TWI_EnableIt
        MOVS     R2,SP
        MOV      R1,#+1000
        LDR      R0,??DataTable3_1
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BEQ      ??TWID_Read_4
        MOV      R1,#+7
        ORR      R1,R1,#0x100
        MOVS     R0,R8
        BL       TWI_DisableIt
??TWID_Read_4:
        LDRB     R0,[R9, #+0]
        MOVS     R11,R0
        MOV      R0,#+0
        LDR      R1,??DataTable3
        STR      R0,[R1, #+4]
        B        ??TWID_Read_5
??TWID_Read_0:
        MOVS     R2,SP
        MOV      R1,#+0
        LDR      R0,??DataTable3_3
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        CMP      R6,#+1
        BNE      ??TWID_Read_6
        MOVS     R0,R8
        BL       TWI_Stop
??TWID_Read_6:
        MOVS     R3,R4
        ANDS     R3,R3,#0xFF      ;; Zero extend
        LDR      R2,[SP, #+8]
        LDRB     R1,[SP, #+4]
        MOVS     R0,R8
        BL       TWI_StartRead
??TWID_Read_7:
        CMP      R6,#+0
        BEQ      ??TWID_Read_8
        CMP      R6,#+1
        BNE      ??TWID_Read_9
        MOVS     R0,R8
        BL       TWI_Stop
??TWID_Read_9:
        MOV      R0,#+0
        MOVS     R10,R0
??TWID_Read_10:
        MOVS     R0,R8
        BL       TWI_ByteReceived
        CMP      R0,#+0
        BNE      ??TWID_Read_11
        ADDS     R10,R10,#+1
        MOV      R0,#+128
        ORR      R0,R0,#0xBB00
        CMP      R10,R0
        BCC      ??TWID_Read_10
??TWID_Read_11:
        MOV      R0,#+128
        ORR      R0,R0,#0xBB00
        CMP      R10,R0
        BNE      ??TWID_Read_12
        LDR      R0,??DataTable3_3
        LDR      R0,[R0, #+0]
        BL       OSSemPost
        MOV      R0,#+2
        MOVS     R11,R0
        MOVS     R0,R11
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??TWID_Read_2
??TWID_Read_12:
        MOVS     R0,R8
        BL       TWI_ReadByte
        STRB     R0,[R5, #+0]
        ADDS     R5,R5,#+1
        SUBS     R6,R6,#+1
        B        ??TWID_Read_7
??TWID_Read_8:
        MOV      R0,#+0
        MOVS     R10,R0
??TWID_Read_13:
        MOVS     R0,R8
        BL       TWI_TransferComplete
        CMP      R0,#+0
        BNE      ??TWID_Read_14
        ADDS     R10,R10,#+1
        MOV      R0,#+128
        ORR      R0,R0,#0xBB00
        CMP      R10,R0
        BCC      ??TWID_Read_13
??TWID_Read_14:
        MOV      R0,#+128
        ORR      R0,R0,#0xBB00
        CMP      R10,R0
        BNE      ??TWID_Read_15
        MOV      R0,#+3
        MOVS     R11,R0
??TWID_Read_15:
        LDR      R0,??DataTable3_3
        LDR      R0,[R0, #+0]
        BL       OSSemPost
??TWID_Read_5:
        MOVS     R0,R11
        ANDS     R0,R0,#0xFF      ;; Zero extend
??TWID_Read_2:
        POP      {R1-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
TWID_Write:
        PUSH     {R0,R1,R4-R11,LR}
        SUB      SP,SP,#+12
        MOVS     R4,R2
        MOVS     R5,R3
        LDR      R6,[SP, #+56]
        LDR      R7,[SP, #+60]
        LDR      R0,??DataTable3_2
        MOVS     R7,R0
        LDR      R0,??DataTable3
        LDR      R0,[R0, #+0]
        MOVS     R8,R0
        LDR      R0,??DataTable3
        LDR      R0,[R0, #+4]
        MOVS     R9,R0
        MOV      R0,#+0
        MOVS     R11,R0
        CMP      R7,#+0
        BEQ      ??TWID_Write_0
        CMP      R9,#+0
        BEQ      ??TWID_Write_1
        MOV      R0,#+1
        MOVS     R11,R0
        MOVS     R0,R11
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??TWID_Write_2
??TWID_Write_1:
        LDR      R0,??DataTable3
        STR      R7,[R0, #+4]
        MOVS     R9,R7
        MOV      R0,#+255
        STRB     R0,[R9, #+0]
        STR      R5,[R9, #+8]
        STR      R6,[R9, #+12]
        MOV      R0,#+1
        STR      R0,[R9, #+16]
        LDRB     R0,[R5, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,R4
        ANDS     R3,R3,#0xFF      ;; Zero extend
        LDR      R2,[SP, #+16]
        LDRB     R1,[SP, #+12]
        MOVS     R0,R8
        BL       TWI_StartWrite
        MOV      R1,#+4
        MOVS     R0,R8
        BL       TWI_EnableIt
        MOV      R1,#+256
        MOVS     R0,R8
        BL       TWI_EnableIt
        ADD      R2,SP,#+4
        MOV      R1,#+1000
        LDR      R0,??DataTable3_1
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        LDRB     R0,[SP, #+4]
        CMP      R0,#+0
        BEQ      ??TWID_Write_3
        MOV      R1,#+7
        ORR      R1,R1,#0x100
        MOVS     R0,R8
        BL       TWI_DisableIt
??TWID_Write_3:
        LDRB     R0,[R9, #+0]
        MOVS     R11,R0
        MOV      R0,#+0
        LDR      R1,??DataTable3
        STR      R0,[R1, #+4]
        B        ??TWID_Write_4
??TWID_Write_0:
        ADD      R2,SP,#+4
        MOV      R1,#+0
        LDR      R0,??DataTable3_3
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        LDRB     R0,[R5, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,R4
        ANDS     R3,R3,#0xFF      ;; Zero extend
        LDR      R2,[SP, #+16]
        LDRB     R1,[SP, #+12]
        MOVS     R0,R8
        BL       TWI_StartWrite
        ADDS     R5,R5,#+1
        SUBS     R6,R6,#+1
??TWID_Write_5:
        CMP      R6,#+0
        BEQ      ??TWID_Write_6
        MOV      R0,#+0
        MOVS     R10,R0
??TWID_Write_7:
        MOVS     R0,R8
        BL       TWI_ByteSent
        CMP      R0,#+0
        BNE      ??TWID_Write_8
        ADDS     R10,R10,#+1
        MOV      R0,#+128
        ORR      R0,R0,#0xBB00
        CMP      R10,R0
        BCC      ??TWID_Write_7
??TWID_Write_8:
        MOV      R0,#+128
        ORR      R0,R0,#0xBB00
        CMP      R10,R0
        BNE      ??TWID_Write_9
        MOV      R0,#+2
        MOVS     R11,R0
        MOVS     R0,R11
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??TWID_Write_2
??TWID_Write_9:
        LDRB     R1,[R5, #+0]
        MOVS     R0,R8
        BL       TWI_WriteByte
        ADDS     R5,R5,#+1
        SUBS     R6,R6,#+1
        B        ??TWID_Write_5
??TWID_Write_6:
        MOV      R0,#+0
        MOVS     R10,R0
??TWID_Write_10:
        MOVS     R0,R8
        BL       TWI_TransferComplete
        CMP      R0,#+0
        BNE      ??TWID_Write_11
        ADDS     R10,R10,#+1
        MOV      R0,#+128
        ORR      R0,R0,#0xBB00
        CMP      R10,R0
        BCC      ??TWID_Write_10
??TWID_Write_11:
        MOV      R0,#+128
        ORR      R0,R0,#0xBB00
        CMP      R10,R0
        BNE      ??TWID_Write_12
        MOV      R0,#+3
        MOVS     R11,R0
??TWID_Write_12:
        LDR      R0,??DataTable3_3
        LDR      R0,[R0, #+0]
        BL       OSSemPost
??TWID_Write_4:
        MOVS     R0,R11
        ANDS     R0,R0,#0xFF      ;; Zero extend
??TWID_Write_2:
        ADD      SP,SP,#+20       ;; stack cleaning
        POP      {R4-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
TWI_Init:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R1,#+1
        LDR      R0,??DataTable3_4
        BL       PIO_Configure
        MOV      R0,#+1024
        MVN      R1,#+239
        BIC      R1,R1,#0x300
        STR      R0,[R1, #+0]
        MOV      R2,#+47972352
        ORR      R2,R2,#0x6C00
        MOVS     R1,R4
        LDR      R0,??DataTable3_5  ;; 0xfffb8000
        BL       TWI_ConfigureMaster
        LDR      R1,??DataTable3_5  ;; 0xfffb8000
        LDR      R0,??DataTable3
        BL       TWID_Initialize
        MOV      R0,#+1
        BL       OSSemCreate
        LDR      R1,??DataTable3_3
        STR      R0,[R1, #+0]
        MOVS     R2,SP
        LDR      R1,??DataTable3_6
        LDR      R0,??DataTable3_3
        LDR      R0,[R0, #+0]
        BL       OSEventNameSet
        MOV      R0,#+0
        BL       OSSemCreate
        LDR      R1,??DataTable3_1
        STR      R0,[R1, #+0]
        MOVS     R2,SP
        LDR      R1,??DataTable3_7
        LDR      R0,??DataTable3_1
        LDR      R0,[R0, #+0]
        BL       OSEventNameSet
        MOV      R0,#+0
        LDR      R1,??DataTable3_2
        STR      R0,[R1, #+4]
        LDR      R3,??DataTable3_8
        MOV      R2,#+0
        MOV      R1,#+7
        MOV      R0,#+10
        BL       BSP_IntVectSet
        MOV      R0,#+10
        BL       BSP_IntClr
        MOV      R0,#+10
        BL       BSP_IntEn
        POP      {R0,R1,R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     twid

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     TWI_Sem_done

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     twi_async

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     TWI_Sem_lock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     twi_pins

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     0xfffb8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     `?<Constant "TWI_Sem_lock">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     `?<Constant "TWI_Sem_done">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     TWID_Handler

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
//    36 bytes in section .bss
//    44 bytes in section .rodata
// 1 756 bytes in section .text
// 
// 1 756 bytes of CODE  memory
//    44 bytes of CONST memory
//    36 bytes of DATA  memory
//
//Errors: none
//Warnings: none
