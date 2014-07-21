///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       21/Jul/2014  19:24:30
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Driver\efc.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Driver\efc.c" -lcN
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
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\efc.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_WRITE 0x1
        #define SHF_EXECINSTR 0x4

        PUBLIC EFC_ComputeAddress
        PUBLIC EFC_DisableIt
        PUBLIC EFC_EnableIt
        PUBLIC EFC_GetStatus
        PUBLIC EFC_PerformCommand
        PUBLIC EFC_SetEraseBeforeProgramming
        PUBLIC EFC_SetMasterClock
        PUBLIC EFC_StartCommand
        PUBLIC EFC_TranslateAddress


        SECTION `.text`:CODE:NOROOT(2)
        ARM
EFC_SetMasterClock:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
EFC_EnableIt:
        LDR      R2,[R0, #+0]
        ORRS     R2,R1,R2
        STR      R2,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
EFC_DisableIt:
        LDR      R2,[R0, #+0]
        BICS     R2,R2,R1
        STR      R2,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
EFC_SetEraseBeforeProgramming:
        MOVS     R2,R1
        ANDS     R2,R2,#0xFF      ;; Zero extend
        CMP      R2,#+0
        BEQ      ??EFC_SetEraseBeforeProgramming_0
        LDR      R2,[R0, #+0]
        BICS     R2,R2,#0x80
        STR      R2,[R0, #+0]
        B        ??EFC_SetEraseBeforeProgramming_1
??EFC_SetEraseBeforeProgramming_0:
        LDR      R2,[R0, #+0]
        ORRS     R2,R2,#0x80
        STR      R2,[R0, #+0]
??EFC_SetEraseBeforeProgramming_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
EFC_TranslateAddress:
        PUSH     {R4,R5,LR}
        MVN      R5,#+159
        MOVS     R12,R5
        SUBS     R5,R0,#+1048576
        LSRS     R5,R5,#+8
        MOVS     LR,R5
        SUBS     R5,R0,#+1048576
        ANDS     R5,R5,#0xFF      ;; Zero extend
        MOVS     R4,R5
        CMP      R1,#+0
        BEQ      ??EFC_TranslateAddress_0
        STR      R12,[R1, #+0]
??EFC_TranslateAddress_0:
        CMP      R2,#+0
        BEQ      ??EFC_TranslateAddress_1
        STRH     LR,[R2, #+0]
??EFC_TranslateAddress_1:
        CMP      R3,#+0
        BEQ      ??EFC_TranslateAddress_2
        STRH     R4,[R3, #+0]
??EFC_TranslateAddress_2:
        POP      {R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
EFC_ComputeAddress:
        PUSH     {R4,R5,LR}
        MOVS     LR,R1
        LSL      LR,LR,#+16
        LSRS     LR,LR,#+16
        MOV      R4,#+256
        MOVS     R5,R2
        LSL      R5,R5,#+16
        LSRS     R5,R5,#+16
        MLA      LR,R4,LR,R5
        ADDS     LR,LR,#+1048576
        MOVS     R12,LR
        CMP      R3,#+0
        BEQ      ??EFC_ComputeAddress_0
        STR      R12,[R3, #+0]
??EFC_ComputeAddress_0:
        POP      {R4,R5,LR}
        BX       LR               ;; return

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        ARM
EFC_StartCommand:
        MOVS     R3,R1
        ANDS     R3,R3,#0xFF      ;; Zero extend
        SUB      R3,R3,#+1
        CMP      R3,#+7
        BHI      ??EFC_StartCommand_2
        LDRB     R12,[PC, R3]
        ADD      PC,PC,R12, LSL #+2
        DATA
??EFC_StartCommand_0:
        DC8      0x2,0x2,0x1,0x2
        DC8      0x4,0x4,0x4,0x3
        ARM
??EFC_StartCommand_3:
        B        ??EFC_StartCommand_4
??EFC_StartCommand_5:
        B        ??EFC_StartCommand_4
??EFC_StartCommand_6:
        B        ??EFC_StartCommand_4
??EFC_StartCommand_2:
??EFC_StartCommand_4:
        MOVS     R3,R1
        ANDS     R3,R3,#0xFF      ;; Zero extend
        SUB      R3,R3,#+1
        CMP      R3,#+7
        BHI      ??EFC_StartCommand_7
        LDRB     R12,[PC, R3]
        ADD      PC,PC,R12, LSL #+2
        DATA
??EFC_StartCommand_1:
        DC8      0x6,0x1,0xA,0x1
        DC8      0xA,0xA,0xA,0x6
        ARM
??EFC_StartCommand_8:
        LDR      R3,[R0, #+0]
        BICS     R3,R3,#0xFF0000
        ORRS     R3,R3,#0x50000
        STR      R3,[R0, #+0]
        B        ??EFC_StartCommand_7
??EFC_StartCommand_9:
        LDR      R3,[R0, #+0]
        BICS     R3,R3,#0xFF0000
        ORRS     R3,R3,#0x480000
        STR      R3,[R0, #+0]
??EFC_StartCommand_7:
        MOVS     R3,R2
        LSL      R3,R3,#+16
        LSRS     R3,R3,#+16
        MOVS     R12,R1
        ANDS     R12,R12,#0xFF    ;; Zero extend
        ORRS     R3,R12,R3, LSL #+8
        ORRS     R3,R3,#0x5A000000
        STR      R3,[R0, #+4]
        BX       LR               ;; return

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        ARM
EFC_PerformCommand:
        PUSH     {LR}
        MOVS     R3,R0
        MOVS     R12,R1
        ANDS     R12,R12,#0xFF    ;; Zero extend
        SUB      R12,R12,#+1
        CMP      R12,#+7
        BHI      ??EFC_PerformCommand_1
        LDRB     LR,[PC, R12]
        ADD      PC,PC,LR, LSL #+2
        DATA
??EFC_PerformCommand_0:
        DC8      0x6,0x1,0xA,0x1
        DC8      0xA,0xA,0xA,0x6
        ARM
??EFC_PerformCommand_2:
        LDR      R12,[R3, #+0]
        BICS     R12,R12,#0xFF0000
        ORRS     R12,R12,#0x50000
        STR      R12,[R3, #+0]
        B        ??EFC_PerformCommand_1
??EFC_PerformCommand_3:
        LDR      R12,[R3, #+0]
        BICS     R12,R12,#0xFF0000
        ORRS     R12,R12,#0x480000
        STR      R12,[R3, #+0]
??EFC_PerformCommand_1:
        MOVS     R12,R2
        LSL      R12,R12,#+16
        LSRS     R12,R12,#+16
        MOVS     LR,R1
        ANDS     LR,LR,#0xFF      ;; Zero extend
        ORRS     R12,LR,R12, LSL #+8
        ORRS     R12,R12,#0x5A000000
        STR      R12,[R3, #+4]
        MOV      R12,#+255
        ORR      R12,R12,#0xFF00
??EFC_PerformCommand_4:
        MOVS     LR,R12
        SUBS     R12,LR,#+1
        CMP      LR,#+0
        BNE      ??EFC_PerformCommand_4
??EFC_PerformCommand_5:
        LDR      LR,[R3, #+8]
        MOVS     R0,LR
        TST      R0,#0x3
        BEQ      ??EFC_PerformCommand_5
        ANDS     R0,R0,#0xC
        POP      {LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
EFC_GetStatus:
        LDR      R0,[R0, #+8]
        BX       LR               ;; return

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 236 bytes in section .text
// 320 bytes in section .textrw
// 
// 556 bytes of CODE memory
//
//Errors: none
//Warnings: none
