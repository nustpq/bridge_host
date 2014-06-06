///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       06/Jun/2014  17:56:39
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Noah\dsp.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Noah\dsp.c" -lcN
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
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\dsp.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN BSP_Ser_Printf
        EXTERN CM_LegacyRead
        EXTERN DM_LegacyRead
        EXTERN DM_SingleWrite
        EXTERN HOST_SingleWrite_2
        EXTERN OSTimeDly
        EXTERN PM_SingleWrite
        EXTERN Pin_Reset_FM36

        PUBLIC DMIC_PGA_Control
        PUBLIC Init_FM36
        PUBLIC Init_FM36_AB03
        PUBLIC ReInit_FM36


        SECTION `.text`:CODE:NOROOT(2)
        ARM
Revert_patch_Endien:
        MOVS     R2,R0
        LDRB     R3,[R2, #+0]
        MOVS     R1,R3
        LDRB     R3,[R2, #+2]
        STRB     R3,[R2, #+0]
        STRB     R1,[R2, #+2]
        BX       LR               ;; return

        SECTION `.data`:DATA:REORDER:NOROOT(2)
fm36_patch_code_1:
        DATA
        DC32 16128, 9633786, 8529514, 9699034, 8649978, 2337375, 2339487
        DC32 9698554, 8529530, 9698650, 8529546, 9698666, 8529562, 9698506
        DC32 8529578, 9698522, 8529594, 9698490, 8650106, 2335263, 2335327
        DC32 9698682, 8585210, 9697546, 1590895

        SECTION `.data`:DATA:REORDER:NOROOT(2)
fm36_para_table_1:
        DATA
        DC16 16288, 33847, 16304, 1106, 16289, 33893, 16305, 16128, 8800, 31485
        DC16 8806, 19, 8807, 48000, 8808, 48000, 8804, 416, 8805, 0, 8840, 0
        DC16 8841, 32767, 8848, 32767, 8957, 158, 8819, 2730, 8963, 32768, 8964
        DC16 16384, 8965, 0, 8814, 6, 8818, 63, 8824, 0, 8897, 16345, 8898
        DC16 16347, 8899, 16349, 8900, 16351, 8901, 16353, 8902, 16355, 8955, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
fm36_patch_code_2:
        DATA
        DC32 16128, 3932261, 4419594, 3633665, 1568862, 6815909, 2253471
        DC32 4456458, 1697679, 8454442, 8876544, 6815905, 9925120, 8454458
        DC32 8876576, 6815905, 9925152, 8454474, 8876608, 6815905, 9925184
        DC32 8454426, 1687503, 8876560, 6291617, 9925136, 9503194, 8876592
        DC32 6291617, 9925168, 9503210, 8876624, 6291617, 9925200, 9503226
        DC32 8791120, 1688191

        SECTION `.data`:DATA:REORDER:NOROOT(2)
fm36_para_table_2:
        DATA
        DC16 16288, 40567, 16304, 16128, 16289, 39931, 16305, 16136, 16290
        DC16 39974, 16306, 16150, 8800, 31485, 8806, 19, 8807, 48000, 8808
        DC16 48000, 8804, 416, 8805, 0, 8840, 0, 8841, 32767, 8848, 32767, 8957
        DC16 158, 8956, 32768, 8814, 6, 8919, 0, 8920, 1, 8921, 2, 8922, 3
        DC16 8923, 4, 8924, 5, 8882, 1, 8883, 1, 8884, 1, 8834, 0, 8835, 1
        DC16 8836, 2, 8837, 3, 8838, 4, 8839, 5, 8939, 6, 8897, 4122, 8898
        DC16 4123, 8899, 4124, 8900, 4125, 8901, 4126, 8902, 4127, 8955, 0
        DC16 16273, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
fm36_patch_code_3:
        DATA
        DC32 16128, 3932261, 4419594, 3633665, 1568862, 6815909, 2253471
        DC32 3932229, 4420362, 3633761, 1568958, 6815909, 2253471, 4456458
        DC32 1697679, 8454442, 8876544, 6815905, 9925120, 8454458, 8876576
        DC32 6815905, 9925152, 8454474, 8876608, 6815905, 9925184, 8454426
        DC32 1687503, 8876560, 6291617, 9925136, 9503194, 8876592, 6291617
        DC32 9925168, 9503210, 8876624, 6291617, 9925200, 9503226, 8791120
        DC32 1688191, 9055346, 7340202, 8876640, 6815905, 9925216, 9055362
        DC32 7340202, 8876672, 6815905, 9925248, 8457201, 1585631, 4452357
        DC32 3932197, 3812688, 3895970, 1951039, 4452357, 1689807, 8876656
        DC32 3408008, 6291617, 9138848, 7864482, 9925232, 8876688, 6291617
        DC32 9138864, 7864482, 9925264, 8791376, 1680143

        SECTION `.data`:DATA:REORDER:NOROOT(2)
fm36_para_table_3:
        DATA
        DC16 16288, 40567, 16304, 16128, 16289, 39931, 16305, 16142, 16290
        DC16 39974, 16306, 16156, 16291, 33564, 16307, 16170, 16292, 40075
        DC16 16308, 16182, 16293, 39471, 16309, 16189, 8800, 31487, 8806, 19
        DC16 8807, 48000, 8801, 30975, 8808, 48000, 8804, 416, 8805, 0, 8840, 0
        DC16 8841, 32767, 8848, 32767, 8957, 158, 8956, 32768, 8814, 6, 8882, 1
        DC16 8883, 1, 8884, 1, 8858, 2, 8859, 8, 8860, 9, 8897, 4122, 8898
        DC16 4123, 8899, 4124, 8900, 4125, 8901, 4126, 8902, 4127, 8903, 4120
        DC16 8904, 4121, 8919, 0, 8920, 1, 8921, 2, 8922, 3, 8923, 4, 8924, 5
        DC16 8917, 6, 8918, 7, 8834, 0, 8835, 1, 8836, 2, 8837, 3, 8838, 4
        DC16 8839, 5, 8939, 6, 8955, 0

        SECTION `.text`:CODE:NOROOT(2)
        ARM
DMIC_PGA_Control:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOV      R0,#+63
        MOVS     R7,R0
        MOVS     R0,R4
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+0
        BEQ      ??DMIC_PGA_Control_0
        CMP      R0,#+6
        BEQ      ??DMIC_PGA_Control_1
        CMP      R0,#+12
        BEQ      ??DMIC_PGA_Control_2
        CMP      R0,#+18
        BEQ      ??DMIC_PGA_Control_3
        CMP      R0,#+1000
        BEQ      ??DMIC_PGA_Control_4
        B        ??DMIC_PGA_Control_5
??DMIC_PGA_Control_0:
        MOV      R0,#+0
        MOVS     R6,R0
        B        ??DMIC_PGA_Control_6
??DMIC_PGA_Control_1:
        MOV      R0,#+85
        ORR      R0,R0,#0x500
        MOVS     R6,R0
        B        ??DMIC_PGA_Control_6
??DMIC_PGA_Control_2:
        MOV      R0,#+170
        ORR      R0,R0,#0xA00
        MOVS     R6,R0
        B        ??DMIC_PGA_Control_6
??DMIC_PGA_Control_3:
        MOV      R0,#+255
        ORR      R0,R0,#0xF00
        MOVS     R6,R0
        B        ??DMIC_PGA_Control_6
??DMIC_PGA_Control_4:
        MOV      R0,#+63
        ORR      R0,R0,#0x3F00
        MOVS     R7,R0
        B        ??DMIC_PGA_Control_6
??DMIC_PGA_Control_5:
        MOV      R0,#+228
        B        ??DMIC_PGA_Control_7
??DMIC_PGA_Control_6:
        MOVS     R0,R7
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+63
        BNE      ??DMIC_PGA_Control_8
        MOVS     R2,R6
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        MOV      R1,#+146
        ORR      R1,R1,#0x3F00
        MOV      R0,#+192
        BL       DM_SingleWrite
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??DMIC_PGA_Control_8
        MOV      R0,#+220
        B        ??DMIC_PGA_Control_7
??DMIC_PGA_Control_8:
        MOVS     R2,R7
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        MOV      R1,#+150
        ORR      R1,R1,#0x3F00
        MOV      R0,#+192
        BL       DM_SingleWrite
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??DMIC_PGA_Control_9
        MOV      R0,#+220
        B        ??DMIC_PGA_Control_7
??DMIC_PGA_Control_9:
??DMIC_PGA_Control_7:
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Config_Lin:
        PUSH     {R4-R6,LR}
        MOVS     R6,R0
        MOVS     R4,R1
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADDS     R2,R0,#+1
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        MOV      R1,#+154
        ORR      R1,R1,#0x2200
        MOV      R0,#+192
        BL       DM_SingleWrite
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Config_Lin_0
        MOV      R0,#+220
        B        ??Config_Lin_1
??Config_Lin_0:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        ADDS     R2,R1,R0, LSL #+3
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        MOV      R1,#+155
        ORR      R1,R1,#0x2200
        MOV      R0,#+192
        BL       DM_SingleWrite
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Config_Lin_2
        MOV      R0,#+220
        B        ??Config_Lin_1
??Config_Lin_2:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        ADDS     R0,R1,R0, LSL #+3
        ADDS     R2,R0,#+1
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        MOV      R1,#+156
        ORR      R1,R1,#0x2200
        MOV      R0,#+192
        BL       DM_SingleWrite
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Config_Lin_3
        MOV      R0,#+220
        B        ??Config_Lin_1
??Config_Lin_3:
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
??Config_Lin_1:
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Config_SP0_Out:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOV      R2,#+24
        ORR      R2,R2,#0x1000
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        MOV      R1,#+193
        ORR      R1,R1,#0x2200
        ADDS     R1,R1,R0
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        MOV      R0,#+192
        BL       DM_SingleWrite
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Config_SP0_Out_0
        MOV      R0,#+220
        B        ??Config_SP0_Out_1
??Config_SP0_Out_0:
        MOV      R2,#+25
        ORR      R2,R2,#0x1000
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        MOV      R1,#+194
        ORR      R1,R1,#0x2200
        ADDS     R1,R1,R0
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        MOV      R0,#+192
        BL       DM_SingleWrite
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Config_SP0_Out_2
        MOV      R0,#+220
        B        ??Config_SP0_Out_1
??Config_SP0_Out_2:
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
??Config_SP0_Out_1:
        POP      {R1,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
sr_saved:
        DS8 4

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ReInit_FM36:
        PUSH     {R4-R6,LR}
        MOVS     R6,R0
        MOVS     R0,R6
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        LDR      R1,??DataTable2
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BNE      ??ReInit_FM36_0
        MOV      R0,#+0
        B        ??ReInit_FM36_1
??ReInit_FM36_0:
        MOVS     R0,R6
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        LDR      R1,??DataTable2
        STR      R0,[R1, #+0]
        MOVS     R0,R6
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+8000
        BEQ      ??ReInit_FM36_2
        CMP      R0,#+16000
        BEQ      ??ReInit_FM36_3
        MOV      R1,#+192
        ORR      R1,R1,#0x5D00
        CMP      R0,R1
        BEQ      ??ReInit_FM36_4
        CMP      R0,#+32000
        BEQ      ??ReInit_FM36_5
        MOV      R1,#+68
        ORR      R1,R1,#0xAC00
        CMP      R0,R1
        BEQ      ??ReInit_FM36_6
        B        ??ReInit_FM36_7
??ReInit_FM36_2:
        MOV      R0,#+8000
        MOVS     R5,R0
        B        ??ReInit_FM36_8
??ReInit_FM36_3:
        MOV      R0,#+16000
        MOVS     R5,R0
        B        ??ReInit_FM36_8
??ReInit_FM36_4:
        MOV      R0,#+192
        ORR      R0,R0,#0x5D00
        MOVS     R5,R0
        B        ??ReInit_FM36_8
??ReInit_FM36_5:
        MOV      R0,#+32000
        MOVS     R5,R0
        B        ??ReInit_FM36_8
??ReInit_FM36_6:
        MOV      R0,#+68
        ORR      R0,R0,#0xAC00
        MOVS     R5,R0
        B        ??ReInit_FM36_8
??ReInit_FM36_7:
        MOV      R0,#+128
        ORR      R0,R0,#0xBB00
        MOVS     R5,R0
??ReInit_FM36_8:
        MOVS     R2,R5
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        MOV      R1,#+214
        ORR      R1,R1,#0x3F00
        MOV      R0,#+192
        BL       DM_SingleWrite
        MOVS     R4,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??ReInit_FM36_9
        MOV      R0,#+220
        MOVS     R4,R0
??ReInit_FM36_9:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
??ReInit_FM36_1:
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.data`:DATA:REORDER:NOROOT(0)
flag_power_lose:
        DATA
        DC8 1

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Init_FM36_AB03:
        PUSH     {R3-R11,LR}
        MOVS     R11,R0
        MOVS     R4,R1
        MOVS     R5,R2
        MOVS     R6,R3
        MOVS     R0,R11
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        LDR      R1,??DataTable2
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BNE      ??Init_FM36_AB03_0
        MOV      R0,#+0
        B        ??Init_FM36_AB03_1
??Init_FM36_AB03_0:
        MOVS     R0,R11
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        LDR      R1,??DataTable2
        STR      R0,[R1, #+0]
        BL       Pin_Reset_FM36
        MOVS     R2,SP
        MOV      R1,#+255
        ORR      R1,R1,#0x2F00
        MOV      R0,#+192
        BL       CM_LegacyRead
        MOVS     R10,R0
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Init_FM36_AB03_2
        MOV      R0,#+224
        MOVS     R10,R0
        MOV      R0,#+224
        B        ??Init_FM36_AB03_1
??Init_FM36_AB03_2:
        LDRH     R1,[SP, #+0]
        LDR      R0,??DataTable2_1
        BL       BSP_Ser_Printf
        LDRH     R0,[SP, #+0]
        MOV      R1,#+12
        ORR      R1,R1,#0x6000
        CMP      R0,R1
        BEQ      ??Init_FM36_AB03_3
        MOV      R0,#+225
        B        ??Init_FM36_AB03_1
??Init_FM36_AB03_3:
        MOVS     R0,R11
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+8000
        BEQ      ??Init_FM36_AB03_4
        CMP      R0,#+16000
        BEQ      ??Init_FM36_AB03_5
        MOV      R1,#+192
        ORR      R1,R1,#0x5D00
        CMP      R0,R1
        BEQ      ??Init_FM36_AB03_6
        CMP      R0,#+32000
        BEQ      ??Init_FM36_AB03_7
        MOV      R1,#+68
        ORR      R1,R1,#0xAC00
        CMP      R0,R1
        BEQ      ??Init_FM36_AB03_8
        B        ??Init_FM36_AB03_9
??Init_FM36_AB03_4:
        MOV      R0,#+8000
        STRH     R0,[SP, #+0]
        B        ??Init_FM36_AB03_10
??Init_FM36_AB03_5:
        MOV      R0,#+16000
        STRH     R0,[SP, #+0]
        B        ??Init_FM36_AB03_10
??Init_FM36_AB03_6:
        MOV      R0,#+192
        ORR      R0,R0,#0x5D00
        STRH     R0,[SP, #+0]
        B        ??Init_FM36_AB03_10
??Init_FM36_AB03_7:
        MOV      R0,#+32000
        STRH     R0,[SP, #+0]
        B        ??Init_FM36_AB03_10
??Init_FM36_AB03_8:
        MOV      R0,#+68
        ORR      R0,R0,#0xAC00
        STRH     R0,[SP, #+0]
        B        ??Init_FM36_AB03_10
??Init_FM36_AB03_9:
        MOV      R0,#+128
        ORR      R0,R0,#0xBB00
        STRH     R0,[SP, #+0]
??Init_FM36_AB03_10:
        LDR      R0,??DataTable2_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??Init_FM36_AB03_11
        MOV      R0,#+0
        LDR      R1,??DataTable2_2
        STRB     R0,[R1, #+0]
        LDR      R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        MOVS     R8,R0
        MOV      R0,#+1
        MOVS     R7,R0
??Init_FM36_AB03_12:
        CMP      R7,#+75
        BCS      ??Init_FM36_AB03_11
        LSLS     R0,R7,#+2
        LDR      R1,??DataTable2_3
        ADDS     R0,R0,R1
        BL       Revert_patch_Endien
        MOV      R3,#+0
        LSLS     R0,R7,#+2
        LDR      R1,??DataTable2_3
        ADDS     R2,R0,R1
        MOVS     R1,R8
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        MOV      R0,#+192
        BL       PM_SingleWrite
        MOVS     R10,R0
        ADDS     R8,R8,#+1
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Init_FM36_AB03_13
        MOV      R0,#+221
        MOVS     R10,R0
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Init_FM36_AB03_1
??Init_FM36_AB03_13:
        ADDS     R7,R7,#+1
        B        ??Init_FM36_AB03_12
??Init_FM36_AB03_11:
        MOV      R0,#+0
        MOVS     R7,R0
??Init_FM36_AB03_14:
        CMP      R7,#+55
        BCS      ??Init_FM36_AB03_15
        LSLS     R0,R7,#+2
        LDR      R1,??DataTable2_4
        LDRH     R0,[R0, +R1]
        MOVS     R8,R0
        LSLS     R0,R7,#+2
        LDR      R1,??DataTable2_4
        ADDS     R0,R0,R1
        LDRH     R0,[R0, #+2]
        MOVS     R9,R0
        MOVS     R0,R8
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        MOV      R1,#+104
        ORR      R1,R1,#0x2200
        CMP      R0,R1
        BNE      ??Init_FM36_AB03_16
        LDRH     R0,[SP, #+0]
        MOVS     R9,R0
??Init_FM36_AB03_16:
        MOVS     R0,R8
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        MOV      R1,#+251
        ORR      R1,R1,#0x2200
        CMP      R0,R1
        BNE      ??Init_FM36_AB03_17
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Config_SP0_Out
        MOVS     R10,R0
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Init_FM36_AB03_18
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Init_FM36_AB03_1
??Init_FM36_AB03_18:
        MOVS     R1,R6
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       Config_Lin
        MOVS     R10,R0
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Init_FM36_AB03_17
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Init_FM36_AB03_1
??Init_FM36_AB03_17:
        MOVS     R2,R9
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        MOVS     R1,R8
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        MOV      R0,#+192
        BL       DM_SingleWrite
        MOVS     R10,R0
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Init_FM36_AB03_19
        MOV      R0,#+220
        MOVS     R10,R0
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Init_FM36_AB03_1
??Init_FM36_AB03_19:
        MOVS     R0,R8
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        MOV      R1,#+251
        ORR      R1,R1,#0x2200
        CMP      R0,R1
        BNE      ??Init_FM36_AB03_20
        MOV      R0,#+100
        BL       OSTimeDly
??Init_FM36_AB03_20:
        ADDS     R7,R7,#+1
        B        ??Init_FM36_AB03_14
??Init_FM36_AB03_15:
        ADD      R2,SP,#+2
        MOV      R1,#+6
        ORR      R1,R1,#0x2300
        MOV      R0,#+192
        BL       DM_LegacyRead
        MOVS     R10,R0
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Init_FM36_AB03_21
        MOV      R0,#+223
        MOVS     R10,R0
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Init_FM36_AB03_1
??Init_FM36_AB03_21:
        MOV      R0,#+100
        BL       OSTimeDly
        MOVS     R2,SP
        MOV      R1,#+251
        ORR      R1,R1,#0x2200
        MOV      R0,#+192
        BL       DM_LegacyRead
        MOVS     R10,R0
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Init_FM36_AB03_22
        MOV      R0,#+223
        MOVS     R10,R0
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Init_FM36_AB03_1
??Init_FM36_AB03_22:
        LDRH     R1,[SP, #+0]
        LDR      R0,??DataTable2_5
        BL       BSP_Ser_Printf
        LDRH     R0,[SP, #+0]
        MOV      R1,#+90
        ORR      R1,R1,#0x5A00
        CMP      R0,R1
        BEQ      ??Init_FM36_AB03_23
        MOV      R0,#+227
        B        ??Init_FM36_AB03_1
??Init_FM36_AB03_23:
        MOVS     R2,SP
        MOV      R1,#+6
        ORR      R1,R1,#0x2300
        MOV      R0,#+192
        BL       DM_LegacyRead
        MOVS     R10,R0
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Init_FM36_AB03_24
        MOV      R0,#+223
        MOVS     R10,R0
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Init_FM36_AB03_1
??Init_FM36_AB03_24:
        LDRH     R0,[SP, #+0]
        LDRH     R1,[SP, #+2]
        CMP      R0,R1
        BNE      ??Init_FM36_AB03_25
        LDR      R0,??DataTable2_6
        BL       BSP_Ser_Printf
        MOV      R0,#+226
        B        ??Init_FM36_AB03_1
??Init_FM36_AB03_25:
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
??Init_FM36_AB03_1:
        POP      {R1,R4-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Init_FM36:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R0,R4
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        LDR      R1,??DataTable2
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BNE      ??Init_FM36_0
        MOV      R0,#+0
        B        ??Init_FM36_1
??Init_FM36_0:
        MOVS     R0,R4
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        LDR      R1,??DataTable2
        STR      R0,[R1, #+0]
        BL       Pin_Reset_FM36
        MOV      R2,#+2
        MOV      R1,#+12
        MOV      R0,#+192
        BL       HOST_SingleWrite_2
        MOVS     R8,R0
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Init_FM36_2
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Init_FM36_1
??Init_FM36_2:
        MOVS     R2,SP
        MOV      R1,#+255
        ORR      R1,R1,#0x2F00
        MOV      R0,#+192
        BL       CM_LegacyRead
        MOVS     R8,R0
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Init_FM36_3
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Init_FM36_1
??Init_FM36_3:
        LDRH     R1,[SP, #+0]
        LDR      R0,??DataTable2_1
        BL       BSP_Ser_Printf
        LDRH     R0,[SP, #+0]
        MOV      R1,#+208
        ORR      R1,R1,#0x3600
        CMP      R0,R1
        BNE      ??Init_FM36_4
        MOV      R0,#+0
        MOVS     R9,R0
        B        ??Init_FM36_5
??Init_FM36_4:
        LDRH     R0,[SP, #+0]
        MOV      R1,#+12
        ORR      R1,R1,#0x6000
        CMP      R0,R1
        BNE      ??Init_FM36_6
        MOV      R0,#+1
        MOVS     R9,R0
        B        ??Init_FM36_5
??Init_FM36_6:
        MOV      R0,#+160
        B        ??Init_FM36_1
??Init_FM36_5:
        MOVS     R0,R4
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+8000
        BEQ      ??Init_FM36_7
        CMP      R0,#+16000
        BEQ      ??Init_FM36_8
        MOV      R1,#+192
        ORR      R1,R1,#0x5D00
        CMP      R0,R1
        BEQ      ??Init_FM36_9
        CMP      R0,#+32000
        BEQ      ??Init_FM36_10
        MOV      R1,#+68
        ORR      R1,R1,#0xAC00
        CMP      R0,R1
        BEQ      ??Init_FM36_11
        B        ??Init_FM36_12
??Init_FM36_7:
        MOV      R0,#+8000
        STRH     R0,[SP, #+0]
        B        ??Init_FM36_13
??Init_FM36_8:
        MOV      R0,#+16000
        STRH     R0,[SP, #+0]
        B        ??Init_FM36_13
??Init_FM36_9:
        MOV      R0,#+192
        ORR      R0,R0,#0x5D00
        STRH     R0,[SP, #+0]
        B        ??Init_FM36_13
??Init_FM36_10:
        MOV      R0,#+32000
        STRH     R0,[SP, #+0]
        B        ??Init_FM36_13
??Init_FM36_11:
        MOV      R0,#+68
        ORR      R0,R0,#0xAC00
        STRH     R0,[SP, #+0]
        B        ??Init_FM36_13
??Init_FM36_12:
        MOV      R0,#+128
        ORR      R0,R0,#0xBB00
        STRH     R0,[SP, #+0]
??Init_FM36_13:
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??Init_FM36_14
        LDR      R0,??DataTable2_7
        LDR      R0,[R0, #+0]
        MOVS     R6,R0
        MOV      R0,#+1
        MOVS     R5,R0
??Init_FM36_15:
        CMP      R5,#+25
        BCS      ??Init_FM36_16
        LSLS     R0,R5,#+2
        LDR      R1,??DataTable2_7
        ADDS     R0,R0,R1
        BL       Revert_patch_Endien
        MOV      R3,#+0
        LSLS     R0,R5,#+2
        LDR      R1,??DataTable2_7
        ADDS     R2,R0,R1
        MOVS     R1,R6
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        MOV      R0,#+192
        BL       PM_SingleWrite
        MOVS     R8,R0
        ADDS     R6,R6,#+1
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Init_FM36_17
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Init_FM36_1
??Init_FM36_17:
        ADDS     R5,R5,#+1
        B        ??Init_FM36_15
??Init_FM36_16:
        MOV      R0,#+0
        MOVS     R5,R0
??Init_FM36_18:
        CMP      R5,#+28
        BCS      ??Init_FM36_19
        LSLS     R0,R5,#+2
        LDR      R1,??DataTable2_8
        LDRH     R0,[R0, +R1]
        MOVS     R6,R0
        LSLS     R0,R5,#+2
        LDR      R1,??DataTable2_8
        ADDS     R0,R0,R1
        LDRH     R0,[R0, #+2]
        MOVS     R7,R0
        MOVS     R0,R6
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        MOV      R1,#+104
        ORR      R1,R1,#0x2200
        CMP      R0,R1
        BNE      ??Init_FM36_20
        LDRH     R0,[SP, #+0]
        MOVS     R7,R0
??Init_FM36_20:
        MOVS     R2,R7
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        MOVS     R1,R6
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        MOV      R0,#+192
        BL       DM_SingleWrite
        MOVS     R8,R0
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Init_FM36_21
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Init_FM36_1
??Init_FM36_21:
        MOVS     R0,R6
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        MOV      R1,#+251
        ORR      R1,R1,#0x2200
        CMP      R0,R1
        BNE      ??Init_FM36_22
        MOV      R0,#+100
        BL       OSTimeDly
??Init_FM36_22:
        ADDS     R5,R5,#+1
        B        ??Init_FM36_18
??Init_FM36_14:
        LDR      R0,??DataTable2_9
        LDR      R0,[R0, #+0]
        MOVS     R6,R0
        MOV      R0,#+1
        MOVS     R5,R0
??Init_FM36_23:
        CMP      R5,#+37
        BCS      ??Init_FM36_24
        LSLS     R0,R5,#+2
        LDR      R1,??DataTable2_9
        ADDS     R0,R0,R1
        BL       Revert_patch_Endien
        MOV      R3,#+0
        LSLS     R0,R5,#+2
        LDR      R1,??DataTable2_9
        ADDS     R2,R0,R1
        MOVS     R1,R6
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        MOV      R0,#+192
        BL       PM_SingleWrite
        MOVS     R8,R0
        ADDS     R6,R6,#+1
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Init_FM36_25
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Init_FM36_1
??Init_FM36_25:
        ADDS     R5,R5,#+1
        B        ??Init_FM36_23
??Init_FM36_24:
        MOV      R0,#+0
        MOVS     R5,R0
??Init_FM36_26:
        CMP      R5,#+42
        BCS      ??Init_FM36_19
        LSLS     R0,R5,#+2
        LDR      R1,??DataTable2_10
        LDRH     R0,[R0, +R1]
        MOVS     R6,R0
        LSLS     R0,R5,#+2
        LDR      R1,??DataTable2_10
        ADDS     R0,R0,R1
        LDRH     R0,[R0, #+2]
        MOVS     R7,R0
        MOVS     R0,R6
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        MOV      R1,#+104
        ORR      R1,R1,#0x2200
        CMP      R0,R1
        BNE      ??Init_FM36_27
        LDRH     R0,[SP, #+0]
        MOVS     R7,R0
??Init_FM36_27:
        MOVS     R2,R7
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        MOVS     R1,R6
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        MOV      R0,#+192
        BL       DM_SingleWrite
        MOVS     R8,R0
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Init_FM36_28
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Init_FM36_1
??Init_FM36_28:
        MOVS     R0,R6
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        MOV      R1,#+251
        ORR      R1,R1,#0x2200
        CMP      R0,R1
        BNE      ??Init_FM36_29
        MOV      R0,#+100
        BL       OSTimeDly
??Init_FM36_29:
        ADDS     R5,R5,#+1
        B        ??Init_FM36_26
??Init_FM36_19:
        ADD      R2,SP,#+2
        MOV      R1,#+6
        ORR      R1,R1,#0x2300
        MOV      R0,#+192
        BL       DM_LegacyRead
        MOVS     R8,R0
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Init_FM36_30
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Init_FM36_1
??Init_FM36_30:
        MOV      R0,#+100
        BL       OSTimeDly
        MOVS     R2,SP
        MOV      R1,#+251
        ORR      R1,R1,#0x2200
        MOV      R0,#+192
        BL       DM_LegacyRead
        MOVS     R8,R0
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Init_FM36_31
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Init_FM36_1
??Init_FM36_31:
        LDRH     R1,[SP, #+0]
        LDR      R0,??DataTable2_5
        BL       BSP_Ser_Printf
        LDRH     R0,[SP, #+0]
        MOV      R1,#+90
        ORR      R1,R1,#0x5A00
        CMP      R0,R1
        BEQ      ??Init_FM36_32
        MOV      R0,#+2
        B        ??Init_FM36_1
??Init_FM36_32:
        MOVS     R2,SP
        MOV      R1,#+6
        ORR      R1,R1,#0x2300
        MOV      R0,#+192
        BL       DM_LegacyRead
        MOVS     R8,R0
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??Init_FM36_33
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??Init_FM36_1
??Init_FM36_33:
        LDRH     R0,[SP, #+0]
        LDRH     R1,[SP, #+2]
        CMP      R0,R1
        BNE      ??Init_FM36_34
        LDR      R0,??DataTable2_11
        BL       BSP_Ser_Printf
        MOV      R0,#+3
        B        ??Init_FM36_1
??Init_FM36_34:
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
??Init_FM36_1:
        POP      {R1,R4-R9,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     sr_saved

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     `?<Constant "ROM ID = 0x%X\\r\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     flag_power_lose

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     fm36_patch_code_3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     fm36_para_table_3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     `?<Constant "0x22FB = 0x%X\\r\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     `?<Constant "FM36 frame counter st...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     fm36_patch_code_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     fm36_para_table_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC32     fm36_patch_code_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DC32     fm36_para_table_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_11:
        DC32     `?<Constant "frame counter stopped !">`

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "ROM ID = 0x%X\\r\\n">`:
        DATA
        DC8 "ROM ID = 0x%X\015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "0x22FB = 0x%X\\r\\n">`:
        DATA
        DC8 "0x22FB = 0x%X\015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "FM36 frame counter st...">`:
        DATA
        DC8 "FM36 frame counter stopped !"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "frame counter stopped !">`:
        DATA
        DC8 "frame counter stopped !"

        END
// 
//     4 bytes in section .bss
// 1 049 bytes in section .data
//    88 bytes in section .rodata
// 3 472 bytes in section .text
// 
// 3 472 bytes of CODE  memory
//    88 bytes of CONST memory
// 1 053 bytes of DATA  memory
//
//Errors: none
//Warnings: 1
