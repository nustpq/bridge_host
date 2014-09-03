///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       04/Sep/2014  10:10:24
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\uC-Probe\Target\Communication\Generic\RS-232\Ports\Atmel\AT91SAM7X\probe_rs232c.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\uC-Probe\Target\Communication\Generic\RS-232\Ports\Atmel\AT91SAM7X\probe_rs232c.c"
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
//        Bench\Bridge_Host_OS\APP\FLASH\List\probe_rs232c.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN BSP_CPU_ClkFreq
        EXTERN ProbeRS232_RxHandler
        EXTERN ProbeRS232_TxHandler
        EXTERN __aeabi_uidiv

        PUBLIC ProbeRS232_InitTarget
        PUBLIC ProbeRS232_RxISRHandler
        PUBLIC ProbeRS232_RxIntDis
        PUBLIC ProbeRS232_RxIntEn
        PUBLIC ProbeRS232_RxTxISRHandler
        PUBLIC ProbeRS232_Tx1
        PUBLIC ProbeRS232_TxISRHandler
        PUBLIC ProbeRS232_TxIntDis
        PUBLIC ProbeRS232_TxIntEn


        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeRS232_InitTarget:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        BL       BSP_CPU_ClkFreq
        MOVS     R5,R0
        MOV      R0,#+402653184
        MVN      R1,#+251
        BIC      R1,R1,#0xB00
        STR      R0,[R1, #+0]
        MOV      R0,#+402653184
        MVN      R1,#+143
        BIC      R1,R1,#0xB00
        STR      R0,[R1, #+0]
        MOV      R0,#+3
        MVN      R1,#+243
        BIC      R1,R1,#0xD00
        STR      R0,[R1, #+0]
        MOV      R0,#+80
        MVN      R1,#+255
        BIC      R1,R1,#0xD00
        STR      R0,[R1, #+0]
        MOV      R0,#+2240
        MVN      R1,#+251
        BIC      R1,R1,#0xD00
        STR      R0,[R1, #+0]
        MOVS     R0,R5
        MOVS     R1,R4
        BL       __aeabi_uidiv
        LSRS     R0,R0,#+4
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        MVN      R1,#+223
        BIC      R1,R1,#0xD00
        STR      R0,[R1, #+0]
        MOV      R0,#+2
        MVN      R1,#+239
        BIC      R1,R1,#0x300
        STR      R0,[R1, #+0]
        POP      {R0,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeRS232_RxTxISRHandler:
        PUSH     {R4,LR}
        MVN      R0,#+235
        BIC      R0,R0,#0xD00
        LDR      R0,[R0, #+0]
        TST      R0,#0x1
        BEQ      ??ProbeRS232_RxTxISRHandler_0
        MVN      R0,#+231
        BIC      R0,R0,#0xD00
        LDR      R0,[R0, #+0]
        MOVS     R4,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       ProbeRS232_RxHandler
??ProbeRS232_RxTxISRHandler_0:
        MVN      R0,#+235
        BIC      R0,R0,#0xD00
        LDR      R0,[R0, #+0]
        TST      R0,#0x2
        BEQ      ??ProbeRS232_RxTxISRHandler_1
        BL       ProbeRS232_TxHandler
??ProbeRS232_RxTxISRHandler_1:
        MVN      R0,#+235
        BIC      R0,R0,#0xD00
        LDR      R0,[R0, #+0]
        TST      R0,#0x20
        BEQ      ??ProbeRS232_RxTxISRHandler_2
        MOV      R0,#+256
        MVN      R1,#+255
        BIC      R1,R1,#0xD00
        STR      R0,[R1, #+0]
??ProbeRS232_RxTxISRHandler_2:
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeRS232_RxISRHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeRS232_RxIntDis:
        MOV      R0,#+1
        MVN      R1,#+243
        BIC      R1,R1,#0xD00
        STR      R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeRS232_RxIntEn:
        MOV      R0,#+1
        MVN      R1,#+247
        BIC      R1,R1,#0xD00
        STR      R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeRS232_TxISRHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeRS232_Tx1:
        MOVS     R1,R0
        ANDS     R1,R1,#0xFF      ;; Zero extend
        MVN      R2,#+227
        BIC      R2,R2,#0xD00
        STR      R1,[R2, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeRS232_TxIntDis:
        MOV      R0,#+2
        MVN      R1,#+243
        BIC      R1,R1,#0xD00
        STR      R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
ProbeRS232_TxIntEn:
        MOV      R0,#+2
        MVN      R1,#+247
        BIC      R1,R1,#0xD00
        STR      R0,[R1, #+0]
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
// 388 bytes in section .text
// 
// 388 bytes of CODE memory
//
//Errors: none
//Warnings: none
