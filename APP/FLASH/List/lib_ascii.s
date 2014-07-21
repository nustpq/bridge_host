///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       21/Jul/2014  19:24:32
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\uC-LIB\lib_ascii.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\uC-LIB\lib_ascii.c"
//        -lcN "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\"
//        -lb "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\" -o
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
//        E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\FLASH\List\lib_ascii.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC ASCII_Cmp
        PUBLIC ASCII_IsAlpha
        PUBLIC ASCII_IsAlphaNum
        PUBLIC ASCII_IsBlank
        PUBLIC ASCII_IsCtrl
        PUBLIC ASCII_IsDig
        PUBLIC ASCII_IsDigHex
        PUBLIC ASCII_IsDigOct
        PUBLIC ASCII_IsGraph
        PUBLIC ASCII_IsLower
        PUBLIC ASCII_IsPrint
        PUBLIC ASCII_IsPunct
        PUBLIC ASCII_IsSpace
        PUBLIC ASCII_IsUpper
        PUBLIC ASCII_ToLower
        PUBLIC ASCII_ToUpper


        SECTION `.text`:CODE:NOROOT(2)
        ARM
ASCII_IsAlpha:
        MOVS     R1,R0
        MOVS     R2,R1
        ANDS     R2,R2,#0xFF      ;; Zero extend
        CMP      R2,#+65
        BLT      ??ASCII_IsAlpha_0
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+91
        BGE      ??ASCII_IsAlpha_0
        MOV      R0,#+1
        B        ??ASCII_IsAlpha_1
??ASCII_IsAlpha_0:
        MOV      R0,#+0
??ASCII_IsAlpha_1:
        CMP      R0,#+1
        BEQ      ??ASCII_IsAlpha_2
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+97
        BLT      ??ASCII_IsAlpha_3
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+123
        BGE      ??ASCII_IsAlpha_3
        MOV      R0,#+1
        B        ??ASCII_IsAlpha_4
??ASCII_IsAlpha_3:
        MOV      R0,#+0
??ASCII_IsAlpha_4:
        CMP      R0,#+1
        BNE      ??ASCII_IsAlpha_5
??ASCII_IsAlpha_2:
        MOV      R0,#+1
        B        ??ASCII_IsAlpha_6
??ASCII_IsAlpha_5:
        MOV      R0,#+0
??ASCII_IsAlpha_6:
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ASCII_IsAlphaNum:
        MOVS     R1,R0
        MOVS     R2,R1
        ANDS     R2,R2,#0xFF      ;; Zero extend
        CMP      R2,#+65
        BLT      ??ASCII_IsAlphaNum_0
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+91
        BGE      ??ASCII_IsAlphaNum_0
        MOV      R0,#+1
        B        ??ASCII_IsAlphaNum_1
??ASCII_IsAlphaNum_0:
        MOV      R0,#+0
??ASCII_IsAlphaNum_1:
        CMP      R0,#+1
        BEQ      ??ASCII_IsAlphaNum_2
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+97
        BLT      ??ASCII_IsAlphaNum_3
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+123
        BGE      ??ASCII_IsAlphaNum_3
        MOV      R0,#+1
        B        ??ASCII_IsAlphaNum_4
??ASCII_IsAlphaNum_3:
        MOV      R0,#+0
??ASCII_IsAlphaNum_4:
        CMP      R0,#+1
        BNE      ??ASCII_IsAlphaNum_5
??ASCII_IsAlphaNum_2:
        MOV      R0,#+1
        B        ??ASCII_IsAlphaNum_6
??ASCII_IsAlphaNum_5:
        MOV      R0,#+0
??ASCII_IsAlphaNum_6:
        CMP      R0,#+1
        BEQ      ??ASCII_IsAlphaNum_7
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+48
        BLT      ??ASCII_IsAlphaNum_8
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+58
        BGE      ??ASCII_IsAlphaNum_8
        MOV      R0,#+1
        B        ??ASCII_IsAlphaNum_9
??ASCII_IsAlphaNum_8:
        MOV      R0,#+0
??ASCII_IsAlphaNum_9:
        CMP      R0,#+1
        BNE      ??ASCII_IsAlphaNum_10
??ASCII_IsAlphaNum_7:
        MOV      R0,#+1
        B        ??ASCII_IsAlphaNum_11
