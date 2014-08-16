///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       13/Aug/2014  15:03:12
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\uCOS-II\Source\os_time.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\uCOS-II\Source\os_time.c" -lcN "E:\SVN
//        Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\" -lb "E:\SVN
//        Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\" -o "E:\SVN
//        Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\Obj\" --no_cse
//        --no_unroll --no_inline --no_code_motion --no_tbaa --no_clustering
//        --no_scheduling --debug --endian=little --cpu=ARM7TDMI -e --fpu=None
//        --dlib_config "C:\Program Files (x86)\IAR Systems\Embedded Workbench
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
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\os_time.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN OSIntNesting
        EXTERN OSRdyGrp
        EXTERN OSRdyTbl
        EXTERN OSTCBCur
        EXTERN OSTCBPrioTbl
        EXTERN OSTime
        EXTERN OS_CPU_SR_Restore
        EXTERN OS_CPU_SR_Save
        EXTERN OS_Sched
        EXTERN __aeabi_uidiv

        PUBLIC OSTimeDly
        PUBLIC OSTimeDlyHMSM
        PUBLIC OSTimeDlyResume
        PUBLIC OSTimeGet
        PUBLIC OSTimeSet


        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTimeDly:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOV      R5,#+0
        LDR      R0,??DataTable4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??OSTimeDly_0
