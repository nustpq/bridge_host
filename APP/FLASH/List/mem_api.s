///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    26/Aug/2013  22:00:05 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  arm                                                     /
//    Endian       =  little                                                  /
//    Source file  =  G:\Bridge_Host_OS\Noah\mem_api.c                        /
//    Command line =  G:\Bridge_Host_OS\Noah\mem_api.c -lcN                   /
//                    G:\Bridge_Host_OS\APP\FLASH\List\ -lb                   /
//                    G:\Bridge_Host_OS\APP\FLASH\List\ -o                    /
//                    G:\Bridge_Host_OS\APP\FLASH\Obj\ --no_cse --no_unroll   /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little --cpu=ARM7TDMI  /
//                    -e --fpu=None --dlib_config "D:\Program Files           /
//                    (x86)\IAR Systems\Embedded Workbench                    /
//                    6.4\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    G:\Bridge_Host_OS\APP\ -I G:\Bridge_Host_OS\APP\..\uC-C /
//                    PU\ARM\IAR\ -I G:\Bridge_Host_OS\APP\..\BSP\ -I         /
//                    G:\Bridge_Host_OS\APP\..\Driver\ -I                     /
//                    G:\Bridge_Host_OS\APP\..\Noah\ -I                       /
//                    G:\Bridge_Host_OS\APP\..\Shell\ -I                      /
//                    G:\Bridge_Host_OS\APP\..\uCOS-II\Source\ -I             /
//                    G:\Bridge_Host_OS\APP\..\uC-CPU\ -I                     /
//                    G:\Bridge_Host_OS\APP\..\uC-LIB\ -I                     /
//                    G:\Bridge_Host_OS\APP\..\uC-CPU\ARM\IAR\ -I             /
//                    G:\Bridge_Host_OS\APP\..\uCOS-II\Ports\ARM\Generic\IAR\ /
//                     -I G:\Bridge_Host_OS\APP\..\uC-Probe\Target\Communicat /
//                    ion\Generic\RS-232\Source\ -I                           /
//                    G:\Bridge_Host_OS\APP\..\uC-Probe\Target\Communication\ /
//                    Generic\RS-232\Ports\Atmel\AT91SAM7X\ -I                /
//                    G:\Bridge_Host_OS\APP\..\uC-Probe\Target\Communication\ /
//                    Generic\Source\ -I G:\Bridge_Host_OS\APP\..\uC-Probe\Ta /
//                    rget\Plugins\uCOS-II\ -I G:\Bridge_Host_OS\APP\..\uC-Pr /
//                    obe\Target\Demos\Intro\Source\ --interwork --cpu_mode   /
//                    arm -On --use_c++_inline                                /
//    List file    =  G:\Bridge_Host_OS\APP\FLASH\List\mem_api.s              /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME mem_api

        #define SHT_PROGBITS 0x1

        EXTERN CM_LegacyRead
        EXTERN CM_LegacyRead_uart
        EXTERN CM_SingleWrite
        EXTERN CM_SingleWrite_uart
        EXTERN DM_BurstWrite
        EXTERN DM_BurstWrite_s
        EXTERN DM_FastRead
        EXTERN DM_FastReadReStart
        EXTERN DM_LegacyRead
        EXTERN DM_LegacyReadReStart
        EXTERN DM_LegacyRead_uart
        EXTERN DM_SingleWrite
        EXTERN DM_SingleWrite_uart
        EXTERN DSP_LegacyRead
        EXTERN DSP_LegacyRead_uart
        EXTERN DSP_SingleWrite_1
        EXTERN DSP_SingleWrite_1_uart
        EXTERN DSP_SingleWrite_2
        EXTERN DSP_SingleWrite_2_uart
        EXTERN HOST_LegacyRead
        EXTERN HOST_LegacyRead_uart
        EXTERN HOST_SingleWrite_1
        EXTERN HOST_SingleWrite_1_uart
        EXTERN HOST_SingleWrite_2
        EXTERN HOST_SingleWrite_2_uart
        EXTERN MEM_Block_LegacyRead
        EXTERN MEM_Block_LegacyRead_uart
        EXTERN MEM_Block_SingleWrite
        EXTERN MEM_Block_SingleWrite_uart
        EXTERN PM_BurstWrite_s
        EXTERN PM_LegacyRead
        EXTERN PM_LegacyRead_uart
        EXTERN PM_SingleWrite
        EXTERN PM_SingleWrite_uart

        PUBLIC CM_Read
        PUBLIC CM_SECTION_DEFINE
        PUBLIC CM_Write
        PUBLIC CheckMCUEndian
        PUBLIC Check_DSP_ID
        PUBLIC DM_BstWrite
        PUBLIC DM_BstWrite_s
        PUBLIC DM_Read
        PUBLIC DM_Write
        PUBLIC DSP_Read
        PUBLIC DSP_Write_1
        PUBLIC DSP_Write_2
        PUBLIC HOST_Read
        PUBLIC HOST_Write_1
        PUBLIC HOST_Write_2
        PUBLIC Init_Noah_Mem_Ctr
        PUBLIC MEM_Block_Read
        PUBLIC MEM_Block_Write
        PUBLIC Mem_Ctr
        PUBLIC PM_BstWrite_s
        PUBLIC PM_Read
        PUBLIC PM_Write


        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Mem_Ctr:
        DS8 8

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Init_Noah_Mem_Ctr:
        LDR      R0,??DataTable18
        MOV      R1,#+192
        STRB     R1,[R0, #+0]
        LDR      R0,??DataTable18
        MOV      R1,#+2
        STRB     R1,[R0, #+1]
        LDR      R0,??DataTable18
        MOV      R1,#+32
        STRB     R1,[R0, #+2]
        LDR      R0,??DataTable18
        MOV      R1,#+0
        STRB     R1,[R0, #+3]
        LDR      R0,??DataTable18
        MOV      R1,#+0
        STRB     R1,[R0, #+4]
        BX       LR               ;; return

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
CM_SECTION_DEFINE:
        DATA
        DC16 0, 12288, 16384, 906, 12288, 16128, 4744, 12288, 16256, 14032
        DC16 10240, 15359

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Check_DSP_ID:
        PUSH     {R3-R5,LR}
        MOV      R1,#+0
        STRH     R1,[SP, #+0]
        MOVS     R1,SP
        MOV      R0,#+255
        ORR      R0,R0,#0x2F00
        BL       CM_Read
        MOVS     R4,R0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        CMP      R4,#+0
        BNE      ??Check_DSP_ID_0
        LDRH     R0,[SP, #+0]
        LDR      R1,??DataTable18_1
        LDRH     R1,[R1, #+6]
        CMP      R0,R1
        BNE      ??Check_DSP_ID_1
        MOV      R0,#+1
        MOVS     R5,R0
        B        ??Check_DSP_ID_0
??Check_DSP_ID_1:
        LDRH     R0,[SP, #+0]
        LDR      R1,??DataTable18_1
        LDRH     R1,[R1, #+12]
        CMP      R0,R1
        BNE      ??Check_DSP_ID_2
        MOV      R0,#+2
        MOVS     R5,R0
        B        ??Check_DSP_ID_0
??Check_DSP_ID_2:
        LDRH     R0,[SP, #+0]
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        LSRS     R0,R0,#+8
        LDR      R1,??DataTable18_1
        LDRH     R1,[R1, #+18]
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LSRS     R1,R1,#+8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ANDS     R1,R1,#0xFF      ;; Zero extend
        CMP      R0,R1
        BNE      ??Check_DSP_ID_3
        MOV      R0,#+3
        MOVS     R5,R0
        B        ??Check_DSP_ID_0
??Check_DSP_ID_3:
        MOV      R0,#+0
        MOVS     R5,R0
??Check_DSP_ID_0:
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R1,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
DM_Read:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R6,#+0
        MOV      R7,#+255
        MOV      R0,#+0
        STRB     R0,[R5, #+0]
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+128
        BCC      ??DM_Read_1
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+1]
        SUB      R0,R0,#+1
        CMP      R0,#+5
        BHI      ??DM_Read_2
        LDRB     R1,[PC, R0]
        ADD      PC,PC,R1, LSL #+2
        DATA
??DM_Read_0:
        DC8      0x1,0xF,0x39,0x39
        DC8      0x1D,0x2B,0x0,0x0
        ARM
??DM_Read_3:
        MOVS     R2,R5
        MOVS     R1,R4
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        BL       DM_FastRead
        MOVS     R7,R0
        ANDS     R7,R7,#0xFF      ;; Zero extend
        CMP      R7,#+0
        BEQ      ??DM_Read_4
        MOV      R0,#+129
        MOVS     R6,R0
??DM_Read_4:
        B        ??DM_Read_5
??DM_Read_6:
        MOVS     R2,R5
        MOVS     R1,R4
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        BL       DM_LegacyRead
        MOVS     R7,R0
        ANDS     R7,R7,#0xFF      ;; Zero extend
        CMP      R7,#+0
        BEQ      ??DM_Read_7
        MOV      R0,#+129
        MOVS     R6,R0
??DM_Read_7:
        B        ??DM_Read_5
??DM_Read_8:
        MOVS     R2,R5
        MOVS     R1,R4
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        BL       DM_FastReadReStart
        MOVS     R7,R0
        ANDS     R7,R7,#0xFF      ;; Zero extend
        CMP      R7,#+0
        BEQ      ??DM_Read_9
        MOV      R0,#+129
        MOVS     R6,R0
??DM_Read_9:
        B        ??DM_Read_5
??DM_Read_10:
        MOVS     R2,R5
        MOVS     R1,R4
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        BL       DM_LegacyReadReStart
        MOVS     R7,R0
        ANDS     R7,R7,#0xFF      ;; Zero extend
        CMP      R7,#+0
        BEQ      ??DM_Read_11
        MOV      R0,#+129
        MOVS     R6,R0
??DM_Read_11:
        B        ??DM_Read_5
??DM_Read_2:
        MOV      R0,#+142
        MOVS     R6,R0
        B        ??DM_Read_5
??DM_Read_1:
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+15
        BCS      ??DM_Read_12
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+1]
        CMP      R0,#+2
        BNE      ??DM_Read_13
        MOVS     R2,R5
        MOVS     R1,R4
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        BL       DM_LegacyRead_uart
        MOVS     R6,R0
        B        ??DM_Read_5
??DM_Read_13:
        MOV      R0,#+142
        MOVS     R6,R0
        B        ??DM_Read_5
??DM_Read_12:
        MOV      R0,#+13
        MOVS     R6,R0
??DM_Read_5:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
DM_Write:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R6,#+0
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+128
        BCC      ??DM_Write_0
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+2]
        CMP      R0,#+32
        BNE      ??DM_Write_1
        MOVS     R2,R5
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        MOVS     R1,R4
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        BL       DM_SingleWrite
        MOVS     R7,R0
        ANDS     R7,R7,#0xFF      ;; Zero extend
        CMP      R7,#+0
        BEQ      ??DM_Write_2
        MOV      R0,#+129
        MOVS     R6,R0
??DM_Write_2:
        B        ??DM_Write_3
??DM_Write_1:
        MOV      R0,#+142
        MOVS     R6,R0
        B        ??DM_Write_3
??DM_Write_0:
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+15
        BCS      ??DM_Write_4
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+2]
        CMP      R0,#+32
        BNE      ??DM_Write_5
        MOVS     R2,R5
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        MOVS     R1,R4
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        BL       DM_SingleWrite_uart
        B        ??DM_Write_3
??DM_Write_5:
        MOV      R0,#+142
        MOVS     R6,R0
        B        ??DM_Write_3
??DM_Write_4:
        MOV      R0,#+13
        MOVS     R6,R0
??DM_Write_3:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
PM_Read:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R6,#+0
        MOV      R7,#+0
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+128
        BCC      ??PM_Read_0
        MOVS     R2,R5
        MOVS     R1,R4
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        BL       PM_LegacyRead
        MOVS     R6,R0
        ANDS     R6,R6,#0xFF      ;; Zero extend
        CMP      R6,#+0
        BEQ      ??PM_Read_1
        MOV      R0,#+129
        MOVS     R7,R0
        B        ??PM_Read_1
??PM_Read_0:
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+15
        BCS      ??PM_Read_2
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+1]
        CMP      R0,#+2
        BNE      ??PM_Read_3
        MOVS     R2,R5
        MOVS     R1,R4
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        BL       PM_LegacyRead_uart
        B        ??PM_Read_1
??PM_Read_3:
        MOV      R0,#+142
        MOVS     R7,R0
        B        ??PM_Read_1
??PM_Read_2:
        MOV      R0,#+142
        MOVS     R7,R0
??PM_Read_1:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
PM_Write:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R7,#+0
        MOV      R8,#+0
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+128
        BCC      ??PM_Write_0
        MOVS     R3,R6
        MOVS     R2,R5
        MOVS     R1,R4
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        BL       PM_SingleWrite
        MOVS     R7,R0
        ANDS     R7,R7,#0xFF      ;; Zero extend
        CMP      R7,#+0
        BEQ      ??PM_Write_1
        MOV      R0,#+129
        MOVS     R8,R0
        B        ??PM_Write_1
??PM_Write_0:
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+15
        BCS      ??PM_Write_2
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+2]
        CMP      R0,#+32
        BNE      ??PM_Write_3
        MOVS     R3,R6
        MOVS     R2,R5
        MOVS     R1,R4
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        BL       PM_SingleWrite_uart
        B        ??PM_Write_1
??PM_Write_3:
        MOV      R0,#+142
        MOVS     R8,R0
        B        ??PM_Write_1
??PM_Write_2:
        MOV      R0,#+142
        MOVS     R8,R0
??PM_Write_1:
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
CM_Read:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R6,#+0
        MOV      R7,#+0
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+128
        BCC      ??CM_Read_0
        MOVS     R2,R5
        MOVS     R1,R4
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        BL       CM_LegacyRead
        MOVS     R6,R0
        ANDS     R6,R6,#0xFF      ;; Zero extend
        CMP      R6,#+0
        BEQ      ??CM_Read_1
        MOV      R0,#+129
        MOVS     R7,R0
        B        ??CM_Read_1
??CM_Read_0:
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+15
        BCS      ??CM_Read_2
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+1]
        CMP      R0,#+2
        BNE      ??CM_Read_3
        MOVS     R2,R5
        MOVS     R1,R4
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        BL       CM_LegacyRead_uart
        B        ??CM_Read_1
??CM_Read_3:
        MOV      R0,#+142
        MOVS     R7,R0
        B        ??CM_Read_1
??CM_Read_2:
        MOV      R0,#+142
        MOVS     R7,R0
??CM_Read_1:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
CM_Write:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R6,#+0
        MOV      R7,#+0
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+128
        BCC      ??CM_Write_0
        MOVS     R2,R5
        MOVS     R1,R4
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        BL       CM_SingleWrite
        MOVS     R6,R0
        ANDS     R6,R6,#0xFF      ;; Zero extend
        CMP      R6,#+0
        BEQ      ??CM_Write_1
        MOV      R0,#+129
        MOVS     R7,R0
        B        ??CM_Write_1
??CM_Write_0:
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+15
        BCS      ??CM_Write_2
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+2]
        CMP      R0,#+32
        BNE      ??CM_Write_3
        MOVS     R2,R5
        MOVS     R1,R4
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        BL       CM_SingleWrite_uart
        B        ??CM_Write_1
??CM_Write_3:
        MOV      R0,#+142
        MOVS     R7,R0
        B        ??CM_Write_1
??CM_Write_2:
        MOV      R0,#+142
        MOVS     R7,R0
??CM_Write_1:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
HOST_Read:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R6,#+0
        MOV      R7,#+0
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+128
        BCC      ??HOST_Read_0
        MOVS     R2,R5
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        BL       HOST_LegacyRead
        MOVS     R6,R0
        ANDS     R6,R6,#0xFF      ;; Zero extend
        CMP      R6,#+0
        BEQ      ??HOST_Read_1
        MOV      R0,#+129
        MOVS     R7,R0
        B        ??HOST_Read_1
??HOST_Read_0:
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+15
        BCS      ??HOST_Read_2
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+1]
        CMP      R0,#+2
        BNE      ??HOST_Read_3
        MOVS     R2,R5
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        BL       HOST_LegacyRead_uart
        B        ??HOST_Read_1
??HOST_Read_3:
        MOV      R0,#+142
        MOVS     R7,R0
        B        ??HOST_Read_1
??HOST_Read_2:
        MOV      R0,#+142
        MOVS     R7,R0
??HOST_Read_1:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
HOST_Write_1:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R6,#+0
        MOV      R7,#+0
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+128
        BCC      ??HOST_Write_1_0
        MOVS     R2,R5
        ANDS     R2,R2,#0xFF      ;; Zero extend
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        BL       HOST_SingleWrite_1
        MOVS     R6,R0
        ANDS     R6,R6,#0xFF      ;; Zero extend
        CMP      R6,#+0
        BEQ      ??HOST_Write_1_1
        MOV      R0,#+129
        MOVS     R7,R0
        B        ??HOST_Write_1_1
??HOST_Write_1_0:
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+15
        BCS      ??HOST_Write_1_2
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+2]
        CMP      R0,#+32
        BNE      ??HOST_Write_1_3
        MOVS     R2,R5
        ANDS     R2,R2,#0xFF      ;; Zero extend
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        BL       HOST_SingleWrite_1_uart
        B        ??HOST_Write_1_1
??HOST_Write_1_3:
        MOV      R0,#+142
        MOVS     R7,R0
        B        ??HOST_Write_1_1
??HOST_Write_1_2:
        MOV      R0,#+142
        MOVS     R7,R0
??HOST_Write_1_1:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
HOST_Write_2:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R6,#+0
        MOV      R7,#+0
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+128
        BCC      ??HOST_Write_2_0
        MOVS     R2,R5
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        BL       HOST_SingleWrite_2
        MOVS     R6,R0
        ANDS     R6,R6,#0xFF      ;; Zero extend
        CMP      R6,#+0
        BEQ      ??HOST_Write_2_1
        MOV      R0,#+129
        MOVS     R7,R0
        B        ??HOST_Write_2_1
??HOST_Write_2_0:
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+15
        BCS      ??HOST_Write_2_2
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+2]
        CMP      R0,#+32
        BNE      ??HOST_Write_2_3
        MOVS     R2,R5
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        BL       HOST_SingleWrite_2_uart
        B        ??HOST_Write_2_1
??HOST_Write_2_3:
        MOV      R0,#+142
        MOVS     R7,R0
        B        ??HOST_Write_2_1
??HOST_Write_2_2:
        MOV      R0,#+142
        MOVS     R7,R0
??HOST_Write_2_1:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
DSP_Read:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R6,#+0
        MOV      R7,#+0
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+128
        BCC      ??DSP_Read_0
        MOVS     R2,R5
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        BL       DSP_LegacyRead
        MOVS     R6,R0
        ANDS     R6,R6,#0xFF      ;; Zero extend
        CMP      R6,#+0
        BEQ      ??DSP_Read_1
        MOV      R0,#+129
        MOVS     R7,R0
        B        ??DSP_Read_1
??DSP_Read_0:
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+15
        BCS      ??DSP_Read_2
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+1]
        CMP      R0,#+2
        BNE      ??DSP_Read_3
        MOVS     R2,R5
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        BL       DSP_LegacyRead_uart
        B        ??DSP_Read_1
??DSP_Read_3:
        MOV      R0,#+142
        MOVS     R7,R0
        B        ??DSP_Read_1
??DSP_Read_2:
        MOV      R0,#+142
        MOVS     R7,R0
??DSP_Read_1:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
DSP_Write_1:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R6,#+0
        MOV      R7,#+0
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+128
        BCC      ??DSP_Write_1_0
        MOVS     R2,R5
        ANDS     R2,R2,#0xFF      ;; Zero extend
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        BL       DSP_SingleWrite_1
        MOVS     R6,R0
        ANDS     R6,R6,#0xFF      ;; Zero extend
        CMP      R6,#+0
        BEQ      ??DSP_Write_1_1
        MOV      R0,#+129
        MOVS     R7,R0
        B        ??DSP_Write_1_1
??DSP_Write_1_0:
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+15
        BCS      ??DSP_Write_1_2
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+2]
        CMP      R0,#+32
        BNE      ??DSP_Write_1_3
        MOVS     R2,R5
        ANDS     R2,R2,#0xFF      ;; Zero extend
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        BL       DSP_SingleWrite_1_uart
        B        ??DSP_Write_1_1
