///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    26/Aug/2013  22:00:07 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  arm                                                     /
//    Endian       =  little                                                  /
//    Source file  =  G:\Bridge_Host_OS\Noah\mem_rom.c                        /
//    Command line =  G:\Bridge_Host_OS\Noah\mem_rom.c -lcN                   /
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
//    List file    =  G:\Bridge_Host_OS\APP\FLASH\List\mem_rom.s              /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME mem_rom

        #define SHT_PROGBITS 0x1

        EXTERN FLASHD_Write
        EXTERN Flash_DownLoad_Type
        EXTERN OSTimeDly
        EXTERN TWID_Read
        EXTERN TWID_Write
        EXTERN __aeabi_idivmod

        PUBLIC EM_PageWrite
        PUBLIC EM_PageWrite_L
        PUBLIC EM_SingleRead_L
        PUBLIC EM_SingleRead_S
        PUBLIC EM_SingleWrite_L
        PUBLIC EM_SingleWrite_S
        PUBLIC EM_StrPgWrite_L
        PUBLIC EM_StrPgWrite_S
        PUBLIC EM_StrRead_L
        PUBLIC EM_StrRead_S
        PUBLIC EM_StrWrite_L
        PUBLIC EM_StrWrite_S
        PUBLIC PM_StrWrite_L


        SECTION `.text`:CODE:NOROOT(2)
        ARM
