///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       05/Sep/2014  09:57:04
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Driver\flashd_efc.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Driver\flashd_efc.c"
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
//        Bench\Bridge_Host_OS\APP\FLASH\List\flashd_efc.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN EFC_ComputeAddress
        EXTERN EFC_DisableIt
        EXTERN EFC_GetStatus
        EXTERN EFC_PerformCommand
        EXTERN EFC_SetEraseBeforeProgramming
        EXTERN EFC_SetMasterClock
        EXTERN EFC_TranslateAddress
        EXTERN LED_Clear
        EXTERN LED_Set
        EXTERN LED_Toggle
        EXTERN OS_CPU_SR_Restore
        EXTERN OS_CPU_SR_Save
        EXTERN __aeabi_idivmod
        EXTERN __aeabi_uidiv
        EXTERN __aeabi_uidivmod
        EXTERN memcpy
        EXTERN min

        PUBLIC FLASHD_Erase
        PUBLIC FLASHD_Initialize
        PUBLIC FLASHD_IsLocked
        PUBLIC FLASHD_Lock
        PUBLIC FLASHD_Unlock
        PUBLIC FLASHD_Write
        PUBLIC flash_test


        SECTION `.text`:CODE:NOROOT(2)
        ARM
ComputeLockRange:
        PUSH     {R1-R11,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOV      R3,#+0
        ADD      R2,SP,#+2
        ADD      R1,SP,#+8
        MOVS     R0,R4
        BL       EFC_TranslateAddress
        MOV      R3,#+0
        MOVS     R2,SP
        ADD      R1,SP,#+4
        MOVS     R0,R5
        BL       EFC_TranslateAddress
        MOV      R0,#+16
        MOVS     R8,R0
        LDRH     R11,[SP, #+2]
        LDRH     R0,[SP, #+2]
        MOVS     R1,R8
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        BL       __aeabi_idivmod
        SUBS     R0,R11,R1
        MOVS     R9,R0
        LDRH     R0,[SP, #+0]
        MOVS     R10,R0
        LDRH     R0,[SP, #+0]
        MOVS     R1,R8
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        BL       __aeabi_idivmod
        CMP      R1,#+0
        BEQ      ??ComputeLockRange_0
        ADDS     R10,R8,R10
        LDRH     R0,[SP, #+0]
        MOVS     R1,R8
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        BL       __aeabi_idivmod
        SUBS     R10,R10,R1
??ComputeLockRange_0:
        MOVS     R3,R6
        MOV      R2,#+0
        MOVS     R1,R9
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LDR      R0,[SP, #+8]
        BL       EFC_ComputeAddress
        MOVS     R3,R7
        MOV      R2,#+0
        MOVS     R1,R10
        LSL      R1,R1,#+16
        LSRS     R1,R1,#+16
        LDR      R0,[SP, #+4]
        BL       EFC_ComputeAddress
        POP      {R0-R2,R4-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
FLASHD_Initialize:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R0,R4
        BL       EFC_SetMasterClock
        MOV      R1,#+1
        MVN      R0,#+159
        BL       EFC_SetEraseBeforeProgramming
        MOV      R1,#+15
        MVN      R0,#+159
        BL       EFC_DisableIt
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
FLASHD_Erase:
        PUSH     {R4,LR}
        MOV      R2,#+0
        MOV      R1,#+8
        MVN      R0,#+159
        BL       EFC_PerformCommand
        MOVS     R4,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
pPageBuffer:
        DS8 256

        SECTION `.text`:CODE:NOROOT(2)
        ARM
FLASHD_Write:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+20
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R11,#+0
        BL       OS_CPU_SR_Save
        MOVS     R11,R0
        MOVS     R3,SP
        ADD      R2,SP,#+2
        ADD      R1,SP,#+12
        MOVS     R0,R4
        BL       EFC_TranslateAddress
??FLASHD_Write_0:
        CMP      R6,#+0
        BEQ      ??FLASHD_Write_1
        MOVS     R1,R6
        LDRH     R0,[SP, #+0]
        RSBS     R0,R0,#+256
        BL       min
        MOVS     R7,R0
        ADD      R3,SP,#+8
        MOV      R2,#+0
        LDRH     R1,[SP, #+2]
        LDR      R0,[SP, #+12]
        BL       EFC_ComputeAddress
        LDRH     R1,[SP, #+0]
        RSBS     R1,R1,#+256
        MOVS     R2,R7
        SUBS     R1,R1,R2
        STRH     R1,[SP, #+6]
        LDRH     R2,[SP, #+0]
        LDR      R1,[SP, #+8]
        LDR      R0,??DataTable0
        BL       memcpy
        MOVS     R2,R7
        MOVS     R1,R5
        LDRH     R0,[SP, #+0]
        LDR      R3,??DataTable0
        ADDS     R0,R0,R3
        BL       memcpy
        LDRH     R2,[SP, #+6]
        LDR      R0,[SP, #+8]
        LDRH     R1,[SP, #+0]
        ADDS     R0,R1,R0
        ADDS     R1,R7,R0
        LDRH     R0,[SP, #+0]
        LDR      R3,??DataTable0
        ADDS     R0,R0,R3
        ADDS     R0,R7,R0
        BL       memcpy
        LDR      R0,[SP, #+8]
        MOVS     R9,R0
        LDR      R0,??DataTable0
        MOVS     R10,R0
        MOV      R0,#+256
        MOVS     R8,R0
??FLASHD_Write_2:
        CMP      R8,#+4
        BCC      ??FLASHD_Write_3
        LDR      R0,[R10, #+0]
        STR      R0,[R9, #+0]
        ADDS     R10,R10,#+4
        ADDS     R9,R9,#+4
        SUBS     R8,R8,#+4
        B        ??FLASHD_Write_2
??FLASHD_Write_3:
        LDRH     R2,[SP, #+2]
        MOV      R1,#+1
        LDR      R0,[SP, #+12]
        BL       EFC_PerformCommand
        STRB     R0,[SP, #+4]
        LDRB     R0,[SP, #+4]
        CMP      R0,#+0
        BEQ      ??FLASHD_Write_4
        MOVS     R0,R11
        BL       OS_CPU_SR_Restore
        LDRB     R0,[SP, #+4]
        B        ??FLASHD_Write_5
??FLASHD_Write_4:
        ADDS     R4,R4,#+256
        ADDS     R5,R7,R5
        SUBS     R6,R6,R7
        LDRH     R0,[SP, #+2]
        ADDS     R0,R0,#+1
        STRH     R0,[SP, #+2]
        MOV      R0,#+0
        STRH     R0,[SP, #+0]
        B        ??FLASHD_Write_0
??FLASHD_Write_1:
        MOVS     R0,R11
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
??FLASHD_Write_5:
        ADD      SP,SP,#+20       ;; stack cleaning
        POP      {R4-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     pPageBuffer

        SECTION `.text`:CODE:NOROOT(2)
        ARM
FLASHD_Lock:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+20
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOV      R10,#+16
        MOV      R11,#+0
        BL       OS_CPU_SR_Save
        MOVS     R11,R0
        ADD      R3,SP,#+4
        ADD      R2,SP,#+8
        MOVS     R1,R5
        MOVS     R0,R4
        BL       ComputeLockRange
        CMP      R6,#+0
        BEQ      ??FLASHD_Lock_0
        LDR      R0,[SP, #+8]
        STR      R0,[R6, #+0]
??FLASHD_Lock_0:
        CMP      R7,#+0
        BEQ      ??FLASHD_Lock_1
        LDR      R0,[SP, #+4]
        STR      R0,[R7, #+0]
??FLASHD_Lock_1:
        MOV      R3,#+0
        MOVS     R2,SP
        ADD      R1,SP,#+16
        LDR      R0,[SP, #+8]
        BL       EFC_TranslateAddress
        MOV      R3,#+0
        ADD      R2,SP,#+2
        ADD      R1,SP,#+12
        LDR      R0,[SP, #+4]
        BL       EFC_TranslateAddress
        LDR      R0,[SP, #+12]
        MOVS     R8,R0
??FLASHD_Lock_2:
        LDRH     R0,[SP, #+0]
        LDRH     R1,[SP, #+2]
        CMP      R0,R1
        BCS      ??FLASHD_Lock_3
        LDRH     R2,[SP, #+0]
        MOV      R1,#+2
        MOVS     R0,R8
        BL       EFC_PerformCommand
        MOVS     R9,R0
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??FLASHD_Lock_4
        MOVS     R0,R11
        BL       OS_CPU_SR_Restore
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??FLASHD_Lock_5
??FLASHD_Lock_4:
        LDRH     R0,[SP, #+0]
        ADDS     R0,R10,R0
        STRH     R0,[SP, #+0]
        B        ??FLASHD_Lock_2
??FLASHD_Lock_3:
        MOVS     R0,R11
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
??FLASHD_Lock_5:
        ADD      SP,SP,#+20       ;; stack cleaning
        POP      {R4-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
FLASHD_Unlock:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+20
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOV      R10,#+16
        MOV      R11,#+0
        BL       OS_CPU_SR_Save
        MOVS     R11,R0
        ADD      R3,SP,#+4
        ADD      R2,SP,#+8
        MOVS     R1,R5
        MOVS     R0,R4
        BL       ComputeLockRange
        CMP      R6,#+0
        BEQ      ??FLASHD_Unlock_0
        LDR      R0,[SP, #+8]
        STR      R0,[R6, #+0]
??FLASHD_Unlock_0:
        CMP      R7,#+0
        BEQ      ??FLASHD_Unlock_1
        LDR      R0,[SP, #+4]
        STR      R0,[R7, #+0]
??FLASHD_Unlock_1:
        MOV      R3,#+0
        MOVS     R2,SP
        ADD      R1,SP,#+16
        LDR      R0,[SP, #+8]
        BL       EFC_TranslateAddress
        MOV      R3,#+0
        ADD      R2,SP,#+2
        ADD      R1,SP,#+12
        LDR      R0,[SP, #+4]
        BL       EFC_TranslateAddress
        LDR      R0,[SP, #+12]
        MOVS     R8,R0
??FLASHD_Unlock_2:
        LDRH     R0,[SP, #+0]
        LDRH     R1,[SP, #+2]
        CMP      R0,R1
        BCS      ??FLASHD_Unlock_3
        LDRH     R2,[SP, #+0]
        MOV      R1,#+4
        MOVS     R0,R8
        BL       EFC_PerformCommand
        MOVS     R9,R0
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??FLASHD_Unlock_4
        MOVS     R0,R11
        BL       OS_CPU_SR_Restore
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        B        ??FLASHD_Unlock_5
??FLASHD_Unlock_4:
        LDRH     R0,[SP, #+0]
        ADDS     R0,R10,R0
        STRH     R0,[SP, #+0]
        B        ??FLASHD_Unlock_2
??FLASHD_Unlock_3:
        MOVS     R0,R11
        BL       OS_CPU_SR_Restore
        MOV      R0,#+0
??FLASHD_Unlock_5:
        ADD      SP,SP,#+20       ;; stack cleaning
        POP      {R4-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
FLASHD_IsLocked:
        PUSH     {R1-R11,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R10,#+0
        MOV      R3,#+0
        ADD      R2,SP,#+2
        ADD      R1,SP,#+8
        MOVS     R0,R4
        BL       EFC_TranslateAddress
        MOV      R3,#+0
        MOVS     R2,SP
        ADD      R1,SP,#+4
        MOVS     R0,R5
        BL       EFC_TranslateAddress
        MOV      R0,#+16
        MOVS     R9,R0
        LDRH     R0,[SP, #+2]
        MOVS     R1,R9
        BL       __aeabi_uidiv
        MOVS     R7,R0
        LDRH     R0,[SP, #+0]
        MOVS     R1,R9
        BL       __aeabi_uidiv
        MOVS     R8,R0
        LDRH     R0,[SP, #+0]
        MOVS     R1,R9
        BL       __aeabi_uidivmod
        CMP      R1,#+0
        BEQ      ??FLASHD_IsLocked_0
        ADDS     R8,R8,#+1
??FLASHD_IsLocked_0:
        LDR      R0,[SP, #+4]
        MOVS     R6,R0
        MOVS     R0,R6
        BL       EFC_GetStatus
        MOVS     R11,R0
??FLASHD_IsLocked_1:
        ANDS     R7,R7,#0xFF      ;; Zero extend
        ANDS     R8,R8,#0xFF      ;; Zero extend
        CMP      R7,R8
        BCS      ??FLASHD_IsLocked_2
        MOV      R0,#+1
        LSLS     R0,R0,R7
        TST      R11,R0, LSL #+16
        BEQ      ??FLASHD_IsLocked_3
        ADDS     R10,R10,#+1
??FLASHD_IsLocked_3:
        ADDS     R7,R7,#+1
        B        ??FLASHD_IsLocked_1
??FLASHD_IsLocked_2:
        MOVS     R0,R10
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R1-R11,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
flash_test:
        PUSH     {R4-R8,LR}
        SUB      SP,SP,#+256
        MOV      R0,#+1
        BL       LED_Clear
        MOV      R3,#+0
        MOV      R2,#+0
        MOV      R1,#+1114112
        MOV      R0,#+1048576
        BL       FLASHD_Unlock
        MOVS     R6,R0
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??flash_test_0
??flash_test_1:
        B        ??flash_test_1
??flash_test_0:
        MOV      R0,#+1
        MOVS     R5,R0
??flash_test_2:
        MOV      R0,#+1
        ORR      R0,R0,#0x200
        CMP      R5,R0
        BCS      ??flash_test_3
        MOV      R0,#+1
        BL       LED_Toggle
        LSLS     R0,R5,#+8
        RSBS     R0,R0,#+1310720
        MOVS     R7,R0
        MOVS     R8,R7
        MOV      R0,#+0
        MOVS     R4,R0
??flash_test_4:
        CMP      R4,#+64
        BCS      ??flash_test_5
        MOV      R0,#+238
        LSLS     R1,R4,#+2
        MOVS     R2,SP
        STR      R0,[R1, +R2]
        ADDS     R4,R4,#+1
        B        ??flash_test_4
??flash_test_5:
        MOV      R2,#+256
        MOVS     R1,SP
        MOVS     R0,R7
        BL       FLASHD_Write
        MOVS     R6,R0
        MOV      R0,#+0
        MOVS     R4,R0
??flash_test_6:
        CMP      R4,#+64
        BCS      ??flash_test_7
        LSLS     R0,R4,#+2
        LDR      R0,[R0, +R8]
        MOV      R1,#+1
        ANDS     R2,R4,#0x1F      ;; Zero extend
        CMP      R0,R1, LSL R2
        BEQ      ??flash_test_8
        MOV      R0,#+1
        BL       LED_Set
        B        ??flash_test_7
??flash_test_8:
        ADDS     R4,R4,#+1
        B        ??flash_test_6
??flash_test_7:
        ADDS     R5,R5,#+1
        B        ??flash_test_2
??flash_test_3:
        MOV      R0,#+1
        BL       LED_Clear
        MOV      R0,#+1048576
        ORR      R0,R0,#0xFF00
        MOVS     R7,R0
        MOV      R0,#+0
        ADD      SP,SP,#+256      ;; stack cleaning
        POP      {R4-R8,LR}
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
//   256 bytes in section .bss
// 1 660 bytes in section .text
// 
// 1 660 bytes of CODE memory
//   256 bytes of DATA memory
//
//Errors: none
//Warnings: none