??DSP_Write_1_3:
        MOV      R0,#+142
        MOVS     R7,R0
        B        ??DSP_Write_1_1
??DSP_Write_1_2:
        MOV      R0,#+142
        MOVS     R7,R0
??DSP_Write_1_1:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
DSP_Write_2:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R6,#+0
        MOV      R7,#+0
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+128
        BCC      ??DSP_Write_2_0
        MOVS     R2,R5
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        BL       DSP_SingleWrite_2
        MOVS     R6,R0
        ANDS     R6,R6,#0xFF      ;; Zero extend
        CMP      R6,#+0
        BEQ      ??DSP_Write_2_1
        MOV      R0,#+129
        MOVS     R7,R0
        B        ??DSP_Write_2_1
??DSP_Write_2_0:
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+15
        BCS      ??DSP_Write_2_2
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+2]
        CMP      R0,#+32
        BNE      ??DSP_Write_2_3
        MOVS     R2,R5
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        BL       DSP_SingleWrite_2_uart
        B        ??DSP_Write_2_1
??DSP_Write_2_3:
        MOV      R0,#+142
        MOVS     R7,R0
        B        ??DSP_Write_2_1
??DSP_Write_2_2:
        MOV      R0,#+142
        MOVS     R7,R0
??DSP_Write_2_1:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
DM_BstWrite:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R6,#+0
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+128
        BCC      ??DM_BstWrite_0
        MOVS     R2,R5
        ANDS     R2,R2,#0xFF      ;; Zero extend
        MOVS     R1,R4
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        BL       DM_BurstWrite
        MOVS     R7,R0
        ANDS     R7,R7,#0xFF      ;; Zero extend
        CMP      R7,#+0
        BEQ      ??DM_BstWrite_1
        MOV      R0,#+129
        MOVS     R6,R0
        B        ??DM_BstWrite_1