EM_SingleWrite_S:
        PUSH     {R1-R7,LR}
        MOVS     R4,R0
        MOVS     R7,R1
        MOVS     R5,R2
        STRB     R5,[SP, #+8]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+1
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+1
        MOVS     R0,R7
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        ANDS     R1,R0,#0xFF
        MOVS     R0,R7
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        ASRS     R0,R0,#+7
        ANDS     R0,R0,#0xE
        ORRS     R0,R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSRS     R0,R0,#+1
        BL       TWID_Write
        MOVS     R6,R0
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R1-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
EM_SingleWrite_L:
        PUSH     {R1-R7,LR}
        MOVS     R7,R0
        MOVS     R4,R1
        MOVS     R5,R2
        STRB     R5,[SP, #+8]
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+1
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+8
        MOV      R2,#+2
        LSLS     R0,R4,#+16
        LSRS     R1,R0,#+16
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        MOV      R12,#+14
        ANDS     R12,R12,R4, LSR #+15
        ORRS     R0,R12,R0
        LSRS     R0,R0,#+1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       TWID_Write
        MOVS     R6,R0
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R1-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
EM_PageWrite:
        MOVS     R12,R0
        MOV      R0,#+0
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
EM_PageWrite_L:
        MOVS     R12,R0
        MOV      R0,#+0
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
EM_StrPgWrite_S:
        PUSH     {R3-R11,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOV      R8,#+0
        MOV      R9,#+0
        MOV      R10,#+0
        MOV      R11,#+0
        MOVS     R0,R5
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        MOV      R1,#+8
        BL       __aeabi_idivmod
        MOVS     R10,R1
        ANDS     R10,R10,#0xFF    ;; Zero extend
        CMP      R10,#+0
        BEQ      ??EM_StrPgWrite_S_0
        RSBS     R0,R10,#+8
        MOVS     R11,R0
        MOVS     R3,R11
        ANDS     R3,R3,#0xFF      ;; Zero extend
        MOVS     R2,R6
        MOVS     R1,R5
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       EM_PageWrite
        MOVS     R8,R0
        ANDS     R8,R8,#0xFF      ;; Zero extend
        CMP      R8,#+0
        BEQ      ??EM_StrPgWrite_S_1
        MOV      R0,#+129
        MOVS     R9,R0
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??EM_StrPgWrite_S_2
??EM_StrPgWrite_S_1:
        SUBS     R7,R7,R11
        MOVS     R0,R11
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADDS     R5,R0,R5
        MOVS     R0,R11
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADDS     R6,R0,R6
??EM_StrPgWrite_S_0:
        ANDS     R7,R7,#0xFF      ;; Zero extend
        CMP      R7,#+0
        BEQ      ??EM_StrPgWrite_S_3
        ANDS     R7,R7,#0xFF      ;; Zero extend
        CMP      R7,#+9
        BCC      ??EM_StrPgWrite_S_4
        MOV      R11,#+8
        B        ??EM_StrPgWrite_S_5
??EM_StrPgWrite_S_4:
        MOVS     R11,R7
??EM_StrPgWrite_S_5:
        MOVS     R3,R11
        ANDS     R3,R3,#0xFF      ;; Zero extend
        MOVS     R2,R6
        MOVS     R1,R5
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       EM_PageWrite
        MOVS     R8,R0
        ANDS     R8,R8,#0xFF      ;; Zero extend
        CMP      R8,#+0
        BEQ      ??EM_StrPgWrite_S_6
        MOV      R0,#+129
        MOVS     R9,R0
        B        ??EM_StrPgWrite_S_3
??EM_StrPgWrite_S_6:
        SUBS     R7,R7,R11
        MOVS     R0,R11
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADDS     R5,R0,R5
        MOVS     R0,R11
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADDS     R6,R0,R6
        B        ??EM_StrPgWrite_S_0
??EM_StrPgWrite_S_3:
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
??EM_StrPgWrite_S_2:
        POP      {R1,R4-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
EM_StrPgWrite_L:
        PUSH     {R3-R11,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOV      R8,#+0
        MOV      R9,#+0
        MOV      R10,#+0
        MOV      R11,#+0
        MOVS     R0,R5
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        MOV      R1,#+64
        BL       __aeabi_idivmod
        MOVS     R10,R1
        ANDS     R10,R10,#0xFF    ;; Zero extend
        CMP      R10,#+0
        BEQ      ??EM_StrPgWrite_L_0
        RSBS     R0,R10,#+64
        MOVS     R11,R0
        MOVS     R3,R11
        ANDS     R3,R3,#0xFF      ;; Zero extend
        MOVS     R2,R6
        MOVS     R1,R5
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       EM_PageWrite_L
        MOVS     R8,R0
        ANDS     R8,R8,#0xFF      ;; Zero extend
        CMP      R8,#+0
        BEQ      ??EM_StrPgWrite_L_1
        MOV      R0,#+129
        MOVS     R9,R0
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??EM_StrPgWrite_L_2
??EM_StrPgWrite_L_1:
        SUBS     R7,R7,R11
        MOVS     R0,R11
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADDS     R5,R0,R5
        MOVS     R0,R11
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADDS     R6,R0,R6
??EM_StrPgWrite_L_0:
        ANDS     R7,R7,#0xFF      ;; Zero extend
        CMP      R7,#+0
        BEQ      ??EM_StrPgWrite_L_3
        ANDS     R7,R7,#0xFF      ;; Zero extend
        CMP      R7,#+65
        BCC      ??EM_StrPgWrite_L_4
        MOV      R11,#+64
        B        ??EM_StrPgWrite_L_5
??EM_StrPgWrite_L_4:
        MOVS     R11,R7
??EM_StrPgWrite_L_5:
        MOVS     R3,R11
        ANDS     R3,R3,#0xFF      ;; Zero extend
        MOVS     R2,R6
        MOVS     R1,R5
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       EM_PageWrite_L
        MOVS     R8,R0
        ANDS     R8,R8,#0xFF      ;; Zero extend
        CMP      R8,#+0
        BEQ      ??EM_StrPgWrite_L_6
        MOV      R0,#+129
        MOVS     R9,R0
        B        ??EM_StrPgWrite_L_3
??EM_StrPgWrite_L_6:
        SUBS     R7,R7,R11
        MOVS     R0,R11
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADDS     R5,R0,R5
        MOVS     R0,R11
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADDS     R6,R0,R6
        B        ??EM_StrPgWrite_L_0
??EM_StrPgWrite_L_3:
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
??EM_StrPgWrite_L_2:
        POP      {R1,R4-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
EM_StrWrite_S:
        PUSH     {R4-R10,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOV      R8,#+0
        MOV      R9,#+0
        MOV      R0,#+0
        MOVS     R10,R0
??EM_StrWrite_S_0:
        ANDS     R10,R10,#0xFF    ;; Zero extend
        ANDS     R7,R7,#0xFF      ;; Zero extend
        CMP      R10,R7
        BCS      ??EM_StrWrite_S_1
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDRB     R2,[R0, +R6]
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADDS     R1,R0,R5
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       EM_SingleWrite_S
        MOVS     R8,R0
        MOV      R0,#+4
        BL       OSTimeDly
        ANDS     R8,R8,#0xFF      ;; Zero extend
        CMP      R8,#+0
        BEQ      ??EM_StrWrite_S_2
        MOV      R0,#+129
        MOVS     R9,R0
        B        ??EM_StrWrite_S_1
??EM_StrWrite_S_2:
        ADDS     R10,R10,#+1
        B        ??EM_StrWrite_S_0
??EM_StrWrite_S_1:
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R4-R10,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
EM_StrWrite_L:
        PUSH     {R4-R10,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOV      R8,#+0
        MOV      R9,#+0
        MOV      R0,#+0
        MOVS     R10,R0
??EM_StrWrite_L_0:
        ANDS     R10,R10,#0xFF    ;; Zero extend
        ANDS     R7,R7,#0xFF      ;; Zero extend
        CMP      R10,R7
        BCS      ??EM_StrWrite_L_1
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDRB     R2,[R0, +R6]
        MOVS     R0,R5
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        MOVS     R1,R10
        ANDS     R1,R1,#0xFF      ;; Zero extend
        ADDS     R1,R1,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       EM_SingleWrite_L
        MOVS     R8,R0
        MOV      R0,#+4
        BL       OSTimeDly
        ANDS     R8,R8,#0xFF      ;; Zero extend
        CMP      R8,#+0
        BEQ      ??EM_StrWrite_L_2
        MOV      R0,#+129
        MOVS     R9,R0
        B        ??EM_StrWrite_L_1
??EM_StrWrite_L_2:
        ADDS     R10,R10,#+1
        B        ??EM_StrWrite_L_0
??EM_StrWrite_L_1:
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R4-R10,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
EM_SingleRead_S:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+12
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,R6
        MOV      R2,#+1
        MOVS     R0,R5
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        ANDS     R1,R0,#0xFF
        MOVS     R0,R5
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        ASRS     R0,R0,#+7
        ANDS     R0,R0,#0xE
        ORRS     R0,R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSRS     R0,R0,#+1
        BL       TWID_Read
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R1-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
EM_SingleRead_L:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+12
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R0,#+0
        STR      R0,[SP, #+4]
        MOV      R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,R6
        MOV      R2,#+2
        LSLS     R0,R5,#+16
        LSRS     R1,R0,#+16
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        MOV      R12,#+14
        ANDS     R12,R12,R5, LSR #+15
        ORRS     R0,R12,R0
        LSRS     R0,R0,#+1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       TWID_Read
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R1-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
EM_StrRead_S:
        PUSH     {R4-R10,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R10,R3
        MOV      R9,#+0
        MOV      R0,#+0
        MOVS     R7,R0
??EM_StrRead_S_0:
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R7,R0
        BCS      ??EM_StrRead_S_1
        ADDS     R2,R7,R6
        MOVS     R0,R7
        ADDS     R1,R0,R5
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       EM_SingleRead_S
        MOVS     R8,R0
        ANDS     R8,R8,#0xFF      ;; Zero extend
        CMP      R8,#+0
        BEQ      ??EM_StrRead_S_2
        MOV      R0,#+129
        MOVS     R9,R0
        B        ??EM_StrRead_S_1
??EM_StrRead_S_2:
        ADDS     R7,R7,#+1
        B        ??EM_StrRead_S_0
??EM_StrRead_S_1:
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R4-R10,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
EM_StrRead_L:
        PUSH     {R4-R10,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R10,R3
        MOV      R9,#+0
        MOV      R0,#+0
        MOVS     R7,R0
??EM_StrRead_L_0:
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R7,R0
        BCS      ??EM_StrRead_L_1
        ADDS     R2,R7,R6
        MOVS     R0,R5
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        ADDS     R1,R7,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       EM_SingleRead_L
        MOVS     R8,R0
        ANDS     R8,R8,#0xFF      ;; Zero extend
        CMP      R8,#+0
        BEQ      ??EM_StrRead_L_2
        MOV      R0,#+129
        MOVS     R9,R0
        B        ??EM_StrRead_L_1
??EM_StrRead_L_2:
        ADDS     R7,R7,#+1
        B        ??EM_StrRead_L_0
??EM_StrRead_L_1:
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R4-R10,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
PM_StrWrite_L:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R9,R1
        MOVS     R5,R2
        MOVS     R6,R3
        MOV      R7,#+0
        LDR      R0,??DataTable0
        LDRB     R0,[R0, #+0]
        CMP      R0,#+17
        BNE      ??PM_StrWrite_L_0
        MOV      R8,#+253952
        B        ??PM_StrWrite_L_1
??PM_StrWrite_L_0:
        MOV      R8,#+131072
??PM_StrWrite_L_1:
        MOVS     R0,R9
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        ADDS     R0,R0,#+1048576
        ADDS     R8,R0,R8
        MOVS     R2,R6
        ANDS     R2,R2,#0xFF      ;; Zero extend
        MOVS     R1,R5
        MOVS     R0,R8
        BL       FLASHD_Write
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R1,R4-R9,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     Flash_DownLoad_Type

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
// 1 824 bytes in section .text
// 
// 1 824 bytes of CODE memory
//
//Errors: none
//Warnings: none
