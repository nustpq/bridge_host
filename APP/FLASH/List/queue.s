///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       15/Dec/2014  17:50:02
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Driver\queue.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Driver\queue.c" -lcN
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
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\queue.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN OS_CPU_SR_Restore
        EXTERN OS_CPU_SR_Save
        EXTERN __aeabi_uidiv

        PUBLIC Queue_Create
        PUBLIC Queue_Flush
        PUBLIC Queue_NData
        PUBLIC Queue_Read
        PUBLIC Queue_ReadBuf
        PUBLIC Queue_ReadOnly
        PUBLIC Queue_Size
        PUBLIC Queue_Write
        PUBLIC Queue_WriteBuf
        PUBLIC Queue_WriteFront


        SECTION `.text`:CODE:NOROOT(2)
        ARM
Queue_Create:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R7,#+0
        CMP      R4,#+0
        BEQ      ??Queue_Create_0
        CMP      R5,#+20
        BCC      ??Queue_Create_0
        MOVS     R6,R4
        BL       OS_CPU_SR_Save
        MOVS     R7,R0
        SUBS     R0,R5,#+16
        MOV      R1,#+1
        BL       __aeabi_uidiv
        STRH     R0,[R6, #+14]
        LDRH     R0,[R6, #+14]
        ADDS     R0,R0,R6
        ADDS     R0,R0,#+16
        STR      R0,[R6, #+8]
        ADDS     R0,R6,#+16
        STR      R0,[R6, #+0]
        ADDS     R0,R6,#+16
        STR      R0,[R6, #+4]
        MOV      R0,#+0
        STRH     R0,[R6, #+12]
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOV      R0,#+1
        B        ??Queue_Create_1
??Queue_Create_0:
        MOV      R0,#+0
??Queue_Create_1:
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Queue_Read:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R8,#+0
        MOV      R0,#+0
        MOVS     R6,R0
        CMP      R5,#+0
        BEQ      ??Queue_Read_0
        MOVS     R7,R5
        BL       OS_CPU_SR_Save
        MOVS     R8,R0
        LDRH     R0,[R7, #+12]
        CMP      R0,#+0
        BEQ      ??Queue_Read_1
        LDR      R0,[R7, #+0]
        LDRB     R0,[R0, #+0]
        STRB     R0,[R4, #+0]
        LDR      R0,[R7, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[R7, #+0]
        LDR      R0,[R7, #+0]
        LDR      R1,[R7, #+8]
        CMP      R0,R1
        BCC      ??Queue_Read_2
        ADDS     R0,R7,#+16
        STR      R0,[R7, #+0]
??Queue_Read_2:
        LDRH     R0,[R7, #+12]
        SUBS     R0,R0,#+1
        STRH     R0,[R7, #+12]
        MOV      R0,#+1
        MOVS     R6,R0
        B        ??Queue_Read_3
??Queue_Read_1:
        MOV      R0,#+4
        MOVS     R6,R0
??Queue_Read_3:
        MOVS     R0,R8
        BL       OS_CPU_SR_Restore
??Queue_Read_0:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Queue_ReadBuf:
        PUSH     {R4-R10,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R10,R2
        MOVS     R6,R3
        MOV      R8,#+0
        MOV      R0,#+0
        MOVS     R9,R0
        CMP      R5,#+0
        BNE      ??Queue_ReadBuf_0
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Queue_ReadBuf_1
??Queue_ReadBuf_0:
        MOVS     R7,R5
        BL       OS_CPU_SR_Save
        MOVS     R8,R0
        LDRH     R0,[R7, #+12]
        LSL      R10,R10,#+16
        LSRS     R10,R10,#+16
        CMP      R0,R10
        BCC      ??Queue_ReadBuf_2
        STRH     R10,[R6, #+0]
??Queue_ReadBuf_3:
        MOVS     R0,R10
        SUBS     R10,R0,#+1
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+0
        BEQ      ??Queue_ReadBuf_4
        LDR      R0,[R7, #+0]
        ADDS     R1,R0,#+1
        STR      R1,[R7, #+0]
        LDRB     R0,[R0, #+0]
        STRB     R0,[R4, #+0]
        ADDS     R4,R4,#+1
        LDR      R0,[R7, #+0]
        LDR      R1,[R7, #+8]
        CMP      R0,R1
        BCC      ??Queue_ReadBuf_5
        ADDS     R0,R7,#+16
        STR      R0,[R7, #+0]
??Queue_ReadBuf_5:
        LDRH     R0,[R7, #+12]
        SUBS     R0,R0,#+1
        STRH     R0,[R7, #+12]
        B        ??Queue_ReadBuf_3
??Queue_ReadBuf_4:
        MOV      R0,#+1
        MOVS     R9,R0
        B        ??Queue_ReadBuf_6
??Queue_ReadBuf_2:
        LDRH     R0,[R7, #+12]
        CMP      R0,#+0
        BEQ      ??Queue_ReadBuf_7
        LDRH     R0,[R7, #+12]
        STRH     R0,[R6, #+0]
??Queue_ReadBuf_8:
        LDRH     R0,[R7, #+12]
        CMP      R0,#+0
        BEQ      ??Queue_ReadBuf_9
        LDR      R0,[R7, #+0]
        ADDS     R1,R0,#+1
        STR      R1,[R7, #+0]
        LDRB     R0,[R0, #+0]
        STRB     R0,[R4, #+0]
        ADDS     R4,R4,#+1
        LDRH     R0,[R7, #+12]
        SUBS     R0,R0,#+1
        STRH     R0,[R7, #+12]
        LDR      R0,[R7, #+0]
        LDR      R1,[R7, #+8]
        CMP      R0,R1
        BCC      ??Queue_ReadBuf_8
        ADDS     R0,R7,#+16
        STR      R0,[R7, #+0]
        B        ??Queue_ReadBuf_8
??Queue_ReadBuf_9:
        MOV      R0,#+1
        MOVS     R9,R0
        B        ??Queue_ReadBuf_6
??Queue_ReadBuf_7:
        MOV      R0,#+0
        STRH     R0,[R6, #+0]
        MOV      R0,#+4
        MOVS     R9,R0
??Queue_ReadBuf_6:
        MOVS     R0,R8
        BL       OS_CPU_SR_Restore
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
??Queue_ReadBuf_1:
        POP      {R4-R10,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Queue_ReadOnly:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R8,#+0
        MOV      R0,#+0
        MOVS     R6,R0
        CMP      R5,#+0
        BEQ      ??Queue_ReadOnly_0
        MOVS     R7,R5
        BL       OS_CPU_SR_Save
        MOVS     R8,R0
        LDRH     R0,[R7, #+12]
        CMP      R0,#+0
        BEQ      ??Queue_ReadOnly_1
        LDR      R0,[R7, #+0]
        LDRB     R0,[R0, #+0]
        STRB     R0,[R4, #+0]
        MOV      R0,#+1
        MOVS     R6,R0
        B        ??Queue_ReadOnly_2
??Queue_ReadOnly_1:
        MOV      R0,#+4
        MOVS     R6,R0
??Queue_ReadOnly_2:
        MOVS     R0,R8
        BL       OS_CPU_SR_Restore
??Queue_ReadOnly_0:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Queue_Write:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R8,#+0
        MOV      R0,#+0
        MOVS     R6,R0
        CMP      R4,#+0
        BEQ      ??Queue_Write_0
        MOVS     R7,R4
        BL       OS_CPU_SR_Save
        MOVS     R8,R0
        LDRH     R0,[R7, #+12]
        LDRH     R1,[R7, #+14]
        CMP      R0,R1
        BCS      ??Queue_Write_1
        LDR      R0,[R7, #+4]
        STRB     R5,[R0, #+0]
        LDR      R0,[R7, #+4]
        ADDS     R0,R0,#+1
        STR      R0,[R7, #+4]
        LDR      R0,[R7, #+4]
        LDR      R1,[R7, #+8]
        CMP      R0,R1
        BCC      ??Queue_Write_2
        ADDS     R0,R7,#+16
        STR      R0,[R7, #+4]
??Queue_Write_2:
        LDRH     R0,[R7, #+12]
        ADDS     R0,R0,#+1
        STRH     R0,[R7, #+12]
        MOV      R0,#+1
        MOVS     R6,R0
        B        ??Queue_Write_3
??Queue_Write_1:
        MOV      R0,#+8
        MOVS     R6,R0
??Queue_Write_3:
        MOVS     R0,R8
        BL       OS_CPU_SR_Restore
??Queue_Write_0:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Queue_WriteBuf:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R9,R2
        MOV      R7,#+0
        MOV      R0,#+0
        MOVS     R8,R0
        CMP      R5,#+0
        BNE      ??Queue_WriteBuf_0
        MOV      R0,#+1
        B        ??Queue_WriteBuf_1
??Queue_WriteBuf_0:
        MOV      R0,#+0
??Queue_WriteBuf_1:
        MOVS     R1,R9
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        CMP      R1,#+0
        BNE      ??Queue_WriteBuf_2
        MOV      R1,#+1
        B        ??Queue_WriteBuf_3
??Queue_WriteBuf_2:
        MOV      R1,#+0
??Queue_WriteBuf_3:
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ANDS     R1,R1,#0xFF      ;; Zero extend
        ORRS     R0,R1,R0
        CMP      R0,#+0
        BEQ      ??Queue_WriteBuf_4
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Queue_WriteBuf_5
??Queue_WriteBuf_4:
        MOVS     R6,R5
        MOV      R0,#+1
        MOVS     R8,R0
        BL       OS_CPU_SR_Save
        MOVS     R7,R0
??Queue_WriteBuf_6:
        MOVS     R0,R9
        SUBS     R9,R0,#+1
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+0
        BEQ      ??Queue_WriteBuf_7
        LDRH     R0,[R6, #+12]
        LDRH     R1,[R6, #+14]
        CMP      R0,R1
        BCS      ??Queue_WriteBuf_8
        LDR      R0,[R6, #+4]
        ADDS     R1,R0,#+1
        STR      R1,[R6, #+4]
        LDRB     R1,[R4, #+0]
        STRB     R1,[R0, #+0]
        ADDS     R4,R4,#+1
        LDRH     R0,[R6, #+12]
        ADDS     R0,R0,#+1
        STRH     R0,[R6, #+12]
        LDR      R0,[R6, #+4]
        LDR      R1,[R6, #+8]
        CMP      R0,R1
        BCC      ??Queue_WriteBuf_6
        ADDS     R0,R6,#+16
        STR      R0,[R6, #+4]
        B        ??Queue_WriteBuf_6
??Queue_WriteBuf_8:
        MOV      R0,#+8
        MOVS     R8,R0
        B        ??Queue_WriteBuf_6
??Queue_WriteBuf_7:
        MOVS     R0,R7
        BL       OS_CPU_SR_Restore
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
??Queue_WriteBuf_5:
        POP      {R1,R4-R9,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Queue_WriteFront:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R8,#+0
        MOV      R0,#+0
        MOVS     R6,R0
        CMP      R4,#+0
        BEQ      ??Queue_WriteFront_0
        MOVS     R7,R4
        BL       OS_CPU_SR_Save
        MOVS     R8,R0
        LDRH     R0,[R7, #+12]
        LDRH     R1,[R7, #+14]
        CMP      R0,R1
        BCS      ??Queue_WriteFront_1
        LDR      R0,[R7, #+0]
        SUBS     R0,R0,#+1
        STR      R0,[R7, #+0]
        LDR      R0,[R7, #+0]
        ADDS     R1,R7,#+16
        CMP      R0,R1
        BCS      ??Queue_WriteFront_2
        LDR      R0,[R7, #+8]
        SUBS     R0,R0,#+1
        STR      R0,[R7, #+0]
??Queue_WriteFront_2:
        LDR      R0,[R7, #+0]
        STRB     R5,[R0, #+0]
        LDRH     R0,[R7, #+12]
        ADDS     R0,R0,#+1
        STRH     R0,[R7, #+12]
        MOV      R0,#+1
        MOVS     R6,R0
        B        ??Queue_WriteFront_3
??Queue_WriteFront_1:
        MOV      R0,#+8
        MOVS     R6,R0
??Queue_WriteFront_3:
        MOVS     R0,R8
        BL       OS_CPU_SR_Restore
??Queue_WriteFront_0:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Queue_NData:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOV      R6,#+0
        MOV      R0,#+0
        MOVS     R5,R0
        CMP      R4,#+0
        BEQ      ??Queue_NData_0
        BL       OS_CPU_SR_Save
        MOVS     R6,R0
        LDRH     R0,[R4, #+12]
        MOVS     R5,R0
        MOVS     R0,R6
        BL       OS_CPU_SR_Restore
??Queue_NData_0:
        MOVS     R0,R5
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Queue_Size:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOV      R6,#+0
        MOV      R0,#+0
        MOVS     R5,R0
        CMP      R4,#+0
        BEQ      ??Queue_Size_0
        BL       OS_CPU_SR_Save
        MOVS     R6,R0
        LDRH     R0,[R4, #+14]
        MOVS     R5,R0
        MOVS     R0,R6
        BL       OS_CPU_SR_Restore
??Queue_Size_0:
        MOVS     R0,R5
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Queue_Flush:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOV      R6,#+0
        CMP      R4,#+0
        BEQ      ??Queue_Flush_0
        MOVS     R5,R4
        BL       OS_CPU_SR_Save
        MOVS     R6,R0
        ADDS     R0,R5,#+16
        STR      R0,[R5, #+0]
        ADDS     R0,R5,#+16
        STR      R0,[R5, #+4]
        MOV      R0,#+0
        STRH     R0,[R5, #+12]
        MOVS     R0,R6
        BL       OS_CPU_SR_Restore
??Queue_Flush_0:
        POP      {R4-R6,LR}
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
// 1 548 bytes in section .text
// 
// 1 548 bytes of CODE memory
//
//Errors: none
//Warnings: none
