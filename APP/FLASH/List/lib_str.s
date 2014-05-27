///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       22/May/2014  14:14:50
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\uC-LIB\lib_str.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\uC-LIB\lib_str.c" -lcN
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
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\lib_str.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN ASCII_IsAlphaNum
        EXTERN ASCII_IsDig
        EXTERN ASCII_IsDigHex
        EXTERN ASCII_IsLower
        EXTERN ASCII_IsPrint
        EXTERN ASCII_IsSpace
        EXTERN __aeabi_uidiv
        EXTERN __aeabi_uidivmod

        PUBLIC Str_Cat
        PUBLIC Str_Cat_N
        PUBLIC Str_Char
        PUBLIC Str_Char_Last
        PUBLIC Str_Char_N
        PUBLIC Str_Cmp
        PUBLIC Str_CmpIgnoreCase
        PUBLIC Str_CmpIgnoreCase_N
        PUBLIC Str_Cmp_N
        PUBLIC Str_Copy
        PUBLIC Str_Copy_N
        PUBLIC Str_FmtNbr_Int32S
        PUBLIC Str_FmtNbr_Int32U
        PUBLIC Str_Len
        PUBLIC Str_Len_N
        PUBLIC Str_ParseNbr_Int32S
        PUBLIC Str_ParseNbr_Int32U
        PUBLIC Str_Str


        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
