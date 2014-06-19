///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       13/Jun/2014  16:27:50
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Driver\timer.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Driver\timer.c" -lcN
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
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\timer.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_WRITE 0x1
        #define SHF_EXECINSTR 0x4

        EXTERN BSP_IntClr
        EXTERN BSP_IntEn
        EXTERN BSP_IntVectSet
        EXTERN __aeabi_uidiv

        PUBLIC AT91_TC_Init
        PUBLIC Timer_Init
        PUBLIC delay_ms
        PUBLIC delay_us


        SECTION `.data`:DATA:REORDER:NOROOT(2)
pTCREG:
        DATA
        DC32 0FFFA0000H, 0FFFA0040H, 0FFFA0080H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
ppcer_offset:
        DATA
        DC8 15, 16, 17, 0

        SECTION `.text`:CODE:NOROOT(2)
        ARM
AT91_TC_Init:
        PUSH     {R4-R8,LR}
        SUB      SP,SP,#+16
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOVS     R0,SP
        LDR      R1,??DataTable1
        LDM      R1!,{R2,R3,R12}
        STM      R0!,{R2,R3,R12}
        SUBS     R1,R1,#+12
        SUBS     R0,R0,#+12
        ADD      R0,R7,R7, LSL #+1
        LSLS     R0,R0,#+4
        MOVS     R1,R5
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+1
        MOVS     R2,SP
        LDRH     R1,[R1, +R2]
        BL       __aeabi_uidiv
        MOVS     R8,R0
        LSRS     R0,R8,#+16
        LSLS     R0,R0,#+16
        CMP      R0,#+0
        BEQ      ??AT91_TC_Init_0
        MOV      R0,#+255
        ORR      R0,R0,#0xFF00
        MOVS     R8,R0
