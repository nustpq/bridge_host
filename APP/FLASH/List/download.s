///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    26/Aug/2013  21:59:59 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  arm                                                     /
//    Endian       =  little                                                  /
//    Source file  =  G:\Bridge_Host_OS\Noah\download.c                       /
//    Command line =  G:\Bridge_Host_OS\Noah\download.c -lcN                  /
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
//    List file    =  G:\Bridge_Host_OS\APP\FLASH\List\download.s             /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME download

        #define SHT_PROGBITS 0x1

        EXTERN CM_SECTION_DEFINE
        EXTERN CM_Write
        EXTERN Check_DSP_ID
        EXTERN DM_Read
        EXTERN HOST_Write_1
        EXTERN LED_Clear
        EXTERN LED_Toggle
        EXTERN OSTimeDly
        EXTERN PM_Write

        PUBLIC LoadFile


        SECTION `.text`:CODE:NOROOT(2)
        ARM
LoadFile:
        PUSH     {R0,R4-R11,LR}
        SUB      SP,SP,#+16
        MOV      R8,#+0
        MOV      R1,#+0
        STRB     R1,[SP, #+0]
        MOV      R9,#+0
        MOV      R10,#+0
        MOV      R11,#+0
        LDRB     R0,[SP, #+16]
        CMP      R0,#+17
        BNE      ??LoadFile_0
        MOV      R0,#+253952
        B        ??LoadFile_1
??LoadFile_0:
        MOV      R0,#+131072
??LoadFile_1:
        STR      R0,[SP, #+4]
        LDR      R1,[SP, #+4]
        ADDS     R1,R1,#+1048576
        STR      R1,[SP, #+4]
        LDR      R0,[SP, #+4]
        MOVS     R9,R0
        ADDS     R0,R9,#+256
        MOVS     R10,R0
        LDRB     R0,[SP, #+16]
        CMP      R0,#+16
        BNE      ??LoadFile_2
        LDR      R1,??LoadFile_3  ;; 0xe9b760
        STR      R1,[SP, #+8]
        B        ??LoadFile_4
??LoadFile_2:
        MOV      R1,#+0
        STR      R1,[SP, #+8]
??LoadFile_4:
        BL       Check_DSP_ID
        MOVS     R11,R0
        MOV      R0,#+0
        MOVS     R4,R0
??LoadFile_5:
        LDRB     R0,[R9, #+1]
        ANDS     R4,R4,#0xFF      ;; Zero extend
        CMP      R4,R0
        BCS      ??LoadFile_6
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADD      R0,R0,R0, LSL #+2
        ADDS     R0,R0,R9
        LDRB     R2,[R0, #+9]
        LDRB     R1,[R0, #+8]
        ORRS     R2,R1,R2, LSL #+8
        MOVS     R7,R2
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        ADD      R1,R1,R1, LSL #+2
        ADDS     R1,R1,R9
        LDRB     R1,[R1, #+10]
        STRB     R1,[SP, #+1]
        LDRB     R1,[SP, #+1]
        MOV      R0,#+100
        BL       HOST_Write_1
        MOV      R0,#+0
        MOVS     R5,R0
??LoadFile_7:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADD      R0,R0,R0, LSL #+2
        ADDS     R0,R0,R9
        LDRB     R2,[R0, #+12]
        LDRB     R1,[R0, #+11]
        ORRS     R2,R1,R2, LSL #+8
        LSL      R5,R5,#+16
        LSRS     R5,R5,#+16
        CMP      R5,R2
        BCS      ??LoadFile_8
        MOVS     R0,R6
        ADDS     R6,R0,#+1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+61
        BCC      ??LoadFile_9
        MOV      R0,#+1
        BL       LED_Toggle
        MOV      R0,#+0
        MOVS     R6,R0
??LoadFile_9:
        LDRB     R0,[SP, #+1]
        CMP      R0,#+0
        BNE      ??LoadFile_10
        MOVS     R0,R11
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADD      R1,R0,R0, LSL #+1
        LDR      R0,??LoadFile_3+0x4
        ADDS     R0,R0,R1, LSL #+1
        LDRH     R0,[R0, #+2]
        LSL      R7,R7,#+16
        LSRS     R7,R7,#+16
        CMP      R7,R0
        BCC      ??LoadFile_10
        MOVS     R0,R11
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADD      R1,R0,R0, LSL #+1
        LDR      R0,??LoadFile_3+0x4
        ADDS     R0,R0,R1, LSL #+1
        LDRH     R0,[R0, #+4]
        LSL      R7,R7,#+16
        LSRS     R7,R7,#+16
        CMP      R7,R0
        BCS      ??LoadFile_10
        MOVS     R1,R10
        MOVS     R0,R7
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        BL       CM_Write
        MOVS     R8,R0
        ADDS     R7,R7,#+1
        B        ??LoadFile_11
??LoadFile_10:
        LDR      R2,[SP, #+8]
        MOVS     R1,R10
        MOVS     R0,R7
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        BL       PM_Write
        MOVS     R8,R0
        ADDS     R7,R7,#+1
??LoadFile_11:
        ANDS     R8,R8,#0xFF      ;; Zero extend
        CMP      R8,#+0
        BEQ      ??LoadFile_12
        MOV      R0,#+1
        BL       LED_Clear
        MOV      R0,#+240
        MOVS     R8,R0
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??LoadFile_13
??LoadFile_12:
        ADDS     R10,R10,#+3
        ADDS     R5,R5,#+1
        B        ??LoadFile_7
??LoadFile_8:
        ADDS     R4,R4,#+1
        B        ??LoadFile_5
??LoadFile_6:
        LDRB     R0,[SP, #+16]
        CMP      R0,#+18
        BNE      ??LoadFile_14
        MOV      R0,#+10
        BL       OSTimeDly
??LoadFile_15:
        ADD      R1,SP,#+2
        MOV      R0,#+243
        ORR      R0,R0,#0x3F00
        BL       DM_Read
        LDRB     R1,[SP, #+0]
        ADDS     R1,R1,#+1
        STRB     R1,[SP, #+0]
        MOV      R0,#+1
        BL       OSTimeDly
        LDRB     R0,[SP, #+3]
        BICS     R0,R0,#0xBF
        CMP      R0,#+0
        BNE      ??LoadFile_16
        LDRB     R0,[SP, #+0]
        CMP      R0,#+100
        BCC      ??LoadFile_15
??LoadFile_16:
        LDRB     R0,[SP, #+3]
        BICS     R0,R0,#0x7F
        CMP      R0,#+0
        BNE      ??LoadFile_14
        MOV      R0,#+241
        MOVS     R8,R0
??LoadFile_14:
        MOV      R0,#+1
        BL       LED_Clear
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
??LoadFile_13:
        ADD      SP,SP,#+20       ;; stack cleaning
        POP      {R4-R11,LR}
        BX       LR               ;; return
        DATA
??LoadFile_3:
        DC32     0xe9b760
        DC32     CM_SECTION_DEFINE

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
// 668 bytes in section .text
// 
// 668 bytes of CODE memory
//
//Errors: none
//Warnings: none
