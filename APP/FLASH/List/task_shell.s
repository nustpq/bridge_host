///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       19/Aug/2014  09:37:05
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\task_shell.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\task_shell.c" -lcN
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
//        E:\SVN Dir\PQ\iSAM Test
//        Bench\Bridge_Host_OS\APP\FLASH\List\task_shell.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN BSP_Ser_Printf
        EXTERN BSP_Ser_RdByte
        EXTERN BSP_Ser_WrByte
        EXTERN CommandParse
        EXTERN InitCommands
        EXTERN LED_Toggle
        EXTERN OSTimeDly
        EXTERN ShellComms

        PUBLIC App_TaskGenieShell


        SECTION `.text`:CODE:NOROOT(2)
        ARM
App_TaskGenieShell:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+148
        MOVS     R4,R0
        MOV      R0,#+0
        MOVS     R9,R0
        MOV      R0,#+0
        STRB     R0,[SP, #+44]
        BL       InitCommands
        MOV      R0,#+200
        BL       OSTimeDly
        LDR      R0,??App_TaskGenieShell_0+0x4
        BL       BSP_Ser_Printf
        BL       BSP_Ser_RdByte
        ADR      R0,??App_TaskGenieShell_0  ;; "\n\r>"
        BL       BSP_Ser_Printf
??App_TaskGenieShell_1:
??App_TaskGenieShell_2:
        BL       BSP_Ser_RdByte
        MOVS     R6,R0
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+48
        BLT      ??App_TaskGenieShell_3
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+58
        BLT      ??App_TaskGenieShell_4
??App_TaskGenieShell_3:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+97
        BLT      ??App_TaskGenieShell_5
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+123
        BLT      ??App_TaskGenieShell_4
??App_TaskGenieShell_5:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+65
        BLT      ??App_TaskGenieShell_6
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+91
        BLT      ??App_TaskGenieShell_4
??App_TaskGenieShell_6:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+46
        BEQ      ??App_TaskGenieShell_4
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+32
        BEQ      ??App_TaskGenieShell_4
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+45
        BEQ      ??App_TaskGenieShell_4
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+47
        BEQ      ??App_TaskGenieShell_4
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+13
        BEQ      ??App_TaskGenieShell_4
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+8
        BEQ      ??App_TaskGenieShell_4
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+44
        BNE      ??App_TaskGenieShell_2
??App_TaskGenieShell_4:
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+8
        BEQ      ??App_TaskGenieShell_7
        CMP      R0,#+13
        BEQ      ??App_TaskGenieShell_8
        CMP      R0,#+32
        BEQ      ??App_TaskGenieShell_9
        B        ??App_TaskGenieShell_10
??App_TaskGenieShell_8:
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??App_TaskGenieShell_11
        ADR      R0,??App_TaskGenieShell_0  ;; "\n\r>"
        BL       BSP_Ser_Printf
        B        ??App_TaskGenieShell_12
??App_TaskGenieShell_11:
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADD      R1,SP,#+44
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #-1]
        CMP      R0,#+32
        BNE      ??App_TaskGenieShell_13
        SUBS     R9,R9,#+1
??App_TaskGenieShell_13:
        MOV      R0,#+0
        MOVS     R1,R9
        ANDS     R1,R1,#0xFF      ;; Zero extend
        ADD      R2,SP,#+44
        STRB     R0,[R1, +R2]
        ADD      R2,SP,#+4
        MOVS     R1,SP
        ADD      R0,SP,#+44
        BL       CommandParse
        MOVS     R5,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+255
        BNE      ??App_TaskGenieShell_14
        MOV      R0,#+0
        MOVS     R9,R0
        MOV      R0,#+0
        MOVS     R1,R9
        ANDS     R1,R1,#0xFF      ;; Zero extend
        ADD      R2,SP,#+44
        STRB     R0,[R1, +R2]
        LDR      R0,??App_TaskGenieShell_0+0x8
        BL       BSP_Ser_Printf
        ADR      R0,??App_TaskGenieShell_0  ;; "\n\r>"
        BL       BSP_Ser_Printf
        B        ??App_TaskGenieShell_12
??App_TaskGenieShell_14:
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+4
        LDR      R1,??App_TaskGenieShell_0+0xC
        ADDS     R0,R0,R1
        LDR      R0,[R0, #+8]
        MOVS     R7,R0
        ADD      R1,SP,#+4
        LDRB     R0,[SP, #+0]
        MOV      LR,PC
        BX       R7
        MOVS     R8,R0
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??App_TaskGenieShell_15
        LDR      R0,??App_TaskGenieShell_0+0x10
        BL       BSP_Ser_Printf
        B        ??App_TaskGenieShell_16
??App_TaskGenieShell_15:
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+2
        BNE      ??App_TaskGenieShell_17
        LDR      R0,??App_TaskGenieShell_0+0x14
        BL       BSP_Ser_Printf
        B        ??App_TaskGenieShell_16
??App_TaskGenieShell_17:
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+3
        BNE      ??App_TaskGenieShell_18
        LDR      R0,??App_TaskGenieShell_0+0x18
        BL       BSP_Ser_Printf
        B        ??App_TaskGenieShell_16
??App_TaskGenieShell_18:
        MOVS     R0,R8
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+4
        BLT      ??App_TaskGenieShell_16
        LDR      R0,??App_TaskGenieShell_0+0x1C
        BL       BSP_Ser_Printf
??App_TaskGenieShell_16:
        MOV      R0,#+0
        MOVS     R9,R0
        MOV      R0,#+0
        MOVS     R1,R9
        ANDS     R1,R1,#0xFF      ;; Zero extend
        ADD      R2,SP,#+44
        STRB     R0,[R1, +R2]
        MOV      R0,#+1
        BL       LED_Toggle
        ADR      R0,??App_TaskGenieShell_0  ;; "\n\r>"
        BL       BSP_Ser_Printf
??App_TaskGenieShell_12:
        B        ??App_TaskGenieShell_19
??App_TaskGenieShell_7:
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??App_TaskGenieShell_20
        SUBS     R9,R9,#+1
        MOV      R0,#+8
        BL       BSP_Ser_WrByte
        MOVS     R10,R0
        MOV      R0,#+32
        BL       BSP_Ser_WrByte
        MOVS     R11,R0
        MOV      R0,#+8
        BL       BSP_Ser_WrByte
??App_TaskGenieShell_20:
        B        ??App_TaskGenieShell_19
??App_TaskGenieShell_9:
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADD      R1,SP,#+44
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #-1]
        CMP      R0,#+32
        BEQ      ??App_TaskGenieShell_21
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??App_TaskGenieShell_21
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+101
        BGE      ??App_TaskGenieShell_21
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADD      R1,SP,#+44
        STRB     R6,[R0, +R1]
        ADDS     R9,R9,#+1
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       BSP_Ser_WrByte
??App_TaskGenieShell_21:
        B        ??App_TaskGenieShell_19
??App_TaskGenieShell_10:
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+101
        BGE      ??App_TaskGenieShell_22
        MOVS     R0,R9
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADD      R1,SP,#+44
        STRB     R6,[R0, +R1]
        ADDS     R9,R9,#+1
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       BSP_Ser_WrByte
??App_TaskGenieShell_22:
??App_TaskGenieShell_19:
        MOV      R0,#+10
        BL       OSTimeDly
        B        ??App_TaskGenieShell_1
        DATA
??App_TaskGenieShell_0:
        DC8      "\n\r>"
        DC32     `?<Constant "\\n\\rLaunching Genieshel...">`
        DC32     `?<Constant "Error: bad command or...">`
        DC32     ShellComms
        DC32     `?<Constant "Error : number of par...">`
        DC32     `?<Constant "Error : parameters co...">`
        DC32     `?<Constant "Error : Function exec...">`
        DC32     `?<Constant "Error : Unknown error...">`

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n\\rLaunching Genieshel...">`:
        DATA
        DC8 "\012\015Launching Genieshell, press any to continue..."
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "\012\015>"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Error: bad command or...">`:
        DATA
        DC8 "Error: bad command or filename."

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Error : number of par...">`:
        DATA
        DC8 "Error : number of parameters error..."
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Error : parameters co...">`:
        DATA
        DC8 "Error : parameters content error ..."
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Error : Function exec...">`:
        DATA
        DC8 "Error : Function execution error ..."
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Error : Unknown error...">`:
        DATA
        DC8 "Error : Unknown error ..."
        DC8 0, 0

        END
// 
// 236 bytes in section .rodata
// 924 bytes in section .text
// 
// 924 bytes of CODE  memory
// 236 bytes of CONST memory
//
//Errors: none
//Warnings: 3