??ASCII_IsAlphaNum_10:
        MOV      R0,#+0
??ASCII_IsAlphaNum_11:
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ASCII_IsLower:
        MOVS     R1,R0
        MOVS     R2,R1
        ANDS     R2,R2,#0xFF      ;; Zero extend
        CMP      R2,#+97
        BLT      ??ASCII_IsLower_0
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+123
        BGE      ??ASCII_IsLower_0
        MOV      R0,#+1
        B        ??ASCII_IsLower_1
??ASCII_IsLower_0:
        MOV      R0,#+0
??ASCII_IsLower_1:
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ASCII_IsUpper:
        MOVS     R1,R0
        MOVS     R2,R1
        ANDS     R2,R2,#0xFF      ;; Zero extend
        CMP      R2,#+65
        BLT      ??ASCII_IsUpper_0
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+91
        BGE      ??ASCII_IsUpper_0
        MOV      R0,#+1
        B        ??ASCII_IsUpper_1
??ASCII_IsUpper_0:
        MOV      R0,#+0
??ASCII_IsUpper_1:
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ASCII_IsDig:
        MOVS     R1,R0
        MOVS     R2,R1
        ANDS     R2,R2,#0xFF      ;; Zero extend
        CMP      R2,#+48
        BLT      ??ASCII_IsDig_0
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+58
        BGE      ??ASCII_IsDig_0
        MOV      R0,#+1
        B        ??ASCII_IsDig_1
??ASCII_IsDig_0:
        MOV      R0,#+0
??ASCII_IsDig_1:
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ASCII_IsDigOct:
        MOVS     R1,R0
        MOVS     R2,R1
        ANDS     R2,R2,#0xFF      ;; Zero extend
        CMP      R2,#+48
        BLT      ??ASCII_IsDigOct_0
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+56
        BGE      ??ASCII_IsDigOct_0
        MOV      R0,#+1
        B        ??ASCII_IsDigOct_1
??ASCII_IsDigOct_0:
        MOV      R0,#+0
??ASCII_IsDigOct_1:
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ASCII_IsDigHex:
        MOVS     R1,R0
        MOVS     R2,R1
        ANDS     R2,R2,#0xFF      ;; Zero extend
        CMP      R2,#+48
        BLT      ??ASCII_IsDigHex_0
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+58
        BLT      ??ASCII_IsDigHex_1
??ASCII_IsDigHex_0:
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+65
        BLT      ??ASCII_IsDigHex_2
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+71
        BLT      ??ASCII_IsDigHex_1
??ASCII_IsDigHex_2:
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+97
        BLT      ??ASCII_IsDigHex_3
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+103
        BGE      ??ASCII_IsDigHex_3
??ASCII_IsDigHex_1:
        MOV      R0,#+1
        B        ??ASCII_IsDigHex_4
??ASCII_IsDigHex_3:
        MOV      R0,#+0
??ASCII_IsDigHex_4:
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ASCII_IsBlank:
        MOVS     R1,R0
        MOVS     R2,R1
        ANDS     R2,R2,#0xFF      ;; Zero extend
        CMP      R2,#+32
        BEQ      ??ASCII_IsBlank_0
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+9
        BNE      ??ASCII_IsBlank_1
??ASCII_IsBlank_0:
        MOV      R0,#+1
        B        ??ASCII_IsBlank_2
??ASCII_IsBlank_1:
        MOV      R0,#+0
??ASCII_IsBlank_2:
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ASCII_IsSpace:
        MOVS     R1,R0
        MOVS     R2,R1
        ANDS     R2,R2,#0xFF      ;; Zero extend
        CMP      R2,#+32
        BEQ      ??ASCII_IsSpace_0
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+13
        BEQ      ??ASCII_IsSpace_0
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+10
        BEQ      ??ASCII_IsSpace_0
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+12
        BEQ      ??ASCII_IsSpace_0
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+9
        BEQ      ??ASCII_IsSpace_0
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+11
        BNE      ??ASCII_IsSpace_1
??ASCII_IsSpace_0:
        MOV      R0,#+1
        B        ??ASCII_IsSpace_2
??ASCII_IsSpace_1:
        MOV      R0,#+0