??OSTimeDly_1:
        CMP      R4,#+0
        BEQ      ??OSTimeDly_2
        BL       OS_CPU_SR_Save
        MOVS     R5,R0
        LDR      R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+56]
        MOVS     R6,R0
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable4_2
        LDRB     R0,[R0, +R1]
        LDR      R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        LDRB     R1,[R1, #+57]
        BICS     R0,R0,R1
        MOVS     R1,R6
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R2,??DataTable4_2
        STRB     R0,[R1, +R2]
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable4_2
        LDRB     R0,[R0, +R1]
        CMP      R0,#+0
        BNE      ??OSTimeDly_3
        LDR      R0,??DataTable4_3
        LDRB     R0,[R0, #+0]
        LDR      R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        LDRB     R1,[R1, #+58]
        BICS     R0,R0,R1
        LDR      R1,??DataTable4_3
        STRB     R0,[R1, #+0]
??OSTimeDly_3:
        LDR      R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        STR      R4,[R0, #+48]
        MOVS     R0,R5
        BL       OS_CPU_SR_Restore
        BL       OS_Sched
??OSTimeDly_2:
??OSTimeDly_0:
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTimeDlyHMSM:
        PUSH     {R4-R10,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDR      R0,??DataTable4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??OSTimeDlyHMSM_0
        MOV      R0,#+85
        B        ??OSTimeDlyHMSM_1
??OSTimeDlyHMSM_0:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??OSTimeDlyHMSM_2
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??OSTimeDlyHMSM_2
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??OSTimeDlyHMSM_2
        MOVS     R0,R7
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+0
        BNE      ??OSTimeDlyHMSM_2
        MOV      R0,#+84
        B        ??OSTimeDlyHMSM_1
??OSTimeDlyHMSM_2:
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+60
        BCC      ??OSTimeDlyHMSM_3
        MOV      R0,#+81
        B        ??OSTimeDlyHMSM_1
??OSTimeDlyHMSM_3:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+60
        BCC      ??OSTimeDlyHMSM_4
        MOV      R0,#+82
        B        ??OSTimeDlyHMSM_1
??OSTimeDlyHMSM_4:
        MOVS     R0,R7
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+1000
        BCC      ??OSTimeDlyHMSM_5
        MOV      R0,#+83
        B        ??OSTimeDlyHMSM_1
??OSTimeDlyHMSM_5:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        MOV      R1,#+3600
        MOVS     R2,R5
        ANDS     R2,R2,#0xFF      ;; Zero extend
        MOV      R3,#+60
        MULS     R2,R3,R2
        MLA      R0,R1,R0,R2
        MOVS     R1,R6
        ANDS     R1,R1,#0xFF      ;; Zero extend
        ADDS     R9,R1,R0
        MOV      R10,#+1000
        MOVS     R0,R7
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        MOV      R1,#+1000
        MULS     R0,R1,R0
        MOV      R1,#+1000
        BL       __aeabi_uidiv
        MLA      R0,R10,R9,R0
        MOVS     R8,R0
        MOVS     R0,R8
        BL       OSTimeDly
        MOV      R0,#+0
??OSTimeDlyHMSM_1:
        POP      {R4-R10,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTimeDlyResume:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOV      R6,#+0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+63
        BCC      ??OSTimeDlyResume_0
        MOV      R0,#+42
        B        ??OSTimeDlyResume_1
??OSTimeDlyResume_0:
        BL       OS_CPU_SR_Save
        MOVS     R6,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R1,??DataTable4_4
        LDR      R0,[R0, +R1]
        MOVS     R5,R0
        CMP      R5,#+0
        BNE      ??OSTimeDlyResume_2
        MOVS     R0,R6
        BL       OS_CPU_SR_Restore
        MOV      R0,#+67
        B        ??OSTimeDlyResume_1
??OSTimeDlyResume_2:
        CMP      R5,#+1
        BNE      ??OSTimeDlyResume_3
        MOVS     R0,R6
        BL       OS_CPU_SR_Restore
        MOV      R0,#+67
        B        ??OSTimeDlyResume_1
??OSTimeDlyResume_3:
        LDR      R0,[R5, #+48]
        CMP      R0,#+0
        BNE      ??OSTimeDlyResume_4
        MOVS     R0,R6
        BL       OS_CPU_SR_Restore
        MOV      R0,#+80
        B        ??OSTimeDlyResume_1
??OSTimeDlyResume_4:
        MOV      R0,#+0
        STR      R0,[R5, #+48]
        LDRB     R0,[R5, #+52]
        TST      R0,#0x37
        BEQ      ??OSTimeDlyResume_5
        LDRB     R0,[R5, #+52]
        ANDS     R0,R0,#0xC8
        STRB     R0,[R5, #+52]
        MOV      R0,#+1
        STRB     R0,[R5, #+53]
        B        ??OSTimeDlyResume_6
??OSTimeDlyResume_5:
        MOV      R0,#+0
        STRB     R0,[R5, #+53]
??OSTimeDlyResume_6:
        LDRB     R0,[R5, #+52]
        TST      R0,#0x8
        BNE      ??OSTimeDlyResume_7
        LDR      R0,??DataTable4_3
        LDRB     R0,[R0, #+0]
        LDRB     R1,[R5, #+58]
        ORRS     R0,R1,R0
        LDR      R1,??DataTable4_3
        STRB     R0,[R1, #+0]
        LDRB     R0,[R5, #+56]
        LDR      R1,??DataTable4_2
        LDRB     R0,[R0, +R1]
        LDRB     R1,[R5, #+57]
        ORRS     R0,R1,R0
        LDRB     R1,[R5, #+56]
        LDR      R2,??DataTable4_2
        STRB     R0,[R1, +R2]
        MOVS     R0,R6
        BL       OS_CPU_SR_Restore
        BL       OS_Sched
        B        ??OSTimeDlyResume_8
??OSTimeDlyResume_7:
        MOVS     R0,R6
        BL       OS_CPU_SR_Restore
??OSTimeDlyResume_8:
        MOV      R0,#+0
??OSTimeDlyResume_1:
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTimeGet:
        PUSH     {R3-R5,LR}
        MOV      R5,#+0
        BL       OS_CPU_SR_Save
        MOVS     R5,R0
        LDR      R0,??DataTable4_5
        LDR      R0,[R0, #+0]
        MOVS     R4,R0
        MOVS     R0,R5
        BL       OS_CPU_SR_Restore
        MOVS     R0,R4
        POP      {R1,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSTimeSet:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOV      R5,#+0
        BL       OS_CPU_SR_Save
        MOVS     R5,R0
        LDR      R0,??DataTable4_5
        STR      R4,[R0, #+0]
        MOVS     R0,R5
        BL       OS_CPU_SR_Restore
        POP      {R0,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     OSIntNesting

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     OSTCBCur

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     OSRdyTbl

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     OSRdyGrp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     OSTCBPrioTbl

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     OSTime

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 912 bytes in section .text
// 
// 912 bytes of CODE memory
//
//Errors: none
//Warnings: none