??AT91_TC_Init_0:
        MOV      R0,#+1
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R2,??DataTable1_1
        LDRSB    R1,[R1, +R2]
        LSLS     R0,R0,R1
        MVN      R1,#+239
        BIC      R1,R1,#0x300
        STR      R0,[R1, #+0]
        MOV      R0,#+2
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable1_2
        LDR      R1,[R1, +R2]
        STR      R0,[R1, #+0]
        MVN      R0,#+0
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable1_2
        LDR      R1,[R1, +R2]
        STR      R0,[R1, #+40]
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        MOV      R1,#+192
        ORR      R1,R1,#0xC000
        ORRS     R0,R1,R0
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable1_2
        LDR      R1,[R1, +R2]
        STR      R0,[R1, #+4]
        MOVS     R0,R8
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable1_2
        LDR      R1,[R1, +R2]
        STR      R0,[R1, #+28]
        CMP      R6,#+0
        BEQ      ??AT91_TC_Init_1
        MOV      R0,#+17
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable1_2
        LDR      R1,[R1, +R2]
        STR      R0,[R1, #+36]
        MOVS     R3,R6
        MOV      R2,#+0
        MOV      R1,#+7
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R12,??DataTable1_1
        LDRB     R0,[R0, +R12]
        BL       BSP_IntVectSet
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable1_1
        LDRB     R0,[R0, +R1]
        BL       BSP_IntClr
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable1_1
        LDRB     R0,[R0, +R1]
        BL       BSP_IntEn
        MOV      R0,#+5
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LSLS     R1,R1,#+2
        LDR      R2,??DataTable1_2
        LDR      R1,[R1, +R2]
        STR      R0,[R1, #+0]
??AT91_TC_Init_1:
        POP      {R0-R8,LR}
        BX       LR               ;; return

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        ARM
delay_us:
        CMP      R0,#+2
        BCS      ??delay_us_0
        NOP
        NOP
        NOP
        B        ??delay_us_1
??delay_us_0:
        CMP      R0,#+2
        BNE      ??delay_us_2
        MOV      R3,#+0
        MOVS     R2,R3
??delay_us_3:
        CMP      R2,#+6
        BCS      ??delay_us_1
        NOP
        ADDS     R2,R2,#+1
        B        ??delay_us_3
??delay_us_2:
        SUBS     R3,R0,#+2
        ADD      R12,R3,R3, LSL #+1
        LSLS     R3,R12,#+3
        MOVS     R1,R3
        LSRS     R3,R1,#+16
        LSLS     R3,R3,#+16
        CMP      R3,#+0
        BEQ      ??delay_us_4
        MOV      R3,#+0
        MOVS     R1,R3
??delay_us_4:
        LDR      R3,??delay_us_5
        LDR      R3,[R3, #+8]
        STR      R1,[R3, #+28]
        MOV      R3,#+5
        LDR      R12,??delay_us_5
        LDR      R12,[R12, #+8]
        STR      R3,[R12, #+0]
??delay_us_6:
        LDR      R3,??delay_us_5
        LDR      R3,[R3, #+8]
        LDR      R3,[R3, #+32]
        TST      R3,#0x10
        BEQ      ??delay_us_6
        MOV      R3,#+2
        LDR      R12,??delay_us_5
        LDR      R12,[R12, #+8]
        STR      R3,[R12, #+0]
??delay_us_1:
        BX       LR               ;; return
        DATA
??delay_us_5:
        DC32     pTCREG

        SECTION `.text`:CODE:NOROOT(2)
        ARM
delay_ms:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R0,R4
        MOV      R1,#+174
        BL       __aeabi_uidiv
        MOVS     R6,R0
        MOV      R0,#+174
        MULS     R1,R0,R6
        SUBS     R0,R4,R1
        MOVS     R5,R0
        CMP      R6,#+0
        BEQ      ??delay_ms_0
??delay_ms_1:
        MOVS     R0,R6
        SUBS     R6,R0,#+1
        CMP      R0,#+0
        BEQ      ??delay_ms_0
        MOV      R0,#+226
        ORR      R0,R0,#0xFE00
        LDR      R1,??DataTable1_2
        LDR      R1,[R1, #+4]
        STR      R0,[R1, #+28]
        MOV      R0,#+5
        LDR      R1,??DataTable1_2
        LDR      R1,[R1, #+4]
        STR      R0,[R1, #+0]
??delay_ms_2:
        LDR      R0,??DataTable1_2
        LDR      R0,[R0, #+4]
        LDR      R0,[R0, #+32]
        TST      R0,#0x10
        BNE      ??delay_ms_1
        B        ??delay_ms_2
??delay_ms_0:
        MOV      R0,#+119
        ORR      R0,R0,#0x100
        MULS     R5,R0,R5
        LDR      R0,??DataTable1_2
        LDR      R0,[R0, #+4]
        STR      R5,[R0, #+28]
        MOV      R0,#+5
        LDR      R1,??DataTable1_2
        LDR      R1,[R1, #+4]
        STR      R0,[R1, #+0]
??delay_ms_3:
        LDR      R0,??DataTable1_2
        LDR      R0,[R0, #+4]
        LDR      R0,[R0, #+32]
        TST      R0,#0x10
        BEQ      ??delay_ms_3
        MOV      R0,#+2
        LDR      R1,??DataTable1_2
        LDR      R1,[R1, #+4]
        STR      R0,[R1, #+0]
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     `?<Constant {2, 8, 32, 128, 1024}>`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     ppcer_offset

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     pTCREG

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Timer_Init:
        PUSH     {R12,LR}
        MOV      R3,#+1
        MOV      R2,#+0
        MOV      R1,#+3
        MOV      R0,#+1
        BL       AT91_TC_Init
        MOV      R3,#+1
        MOV      R2,#+0
        MOV      R1,#+0
        MOV      R0,#+2
        BL       AT91_TC_Init
        POP      {R0,LR}
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
`?<Constant {2, 8, 32, 128, 1024}>`:
        DATA
        DC16 2, 8, 32, 128, 1024
        DC8 0, 0

        END
// 
//  16 bytes in section .data
//  12 bytes in section .rodata
// 700 bytes in section .text
// 172 bytes in section .textrw
// 
// 872 bytes of CODE  memory
//  12 bytes of CONST memory
//  16 bytes of DATA  memory
//
//Errors: none
//Warnings: none