??ASCII_IsSpace_2:
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ASCII_IsPrint:
        MOVS     R1,R0
        MOVS     R2,R1
        ANDS     R2,R2,#0xFF      ;; Zero extend
        CMP      R2,#+32
        BLT      ??ASCII_IsPrint_0
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+127
        BGE      ??ASCII_IsPrint_0
        MOV      R0,#+1
        B        ??ASCII_IsPrint_1
??ASCII_IsPrint_0:
        MOV      R0,#+0
??ASCII_IsPrint_1:
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ASCII_IsGraph:
        MOVS     R1,R0
        MOVS     R2,R1
        ANDS     R2,R2,#0xFF      ;; Zero extend
        CMP      R2,#+33
        BLT      ??ASCII_IsGraph_0
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+127
        BGE      ??ASCII_IsGraph_0
        MOV      R0,#+1
        B        ??ASCII_IsGraph_1
??ASCII_IsGraph_0:
        MOV      R0,#+0
??ASCII_IsGraph_1:
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ASCII_IsPunct:
        MOVS     R1,R0
        MOVS     R2,R1
        ANDS     R2,R2,#0xFF      ;; Zero extend
        CMP      R2,#+32
        BLT      ??ASCII_IsPunct_0
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+127
        BGE      ??ASCII_IsPunct_0
        MOV      R0,#+1
        B        ??ASCII_IsPunct_1
??ASCII_IsPunct_0:
        MOV      R0,#+0
??ASCII_IsPunct_1:
        CMP      R0,#+1
        BNE      ??ASCII_IsPunct_2
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+32
        BEQ      ??ASCII_IsPunct_3
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+13
        BEQ      ??ASCII_IsPunct_3
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+10
        BEQ      ??ASCII_IsPunct_3
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+12
        BEQ      ??ASCII_IsPunct_3
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+9
        BEQ      ??ASCII_IsPunct_3
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+11
        BNE      ??ASCII_IsPunct_4
??ASCII_IsPunct_3:
        MOV      R0,#+1
        B        ??ASCII_IsPunct_5
??ASCII_IsPunct_4:
        MOV      R0,#+0
??ASCII_IsPunct_5:
        CMP      R0,#+0
        BNE      ??ASCII_IsPunct_2
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+65
        BLT      ??ASCII_IsPunct_6
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+91
        BGE      ??ASCII_IsPunct_6
        MOV      R0,#+1
        B        ??ASCII_IsPunct_7
??ASCII_IsPunct_6:
        MOV      R0,#+0
??ASCII_IsPunct_7:
        CMP      R0,#+1
        BEQ      ??ASCII_IsPunct_8
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+97
        BLT      ??ASCII_IsPunct_9
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+123
        BGE      ??ASCII_IsPunct_9
        MOV      R0,#+1
        B        ??ASCII_IsPunct_10
??ASCII_IsPunct_9:
        MOV      R0,#+0
??ASCII_IsPunct_10:
        CMP      R0,#+1
        BNE      ??ASCII_IsPunct_11
??ASCII_IsPunct_8:
        MOV      R0,#+1
        B        ??ASCII_IsPunct_12
??ASCII_IsPunct_11:
        MOV      R0,#+0
??ASCII_IsPunct_12:
        CMP      R0,#+1
        BEQ      ??ASCII_IsPunct_13
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+48
        BLT      ??ASCII_IsPunct_14
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+58
        BGE      ??ASCII_IsPunct_14
        MOV      R0,#+1
        B        ??ASCII_IsPunct_15
??ASCII_IsPunct_14:
        MOV      R0,#+0
??ASCII_IsPunct_15:
        CMP      R0,#+1
        BNE      ??ASCII_IsPunct_16
??ASCII_IsPunct_13:
        MOV      R0,#+1
        B        ??ASCII_IsPunct_17
??ASCII_IsPunct_16:
        MOV      R0,#+0
??ASCII_IsPunct_17:
        CMP      R0,#+0
        BNE      ??ASCII_IsPunct_2
        MOV      R0,#+1
        B        ??ASCII_IsPunct_18
??ASCII_IsPunct_2:
        MOV      R0,#+0
