///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       21/Jul/2014  19:24:34
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\uCOS-II\Ports\ARM\Generic\IAR\os_dbg.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\uCOS-II\Ports\ARM\Generic\IAR\os_dbg.c" -lcN
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
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\os_dbg.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN OSTmrTbl
        EXTERN OSTmrWheelTbl

        PUBLIC OSDataSize
        PUBLIC OSDebugEn
        PUBLIC OSDebugInit
        PUBLIC OSEndiannessTest
        PUBLIC OSEventEn
        PUBLIC OSEventMax
        PUBLIC OSEventMultiEn
        PUBLIC OSEventNameEn
        PUBLIC OSEventSize
        PUBLIC OSEventTblSize
        PUBLIC OSFlagEn
        PUBLIC OSFlagGrpSize
        PUBLIC OSFlagMax
        PUBLIC OSFlagNameEn
        PUBLIC OSFlagNodeSize
        PUBLIC OSFlagWidth
        PUBLIC OSLowestPrio
        PUBLIC OSMboxEn
        PUBLIC OSMemEn
        PUBLIC OSMemMax
        PUBLIC OSMemNameEn
        PUBLIC OSMemSize
        PUBLIC OSMemTblSize
        PUBLIC OSMutexEn
        PUBLIC OSPtrSize
        PUBLIC OSQEn
        PUBLIC OSQMax
        PUBLIC OSQSize
        PUBLIC OSRdyTblSize
        PUBLIC OSSemEn
        PUBLIC OSStkWidth
        PUBLIC OSTCBPrioTblMax
        PUBLIC OSTCBSize
        PUBLIC OSTaskCreateEn
        PUBLIC OSTaskCreateExtEn
        PUBLIC OSTaskDelEn
        PUBLIC OSTaskIdleStkSize
        PUBLIC OSTaskMax
        PUBLIC OSTaskNameEn
        PUBLIC OSTaskProfileEn
        PUBLIC OSTaskStatEn
        PUBLIC OSTaskStatStkChkEn
        PUBLIC OSTaskStatStkSize
        PUBLIC OSTaskSwHookEn
        PUBLIC OSTicksPerSec
        PUBLIC OSTimeTickHookEn
        PUBLIC OSTmrCfgMax
        PUBLIC OSTmrCfgNameEn
        PUBLIC OSTmrCfgTicksPerSec
        PUBLIC OSTmrCfgWheelSize
        PUBLIC OSTmrEn
        PUBLIC OSTmrSize
        PUBLIC OSTmrTblSize
        PUBLIC OSTmrWheelSize
        PUBLIC OSTmrWheelTblSize
        PUBLIC OSVersionNbr


        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSDebugEn:
        DATA
        DC16 1

        SECTION `.rodata`:CONST:REORDER:ROOT(2)
OSEndiannessTest:
        DATA
        DC32 305419896

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSEventEn:
        DATA
        DC16 1

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSEventMax:
        DATA
        DC16 25

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSEventNameEn:
        DATA
        DC16 1

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSEventSize:
        DATA
        DC16 24

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSEventTblSize:
        DATA
        DC16 600

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSEventMultiEn:
        DATA
        DC16 1

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSFlagEn:
        DATA
        DC16 1

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSFlagGrpSize:
        DATA
        DC16 16

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSFlagNodeSize:
        DATA
        DC16 20

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSFlagWidth:
        DATA
        DC16 2

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSFlagMax:
        DATA
        DC16 5

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSFlagNameEn:
        DATA
        DC16 1

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSLowestPrio:
        DATA
        DC16 63

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSMboxEn:
        DATA
        DC16 1

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSMemEn:
        DATA
        DC16 1

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSMemMax:
        DATA
        DC16 1

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSMemNameEn:
        DATA
        DC16 1

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSMemSize:
        DATA
        DC16 24

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSMemTblSize:
        DATA
        DC16 24

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSMutexEn:
        DATA
        DC16 1

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSPtrSize:
        DATA
        DC16 4

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSQEn:
        DATA
        DC16 1

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSQMax:
        DATA
        DC16 5

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSQSize:
        DATA
        DC16 24

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSRdyTblSize:
        DATA
        DC16 8

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSSemEn:
        DATA
        DC16 1

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSStkWidth:
        DATA
        DC16 4

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSTaskCreateEn:
        DATA
        DC16 1

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSTaskCreateExtEn:
        DATA
        DC16 1

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSTaskDelEn:
        DATA
        DC16 1

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSTaskIdleStkSize:
        DATA
        DC16 128

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSTaskProfileEn:
        DATA
        DC16 1

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSTaskMax:
        DATA
        DC16 17

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSTaskNameEn:
        DATA
        DC16 1

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSTaskStatEn:
        DATA
        DC16 1

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSTaskStatStkSize:
        DATA
        DC16 128

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSTaskStatStkChkEn:
        DATA
        DC16 1

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSTaskSwHookEn:
        DATA
        DC16 1

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSTCBPrioTblMax:
        DATA
        DC16 64

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSTCBSize:
        DATA
        DC16 88

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSTicksPerSec:
        DATA
        DC16 1000

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSTimeTickHookEn:
        DATA
        DC16 1

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSVersionNbr:
        DATA
        DC16 289

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSTmrEn:
        DATA
        DC16 1

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSTmrCfgMax:
        DATA
        DC16 16

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSTmrCfgNameEn:
        DATA
        DC16 1

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSTmrCfgWheelSize:
        DATA
        DC16 8

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSTmrCfgTicksPerSec:
        DATA
        DC16 10

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSTmrSize:
        DATA
        DC16 40

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSTmrTblSize:
        DATA
        DC16 640

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSTmrWheelSize:
        DATA
        DC16 8

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSTmrWheelTblSize:
        DATA
        DC16 64

        SECTION `.rodata`:CONST:REORDER:ROOT(1)