??DM_BstWrite_0:
        MOV      R0,#+13
        MOVS     R6,R0
??DM_BstWrite_1:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
DM_BstWrite_s:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R7,#+0
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+128
        BCC      ??DM_BstWrite_s_0
        MOVS     R3,R5
        MOVS     R2,R6
        ANDS     R2,R2,#0xFF      ;; Zero extend
        MOVS     R1,R4
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        BL       DM_BurstWrite_s
        MOVS     R8,R0
        ANDS     R8,R8,#0xFF      ;; Zero extend
        CMP      R8,#+0
        BEQ      ??DM_BstWrite_s_1
        MOV      R0,#+129
        MOVS     R7,R0
        B        ??DM_BstWrite_s_1
??DM_BstWrite_s_0:
        MOV      R0,#+142
        MOVS     R7,R0
??DM_BstWrite_s_1:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
PM_BstWrite_s:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R7,#+0
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+128
        BCC      ??PM_BstWrite_s_0
        MOVS     R3,R5
        MOVS     R2,R6
        ANDS     R2,R2,#0xFF      ;; Zero extend
        MOVS     R1,R4
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        BL       PM_BurstWrite_s
        MOVS     R8,R0
        ANDS     R8,R8,#0xFF      ;; Zero extend
        CMP      R8,#+0
        BEQ      ??PM_BstWrite_s_1
        MOV      R0,#+129
        MOVS     R7,R0
        B        ??PM_BstWrite_s_1