??ASCII_IsPunct_18:
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ASCII_IsCtrl:
        MOVS     R1,R0
        MOVS     R2,R1
        LSL      R2,R2,#+24
        ASRS     R2,R2,#+24
        CMP      R2,#+0
        BMI      ??ASCII_IsCtrl_0
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+32
        BLT      ??ASCII_IsCtrl_1
??ASCII_IsCtrl_0:
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+127
        BNE      ??ASCII_IsCtrl_2
??ASCII_IsCtrl_1:
        MOV      R0,#+1
        B        ??ASCII_IsCtrl_3
??ASCII_IsCtrl_2:
        MOV      R0,#+0
??ASCII_IsCtrl_3:
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ASCII_ToLower:
        MOVS     R1,R0
        MOVS     R2,R1
        ANDS     R2,R2,#0xFF      ;; Zero extend
        CMP      R2,#+65
        BLT      ??ASCII_ToLower_0
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+91
        BGE      ??ASCII_ToLower_0
        MOV      R0,#+1
        B        ??ASCII_ToLower_1
??ASCII_ToLower_0:
        MOV      R0,#+0
??ASCII_ToLower_1:
        CMP      R0,#+1
        BNE      ??ASCII_ToLower_2
        ADDS     R0,R1,#+32
        B        ??ASCII_ToLower_3
??ASCII_ToLower_2:
        MOVS     R0,R1
??ASCII_ToLower_3:
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ASCII_ToUpper:
        MOVS     R1,R0
        MOVS     R2,R1
        ANDS     R2,R2,#0xFF      ;; Zero extend
        CMP      R2,#+97
        BLT      ??ASCII_ToUpper_0
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+123
        BGE      ??ASCII_ToUpper_0
        MOV      R0,#+1
        B        ??ASCII_ToUpper_1
??ASCII_ToUpper_0:
        MOV      R0,#+0
??ASCII_ToUpper_1:
        CMP      R0,#+1
        BNE      ??ASCII_ToUpper_2
        SUBS     R0,R1,#+32
        B        ??ASCII_ToUpper_3
??ASCII_ToUpper_2:
        MOVS     R0,R1
??ASCII_ToUpper_3:
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ASCII_Cmp:
        PUSH     {LR}
        MOVS     R2,R0
        MOVS     LR,R2
        ANDS     LR,LR,#0xFF      ;; Zero extend
        CMP      LR,#+97
        BLT      ??ASCII_Cmp_0
        MOVS     R3,R2
        ANDS     R3,R3,#0xFF      ;; Zero extend
        CMP      R3,#+123
        BGE      ??ASCII_Cmp_0
        MOV      R3,#+1
        B        ??ASCII_Cmp_1
??ASCII_Cmp_0:
        MOV      R3,#+0
??ASCII_Cmp_1:
        CMP      R3,#+1
        BNE      ??ASCII_Cmp_2
        SUBS     R3,R2,#+32
        B        ??ASCII_Cmp_3
??ASCII_Cmp_2:
        MOVS     R3,R2
??ASCII_Cmp_3:
        MOVS     LR,R1
        ANDS     LR,LR,#0xFF      ;; Zero extend
        CMP      LR,#+97
        BLT      ??ASCII_Cmp_4
        MOVS     R12,R1
        ANDS     R12,R12,#0xFF    ;; Zero extend
        CMP      R12,#+123
        BGE      ??ASCII_Cmp_4
        MOV      R12,#+1
        B        ??ASCII_Cmp_5
??ASCII_Cmp_4:
        MOV      R12,#+0
??ASCII_Cmp_5:
        CMP      R12,#+1
        BNE      ??ASCII_Cmp_6
        SUBS     R12,R1,#+32
        B        ??ASCII_Cmp_7
??ASCII_Cmp_6:
        MOVS     R12,R1
??ASCII_Cmp_7:
        ANDS     R3,R3,#0xFF      ;; Zero extend
        ANDS     R12,R12,#0xFF    ;; Zero extend
        CMP      R3,R12
        BNE      ??ASCII_Cmp_8
        MOV      R0,#+1
        B        ??ASCII_Cmp_9
??ASCII_Cmp_8:
        MOV      R0,#+0
??ASCII_Cmp_9:
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {LR}
        BX       LR               ;; return

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 1 752 bytes in section .text
// 
// 1 752 bytes of CODE memory
//
//Errors: none
//Warnings: none