OSDataSize:
        DATA
        DC16 4394

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OSDebugInit:
        LDR      R1,??OSDebugInit_0
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x4
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x8
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0xC
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x10
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x14
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x18
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x1C
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x20
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x24
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x28
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x2C
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x30
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x34
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x38
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x3C
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x40
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x44
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x48
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x4C
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x50
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x54
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x58
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x5C
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x60
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x64
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x68
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x6C
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x70
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x74
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x78
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x7C
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x80
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x84
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x88
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x8C
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x90
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x94
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x98
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0x9C
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0xA0
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0xA4
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0xA8
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0xAC
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0xB0
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0xB4
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0xB8
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0xBC
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0xC0
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0xC4
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0xC8
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0xCC
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0xD0
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0xD4
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0xD8
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0xDC
        MOVS     R0,R1
        LDR      R1,??OSDebugInit_0+0xE0
        MOVS     R0,R1
        BX       LR               ;; return
        DATA
??OSDebugInit_0:
        DC32     OSDebugEn
        DC32     OSEndiannessTest
        DC32     OSEventMax
        DC32     OSEventNameEn
        DC32     OSEventEn
        DC32     OSEventSize
        DC32     OSEventTblSize
        DC32     OSEventMultiEn
        DC32     OSFlagEn
        DC32     OSFlagGrpSize
        DC32     OSFlagNodeSize
        DC32     OSFlagWidth
        DC32     OSFlagMax
        DC32     OSFlagNameEn
        DC32     OSLowestPrio
        DC32     OSMboxEn
        DC32     OSMemEn
        DC32     OSMemMax
        DC32     OSMemNameEn
        DC32     OSMemSize
        DC32     OSMemTblSize
        DC32     OSMutexEn
        DC32     OSPtrSize
        DC32     OSQEn
        DC32     OSQMax
        DC32     OSQSize
        DC32     OSRdyTblSize
        DC32     OSSemEn
        DC32     OSStkWidth
        DC32     OSTaskCreateEn
        DC32     OSTaskCreateExtEn
        DC32     OSTaskDelEn
        DC32     OSTaskIdleStkSize
        DC32     OSTaskProfileEn
        DC32     OSTaskMax
        DC32     OSTaskNameEn
        DC32     OSTaskStatEn
        DC32     OSTaskStatStkSize
        DC32     OSTaskStatStkChkEn
        DC32     OSTaskSwHookEn
        DC32     OSTCBPrioTblMax
        DC32     OSTCBSize
        DC32     OSTicksPerSec
        DC32     OSTimeTickHookEn
        DC32     OSTmrTbl
        DC32     OSTmrWheelTbl
        DC32     OSTmrEn
        DC32     OSTmrCfgMax
        DC32     OSTmrCfgNameEn
        DC32     OSTmrCfgWheelSize
        DC32     OSTmrCfgTicksPerSec
        DC32     OSTmrSize
        DC32     OSTmrTblSize
        DC32     OSTmrWheelSize
        DC32     OSTmrWheelTblSize
        DC32     OSVersionNbr
        DC32     OSDataSize

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 112 bytes in section .rodata
// 688 bytes in section .text
// 
// 688 bytes of CODE  memory
// 112 bytes of CONST memory
//
//Errors: none
//Warnings: none