??PM_BstWrite_s_0:
        MOV      R0,#+142
        MOVS     R7,R0
??PM_BstWrite_s_1:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
MEM_Block_Read:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOV      R8,#+0
        MOV      R9,#+0
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+128
        BCC      ??MEM_Block_Read_0
        STR      R7,[SP, #+0]
        MOVS     R3,R6
        ANDS     R3,R3,#0xFF      ;; Zero extend
        MOVS     R2,R5
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        BL       MEM_Block_LegacyRead
        MOVS     R8,R0
        ANDS     R8,R8,#0xFF      ;; Zero extend
        CMP      R8,#+0
        BEQ      ??MEM_Block_Read_1
        MOV      R0,#+129
        MOVS     R9,R0
        B        ??MEM_Block_Read_1
??MEM_Block_Read_0:
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+15
        BCS      ??MEM_Block_Read_2
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+1]
        CMP      R0,#+2
        BNE      ??MEM_Block_Read_3
        STR      R7,[SP, #+0]
        MOVS     R3,R6
        ANDS     R3,R3,#0xFF      ;; Zero extend
        MOVS     R2,R5
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        BL       MEM_Block_LegacyRead_uart
        B        ??MEM_Block_Read_1
??MEM_Block_Read_3:
        MOV      R0,#+142
        MOVS     R9,R0
        B        ??MEM_Block_Read_1
??MEM_Block_Read_2:
        MOV      R0,#+142
        MOVS     R9,R0
??MEM_Block_Read_1:
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R1,R4-R9,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
MEM_Block_Write:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOV      R8,#+0
        MOV      R9,#+0
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+128
        BCC      ??MEM_Block_Write_0
        STR      R7,[SP, #+0]
        MOVS     R3,R6
        ANDS     R3,R3,#0xFF      ;; Zero extend
        MOVS     R2,R5
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        BL       MEM_Block_SingleWrite
        MOVS     R8,R0
        ANDS     R8,R8,#0xFF      ;; Zero extend
        CMP      R8,#+0
        BEQ      ??MEM_Block_Write_1
        MOV      R0,#+129
        MOVS     R9,R0
        B        ??MEM_Block_Write_1
??MEM_Block_Write_0:
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+15
        BCS      ??MEM_Block_Write_2
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+2]
        CMP      R0,#+32
        BNE      ??MEM_Block_Write_3
        STR      R7,[SP, #+0]
        MOVS     R3,R6
        ANDS     R3,R3,#0xFF      ;; Zero extend
        MOVS     R2,R5
        LSL      R2,R2,#+16
        LSRS     R2,R2,#+16
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable18
        LDRB     R0,[R0, #+0]
        BL       MEM_Block_SingleWrite_uart
        B        ??MEM_Block_Write_1
??MEM_Block_Write_3:
        MOV      R0,#+142
        MOVS     R9,R0
        B        ??MEM_Block_Write_1
??MEM_Block_Write_2:
        MOV      R0,#+142
        MOVS     R9,R0
??MEM_Block_Write_1:
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R1,R4-R9,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18:
        DC32     Mem_Ctr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_1:
        DC32     CM_SECTION_DEFINE

        SECTION `.text`:CODE:NOROOT(2)
        ARM
CheckMCUEndian:
        SUB      SP,SP,#+4
        MOV      R1,#+1
        STR      R1,[SP, #+0]
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BNE      ??CheckMCUEndian_0
        MOV      R0,#+1
        B        ??CheckMCUEndian_1
??CheckMCUEndian_0:
        MOV      R0,#+0
??CheckMCUEndian_1:
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADD      SP,SP,#+4        ;; stack cleaning
        BX       LR               ;; return

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
//     8 bytes in section .bss
//    24 bytes in section .rodata
// 3 720 bytes in section .text
// 
// 3 720 bytes of CODE  memory
//    24 bytes of CONST memory
//     8 bytes of DATA  memory
//
//Errors: none
//Warnings: 1