Str_MultOvfThTbl_Int32U:
        DATA
        DC32 4294967295, 4294967295, 2147483647, 1431655765, 1073741823
        DC32 858993459, 715827882, 613566756, 536870911, 477218588, 429496729
        DC32 390451572, 357913941, 330382099, 306783378, 286331153, 268435455
        DC32 252645135, 238609294, 226050910, 214748364, 204522252, 195225786
        DC32 186737708, 178956970, 171798691, 165191049, 159072862, 153391689
        DC32 148102320, 143165576, 138547332, 134217727, 130150524, 126322567
        DC32 122713351, 119304647

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Str_Len:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MVN      R1,#+0
        MOVS     R0,R4
        BL       Str_Len_N
        MOVS     R5,R0
        MOVS     R0,R5
        POP      {R1,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Str_Len_N:
        MOVS     R2,R0
        MOV      R3,#+0
        MOVS     R0,R3
??Str_Len_N_0:
        CMP      R2,#+0
        BEQ      ??Str_Len_N_1
        LDRB     R3,[R2, #+0]
        CMP      R3,#+0
        BEQ      ??Str_Len_N_1
        CMP      R0,R1
        BCS      ??Str_Len_N_1
        ADDS     R0,R0,#+1
        ADDS     R2,R2,#+1
        B        ??Str_Len_N_0
??Str_Len_N_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Str_Copy:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MVN      R2,#+0
        MOVS     R1,R5
        MOVS     R0,R4
        BL       Str_Copy_N
        MOVS     R4,R0
        MOVS     R0,R4
        POP      {R1,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Str_Copy_N:
        PUSH     {R4,LR}
        MOVS     R3,R0
        CMP      R3,#+0
        BNE      ??Str_Copy_N_0
        MOV      R0,#+0
        B        ??Str_Copy_N_1
??Str_Copy_N_0:
        CMP      R1,#+0
        BNE      ??Str_Copy_N_2
        MOV      R0,#+0
        B        ??Str_Copy_N_1
??Str_Copy_N_2:
        CMP      R2,#+0
        BNE      ??Str_Copy_N_3
        MOV      R0,#+0
        B        ??Str_Copy_N_1
??Str_Copy_N_3:
        MOVS     R12,R3
        MOVS     LR,R12
        ADDS     LR,LR,#+1
        MOV      R0,#+0
        MOVS     R4,R0
??Str_Copy_N_4:
        CMP      LR,#+0
        BEQ      ??Str_Copy_N_5
        CMP      R1,#+0
        BEQ      ??Str_Copy_N_5
        LDRB     R0,[R1, #+0]
        CMP      R0,#+0
        BEQ      ??Str_Copy_N_5
        CMP      R4,R2
        BCS      ??Str_Copy_N_5
        LDRB     R0,[R1, #+0]
        STRB     R0,[R12, #+0]
        ADDS     R12,R12,#+1
        ADDS     LR,LR,#+1
        ADDS     R1,R1,#+1
        ADDS     R4,R4,#+1
        B        ??Str_Copy_N_4
??Str_Copy_N_5:
        MOV      R0,#+0
        STRB     R0,[R12, #+0]
        MOVS     R0,R3
??Str_Copy_N_1:
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Str_Cat:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MVN      R2,#+0
        MOVS     R1,R5
        MOVS     R0,R4
        BL       Str_Cat_N
        MOVS     R4,R0
        MOVS     R0,R4
        POP      {R1,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Str_Cat_N:
        PUSH     {R4,LR}
        MOVS     R3,R0
        CMP      R3,#+0
        BNE      ??Str_Cat_N_0
        MOV      R0,#+0
        B        ??Str_Cat_N_1
??Str_Cat_N_0:
        CMP      R1,#+0
        BNE      ??Str_Cat_N_2
        MOV      R0,#+0
        B        ??Str_Cat_N_1
??Str_Cat_N_2:
        CMP      R2,#+0
        BNE      ??Str_Cat_N_3
        MOV      R0,#+0
        B        ??Str_Cat_N_1
??Str_Cat_N_3:
        MOVS     R12,R3
??Str_Cat_N_4:
        CMP      R12,#+0
        BEQ      ??Str_Cat_N_5
        LDRB     R0,[R12, #+0]
        CMP      R0,#+0
        BEQ      ??Str_Cat_N_5
        ADDS     R12,R12,#+1
        B        ??Str_Cat_N_4
??Str_Cat_N_5:
        CMP      R12,#+0
        BNE      ??Str_Cat_N_6
        MOV      R0,#+0
        B        ??Str_Cat_N_1
??Str_Cat_N_6:
        MOVS     LR,R12
        ADDS     LR,LR,#+1
        MOV      R0,#+0
        MOVS     R4,R0
??Str_Cat_N_7:
        CMP      LR,#+0
        BEQ      ??Str_Cat_N_8
        CMP      R1,#+0
        BEQ      ??Str_Cat_N_8
        LDRB     R0,[R1, #+0]
        CMP      R0,#+0
        BEQ      ??Str_Cat_N_8
        CMP      R4,R2
        BCS      ??Str_Cat_N_8
        LDRB     R0,[R1, #+0]
        STRB     R0,[R12, #+0]
        ADDS     R12,R12,#+1
        ADDS     LR,LR,#+1
        ADDS     R1,R1,#+1
        ADDS     R4,R4,#+1
        B        ??Str_Cat_N_7
??Str_Cat_N_8:
        MOV      R0,#+0
        STRB     R0,[R12, #+0]
        MOVS     R0,R3
??Str_Cat_N_1:
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Str_Cmp:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MVN      R2,#+0
        MOVS     R1,R5
        MOVS     R0,R4
        BL       Str_Cmp_N
        MOVS     R6,R0
        MOVS     R0,R6
        LSL      R0,R0,#+16
        ASRS     R0,R0,#+16
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Str_Cmp_N:
        PUSH     {R4-R6,LR}
        MOVS     R3,R0
        CMP      R2,#+0
        BNE      ??Str_Cmp_N_0
        MOV      R0,#+0
        B        ??Str_Cmp_N_1
??Str_Cmp_N_0:
        CMP      R3,#+0
        BNE      ??Str_Cmp_N_2
        CMP      R1,#+0
        BNE      ??Str_Cmp_N_3
        MOV      R0,#+0
        B        ??Str_Cmp_N_1
??Str_Cmp_N_3:
        LDRB     R0,[R1, #+0]
        RSBS     R0,R0,#+0
        MOVS     LR,R0
        MOVS     R0,LR
        LSL      R0,R0,#+16
        ASRS     R0,R0,#+16
        B        ??Str_Cmp_N_1
??Str_Cmp_N_2:
        CMP      R1,#+0
        BNE      ??Str_Cmp_N_4
        LDRB     R0,[R3, #+0]
        MOVS     LR,R0
        MOVS     R0,LR
        LSL      R0,R0,#+16
        ASRS     R0,R0,#+16
        B        ??Str_Cmp_N_1
??Str_Cmp_N_4:
        MOVS     R4,R3
        MOVS     R5,R1
        ADDS     R4,R4,#+1
        ADDS     R5,R5,#+1
        MOV      R0,#+0
        MOVS     R12,R0
??Str_Cmp_N_5:
        LDRB     R0,[R3, #+0]
        LDRB     R6,[R1, #+0]
        CMP      R0,R6
        BNE      ??Str_Cmp_N_6
        LDRB     R0,[R3, #+0]
        CMP      R0,#+0
        BEQ      ??Str_Cmp_N_6
        CMP      R4,#+0
        BEQ      ??Str_Cmp_N_6
        CMP      R5,#+0
        BEQ      ??Str_Cmp_N_6
        CMP      R12,R2
        BCS      ??Str_Cmp_N_6
        ADDS     R4,R4,#+1
        ADDS     R5,R5,#+1
        ADDS     R3,R3,#+1
        ADDS     R1,R1,#+1
        ADDS     R12,R12,#+1
        B        ??Str_Cmp_N_5
??Str_Cmp_N_6:
        CMP      R12,R2
        BNE      ??Str_Cmp_N_7
        MOV      R0,#+0
        B        ??Str_Cmp_N_1
??Str_Cmp_N_7:
        LDRB     R0,[R3, #+0]
        LDRB     R6,[R1, #+0]
        CMP      R0,R6
        BEQ      ??Str_Cmp_N_8
        LDRB     R0,[R3, #+0]
        LDRB     R6,[R1, #+0]
        SUBS     R0,R0,R6
        MOVS     LR,R0
        B        ??Str_Cmp_N_9
??Str_Cmp_N_8:
        LDRB     R0,[R3, #+0]
        CMP      R0,#+0
        BNE      ??Str_Cmp_N_10
        MOV      R0,#+0
        MOVS     LR,R0
        B        ??Str_Cmp_N_9
??Str_Cmp_N_10:
        CMP      R4,#+0
        BNE      ??Str_Cmp_N_11
        CMP      R5,#+0
        BNE      ??Str_Cmp_N_12
        MOV      R0,#+0
        MOVS     LR,R0
        B        ??Str_Cmp_N_9
??Str_Cmp_N_12:
        LDRB     R0,[R5, #+0]
        RSBS     R0,R0,#+0
        MOVS     LR,R0
        B        ??Str_Cmp_N_9
??Str_Cmp_N_11:
        LDRB     R0,[R4, #+0]
        MOVS     LR,R0
??Str_Cmp_N_9:
        MOVS     R0,LR
        LSL      R0,R0,#+16
        ASRS     R0,R0,#+16
??Str_Cmp_N_1:
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Str_CmpIgnoreCase:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MVN      R2,#+0
        MOVS     R1,R5
        MOVS     R0,R4
        BL       Str_CmpIgnoreCase_N
        MOVS     R6,R0
        MOVS     R0,R6
        LSL      R0,R0,#+16
        ASRS     R0,R0,#+16
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Str_CmpIgnoreCase_N:
        PUSH     {R4-R8,LR}
        MOVS     R3,R0
        CMP      R2,#+0
        BNE      ??Str_CmpIgnoreCase_N_0
        MOV      R0,#+0
        B        ??Str_CmpIgnoreCase_N_1
??Str_CmpIgnoreCase_N_0:
        CMP      R3,#+0
        BNE      ??Str_CmpIgnoreCase_N_2
        CMP      R1,#+0
        BNE      ??Str_CmpIgnoreCase_N_3
        MOV      R0,#+0
        B        ??Str_CmpIgnoreCase_N_1
??Str_CmpIgnoreCase_N_3:
        LDRB     R0,[R1, #+0]
        CMP      R0,#+65
        BLT      ??Str_CmpIgnoreCase_N_4
        LDRB     R0,[R1, #+0]
        CMP      R0,#+91
        BGE      ??Str_CmpIgnoreCase_N_4
        MOV      R0,#+1
        B        ??Str_CmpIgnoreCase_N_5
??Str_CmpIgnoreCase_N_4:
        MOV      R0,#+0
??Str_CmpIgnoreCase_N_5:
        CMP      R0,#+1
        BNE      ??Str_CmpIgnoreCase_N_6
        LDRB     R0,[R1, #+0]
        ADDS     R7,R0,#+32
        B        ??Str_CmpIgnoreCase_N_7
??Str_CmpIgnoreCase_N_6:
        LDRB     R7,[R1, #+0]
??Str_CmpIgnoreCase_N_7:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        RSBS     R0,R0,#+0
        MOVS     R12,R0
        MOVS     R0,R12
        LSL      R0,R0,#+16
        ASRS     R0,R0,#+16
        B        ??Str_CmpIgnoreCase_N_1
??Str_CmpIgnoreCase_N_2:
        CMP      R1,#+0
        BNE      ??Str_CmpIgnoreCase_N_8
        LDRB     R0,[R3, #+0]
        CMP      R0,#+65
        BLT      ??Str_CmpIgnoreCase_N_9
        LDRB     R0,[R3, #+0]
        CMP      R0,#+91
        BGE      ??Str_CmpIgnoreCase_N_9
        MOV      R0,#+1
        B        ??Str_CmpIgnoreCase_N_10
??Str_CmpIgnoreCase_N_9:
        MOV      R0,#+0
??Str_CmpIgnoreCase_N_10:
        CMP      R0,#+1
        BNE      ??Str_CmpIgnoreCase_N_11
        LDRB     R0,[R3, #+0]
        ADDS     R6,R0,#+32
        B        ??Str_CmpIgnoreCase_N_12
??Str_CmpIgnoreCase_N_11:
        LDRB     R6,[R3, #+0]
??Str_CmpIgnoreCase_N_12:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        MOVS     R12,R0
        MOVS     R0,R12
        LSL      R0,R0,#+16
        ASRS     R0,R0,#+16
        B        ??Str_CmpIgnoreCase_N_1
??Str_CmpIgnoreCase_N_8:
        MOVS     LR,R3
        MOVS     R4,R1
        ADDS     LR,LR,#+1
        ADDS     R4,R4,#+1
        LDRB     R0,[R3, #+0]
        CMP      R0,#+65
        BLT      ??Str_CmpIgnoreCase_N_13
        LDRB     R0,[R3, #+0]
        CMP      R0,#+91
        BGE      ??Str_CmpIgnoreCase_N_13
        MOV      R0,#+1
        B        ??Str_CmpIgnoreCase_N_14
??Str_CmpIgnoreCase_N_13:
        MOV      R0,#+0
??Str_CmpIgnoreCase_N_14:
        CMP      R0,#+1
        BNE      ??Str_CmpIgnoreCase_N_15
        LDRB     R0,[R3, #+0]
        ADDS     R6,R0,#+32
        B        ??Str_CmpIgnoreCase_N_16
??Str_CmpIgnoreCase_N_15:
        LDRB     R6,[R3, #+0]
??Str_CmpIgnoreCase_N_16:
        LDRB     R0,[R1, #+0]
        CMP      R0,#+65
        BLT      ??Str_CmpIgnoreCase_N_17
        LDRB     R0,[R1, #+0]
        CMP      R0,#+91
        BGE      ??Str_CmpIgnoreCase_N_17
        MOV      R0,#+1
        B        ??Str_CmpIgnoreCase_N_18
??Str_CmpIgnoreCase_N_17:
        MOV      R0,#+0
??Str_CmpIgnoreCase_N_18:
        CMP      R0,#+1
        BNE      ??Str_CmpIgnoreCase_N_19
        LDRB     R0,[R1, #+0]
        ADDS     R7,R0,#+32
        B        ??Str_CmpIgnoreCase_N_20
??Str_CmpIgnoreCase_N_19:
        LDRB     R7,[R1, #+0]
??Str_CmpIgnoreCase_N_20:
        MOV      R0,#+0
        MOVS     R5,R0
??Str_CmpIgnoreCase_N_21:
        ANDS     R6,R6,#0xFF      ;; Zero extend
        ANDS     R7,R7,#0xFF      ;; Zero extend
        CMP      R6,R7
        BNE      ??Str_CmpIgnoreCase_N_22
        LDRB     R0,[R3, #+0]
        CMP      R0,#+0
        BEQ      ??Str_CmpIgnoreCase_N_22
        CMP      LR,#+0
        BEQ      ??Str_CmpIgnoreCase_N_22
        CMP      R4,#+0
        BEQ      ??Str_CmpIgnoreCase_N_22
        CMP      R5,R2
        BCS      ??Str_CmpIgnoreCase_N_22
        ADDS     LR,LR,#+1
        ADDS     R4,R4,#+1
        ADDS     R3,R3,#+1
        ADDS     R1,R1,#+1
        ADDS     R5,R5,#+1
        LDRB     R0,[R3, #+0]
        CMP      R0,#+65
        BLT      ??Str_CmpIgnoreCase_N_23
        LDRB     R0,[R3, #+0]
        CMP      R0,#+91
        BGE      ??Str_CmpIgnoreCase_N_23
        MOV      R0,#+1
        B        ??Str_CmpIgnoreCase_N_24
??Str_CmpIgnoreCase_N_23:
        MOV      R0,#+0
??Str_CmpIgnoreCase_N_24:
        CMP      R0,#+1
        BNE      ??Str_CmpIgnoreCase_N_25
        LDRB     R0,[R3, #+0]
        ADDS     R6,R0,#+32
        B        ??Str_CmpIgnoreCase_N_26
??Str_CmpIgnoreCase_N_25:
        LDRB     R6,[R3, #+0]
??Str_CmpIgnoreCase_N_26:
        LDRB     R0,[R1, #+0]
        CMP      R0,#+65
        BLT      ??Str_CmpIgnoreCase_N_27
        LDRB     R0,[R1, #+0]
        CMP      R0,#+91
        BGE      ??Str_CmpIgnoreCase_N_27
        MOV      R0,#+1
        B        ??Str_CmpIgnoreCase_N_28
??Str_CmpIgnoreCase_N_27:
        MOV      R0,#+0
??Str_CmpIgnoreCase_N_28:
        CMP      R0,#+1
        BNE      ??Str_CmpIgnoreCase_N_29
        LDRB     R0,[R1, #+0]
        ADDS     R7,R0,#+32
        B        ??Str_CmpIgnoreCase_N_30
??Str_CmpIgnoreCase_N_29:
        LDRB     R7,[R1, #+0]
??Str_CmpIgnoreCase_N_30:
        B        ??Str_CmpIgnoreCase_N_21
??Str_CmpIgnoreCase_N_22:
        CMP      R5,R2
        BNE      ??Str_CmpIgnoreCase_N_31
        MOV      R0,#+0
        B        ??Str_CmpIgnoreCase_N_1
??Str_CmpIgnoreCase_N_31:
        ANDS     R6,R6,#0xFF      ;; Zero extend
        ANDS     R7,R7,#0xFF      ;; Zero extend
        CMP      R6,R7
        BEQ      ??Str_CmpIgnoreCase_N_32
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        MOVS     R8,R7
        ANDS     R8,R8,#0xFF      ;; Zero extend
        SUBS     R0,R0,R8
        MOVS     R12,R0
        B        ??Str_CmpIgnoreCase_N_33
??Str_CmpIgnoreCase_N_32:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??Str_CmpIgnoreCase_N_34
        MOV      R0,#+0
        MOVS     R12,R0
        B        ??Str_CmpIgnoreCase_N_33
??Str_CmpIgnoreCase_N_34:
        CMP      LR,#+0
        BNE      ??Str_CmpIgnoreCase_N_35
        CMP      R4,#+0
        BNE      ??Str_CmpIgnoreCase_N_36
        MOV      R0,#+0
        MOVS     R12,R0
        B        ??Str_CmpIgnoreCase_N_33
??Str_CmpIgnoreCase_N_36:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+65
        BLT      ??Str_CmpIgnoreCase_N_37
        LDRB     R0,[R4, #+0]
        CMP      R0,#+91
        BGE      ??Str_CmpIgnoreCase_N_37
        MOV      R0,#+1
        B        ??Str_CmpIgnoreCase_N_38
??Str_CmpIgnoreCase_N_37:
        MOV      R0,#+0
??Str_CmpIgnoreCase_N_38:
        CMP      R0,#+1
        BNE      ??Str_CmpIgnoreCase_N_39
        LDRB     R0,[R4, #+0]
        ADDS     R7,R0,#+32
        B        ??Str_CmpIgnoreCase_N_40
??Str_CmpIgnoreCase_N_39:
        LDRB     R7,[R4, #+0]
??Str_CmpIgnoreCase_N_40:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        RSBS     R0,R0,#+0
        MOVS     R12,R0
        B        ??Str_CmpIgnoreCase_N_33
??Str_CmpIgnoreCase_N_35:
        LDRB     R0,[LR, #+0]
        CMP      R0,#+65
        BLT      ??Str_CmpIgnoreCase_N_41
        LDRB     R0,[LR, #+0]
        CMP      R0,#+91
        BGE      ??Str_CmpIgnoreCase_N_41
        MOV      R0,#+1
        B        ??Str_CmpIgnoreCase_N_42
??Str_CmpIgnoreCase_N_41:
        MOV      R0,#+0
??Str_CmpIgnoreCase_N_42:
        CMP      R0,#+1
        BNE      ??Str_CmpIgnoreCase_N_43
        LDRB     R0,[LR, #+0]
        ADDS     R6,R0,#+32
        B        ??Str_CmpIgnoreCase_N_44
??Str_CmpIgnoreCase_N_43:
        LDRB     R6,[LR, #+0]
??Str_CmpIgnoreCase_N_44:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        MOVS     R12,R0
??Str_CmpIgnoreCase_N_33:
        MOVS     R0,R12
        LSL      R0,R0,#+16
        ASRS     R0,R0,#+16
??Str_CmpIgnoreCase_N_1:
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Str_Char:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,R5
        ANDS     R2,R2,#0xFF      ;; Zero extend
        MVN      R1,#+0
        MOVS     R0,R4
        BL       Str_Char_N
        MOVS     R4,R0
        MOVS     R0,R4
        POP      {R1,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Str_Char_N:
        PUSH     {LR}
        MOVS     R3,R0
        CMP      R3,#+0
        BNE      ??Str_Char_N_0
        MOV      R0,#+0
        B        ??Str_Char_N_1
??Str_Char_N_0:
        CMP      R1,#+0
        BNE      ??Str_Char_N_2
        MOV      R0,#+0
        B        ??Str_Char_N_1
??Str_Char_N_2:
        MOVS     R12,R3
        ADDS     R12,R12,#+1
        MOV      R0,#+0
        MOVS     LR,R0
??Str_Char_N_3:
        CMP      R12,#+0
        BEQ      ??Str_Char_N_4
        LDRB     R0,[R3, #+0]
        CMP      R0,#+0
        BEQ      ??Str_Char_N_4
        LDRB     R0,[R3, #+0]
        ANDS     R2,R2,#0xFF      ;; Zero extend
        CMP      R0,R2
        BEQ      ??Str_Char_N_4
        CMP      LR,R1
        BCS      ??Str_Char_N_4
        ADDS     R3,R3,#+1
        ADDS     R12,R12,#+1
        ADDS     LR,LR,#+1
        B        ??Str_Char_N_3
??Str_Char_N_4:
        LDRB     R0,[R3, #+0]
        ANDS     R2,R2,#0xFF      ;; Zero extend
        CMP      R0,R2
        BEQ      ??Str_Char_N_5
        MOV      R0,#+0
        B        ??Str_Char_N_1
??Str_Char_N_5:
        MOVS     R0,R3
??Str_Char_N_1:
        POP      {LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Str_Char_Last:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        CMP      R4,#+0
        BNE      ??Str_Char_Last_0
        MOV      R0,#+0
        B        ??Str_Char_Last_1
??Str_Char_Last_0:
        MOVS     R6,R4
        MOVS     R0,R4
        BL       Str_Len
        MOVS     R7,R0
        ADDS     R6,R7,R6
??Str_Char_Last_2:
        CMP      R6,R4
        BEQ      ??Str_Char_Last_3
        LDRB     R0,[R6, #+0]
        ANDS     R5,R5,#0xFF      ;; Zero extend
        CMP      R0,R5
        BEQ      ??Str_Char_Last_3
        SUBS     R6,R6,#+1
        B        ??Str_Char_Last_2
??Str_Char_Last_3:
        LDRB     R0,[R6, #+0]
        ANDS     R5,R5,#0xFF      ;; Zero extend
        CMP      R0,R5
        BEQ      ??Str_Char_Last_4
        MOV      R0,#+0
        B        ??Str_Char_Last_1
??Str_Char_Last_4:
        MOVS     R0,R6
??Str_Char_Last_1:
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Str_Str:
        PUSH     {R3-R11,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        CMP      R4,#+0
        BNE      ??Str_Str_0
        MOV      R0,#+0
        B        ??Str_Str_1
??Str_Str_0:
        CMP      R5,#+0
        BNE      ??Str_Str_2
        MOV      R0,#+0
        B        ??Str_Str_1
??Str_Str_2:
        MOVS     R0,R4
        BL       Str_Len
        MOVS     R6,R0
        MOVS     R0,R5
        BL       Str_Len
        MOVS     R7,R0
        CMP      R6,R7
        BCS      ??Str_Str_3
        MOV      R0,#+0
        B        ??Str_Str_1
??Str_Str_3:
        CMP      R7,#+0
        BNE      ??Str_Str_4
        ADDS     R0,R6,R4
        MOVS     R11,R0
        MOVS     R0,R11
        B        ??Str_Str_1
??Str_Str_4:
        SUBS     R1,R6,R7
        STR      R1,[SP, #+0]
        MOV      R0,#+0
        MOVS     R8,R0
        MOV      R0,#+0
        MOVS     R9,R0
??Str_Str_5:
        ADDS     R0,R8,R4
        MOVS     R11,R0
        MOVS     R2,R7
        MOVS     R1,R5
        MOVS     R0,R11
        BL       Str_Cmp_N
        MOVS     R10,R0
        MOVS     R0,R10
        LSL      R0,R0,#+16
        ASRS     R0,R0,#+16
        CMP      R0,#+0
        BNE      ??Str_Str_6
        MOV      R9,#+1
        B        ??Str_Str_7
??Str_Str_6:
        MOV      R9,#+0
??Str_Str_7:
        ADDS     R8,R8,#+1
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??Str_Str_8
        LDR      R0,[SP, #+0]
        CMP      R0,R8
        BCS      ??Str_Str_5
??Str_Str_8:
        MOVS     R0,R10
        LSL      R0,R0,#+16
        ASRS     R0,R0,#+16
        CMP      R0,#+0
        BEQ      ??Str_Str_9
        MOV      R0,#+0
        B        ??Str_Str_1
??Str_Str_9:
        MOVS     R0,R11
??Str_Str_1:
        POP      {R1,R4-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Str_FmtNbr_Int32U:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+20
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDRB     R8,[SP, #+56]
        LDRB     R9,[SP, #+60]
        LDR      R10,[SP, #+64]
        STR      R10,[SP, #+12]
        ANDS     R9,R9,#0xFF      ;; Zero extend
        STR      R9,[SP, #+8]
        ANDS     R8,R8,#0xFF      ;; Zero extend
        STR      R8,[SP, #+4]
        ANDS     R7,R7,#0xFF      ;; Zero extend
        STR      R7,[SP, #+0]
        MOV      R3,#+0
        MOVS     R2,R6
        ANDS     R2,R2,#0xFF      ;; Zero extend
        MOVS     R1,R5
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOVS     R0,R4
        BL       Str_FmtNbr_Int32
        MOVS     R11,R0
        MOVS     R0,R11
        ADD      SP,SP,#+20       ;; stack cleaning
        POP      {R4-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Str_FmtNbr_Int32S:
        PUSH     {R0,R1,R4-R11,LR}
        SUB      SP,SP,#+20
        MOVS     R4,R2
        MOVS     R5,R3
        LDRB     R6,[SP, #+64]
        LDRB     R7,[SP, #+68]
        LDR      R8,[SP, #+72]
        LDR      R0,[SP, #+20]
        MOVS     R10,R0
        CMP      R10,#+0
        BPL      ??Str_FmtNbr_Int32S_0
        RSBS     R10,R10,#+0
        MOV      R0,#+1
        MOVS     R11,R0
        B        ??Str_FmtNbr_Int32S_1
??Str_FmtNbr_Int32S_0:
        MOV      R0,#+0
        MOVS     R11,R0
??Str_FmtNbr_Int32S_1:
        STR      R8,[SP, #+12]
        ANDS     R7,R7,#0xFF      ;; Zero extend
        STR      R7,[SP, #+8]
        ANDS     R6,R6,#0xFF      ;; Zero extend
        STR      R6,[SP, #+4]
        ANDS     R5,R5,#0xFF      ;; Zero extend
        STR      R5,[SP, #+0]
        MOVS     R3,R11
        ANDS     R3,R3,#0xFF      ;; Zero extend
        MOVS     R2,R4
        ANDS     R2,R2,#0xFF      ;; Zero extend
        LDRB     R1,[SP, #+24]
        MOVS     R0,R10
        BL       Str_FmtNbr_Int32
        MOVS     R9,R0
        MOVS     R0,R9
        ADD      SP,SP,#+28       ;; stack cleaning
        POP      {R4-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Str_ParseNbr_Int32U:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R0,#+0
        STR      R0,[SP, #+0]
        MOV      R3,#+0
        MOVS     R2,R6
        ANDS     R2,R2,#0xFF      ;; Zero extend
        MOVS     R1,R5
        MOVS     R0,R4
        BL       Str_ParseNbr_Int32
        MOVS     R7,R0
        MOVS     R0,R7
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Str_ParseNbr_Int32S:
        PUSH     {R2-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        ADD      R0,SP,#+4
        STR      R0,[SP, #+0]
        MOV      R3,#+1
        MOVS     R2,R6
        ANDS     R2,R2,#0xFF      ;; Zero extend
        MOVS     R1,R5
        MOVS     R0,R4
        BL       Str_ParseNbr_Int32
        MOVS     R8,R0
        LDRB     R0,[SP, #+4]
        CMP      R0,#+0
        BNE      ??Str_ParseNbr_Int32S_0
        CMP      R8,#-2147483648
        BCC      ??Str_ParseNbr_Int32S_1
        MVN      R7,#-2147483648
        B        ??Str_ParseNbr_Int32S_2
??Str_ParseNbr_Int32S_1:
        MOVS     R7,R8
        B        ??Str_ParseNbr_Int32S_2
??Str_ParseNbr_Int32S_0:
        CMP      R8,#-2147483648
        BCC      ??Str_ParseNbr_Int32S_3
        MOV      R7,#-2147483648
        B        ??Str_ParseNbr_Int32S_2
??Str_ParseNbr_Int32S_3:
        RSBS     R7,R8,#+0
??Str_ParseNbr_Int32S_2:
        MOVS     R0,R7
        POP      {R1,R2,R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Str_FmtNbr_Int32:
        PUSH     {R0,R3-R11,LR}
        SUB      SP,SP,#+4
        MOVS     R4,R1
        MOVS     R5,R2
        LDRB     R6,[SP, #+48]
        LDR      R0,[SP, #+60]
        CMP      R0,#+0
        BNE      ??Str_FmtNbr_Int32_0
        MOV      R0,#+0
        B        ??Str_FmtNbr_Int32_1
??Str_FmtNbr_Int32_0:
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+2
        BLT      ??Str_FmtNbr_Int32_2
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+37
        BLT      ??Str_FmtNbr_Int32_3
??Str_FmtNbr_Int32_2:
        MOV      R0,#+0
        B        ??Str_FmtNbr_Int32_1
??Str_FmtNbr_Int32_3:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??Str_FmtNbr_Int32_4
        MOV      R0,#+1
        STRB     R0,[SP, #+0]
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        MOVS     R9,R0
        MOV      R0,#+0
        STRB     R0,[SP, #+1]
??Str_FmtNbr_Int32_5:
        LDR      R0,[SP, #+4]
        CMP      R0,R9
        BCC      ??Str_FmtNbr_Int32_6
        LDRB     R0,[SP, #+1]
        CMP      R0,#+0
        BNE      ??Str_FmtNbr_Int32_6
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable1
        LDR      R0,[R0, +R1]
        CMP      R0,R9
        BCC      ??Str_FmtNbr_Int32_7
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        MULS     R9,R0,R9
        B        ??Str_FmtNbr_Int32_8
??Str_FmtNbr_Int32_7:
        MOV      R0,#+1
        STRB     R0,[SP, #+1]
??Str_FmtNbr_Int32_8:
        LDRB     R1,[SP, #+0]
        ADDS     R1,R1,#+1
        STRB     R1,[SP, #+0]
        B        ??Str_FmtNbr_Int32_5
??Str_FmtNbr_Int32_6:
        LDRB     R0,[SP, #+0]
        ANDS     R4,R4,#0xFF      ;; Zero extend
        CMP      R0,R4
        BCS      ??Str_FmtNbr_Int32_9
        LDRB     R0,[SP, #+0]
        MOVS     R4,R0
        B        ??Str_FmtNbr_Int32_9
??Str_FmtNbr_Int32_4:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       ASCII_IsPrint
        STRB     R0,[SP, #+2]
        LDRB     R0,[SP, #+2]
        CMP      R0,#+1
        BEQ      ??Str_FmtNbr_Int32_9
        MOV      R0,#+0
        B        ??Str_FmtNbr_Int32_1
??Str_FmtNbr_Int32_9:
        LDR      R0,[SP, #+4]
        MOVS     R8,R0
        LDR      R0,[SP, #+60]
        MOVS     R7,R0
        LDRB     R0,[SP, #+8]
        CMP      R0,#+1
        BNE      ??Str_FmtNbr_Int32_10
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Str_FmtNbr_Int32_10
        MOV      R0,#+45
        STRB     R0,[R7, #+0]
        ADDS     R7,R7,#+1
??Str_FmtNbr_Int32_10:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADDS     R7,R0,R7
        LDRB     R0,[SP, #+56]
        CMP      R0,#+0
        BEQ      ??Str_FmtNbr_Int32_11
        MOV      R0,#+0
        STRB     R0,[R7, #+0]
??Str_FmtNbr_Int32_11:
        SUBS     R7,R7,#+1
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Str_FmtNbr_Int32_12
        MOV      R0,#+1
        MOVS     R11,R0
??Str_FmtNbr_Int32_13:
        ANDS     R4,R4,#0xFF      ;; Zero extend
        ANDS     R11,R11,#0xFF    ;; Zero extend
        CMP      R4,R11
        BCC      ??Str_FmtNbr_Int32_12
        CMP      R8,#+0
        BNE      ??Str_FmtNbr_Int32_14
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BEQ      ??Str_FmtNbr_Int32_14
        MOVS     R0,R11
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??Str_FmtNbr_Int32_15
??Str_FmtNbr_Int32_14:
        MOVS     R0,R8
        MOVS     R1,R5
        ANDS     R1,R1,#0xFF      ;; Zero extend
        BL       __aeabi_uidivmod
        MOVS     R10,R1
        CMP      R10,#+10
        BCS      ??Str_FmtNbr_Int32_16
        MOVS     R0,R10
        ADDS     R0,R0,#+48
        STRB     R0,[R7, #+0]
        SUBS     R7,R7,#+1
        B        ??Str_FmtNbr_Int32_17
??Str_FmtNbr_Int32_16:
        LDRB     R0,[SP, #+52]
        CMP      R0,#+1
        BEQ      ??Str_FmtNbr_Int32_18
        MOVS     R0,R10
        ADDS     R0,R0,#+55
        STRB     R0,[R7, #+0]
        SUBS     R7,R7,#+1
        B        ??Str_FmtNbr_Int32_17
??Str_FmtNbr_Int32_18:
        MOVS     R0,R10
        ADDS     R0,R0,#+87
        STRB     R0,[R7, #+0]
        SUBS     R7,R7,#+1
        B        ??Str_FmtNbr_Int32_17
??Str_FmtNbr_Int32_15:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Str_FmtNbr_Int32_17
        STRB     R6,[R7, #+0]
        SUBS     R7,R7,#+1
??Str_FmtNbr_Int32_17:
        MOVS     R0,R8
        MOVS     R1,R5
        ANDS     R1,R1,#0xFF      ;; Zero extend
        BL       __aeabi_uidiv
        MOVS     R8,R0
        ADDS     R11,R11,#+1
        B        ??Str_FmtNbr_Int32_13
??Str_FmtNbr_Int32_12:
        LDR      R0,[SP, #+60]
??Str_FmtNbr_Int32_1:
        POP      {R1-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Str_ParseNbr_Int32:
        PUSH     {R0,R1,R3-R11,LR}
        SUB      SP,SP,#+16
        MOVS     R4,R2
        LDR      R5,[SP, #+64]
        LDR      R0,[SP, #+20]
        CMP      R0,#+0
        BEQ      ??Str_ParseNbr_Int32_0
        LDR      R0,[SP, #+16]
        LDR      R1,[SP, #+20]
        STR      R0,[R1, #+0]
??Str_ParseNbr_Int32_0:
        CMP      R5,#+0
        BEQ      ??Str_ParseNbr_Int32_1
        MOV      R0,#+0
        STRB     R0,[R5, #+0]
??Str_ParseNbr_Int32_1:
        LDR      R0,[SP, #+16]
        CMP      R0,#+0
        BNE      ??Str_ParseNbr_Int32_2
        MOV      R0,#+0
        B        ??Str_ParseNbr_Int32_3
??Str_ParseNbr_Int32_2:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BEQ      ??Str_ParseNbr_Int32_4
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+37
        BLT      ??Str_ParseNbr_Int32_5
??Str_ParseNbr_Int32_4:
        MOV      R0,#+0
        B        ??Str_ParseNbr_Int32_3
??Str_ParseNbr_Int32_5:
        LDR      R0,[SP, #+16]
        MOVS     R6,R0
        LDRB     R0,[R6, #+0]
        BL       ASCII_IsSpace
        STRB     R0,[SP, #+2]
??Str_ParseNbr_Int32_6:
        LDRB     R0,[SP, #+2]
        CMP      R0,#+1
        BNE      ??Str_ParseNbr_Int32_7
        ADDS     R6,R6,#+1
        LDRB     R0,[R6, #+0]
        BL       ASCII_IsSpace
        STRB     R0,[SP, #+2]
        B        ??Str_ParseNbr_Int32_6
??Str_ParseNbr_Int32_7:
        LDRB     R0,[R6, #+0]
        CMP      R0,#+43
        BEQ      ??Str_ParseNbr_Int32_8
        CMP      R0,#+45
        BEQ      ??Str_ParseNbr_Int32_9
        B        ??Str_ParseNbr_Int32_10
??Str_ParseNbr_Int32_8:
        ADDS     R6,R6,#+1
        MOV      R0,#+0
        STRB     R0,[SP, #+0]
        B        ??Str_ParseNbr_Int32_11
??Str_ParseNbr_Int32_9:
        LDRB     R0,[SP, #+24]
        CMP      R0,#+1
        BNE      ??Str_ParseNbr_Int32_12
        ADDS     R6,R6,#+1
??Str_ParseNbr_Int32_12:
        MOV      R0,#+1
        STRB     R0,[SP, #+0]
        B        ??Str_ParseNbr_Int32_11
??Str_ParseNbr_Int32_10:
        MOV      R0,#+0
        STRB     R0,[SP, #+0]
??Str_ParseNbr_Int32_11:
        STR      R6,[SP, #+8]
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Str_ParseNbr_Int32_13
        CMP      R0,#+8
        BEQ      ??Str_ParseNbr_Int32_14
        CMP      R0,#+16
        BEQ      ??Str_ParseNbr_Int32_15
        B        ??Str_ParseNbr_Int32_16
??Str_ParseNbr_Int32_13:
        LDRB     R0,[R6, #+0]
        CMP      R0,#+48
        BNE      ??Str_ParseNbr_Int32_17
        ADDS     R6,R6,#+1
        LDRB     R0,[R6, #+0]
        CMP      R0,#+88
        BEQ      ??Str_ParseNbr_Int32_18
        CMP      R0,#+120
        BNE      ??Str_ParseNbr_Int32_19
??Str_ParseNbr_Int32_18:
        MOV      R0,#+16
        MOVS     R4,R0
        LDRB     R0,[R6, #+1]
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       ASCII_IsDigHex
        STRB     R0,[SP, #+1]
        LDRB     R0,[SP, #+1]
        CMP      R0,#+1
        BNE      ??Str_ParseNbr_Int32_20
        ADDS     R6,R6,#+1
??Str_ParseNbr_Int32_20:
        B        ??Str_ParseNbr_Int32_21
??Str_ParseNbr_Int32_19:
        MOV      R0,#+8
        MOVS     R4,R0
        B        ??Str_ParseNbr_Int32_21
??Str_ParseNbr_Int32_17:
        MOV      R0,#+10
        MOVS     R4,R0
??Str_ParseNbr_Int32_21:
        B        ??Str_ParseNbr_Int32_22
??Str_ParseNbr_Int32_14:
        LDRB     R0,[R6, #+0]
        CMP      R0,#+48
        BNE      ??Str_ParseNbr_Int32_23
        ADDS     R6,R6,#+1
??Str_ParseNbr_Int32_23:
        B        ??Str_ParseNbr_Int32_22
??Str_ParseNbr_Int32_15:
        LDRB     R0,[R6, #+0]
        CMP      R0,#+48
        BNE      ??Str_ParseNbr_Int32_24
        ADDS     R6,R6,#+1
        LDRB     R0,[R6, #+0]
        CMP      R0,#+88
        BEQ      ??Str_ParseNbr_Int32_25
        CMP      R0,#+120
        BNE      ??Str_ParseNbr_Int32_26
??Str_ParseNbr_Int32_25:
        LDRB     R0,[R6, #+1]
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       ASCII_IsDigHex
        STRB     R0,[SP, #+1]
        LDRB     R0,[SP, #+1]
        CMP      R0,#+1
        BNE      ??Str_ParseNbr_Int32_27
        ADDS     R6,R6,#+1
??Str_ParseNbr_Int32_27:
        B        ??Str_ParseNbr_Int32_24
??Str_ParseNbr_Int32_26:
??Str_ParseNbr_Int32_24:
        B        ??Str_ParseNbr_Int32_22
??Str_ParseNbr_Int32_16:
??Str_ParseNbr_Int32_22:
        MOV      R0,#+0
        MOVS     R9,R0
        MOV      R0,#+0
        MOVS     R10,R0
        MOV      R0,#+0
        MOVS     R11,R0
??Str_ParseNbr_Int32_28:
        MOVS     R0,R11
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??Str_ParseNbr_Int32_29
        LDRB     R0,[R6, #+0]
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       ASCII_IsAlphaNum
        STRB     R0,[SP, #+4]
        LDRB     R0,[SP, #+4]
        CMP      R0,#+1
        BNE      ??Str_ParseNbr_Int32_30
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       ASCII_IsDig
        STRB     R0,[SP, #+5]
        LDRB     R0,[SP, #+5]
        CMP      R0,#+1
        BNE      ??Str_ParseNbr_Int32_31
        SUBS     R0,R7,#+48
        MOVS     R8,R0
        B        ??Str_ParseNbr_Int32_32
??Str_ParseNbr_Int32_31:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       ASCII_IsLower
        STRB     R0,[SP, #+3]
        LDRB     R0,[SP, #+3]
        CMP      R0,#+1
        BNE      ??Str_ParseNbr_Int32_33
        SUBS     R0,R7,#+87
        MOVS     R8,R0
        B        ??Str_ParseNbr_Int32_32
??Str_ParseNbr_Int32_33:
        SUBS     R0,R7,#+55
        MOVS     R8,R0
??Str_ParseNbr_Int32_32:
        ANDS     R8,R8,#0xFF      ;; Zero extend
        ANDS     R4,R4,#0xFF      ;; Zero extend
        CMP      R8,R4
        BCS      ??Str_ParseNbr_Int32_34
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??Str_ParseNbr_Int32_35
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable1
        LDR      R0,[R0, +R1]
        CMP      R0,R9
        BCC      ??Str_ParseNbr_Int32_36
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        MULS     R9,R0,R9
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADDS     R9,R0,R9
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R9,R0
        BCS      ??Str_ParseNbr_Int32_35
        MOV      R0,#+1
        MOVS     R10,R0
        B        ??Str_ParseNbr_Int32_35
??Str_ParseNbr_Int32_36:
        MOV      R0,#+1
        MOVS     R10,R0
??Str_ParseNbr_Int32_35:
        ADDS     R6,R6,#+1
        B        ??Str_ParseNbr_Int32_28
??Str_ParseNbr_Int32_34:
        MOV      R0,#+1
        MOVS     R11,R0
        B        ??Str_ParseNbr_Int32_28
??Str_ParseNbr_Int32_30:
        MOV      R0,#+1
        MOVS     R11,R0
        B        ??Str_ParseNbr_Int32_28
??Str_ParseNbr_Int32_29:
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??Str_ParseNbr_Int32_37
        MVN      R0,#+0
        MOVS     R9,R0
??Str_ParseNbr_Int32_37:
        LDR      R0,[SP, #+20]
        CMP      R0,#+0
        BEQ      ??Str_ParseNbr_Int32_38
        LDR      R0,[SP, #+8]
        CMP      R6,R0
        BEQ      ??Str_ParseNbr_Int32_39
        LDR      R0,[SP, #+20]
        STR      R6,[R0, #+0]
        B        ??Str_ParseNbr_Int32_38
??Str_ParseNbr_Int32_39:
        LDR      R0,[SP, #+16]
        LDR      R1,[SP, #+20]
        STR      R0,[R1, #+0]
??Str_ParseNbr_Int32_38:
        CMP      R5,#+0
        BEQ      ??Str_ParseNbr_Int32_40
        LDRB     R0,[SP, #+0]
        STRB     R0,[R5, #+0]
??Str_ParseNbr_Int32_40:
        MOVS     R0,R9
??Str_ParseNbr_Int32_3:
        ADD      SP,SP,#+28       ;; stack cleaning
        POP      {R4-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     Str_MultOvfThTbl_Int32U

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
//   148 bytes in section .rodata
// 4 428 bytes in section .text
// 
// 4 428 bytes of CODE  memory
//   148 bytes of CONST memory
//
//Errors: none
//Warnings: none
