///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       19/Dec/2014  13:31:07
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\BSP\bsp.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\BSP\bsp.c" -lcN "E:\SVN
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
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\bsp.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Done_Sem_RulerUART
        EXTERN FLASHD_Initialize
        EXTERN GPIO_Init
        EXTERN Global_Mic_Mask
        EXTERN Global_Ruler_State
        EXTERN Global_Ruler_Type
        EXTERN ISR_PC_UART
        EXTERN ISR_Ruler_UART
        EXTERN LED_Clear
        EXTERN LED_Set
        EXTERN OSCPUUsage
        EXTERN OSCtxSwCtr
        EXTERN OSRunning
        EXTERN OSSemPend
        EXTERN OSSemPost
        EXTERN OSTCBList
        EXTERN OSTime
        EXTERN OSTimeDly
        EXTERN OSTimeTick
        EXTERN OSVersion
        EXTERN PIO_Clear
        EXTERN PIO_Set
        EXTERN Read_Flash_State
        EXTERN TWI_Init
        EXTERN TWI_Sem_done
        EXTERN TWI_Sem_lock
        EXTERN Timer_Init
        EXTERN Tx_ReSend_Happens
        EXTERN Tx_ReSend_Happens_Ruler
        EXTERN UART_Init
        EXTERN UART_MUX_Sem_lock
        EXTERN __aeabi_idiv
        EXTERN __aeabi_idivmod
        EXTERN __aeabi_uidiv
        EXTERN __aeabi_uidivmod
        EXTERN pMEM_Part_MsgUART
        EXTERN test_counter1
        EXTERN test_counter2
        EXTERN test_counter3
        EXTERN test_counter4
        EXTERN test_counter5
        EXTERN vsprintf

        PUBLIC BSP_CPU_ClkFreq
        PUBLIC BSP_CPU_Init
        PUBLIC BSP_Init
        PUBLIC BSP_IntClr
        PUBLIC BSP_IntDis
        PUBLIC BSP_IntDisAll
        PUBLIC BSP_IntEn
        PUBLIC BSP_IntVectSet
        PUBLIC BSP_MainOscDis
        PUBLIC BSP_MainOscEn
        PUBLIC BSP_MainOscGetFreq
        PUBLIC BSP_MclkCfg
        PUBLIC BSP_MclkGetFreq
        PUBLIC BSP_PLL_Cfg
        PUBLIC BSP_PLL_GetFreq
        PUBLIC BSP_PclkCfg
        PUBLIC BSP_PclkDis
        PUBLIC BSP_PclkEn
        PUBLIC BSP_PclkGetFreq
        PUBLIC BSP_PerClkDis
        PUBLIC BSP_PerClkEn
        PUBLIC BSP_PerClkGetStatus
        PUBLIC BSP_Ser_Init
        PUBLIC BSP_Ser_Printf
        PUBLIC BSP_Ser_RdByte
        PUBLIC BSP_Ser_RdStr
        PUBLIC BSP_Ser_WrByte
        PUBLIC BSP_Ser_WrStr
        PUBLIC BSP_Sys_ISR_Handler
        PUBLIC BSP_Tmr_TickISR_Handler
        PUBLIC BSP_USBclkCfg
        PUBLIC BSP_USBclkDis
        PUBLIC BSP_USBclkEn
        PUBLIC BSP_USBclkGetFreq
        PUBLIC Beep
        PUBLIC Bsp_Ser_Rx_Sem_lock
        PUBLIC Bsp_Ser_Tx_Sem_lock
        PUBLIC Debug_COM_Sel
        PUBLIC Flag_Reset_Pin_Trigger
        PUBLIC Get_Run_Time
        PUBLIC Get_Task_Info
        PUBLIC Head_Info
        PUBLIC LowLevelInitPLL
        PUBLIC OS_CPU_ExceptHndlr
        PUBLIC Time_Stamp
        PUBLIC fw_version
        PUBLIC get_os_state
        PUBLIC hw_model
        PUBLIC hw_version
        PUBLIC os_stat_desp


        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
        DC8 "\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "\010 \010"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "%c"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "---------------------...">`:
        DATA
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 20H, 20H
        DC8 20H, 44H, 45H, 42H, 55H, 47H, 20H, 49H
        DC8 4EH, 46H, 4FH, 52H, 4DH, 41H, 54H, 49H
        DC8 4FH, 4EH, 20H, 20H, 20H, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 0DH, 0AH, 0
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "|--------------------...">`:
        DATA
        DC8 7CH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 20H, 20H, 20H, 54H, 20H, 20H
        DC8 41H, 20H, 20H, 53H, 20H, 20H, 4BH, 20H
        DC8 20H, 20H, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 7CH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 20H, 20H, 20H, 53H, 20H, 20H, 54H
        DC8 20H, 20H, 41H, 20H, 20H, 43H, 20H, 20H
        DC8 4BH, 20H, 20H, 20H, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 7CH, 0DH, 0AH, 0
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "| ID  |    Name    | ...">`:
        DATA
        DC8 7CH, 20H, 49H, 44H, 20H, 20H, 7CH, 20H
        DC8 20H, 20H, 20H, 4EH, 61H, 6DH, 65H, 20H
        DC8 20H, 20H, 20H, 7CH, 20H, 50H, 72H, 69H
        DC8 6FH, 72H, 69H, 74H, 79H, 20H, 7CH, 20H
        DC8 43H, 74H, 78H, 53H, 77H, 43H, 74H, 72H
        DC8 20H, 7CH, 20H, 53H, 74H, 61H, 74H, 65H
        DC8 20H, 7CH, 20H, 44H, 65H, 6CH, 61H, 79H
        DC8 20H, 7CH, 20H, 20H, 20H, 20H, 20H, 20H
        DC8 57H, 61H, 69H, 74H, 74H, 69H, 6EH, 67H
        DC8 20H, 4FH, 6EH, 20H, 20H, 20H, 20H, 20H
        DC8 7CH, 20H, 20H, 50H, 6FH, 69H, 6EH, 74H
        DC8 40H, 20H, 7CH, 20H, 43H, 75H, 72H, 2EH
        DC8 20H, 7CH, 20H, 4DH, 61H, 78H, 2EH, 20H
        DC8 7CH, 20H, 53H, 69H, 7AH, 65H, 20H, 7CH
        DC8 20H, 53H, 74H, 61H, 72H, 74H, 73H, 40H
        DC8 20H, 7CH, 20H, 45H, 6EH, 64H, 73H, 40H
        DC8 20H, 20H, 20H, 7CH, 0DH, 0AH, 0
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "|%2d ">`:
        DATA
        DC8 "|%2d "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "%13.13s">`:
        DATA
        DC8 "%13.13s"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "      %2d ">`:
        DATA
        DC8 "      %2d "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "  %10d ">`:
        DATA
        DC8 "  %10d "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "   %s  ">`:
        DATA
        DC8 "   %s  "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant " %5d ">`:
        DATA
        DC8 " %5d "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant " %22.22s ">`:
        DATA
        DC8 " %22.22s "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
        DC8 " "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant " %08X ">`:
        DATA
        DC8 " %08X "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant " %4d ">`:
        DATA
        DC8 " %4d "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant " |\\r\\n">`:
        DATA
        DC8 " |\015\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "---------------------...">_1`:
        DATA
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 0DH, 0AH, 0
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "OS Running Time  =  %...">`:
        DATA
        DC8 4FH, 53H, 20H, 52H, 75H, 6EH, 6EH, 69H
        DC8 6EH, 67H, 20H, 54H, 69H, 6DH, 65H, 20H
        DC8 20H, 3DH, 20H, 20H, 25H, 30H, 32H, 64H
        DC8 20H, 64H, 61H, 79H, 73H, 20H, 3AH, 20H
        DC8 25H, 30H, 32H, 64H, 20H, 68H, 6FH, 75H
        DC8 72H, 73H, 20H, 3AH, 20H, 25H, 30H, 32H
        DC8 64H, 20H, 6DH, 69H, 6EH, 20H, 3AH, 20H
        DC8 25H, 30H, 32H, 64H, 20H, 73H, 65H, 63H
        DC8 0DH, 0AH, 0
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\r\\n[%d:%02d:%02d.%03d] ">`:
        DATA
        DC8 "\015\012[%d:%02d:%02d.%03d] "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\r\\n\\r\\n">`:
        DATA
        DC8 "\015\012\015\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "---------------------...">_2`:
        DATA
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 0DH, 0AH, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "----                 ...">`:
        DATA
        DC8 2DH, 2DH, 2DH, 2DH, 20H, 20H, 20H, 20H
        DC8 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H
        DC8 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H
        DC8 46H, 6FH, 72H, 74H, 65H, 6DH, 65H, 64H
        DC8 69H, 61H, 20H, 20H, 20H, 20H, 20H, 20H
        DC8 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H
        DC8 20H, 20H, 20H, 20H, 20H, 20H, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 0DH, 0AH, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "----         iSAM Tes...">`:
        DATA
        DC8 2DH, 2DH, 2DH, 2DH, 20H, 20H, 20H, 20H
        DC8 20H, 20H, 20H, 20H, 20H, 69H, 53H, 41H
        DC8 4DH, 20H, 54H, 65H, 73H, 74H, 20H, 42H
        DC8 65H, 6EH, 63H, 68H, 20H, 41H, 75H, 64H
        DC8 69H, 6FH, 20H, 42H, 72H, 69H, 64H, 67H
        DC8 65H, 20H, 42H, 6FH, 61H, 72H, 64H, 20H
        DC8 20H, 20H, 20H, 20H, 20H, 20H, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 0DH, 0AH, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "----   %20s-%s       ...">`:
        DATA
        DC8 "----   %20s-%s             -----\015\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "----   Compile date: ...">`:
        DATA
        DC8 "----   Compile date:  %12s, %8s, by PQ   -----\015\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Dec 19 2014">`:
        DATA
        DC8 "Dec 19 2014"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "13:31:07">`:
        DATA
        DC8 "13:31:07"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "\015\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Micrium uC/OS-II on t...">`:
        DATA
        DC8 4DH, 69H, 63H, 72H, 69H, 75H, 6DH, 20H
        DC8 75H, 43H, 2FH, 4FH, 53H, 2DH, 49H, 49H
        DC8 20H, 6FH, 6EH, 20H, 74H, 68H, 65H, 20H
        DC8 41H, 74H, 6DH, 65H, 6CH, 20H, 41H, 54H
        DC8 39H, 31H, 53H, 41H, 4DH, 37H, 41H, 33H
        DC8 2EH, 20H, 56H, 65H, 72H, 73H, 69H, 6FH
        DC8 6EH, 20H, 3AH, 20H, 56H, 25H, 64H, 2EH
        DC8 25H, 64H, 20H, 0DH, 0AH, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "CPU Usage = %d%%, CPU...">`:
        DATA
        DC8 43H, 50H, 55H, 20H, 55H, 73H, 61H, 67H
        DC8 65H, 20H, 3DH, 20H, 25H, 64H, 25H, 25H
        DC8 2CH, 20H, 43H, 50H, 55H, 20H, 53H, 70H
        DC8 65H, 65H, 64H, 20H, 3DH, 20H, 25H, 33H
        DC8 64H, 20H, 4DH, 48H, 7AH, 2CH, 20H, 54H
        DC8 69H, 63H, 6BH, 5FH, 50H, 65H, 72H, 5FH
        DC8 53H, 65H, 63H, 6FH, 6EH, 64H, 20H, 3DH
        DC8 20H, 25H, 36H, 64H, 20H, 74H, 69H, 63H
        DC8 6BH, 73H, 2FH, 73H, 65H, 63H, 20H, 20H
        DC8 0DH, 0AH, 0
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "#Ticks = %8d, #CtxSw ...">`:
        DATA
        DC8 "#Ticks = %8d, #CtxSw = %8d \015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "---------------------...">_3`:
        DATA
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 20H, 20H, 20H, 47H, 4CH, 4FH, 42H
        DC8 41H, 4CH, 20H, 56H, 41H, 52H, 49H, 41H
        DC8 42H, 4CH, 45H, 53H, 20H, 53H, 54H, 41H
        DC8 54H, 55H, 53H, 20H, 20H, 20H, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 0DH, 0AH, 0
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "MEM_Part_MsgUART :   ...">`:
        DATA
        DC8 4DH, 45H, 4DH, 5FH, 50H, 61H, 72H, 74H
        DC8 5FH, 4DH, 73H, 67H, 55H, 41H, 52H, 54H
        DC8 20H, 3AH, 20H, 20H, 20H, 20H, 20H, 20H
        DC8 20H, 20H, 20H, 25H, 32H, 64H, 20H, 2FH
        DC8 20H, 25H, 32H, 64H, 20H, 20H, 20H, 6FH
        DC8 66H, 20H, 74H, 68H, 65H, 20H, 6DH, 65H
        DC8 6DH, 6FH, 72H, 79H, 20H, 70H, 61H, 72H
        DC8 74H, 69H, 61H, 74H, 69H, 6FH, 6EH, 20H
        DC8 75H, 73H, 65H, 64H, 0DH, 0AH, 0
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Tx_ReSend_Happens:   ...">`:
        DATA
        DC8 "Tx_ReSend_Happens:         %7d   times happened\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Tx_ReSend_Happens_Rul...">`:
        DATA
        DC8 "Tx_ReSend_Happens_Ruler:   %7d   times happened\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "TWI_Sem_lock:        ...">`:
        DATA
        DC8 "TWI_Sem_lock:              %7d   ( default 1 )\015\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "TWI_Sem_done:        ...">`:
        DATA
        DC8 "TWI_Sem_done:              %7d   ( default 0 )\015\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "UART_MUX_Sem_lock:   ...">`:
        DATA
        DC8 "UART_MUX_Sem_lock:         %7d   ( default 1 )\015\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Done_Sem_RulerUART:  ...">`:
        DATA
        DC8 "Done_Sem_RulerUART:        %7d   ( default 0 )\015\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Global_Ruler_State[3....">`:
        DATA
        DC8 47H, 6CH, 6FH, 62H, 61H, 6CH, 5FH, 52H
        DC8 75H, 6CH, 65H, 72H, 5FH, 53H, 74H, 61H
        DC8 74H, 65H, 5BH, 33H, 2EH, 2EH, 30H, 5DH
        DC8 3AH, 20H, 20H, 20H, 20H, 20H, 20H, 20H
        DC8 20H, 5BH, 25H, 64H, 20H, 2DH, 20H, 25H
        DC8 64H, 20H, 2DH, 20H, 25H, 64H, 20H, 2DH
        DC8 20H, 25H, 64H, 5DH, 0DH, 0AH, 0
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Global_Ruler_Type[3.....">`:
        DATA
        DC8 47H, 6CH, 6FH, 62H, 61H, 6CH, 5FH, 52H
        DC8 75H, 6CH, 65H, 72H, 5FH, 54H, 79H, 70H
        DC8 65H, 5BH, 33H, 2EH, 2EH, 30H, 5DH, 20H
        DC8 3AH, 20H, 20H, 20H, 20H, 20H, 20H, 20H
        DC8 20H, 5BH, 25H, 58H, 20H, 2DH, 20H, 25H
        DC8 58H, 20H, 2DH, 20H, 25H, 58H, 20H, 2DH
        DC8 20H, 25H, 58H, 5DH, 0DH, 0AH, 0
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Global_Mic_Mask[3..0]...">`:
        DATA
        DC8 47H, 6CH, 6FH, 62H, 61H, 6CH, 5FH, 4DH
        DC8 69H, 63H, 5FH, 4DH, 61H, 73H, 6BH, 5BH
        DC8 33H, 2EH, 2EH, 30H, 5DH, 5BH, 5DH, 20H
        DC8 3AH, 20H, 20H, 20H, 20H, 20H, 20H, 20H
        DC8 20H, 5BH, 25H, 58H, 20H, 2DH, 20H, 25H
        DC8 58H, 20H, 2DH, 20H, 25H, 58H, 20H, 2DH
        DC8 20H, 25H, 58H, 5DH, 0DH, 0AH, 0
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Flash Write Cycle:   ...">`:
        DATA
        DC8 46H, 6CH, 61H, 73H, 68H, 20H, 57H, 72H
        DC8 69H, 74H, 65H, 20H, 43H, 79H, 63H, 6CH
        DC8 65H, 3AH, 20H, 20H, 20H, 20H, 20H, 20H
        DC8 20H, 53H, 74H, 61H, 74H, 65H, 5FH, 50H
        DC8 61H, 67H, 65H, 20H, 3DH, 20H, 25H, 64H
        DC8 20H, 63H, 79H, 63H, 6CH, 65H, 73H, 2CH
        DC8 20H, 20H, 46H, 57H, 5FH, 42H, 69H, 6EH
        DC8 5FH, 50H, 61H, 67H, 65H, 20H, 3DH, 20H
        DC8 25H, 64H, 20H, 63H, 79H, 63H, 6CH, 65H
        DC8 73H, 0DH, 0AH, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Ruler FW Bin File:   ...">`:
        DATA
        DC8 52H, 75H, 6CH, 65H, 72H, 20H, 46H, 57H
        DC8 20H, 42H, 69H, 6EH, 20H, 46H, 69H, 6CH
        DC8 65H, 3AH, 20H, 20H, 20H, 20H, 20H, 20H
        DC8 20H, 22H, 25H, 73H, 22H, 20H, 28H, 25H
        DC8 64H, 20H, 42H, 79H, 74H, 65H, 73H, 29H
        DC8 2CH, 20H, 5BH, 30H, 78H, 25H, 30H, 58H
        DC8 2CH, 20H, 25H, 73H, 5DH, 0DH, 0AH, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant " -- ">`:
        DATA
        DC8 " -- "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "OK"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Error">`:
        DATA
        DC8 "Error"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Test Counter:        ...">`:
        DATA
        DC8 54H, 65H, 73H, 74H, 20H, 43H, 6FH, 75H
        DC8 6EH, 74H, 65H, 72H, 3AH, 20H, 20H, 20H
        DC8 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H
        DC8 20H, 74H, 65H, 73H, 74H, 5FH, 63H, 6FH
        DC8 75H, 6EH, 74H, 65H, 72H, 31H, 2CH, 20H
        DC8 32H, 2CH, 20H, 33H, 2CH, 20H, 34H, 20H
        DC8 20H, 3DH, 20H, 20H, 25H, 34H, 64H, 2CH
        DC8 25H, 34H, 64H, 2CH, 25H, 34H, 64H, 2CH
        DC8 25H, 34H, 64H, 0DH, 0AH, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Test Counter:  UART_W...">`:
        DATA
        DC8 54H, 65H, 73H, 74H, 20H, 43H, 6FH, 75H
        DC8 6EH, 74H, 65H, 72H, 3AH, 20H, 20H, 55H
        DC8 41H, 52H, 54H, 5FH, 57H, 72H, 69H, 74H
        DC8 65H, 53H, 74H, 61H, 72H, 74H, 20H, 46H
        DC8 61H, 69H, 6CH, 65H, 64H, 20H, 3AH, 20H
        DC8 20H, 25H, 34H, 64H, 20H, 20H, 74H, 69H
        DC8 6DH, 65H, 73H, 0DH, 0AH, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
fw_version:
        DATA
        DC8 "[FW:H:V0.4.8]"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
hw_version:
        DATA
        DC8 "[HW:V1.0]"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
hw_model:
        DATA
        DC8 "[AB03]"
        DC8 0

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Bsp_Ser_Tx_Sem_lock:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Bsp_Ser_Rx_Sem_lock:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
PinBuzzer:
        DATA
        DC32 16, 0FFFFF400H
        DC8 2, 4, 0, 0

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
Debug_COM_Sel:
        DS8 1

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_Init:
        PUSH     {R12,LR}
        MOV      R0,#+32768
        MVN      R1,#+187
        BIC      R1,R1,#0x200
        STR      R0,[R1, #+0]
        BL       BSP_IntInit
        BL       GPIO_Init
        BL       BSP_ResetInit
        MOV      R0,#+196608
        ORR      R0,R0,#0xD40
        BL       TWI_Init
        MOV      R0,#+47972352
        ORR      R0,R0,#0x6C00
        BL       FLASHD_Initialize
        MOV      R2,#+65536
        ORR      R2,R2,#0xC200
        LDR      R1,??DataTable4
        MOV      R0,#+0
        BL       UART_Init
        MOV      R2,#+65536
        ORR      R2,R2,#0xC200
        LDR      R1,??DataTable4_1
        MOV      R0,#+1
        BL       UART_Init
        MOV      R2,#+65536
        ORR      R2,R2,#0xC200
        MOV      R1,#+0
        MOV      R0,#+2
        BL       UART_Init
        BL       Timer_Init
        BL       BSP_Tmr_TickInit
        POP      {R0,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_CPU_ClkFreq:
        PUSH     {R4-R6,LR}
        MVN      R0,#+207
        BIC      R0,R0,#0x300
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x3
        MOVS     R4,R0
        MVN      R0,#+207
        BIC      R0,R0,#0x300
        LDR      R0,[R0, #+0]
        MOV      R1,#+3
        ANDS     R0,R1,R0, LSR #+2
        MOVS     R5,R0
        MOV      R0,#+1
        LSLS     R5,R0,R5
        MOVS     R0,R4
        CMP      R0,#+0
        BEQ      ??BSP_CPU_ClkFreq_0
        CMP      R0,#+1
        BEQ      ??BSP_CPU_ClkFreq_1
        CMP      R0,#+3
        BEQ      ??BSP_CPU_ClkFreq_2
        B        ??BSP_CPU_ClkFreq_3
??BSP_CPU_ClkFreq_0:
        MOV      R0,#+32768
        MOVS     R6,R0
        B        ??BSP_CPU_ClkFreq_4
??BSP_CPU_ClkFreq_1:
        MOV      R0,#+16777216
        ORR      R0,R0,#0x194000
        MOVS     R6,R0
        B        ??BSP_CPU_ClkFreq_4
??BSP_CPU_ClkFreq_2:
        BL       BSP_PLL_GetFreq
        MOVS     R6,R0
        B        ??BSP_CPU_ClkFreq_4
??BSP_CPU_ClkFreq_3:
        MOV      R0,#+0
        MOVS     R6,R0
??BSP_CPU_ClkFreq_4:
        MOVS     R0,R6
        MOVS     R1,R5
        BL       __aeabi_uidiv
        MOVS     R6,R0
        MOVS     R0,R6
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_CPU_Init:
        PUSH     {R12,LR}
        MVN      R0,#+159
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        MVN      R1,#+159
        STR      R0,[R1, #+0]
        MOV      R0,#+255
        BL       BSP_MainOscEn
        MOV      R3,#+255
        MOV      R2,#+1
        MOV      R1,#+7
        MOV      R0,#+73
        BL       BSP_PLL_Cfg
        MOV      R1,#+2
        MOV      R0,#+3
        BL       BSP_MclkCfg
        POP      {R0,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
LowLevelInitPLL:
        MOV      R0,#+256
        MVN      R1,#+159
        STR      R0,[R1, #+0]
        MOV      R0,#+1
        ORR      R0,R0,#0x4000
        MVN      R1,#+223
        BIC      R1,R1,#0x300
        STR      R0,[R1, #+0]
??LowLevelInitPLL_0:
        MVN      R0,#+151
        BIC      R0,R0,#0x300
        LDR      R0,[R0, #+0]
        TST      R0,#0x1
        BEQ      ??LowLevelInitPLL_0
        LDR      R0,??DataTable6  ;; 0x1048100e
        MVN      R1,#+211
        BIC      R1,R1,#0x300
        STR      R0,[R1, #+0]
??LowLevelInitPLL_1:
        MVN      R0,#+151
        BIC      R0,R0,#0x300
        LDR      R0,[R0, #+0]
        TST      R0,#0x4
        BEQ      ??LowLevelInitPLL_1
??LowLevelInitPLL_2:
        MVN      R0,#+151
        BIC      R0,R0,#0x300
        LDR      R0,[R0, #+0]
        TST      R0,#0x8
        BEQ      ??LowLevelInitPLL_2
        MOV      R0,#+4
        MVN      R1,#+207
        BIC      R1,R1,#0x300
        STR      R0,[R1, #+0]
??LowLevelInitPLL_3:
        MVN      R0,#+151
        BIC      R0,R0,#0x300
        LDR      R0,[R0, #+0]
        TST      R0,#0x8
        BEQ      ??LowLevelInitPLL_3
        MVN      R0,#+207
        BIC      R0,R0,#0x300
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x3
        MVN      R1,#+207
        BIC      R1,R1,#0x300
        STR      R0,[R1, #+0]
??LowLevelInitPLL_4:
        MVN      R0,#+151
        BIC      R0,R0,#0x300
        LDR      R0,[R0, #+0]
        TST      R0,#0x8
        BEQ      ??LowLevelInitPLL_4
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_IntClr:
        MOVS     R1,R0
        ANDS     R1,R1,#0xFF      ;; Zero extend
        CMP      R1,#+32
        BGE      ??BSP_IntClr_0
??BSP_IntClr_1:
        MOV      R1,#+1
        LSLS     R1,R1,R0
        MVN      R2,#+215
        BIC      R2,R2,#0xE00
        STR      R1,[R2, #+0]
??BSP_IntClr_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_IntDis:
        MOVS     R1,R0
        ANDS     R1,R1,#0xFF      ;; Zero extend
        CMP      R1,#+32
        BGE      ??BSP_IntDis_0
??BSP_IntDis_1:
        MOV      R1,#+1
        LSLS     R1,R1,R0
        MVN      R2,#+219
        BIC      R2,R2,#0xE00
        STR      R1,[R2, #+0]
??BSP_IntDis_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_IntDisAll:
        MVN      R0,#+0
        MVN      R1,#+219
        BIC      R1,R1,#0xE00
        STR      R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_IntEn:
        MOVS     R1,R0
        ANDS     R1,R1,#0xFF      ;; Zero extend
        CMP      R1,#+32
        BGE      ??BSP_IntEn_0
??BSP_IntEn_1:
        MOV      R1,#+1
        LSLS     R1,R1,R0
        MVN      R2,#+223
        BIC      R2,R2,#0xE00
        STR      R1,[R2, #+0]
??BSP_IntEn_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_IntInit:
        PUSH     {R4,LR}
        MOV      R0,#+170
        MOV      R1,#+48
        STRB     R0,[R1, #+0]
        MOV      R0,#+48
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+170
        BEQ      ??BSP_IntInit_0
        MOV      R0,#+1
        MVN      R1,#+255
        STR      R0,[R1, #+0]
??BSP_IntInit_0:
        MVN      R0,#+247
        BIC      R0,R0,#0xE00
        LDR      R0,[R0, #+0]
        MVN      R1,#+215
        BIC      R1,R1,#0xE00
        STR      R0,[R1, #+0]
        MOV      R0,#+0
        MVN      R1,#+207
        BIC      R1,R1,#0xE00
        STR      R0,[R1, #+0]
        MOV      R0,#+0
        MOVS     R4,R0
??BSP_IntInit_1:
        MOVS     R0,R4
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        CMP      R0,#+32
        BGE      ??BSP_IntInit_2
        ADR      R3,BSP_DummyISR_Handler
        MOV      R2,#+0
        MOV      R1,#+0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       BSP_IntVectSet
        ADDS     R4,R4,#+1
        B        ??BSP_IntInit_1
??BSP_IntInit_2:
        MOV      R0,#+0
        MVN      R1,#+203
        BIC      R1,R1,#0xE00
        STR      R0,[R1, #+0]
        MOV      R0,#+1
        MVN      R1,#+199
        BIC      R1,R1,#0xE00
        STR      R0,[R1, #+0]
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_ResetInit:
        MOV      R0,#+16
        ORR      R0,R0,#0xA5000000
        MVN      R1,#+247
        BIC      R1,R1,#0x200
        STR      R0,[R1, #+0]
        MVN      R0,#+251
        BIC      R0,R0,#0x200
        LDR      R0,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_IntVectSet:
        PUSH     {R4,LR}
        MOVS     LR,R1
        ANDS     LR,LR,#0xFF      ;; Zero extend
        CMP      LR,#+8
        BGE      ??BSP_IntVectSet_1
??BSP_IntVectSet_2:
        CMP      R3,#+0
        BEQ      ??BSP_IntVectSet_1
??BSP_IntVectSet_3:
        MOVS     LR,R0
        ANDS     LR,LR,#0xFF      ;; Zero extend
        CMP      LR,#+32
        BGE      ??BSP_IntVectSet_1
??BSP_IntVectSet_4:
        MOVS     LR,R0
        ANDS     LR,LR,#0xFF      ;; Zero extend
        LSLS     LR,LR,#+2
        STR      R3,[LR, #-3968]
        MOVS     LR,R2
        ANDS     LR,LR,#0xFF      ;; Zero extend
        CMP      LR,#+5
        BHI      ??BSP_IntVectSet_5
        LDRB     R4,[PC, LR]
        ADD      PC,PC,R4, LSL #+2
        DATA
??BSP_IntVectSet_0:
        DC8      0x1,0x4,0x1,0x7
        DC8      0x4,0xA,0x0,0x0
        ARM
??BSP_IntVectSet_6:
        MOV      LR,#+0
        MOVS     R12,LR
        B        ??BSP_IntVectSet_7
??BSP_IntVectSet_8:
        MOV      LR,#+1
        MOVS     R12,LR
        B        ??BSP_IntVectSet_7
??BSP_IntVectSet_9:
        MOV      LR,#+2
        MOVS     R12,LR
        B        ??BSP_IntVectSet_7
??BSP_IntVectSet_10:
        MOV      LR,#+3
        MOVS     R12,LR
        B        ??BSP_IntVectSet_7
??BSP_IntVectSet_5:
        MOV      LR,#+0
        MOVS     R12,LR
??BSP_IntVectSet_7:
        MOVS     LR,R1
        ANDS     LR,LR,#0xFF      ;; Zero extend
        MOVS     R4,R12
        ANDS     R4,R4,#0xFF      ;; Zero extend
        ORRS     LR,LR,R4, LSL #+5
        MOVS     R4,R0
        ANDS     R4,R4,#0xFF      ;; Zero extend
        LSLS     R4,R4,#+2
        SUBS     R4,R4,#+4096
        STR      LR,[R4, #+0]
??BSP_IntVectSet_1:
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_DummyISR_Handler:
        PUSH     {R4,LR}
        MOV      R0,#+0
        MVN      R1,#+255
        BIC      R1,R1,#0xE00
        STR      R0,[R1, #+0]
        MVN      R0,#+247
        BIC      R0,R0,#0xE00
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x1F
        MOVS     R4,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        BL       BSP_IntClr
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_MainOscDis:
        MVN      R0,#+223
        BIC      R0,R0,#0x300
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x1
        MVN      R1,#+223
        BIC      R1,R1,#0x300
        STR      R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_MainOscEn:
        MOVS     R1,R0
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        MOV      R3,#+1
        ORRS     R0,R3,R0, LSL #+8
        MVN      R3,#+223
        BIC      R3,R3,#0x300
        STR      R0,[R3, #+0]
        MOV      R0,#+255
        ORR      R0,R0,#0xFF00
        MOVS     R2,R0
??BSP_MainOscEn_0:
        CMP      R2,#+0
        BEQ      ??BSP_MainOscEn_1
        MVN      R0,#+151
        BIC      R0,R0,#0x300
        LDR      R0,[R0, #+0]
        TST      R0,#0x1
        BNE      ??BSP_MainOscEn_1
        SUBS     R2,R2,#+1
        B        ??BSP_MainOscEn_0
??BSP_MainOscEn_1:
        CMP      R2,#+0
        BNE      ??BSP_MainOscEn_2
        MOV      R0,#+1
        B        ??BSP_MainOscEn_3
??BSP_MainOscEn_2:
        MOV      R0,#+0
??BSP_MainOscEn_3:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_MainOscGetFreq:
        PUSH     {R4-R6,LR}
        MOV      R0,#+255
        ORR      R0,R0,#0xFF00
        MOVS     R6,R0
??BSP_MainOscGetFreq_0:
        CMP      R6,#+0
        BEQ      ??BSP_MainOscGetFreq_1
        MVN      R0,#+219
        BIC      R0,R0,#0x300
        LDR      R0,[R0, #+0]
        TST      R0,#0x10000
        BNE      ??BSP_MainOscGetFreq_1
        SUBS     R6,R6,#+1
        B        ??BSP_MainOscGetFreq_0
??BSP_MainOscGetFreq_1:
        CMP      R6,#+0
        BNE      ??BSP_MainOscGetFreq_2
        MOV      R0,#+0
        MOVS     R5,R0
        B        ??BSP_MainOscGetFreq_3
??BSP_MainOscGetFreq_2:
        MVN      R0,#+219
        BIC      R0,R0,#0x300
        LDR      R0,[R0, #+0]
        MOVS     R4,R0
        MOVS     R0,R4
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+15
        MOV      R1,#+16
        BL       __aeabi_idiv
        MOVS     R5,R0
??BSP_MainOscGetFreq_3:
        MOVS     R0,R5
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_MclkGetFreq:
        PUSH     {R3-R7,LR}
        MVN      R0,#+207
        BIC      R0,R0,#0x300
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x3
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??BSP_MclkGetFreq_0
        CMP      R0,#+1
        BEQ      ??BSP_MclkGetFreq_1
        CMP      R0,#+3
        BEQ      ??BSP_MclkGetFreq_2
        B        ??BSP_MclkGetFreq_3
??BSP_MclkGetFreq_0:
        MOV      R0,#+32768
        MOVS     R6,R0
        B        ??BSP_MclkGetFreq_4
??BSP_MclkGetFreq_1:
        MOV      R0,#+16777216
        ORR      R0,R0,#0x194000
        MOVS     R6,R0
        B        ??BSP_MclkGetFreq_4
??BSP_MclkGetFreq_2:
        BL       BSP_PLL_GetFreq
        MOVS     R6,R0
        B        ??BSP_MclkGetFreq_4
??BSP_MclkGetFreq_3:
        MOV      R0,#+0
        MOVS     R6,R0
??BSP_MclkGetFreq_4:
        MVN      R0,#+207
        BIC      R0,R0,#0x300
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+2
        ANDS     R0,R0,#0x3
        MOVS     R5,R0
        MOV      R0,#+1
        LSLS     R5,R0,R5
        MOVS     R0,R6
        MOVS     R1,R5
        ANDS     R1,R1,#0xFF      ;; Zero extend
        BL       __aeabi_uidiv
        MOVS     R4,R0
        MOVS     R0,R4
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_MclkCfg:
        MOVS     R2,R0
        MOVS     R0,R2
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??BSP_MclkCfg_0
        MOVS     R0,R2
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BEQ      ??BSP_MclkCfg_0
        MOVS     R0,R2
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+3
        BEQ      ??BSP_MclkCfg_0
        MOV      R0,#+0
        B        ??BSP_MclkCfg_1
??BSP_MclkCfg_0:
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+7
        BLT      ??BSP_MclkCfg_2
        MOV      R0,#+0
        B        ??BSP_MclkCfg_1
??BSP_MclkCfg_2:
        MOVS     R0,R2
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ANDS     R0,R0,#0x3
        MOVS     R12,R1
        ANDS     R12,R12,#0xFF    ;; Zero extend
        ANDS     R12,R12,#0x7
        ORRS     R0,R0,R12, LSL #+2
        MVN      R12,#+207
        BIC      R12,R12,#0x300
        STR      R0,[R12, #+0]
        MOV      R0,#+255
        ORR      R0,R0,#0xFF00
        MOVS     R3,R0
??BSP_MclkCfg_3:
        CMP      R3,#+0
        BEQ      ??BSP_MclkCfg_4
        MVN      R0,#+151
        BIC      R0,R0,#0x300
        LDR      R0,[R0, #+0]
        TST      R0,#0x8
        BNE      ??BSP_MclkCfg_4
        SUBS     R3,R3,#+1
        B        ??BSP_MclkCfg_3
??BSP_MclkCfg_4:
        CMP      R3,#+0
        BNE      ??BSP_MclkCfg_5
        MOV      R0,#+0
        B        ??BSP_MclkCfg_1
??BSP_MclkCfg_5:
        MOV      R0,#+1
??BSP_MclkCfg_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_PerClkDis:
        MOVS     R1,R0
        ANDS     R1,R1,#0xFF      ;; Zero extend
        CMP      R1,#+0
        BNE      ??BSP_PerClkDis_0
        MOVS     R1,R0
        ANDS     R1,R1,#0xFF      ;; Zero extend
        CMP      R1,#+1
        BEQ      ??BSP_PerClkDis_1
??BSP_PerClkDis_0:
        MOVS     R1,R0
        ANDS     R1,R1,#0xFF      ;; Zero extend
        CMP      R1,#+32
        BGE      ??BSP_PerClkDis_1
??BSP_PerClkDis_2:
        MOV      R1,#+1
        LSLS     R1,R1,R0
        MVN      R2,#+235
        BIC      R2,R2,#0x300
        STR      R1,[R2, #+0]
??BSP_PerClkDis_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_PerClkEn:
        MOVS     R1,R0
        ANDS     R1,R1,#0xFF      ;; Zero extend
        CMP      R1,#+0
        BNE      ??BSP_PerClkEn_0
        MOVS     R1,R0
        ANDS     R1,R1,#0xFF      ;; Zero extend
        CMP      R1,#+1
        BEQ      ??BSP_PerClkEn_1
??BSP_PerClkEn_0:
        MOVS     R1,R0
        ANDS     R1,R1,#0xFF      ;; Zero extend
        CMP      R1,#+32
        BGE      ??BSP_PerClkEn_1
??BSP_PerClkEn_2:
        MOV      R1,#+1
        LSLS     R1,R1,R0
        MVN      R2,#+239
        BIC      R2,R2,#0x300
        STR      R1,[R2, #+0]
??BSP_PerClkEn_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_PerClkGetStatus:
        MOVS     R1,R0
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BNE      ??BSP_PerClkGetStatus_0
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BNE      ??BSP_PerClkGetStatus_0
        MOV      R0,#+0
        B        ??BSP_PerClkGetStatus_1
??BSP_PerClkGetStatus_0:
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+32
        BLT      ??BSP_PerClkGetStatus_2
        MOV      R0,#+0
        B        ??BSP_PerClkGetStatus_1
??BSP_PerClkGetStatus_2:
        MVN      R0,#+231
        BIC      R0,R0,#0x300
        LDR      R0,[R0, #+0]
        MOV      R3,#+1
        ANDS     R0,R0,R3, LSL R1
        MOV      R3,#+1
        CMP      R0,R3, LSL R1
        BNE      ??BSP_PerClkGetStatus_3
        MOV      R2,#+1
        B        ??BSP_PerClkGetStatus_4
??BSP_PerClkGetStatus_3:
        MOV      R2,#+0
??BSP_PerClkGetStatus_4:
        MOVS     R0,R2
        ANDS     R0,R0,#0xFF      ;; Zero extend
??BSP_PerClkGetStatus_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_PclkEn:
        MOVS     R1,R0
        ANDS     R1,R1,#0xFF      ;; Zero extend
        CMP      R1,#+3
        BGE      ??BSP_PclkEn_0
??BSP_PclkEn_1:
        MOV      R1,#+1
        LSLS     R1,R1,R0
        MVN      R2,#+255
        BIC      R2,R2,#0x300
        STR      R1,[R2, #+0]
??BSP_PclkEn_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_PclkDis:
        MOVS     R1,R0
        ANDS     R1,R1,#0xFF      ;; Zero extend
        CMP      R1,#+3
        BGE      ??BSP_PclkDis_0
??BSP_PclkDis_1:
        MOV      R1,#+1
        LSLS     R1,R1,R0
        MVN      R2,#+251
        BIC      R2,R2,#0x300
        STR      R1,[R2, #+0]
??BSP_PclkDis_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_PclkGetFreq:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+3
        BLT      ??BSP_PclkGetFreq_0
        MOV      R0,#+0
        B        ??BSP_PclkGetFreq_1
??BSP_PclkGetFreq_0:
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R0,[R0, #-960]
        ANDS     R0,R0,#0x3
        MOVS     R5,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSLS     R0,R0,#+2
        LDR      R0,[R0, #-960]
        LSRS     R0,R0,#+2
        ANDS     R0,R0,#0x7
        MOVS     R7,R0
        MOV      R0,#+1
        LSLS     R7,R0,R7
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??BSP_PclkGetFreq_2
        CMP      R0,#+1
        BEQ      ??BSP_PclkGetFreq_3
        CMP      R0,#+3
        BEQ      ??BSP_PclkGetFreq_4
        B        ??BSP_PclkGetFreq_5
??BSP_PclkGetFreq_2:
        MOV      R0,#+32768
        MOVS     R6,R0
        B        ??BSP_PclkGetFreq_6
??BSP_PclkGetFreq_3:
        BL       BSP_MainOscGetFreq
        MOVS     R6,R0
        B        ??BSP_PclkGetFreq_6
??BSP_PclkGetFreq_4:
        BL       BSP_PLL_GetFreq
        MOVS     R6,R0
        B        ??BSP_PclkGetFreq_6
??BSP_PclkGetFreq_5:
        MOV      R0,#+0
        MOVS     R6,R0
??BSP_PclkGetFreq_6:
        MOVS     R0,R6
        MOVS     R1,R7
        ANDS     R1,R1,#0xFF      ;; Zero extend
        BL       __aeabi_uidiv
        MOVS     R6,R0
        MOVS     R0,R6
??BSP_PclkGetFreq_1:
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_PclkCfg:
        MOVS     R3,R0
        ANDS     R3,R3,#0xFF      ;; Zero extend
        CMP      R3,#+3
        BGE      ??BSP_PclkCfg_0
??BSP_PclkCfg_1:
        MOVS     R3,R1
        ANDS     R3,R3,#0xFF      ;; Zero extend
        CMP      R3,#+0
        BEQ      ??BSP_PclkCfg_2
        MOVS     R3,R1
        ANDS     R3,R3,#0xFF      ;; Zero extend
        CMP      R3,#+1
        BEQ      ??BSP_PclkCfg_2
        MOVS     R3,R1
        ANDS     R3,R3,#0xFF      ;; Zero extend
        CMP      R3,#+3
        BNE      ??BSP_PclkCfg_0
??BSP_PclkCfg_2:
        MOVS     R3,R2
        ANDS     R3,R3,#0xFF      ;; Zero extend
        CMP      R3,#+7
        BGE      ??BSP_PclkCfg_0
??BSP_PclkCfg_3:
        MOVS     R3,R1
        ANDS     R3,R3,#0xFF      ;; Zero extend
        ANDS     R3,R3,#0x3
        MOVS     R12,R2
        ANDS     R12,R12,#0xFF    ;; Zero extend
        ANDS     R12,R12,#0x7
        ORRS     R3,R3,R12, LSL #+2
        MOVS     R12,R0
        ANDS     R12,R12,#0xFF    ;; Zero extend
        LSLS     R12,R12,#+2
        STR      R3,[R12, #-960]
??BSP_PclkCfg_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_PLL_GetFreq:
        PUSH     {R4-R6,LR}
        MVN      R0,#+211
        BIC      R0,R0,#0x300
        LDR      R0,[R0, #+0]
        MOVS     R4,R0
        MVN      R0,#+211
        BIC      R0,R0,#0x300
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+21
        LSRS     R0,R0,#+21
        MOVS     R5,R0
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??BSP_PLL_GetFreq_0
        MOVS     R0,R5
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        ADDS     R0,R0,#+1
        MOV      R1,#+16777216
        ORR      R1,R1,#0x194000
        MULS     R0,R1,R0
        MOVS     R1,R4
        ANDS     R1,R1,#0xFF      ;; Zero extend
        BL       __aeabi_idiv
        MOVS     R6,R0
??BSP_PLL_GetFreq_0:
        MOVS     R0,R6
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_PLL_Cfg:
        PUSH     {R4,LR}
        MOVS     R12,R0
        MOVS     R0,R12
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        MOV      R4,#+1
        ORR      R4,R4,#0x800
        CMP      R0,R4
        BLT      ??BSP_PLL_Cfg_0
        MOV      R0,#+0
        B        ??BSP_PLL_Cfg_1
??BSP_PLL_Cfg_0:
        MOVS     R0,R2
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??BSP_PLL_Cfg_2
        MOVS     R0,R2
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+1
        BEQ      ??BSP_PLL_Cfg_2
        MOV      R0,#+0
        B        ??BSP_PLL_Cfg_1
??BSP_PLL_Cfg_2:
        MOVS     R0,R1
        ANDS     R0,R0,#0xFF      ;; Zero extend
        MOVS     R4,R3
        ANDS     R4,R4,#0xFF      ;; Zero extend
        ANDS     R4,R4,#0x3F
        ORRS     R0,R0,R4, LSL #+8
        MOVS     R4,R2
        ANDS     R4,R4,#0xFF      ;; Zero extend
        ANDS     R4,R4,#0x3
        ORRS     R0,R0,R4, LSL #+14
        MOVS     R4,R12
        LSL      R4,R4,#+16
        LSRS     R4,R4,#+16
        SUBS     R4,R4,#+1
        ORRS     R0,R0,R4, LSL #+16
        MVN      R4,#+211
        BIC      R4,R4,#0x300
        STR      R0,[R4, #+0]
        MOV      R0,#+255
        ORR      R0,R0,#0xFF00
        MOVS     LR,R0
??BSP_PLL_Cfg_3:
        CMP      LR,#+0
        BEQ      ??BSP_PLL_Cfg_4
        MVN      R0,#+151
        BIC      R0,R0,#0x300
        LDR      R0,[R0, #+0]
        TST      R0,#0x4
        BNE      ??BSP_PLL_Cfg_4
        SUBS     LR,LR,#+1
        B        ??BSP_PLL_Cfg_3
??BSP_PLL_Cfg_4:
        CMP      LR,#+0
        BNE      ??BSP_PLL_Cfg_5
        MOV      R0,#+0
        B        ??BSP_PLL_Cfg_1
??BSP_PLL_Cfg_5:
        MOV      R0,#+1
??BSP_PLL_Cfg_1:
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
OS_CPU_ExceptHndlr:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R0,R4
        CMP      R0,#+6
        BEQ      ??OS_CPU_ExceptHndlr_0
        CMP      R0,#+7
        BEQ      ??OS_CPU_ExceptHndlr_1
        B        ??OS_CPU_ExceptHndlr_2
??OS_CPU_ExceptHndlr_0:
        MVN      R0,#+255
        BIC      R0,R0,#0xE00
        LDR      R0,[R0, #+0]
        MOVS     R5,R0
??OS_CPU_ExceptHndlr_3:
        CMP      R5,#+0
        BEQ      ??OS_CPU_ExceptHndlr_4
        MOV      LR,PC
        BX       R5
        MOV      R0,#+0
        MVN      R1,#+207
        BIC      R1,R1,#0xE00
        STR      R0,[R1, #+0]
        MVN      R0,#+255
        BIC      R0,R0,#0xE00
        LDR      R0,[R0, #+0]
        MOVS     R5,R0
        B        ??OS_CPU_ExceptHndlr_3
??OS_CPU_ExceptHndlr_4:
        MOV      R0,#+0
        MVN      R1,#+207
        BIC      R1,R1,#0xE00
        STR      R0,[R1, #+0]
        B        ??OS_CPU_ExceptHndlr_5
??OS_CPU_ExceptHndlr_1:
        MVN      R0,#+251
        BIC      R0,R0,#0xE00
        LDR      R0,[R0, #+0]
        MOVS     R5,R0
??OS_CPU_ExceptHndlr_6:
        CMP      R5,#+0
        BEQ      ??OS_CPU_ExceptHndlr_7
        MOV      LR,PC
        BX       R5
        MOV      R0,#+0
        MVN      R1,#+207
        BIC      R1,R1,#0xE00
        STR      R0,[R1, #+0]
        MVN      R0,#+251
        BIC      R0,R0,#0xE00
        LDR      R0,[R0, #+0]
        MOVS     R5,R0
        B        ??OS_CPU_ExceptHndlr_6
??OS_CPU_ExceptHndlr_7:
        MOV      R0,#+0
        MVN      R1,#+207
        BIC      R1,R1,#0xE00
        STR      R0,[R1, #+0]
        B        ??OS_CPU_ExceptHndlr_5
??OS_CPU_ExceptHndlr_2:
        B        ??OS_CPU_ExceptHndlr_2
??OS_CPU_ExceptHndlr_5:
        POP      {R0,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_Tmr_TickInit:
        PUSH     {R3-R5,LR}
        BL       BSP_MclkGetFreq
        MOVS     R5,R0
        LSRS     R0,R5,#+4
        MOV      R1,#+1000
        BL       __aeabi_uidiv
        SUBS     R0,R0,#+1
        MOVS     R4,R0
        ADR      R3,BSP_Sys_ISR_Handler
        MOV      R2,#+0
        MOV      R1,#+0
        MOV      R0,#+1
        BL       BSP_IntVectSet
        MOV      R0,#+1
        BL       BSP_IntClr
        MOV      R0,#+1
        BL       BSP_IntEn
        ORRS     R0,R4,#0x3000000
        MVN      R1,#+207
        BIC      R1,R1,#0x200
        STR      R0,[R1, #+0]
        POP      {R0,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_Tmr_TickISR_Handler:
        PUSH     {R4,LR}
        MVN      R0,#+199
        BIC      R0,R0,#0x200
        LDR      R0,[R0, #+0]
        MOVS     R4,R0
        BL       OSTimeTick
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
Flag_Reset_Pin_Trigger:
        DS8 1

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_Sys_ISR_Handler:
        PUSH     {R12,LR}
        MOV      R0,#+0
        MVN      R1,#+255
        BIC      R1,R1,#0xE00
        STR      R0,[R1, #+0]
        MVN      R0,#+203
        BIC      R0,R0,#0x200
        LDR      R0,[R0, #+0]
        TST      R0,#0x1
        BEQ      ??BSP_Sys_ISR_Handler_0
        BL       BSP_Tmr_TickISR_Handler
??BSP_Sys_ISR_Handler_0:
        MVN      R0,#+251
        BIC      R0,R0,#0x200
        LDR      R0,[R0, #+0]
        TST      R0,#0x1
        BEQ      ??BSP_Sys_ISR_Handler_1
        LDR      R0,??DataTable13_2
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable13_2
        STRB     R0,[R1, #+0]
??BSP_Sys_ISR_Handler_1:
        MOV      R0,#+1
        BL       BSP_IntClr
        POP      {R0,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_Ser_Init:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        BL       BSP_CPU_ClkFreq
        MOVS     R5,R0
        LDR      R0,??DataTable13_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??BSP_Ser_Init_0
        MVN      R0,#+251
        BIC      R0,R0,#0xB00
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0xC0000000
        MVN      R1,#+251
        BIC      R1,R1,#0xB00
        STR      R0,[R1, #+0]
        MVN      R0,#+143
        BIC      R0,R0,#0xB00
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0xC0000000
        MVN      R1,#+143
        BIC      R1,R1,#0xB00
        STR      R0,[R1, #+0]
        MOV      R0,#+2
        MVN      R1,#+235
        BIC      R1,R1,#0x300
        STR      R0,[R1, #+0]
        MOV      R0,#+12
        MVN      R1,#+255
        BIC      R1,R1,#0xD00
        STR      R0,[R1, #+0]
        MOV      R0,#+3
        MVN      R1,#+243
        BIC      R1,R1,#0xD00
        STR      R0,[R1, #+0]
        MOV      R0,#+80
        MVN      R1,#+255
        BIC      R1,R1,#0xD00
        STR      R0,[R1, #+0]
        MOV      R0,#+2048
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
        B        ??BSP_Ser_Init_1
??BSP_Ser_Init_0:
        MOV      R0,#+12
        MVN      R1,#+251
        BIC      R1,R1,#0xB00
        STR      R0,[R1, #+0]
        MOV      R0,#+12
        MVN      R1,#+143
        BIC      R1,R1,#0xB00
        STR      R0,[R1, #+0]
        MOV      R0,#+12
        MOV      R1,#-67108864
        ORR      R1,R1,#0x3FC0000
        STR      R0,[R1, #+0]
        MVN      R0,#+0
        LDR      R1,??DataTable13_4  ;; 0xfffc000c
        STR      R0,[R1, #+0]
        MOV      R0,#+80
        MOV      R1,#-67108864
        ORR      R1,R1,#0x3FC0000
        STR      R0,[R1, #+0]
        MOV      R0,#+2240
        LDR      R1,??DataTable13_5  ;; 0xfffc0004
        STR      R0,[R1, #+0]
        MOVS     R0,R5
        MOVS     R1,R4
        BL       __aeabi_uidiv
        LSRS     R0,R0,#+4
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        LDR      R1,??DataTable13_6  ;; 0xfffc0020
        STR      R0,[R1, #+0]
        MOV      R0,#+2
        ORR      R0,R0,#0x200
        LDR      R1,??DataTable13_7  ;; 0xfffc0120
        STR      R0,[R1, #+0]
        MOV      R0,#+64
        MVN      R1,#+239
        BIC      R1,R1,#0x300
        STR      R0,[R1, #+0]
??BSP_Ser_Init_1:
        POP      {R0,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_Ser_WrByte:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R2,SP
        MOV      R1,#+0
        LDR      R0,??DataTable13_8
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        LDR      R0,??DataTable13_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??BSP_Ser_WrByte_0
??BSP_Ser_WrByte_1:
        MVN      R0,#+235
        BIC      R0,R0,#0xD00
        LDR      R0,[R0, #+0]
        TST      R0,#0x2
        BEQ      ??BSP_Ser_WrByte_1
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        MVN      R1,#+227
        BIC      R1,R1,#0xD00
        STR      R0,[R1, #+0]
        B        ??BSP_Ser_WrByte_2
??BSP_Ser_WrByte_0:
        LDR      R0,??DataTable13_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE      ??BSP_Ser_WrByte_2
??BSP_Ser_WrByte_3:
        LDR      R0,??DataTable13_9  ;; 0xfffc0014
        LDR      R0,[R0, #+0]
        TST      R0,#0x2
        BEQ      ??BSP_Ser_WrByte_3
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LDR      R1,??DataTable13_10  ;; 0xfffc001c
        STR      R0,[R1, #+0]
??BSP_Ser_WrByte_2:
        LDR      R0,??DataTable13_8
        LDR      R0,[R0, #+0]
        BL       OSSemPost
        POP      {R0,R1,R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     ISR_PC_UART

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     ISR_Ruler_UART

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_Ser_WrStr:
        PUSH     {R4,LR}
        MOVS     R4,R0
??BSP_Ser_WrStr_0:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+0
        BEQ      ??BSP_Ser_WrStr_1
        LDRB     R0,[R4, #+0]
        BL       BSP_Ser_WrByte
        ADDS     R4,R4,#+1
        B        ??BSP_Ser_WrStr_0
??BSP_Ser_WrStr_1:
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_Ser_RdByte:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R2,SP
        MOV      R1,#+0
        LDR      R0,??DataTable13_11
        LDR      R0,[R0, #+0]
        BL       OSSemPend
        LDR      R0,??DataTable13_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??BSP_Ser_RdByte_0
??BSP_Ser_RdByte_1:
        MVN      R0,#+235
        BIC      R0,R0,#0xD00
        LDR      R0,[R0, #+0]
        TST      R0,#0x1
        BNE      ??BSP_Ser_RdByte_2
        MOV      R0,#+2
        BL       OSTimeDly
        B        ??BSP_Ser_RdByte_1
??BSP_Ser_RdByte_2:
        MVN      R0,#+231
        BIC      R0,R0,#0xD00
        LDR      R0,[R0, #+0]
        MOVS     R4,R0
        B        ??BSP_Ser_RdByte_3
??BSP_Ser_RdByte_0:
        LDR      R0,??DataTable13_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE      ??BSP_Ser_RdByte_3
??BSP_Ser_RdByte_4:
        LDR      R0,??DataTable13_9  ;; 0xfffc0014
        LDR      R0,[R0, #+0]
        TST      R0,#0x1
        BNE      ??BSP_Ser_RdByte_5
        MOV      R0,#+2
        BL       OSTimeDly
        B        ??BSP_Ser_RdByte_4
??BSP_Ser_RdByte_5:
        LDR      R0,??DataTable13_12  ;; 0xfffc0018
        LDR      R0,[R0, #+0]
        MOVS     R4,R0
??BSP_Ser_RdByte_3:
        LDR      R0,??DataTable13_11
        LDR      R0,[R0, #+0]
        BL       OSSemPost
        MOVS     R0,R4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        POP      {R1,R2,R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_Ser_RdStr:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R0,#+0
        MOVS     R6,R0
        MOV      R0,#+0
        STRB     R0,[R4, #+0]
??BSP_Ser_RdStr_0:
        BL       BSP_Ser_RdByte
        MOVS     R7,R0
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+13
        BEQ      ??BSP_Ser_RdStr_1
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+10
        BNE      ??BSP_Ser_RdStr_2
??BSP_Ser_RdStr_1:
        ADR      R0,??DataTable9  ;; "\n"
        BL       BSP_Ser_Printf
        MOV      R0,#+0
        MOVS     R1,R6
        ANDS     R1,R1,#0xFF      ;; Zero extend
        STRB     R0,[R1, +R4]
        B        ??BSP_Ser_RdStr_3
??BSP_Ser_RdStr_2:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+8
        BNE      ??BSP_Ser_RdStr_4
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+0
        BEQ      ??BSP_Ser_RdStr_4
        ADR      R0,??DataTable9_1  ;; "\b \b"
        BL       BSP_Ser_Printf
        SUBS     R6,R6,#+1
        MOV      R0,#+0
        MOVS     R1,R6
        ANDS     R1,R1,#0xFF      ;; Zero extend
        STRB     R0,[R1, +R4]
??BSP_Ser_RdStr_4:
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+32
        BLT      ??BSP_Ser_RdStr_5
        MOVS     R0,R7
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,#+127
        BGE      ??BSP_Ser_RdStr_5
        MOV      R0,#+1
        B        ??BSP_Ser_RdStr_6
??BSP_Ser_RdStr_5:
        MOV      R0,#+0
??BSP_Ser_RdStr_6:
        CMP      R0,#+0
        BEQ      ??BSP_Ser_RdStr_0
        MOVS     R1,R7
        ANDS     R1,R1,#0xFF      ;; Zero extend
        ADR      R0,??DataTable10  ;; 0x25, 0x63, 0x00, 0x00
        BL       BSP_Ser_Printf
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        STRB     R7,[R0, +R4]
        ADDS     R6,R6,#+1
        MOVS     R0,R6
        ANDS     R0,R0,#0xFF      ;; Zero extend
        CMP      R0,R5
        BCC      ??BSP_Ser_RdStr_0
        MOVS     R0,R5
        MOVS     R6,R0
        B        ??BSP_Ser_RdStr_0
??BSP_Ser_RdStr_3:
        POP      {R0,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     0x1048100e

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_Ser_Printf:
        PUSH     {R1-R3}
        PUSH     {R4,R5,LR}
        MOVS     R4,R0
        ADD      R0,SP,#+12
        MOVS     R5,R0
        MOVS     R2,R5
        MOVS     R1,R4
        LDR      R0,??DataTable13_13
        BL       vsprintf
        LDR      R0,??DataTable13_13
        BL       BSP_Ser_WrStr
        POP      {R4,R5,LR}
        ADD      SP,SP,#+12       ;; stack cleaning
        BX       LR               ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??buffer:
        DS8 84

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_USBclkEn:
        MOV      R0,#+128
        MVN      R1,#+255
        BIC      R1,R1,#0x300
        STR      R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_USBclkDis:
        MOV      R0,#+128
        MVN      R1,#+251
        BIC      R1,R1,#0x300
        STR      R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_USBclkGetFreq:
        PUSH     {R3-R5,LR}
        BL       BSP_PLL_GetFreq
        MOVS     R4,R0
        MVN      R0,#+211
        BIC      R0,R0,#0x300
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+8
        MOVS     R5,R0
        MOV      R0,#+1
        LSLS     R5,R0,R5
        MOVS     R0,R4
        MOVS     R1,R5
        ANDS     R1,R1,#0xFF      ;; Zero extend
        BL       __aeabi_uidiv
        MOVS     R4,R0
        MOVS     R0,R4
        POP      {R1,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
BSP_USBclkCfg:
        MOVS     R1,R0
        ANDS     R1,R1,#0xFF      ;; Zero extend
        CMP      R1,#+3
        BGE      ??BSP_USBclkCfg_0
??BSP_USBclkCfg_1:
        MVN      R1,#+211
        BIC      R1,R1,#0x300
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x30000000
        MVN      R2,#+211
        BIC      R2,R2,#0x300
        STR      R1,[R2, #+0]
        MVN      R1,#+211
        BIC      R1,R1,#0x300
        LDR      R1,[R1, #+0]
        MOVS     R2,R0
        ANDS     R2,R2,#0xFF      ;; Zero extend
        ORRS     R1,R1,R2, LSL #+28
        MVN      R2,#+211
        BIC      R2,R2,#0x300
        STR      R1,[R2, #+0]
??BSP_USBclkCfg_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Beep:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOV      R0,#+0
        MOVS     R5,R0
??Beep_0:
        CMP      R5,R4
        BCS      ??Beep_1
        LDR      R0,??DataTable13_14
        BL       PIO_Clear
        MOV      R0,#+0
        BL       LED_Clear
        MOV      R0,#+1
        BL       LED_Set
        MOV      R0,#+250
        BL       OSTimeDly
        LDR      R0,??DataTable13_14
        BL       PIO_Set
        MOV      R0,#+1
        BL       LED_Clear
        MOV      R0,#+0
        BL       LED_Set
        MOV      R0,#+250
        BL       OSTimeDly
        ADDS     R5,R5,#+1
        B        ??Beep_0
??Beep_1:
        POP      {R0,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
os_stat_desp:
        DATA
        DC8 "Sem  "
        DC8 "MBox "
        DC8 "Q    "
        DC8 "Suspd"
        DC8 "Mutex"
        DC8 "Flag "
        DC8 "  *  "
        DC8 "Multi"
        DC8 "Ready"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        ARM
get_os_state:
        MOVS     R1,R0
        MOV      R0,#+0
        MOV      R2,#+0
        MOVS     R0,R2
??get_os_state_0:
        MOVS     R2,R0
        ANDS     R2,R2,#0xFF      ;; Zero extend
        CMP      R2,#+8
        BGE      ??get_os_state_1
        MOVS     R2,R1
        ANDS     R2,R2,#0xFF      ;; Zero extend
        MOV      R3,#+1
        CMP      R2,R3, LSL R0
        BNE      ??get_os_state_2
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADD      R2,R0,R0, LSL #+1
        LDR      R0,??DataTable13_15
        ADDS     R0,R0,R2, LSL #+1
        B        ??get_os_state_3
??get_os_state_2:
        ADDS     R0,R0,#+1
        B        ??get_os_state_0
??get_os_state_1:
        ANDS     R0,R0,#0xFF      ;; Zero extend
        ADD      R2,R0,R0, LSL #+1
        LDR      R0,??DataTable13_15
        ADDS     R0,R0,R2, LSL #+1
??get_os_state_3:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC8      "\n",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC8      "\b \b"

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Get_Task_Info:
        PUSH     {R3-R5,LR}
        MOV      R5,#+1
        LDR      R0,??DataTable13_16
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE      ??Get_Task_Info_0
        LDR      R0,??DataTable13_17
        BL       BSP_Ser_Printf
        LDR      R0,??DataTable13_18
        BL       BSP_Ser_Printf
        LDR      R0,??DataTable13_19
        BL       BSP_Ser_Printf
        LDR      R0,??DataTable13_20
        LDR      R0,[R0, #+0]
        MOVS     R4,R0
??Get_Task_Info_1:
        LDRB     R0,[R4, #+54]
        CMP      R0,#+63
        BEQ      ??Get_Task_Info_2
        MOVS     R1,R5
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable13_21
        BL       BSP_Ser_Printf
        ADDS     R5,R5,#+1
        LDR      R1,[R4, #+80]
        LDR      R0,??DataTable13_22
        BL       BSP_Ser_Printf
        LDRB     R1,[R4, #+54]
        LDR      R0,??DataTable13_23
        BL       BSP_Ser_Printf
        LDR      R1,[R4, #+60]
        LDR      R0,??DataTable13_24
        BL       BSP_Ser_Printf
        LDRB     R0,[R4, #+52]
        BL       get_os_state
        MOVS     R1,R0
        LDR      R0,??DataTable13_25
        BL       BSP_Ser_Printf
        LDR      R1,[R4, #+48]
        LDR      R0,??DataTable13_26
        BL       BSP_Ser_Printf
        LDR      R0,[R4, #+28]
        CMP      R0,#+0
        BNE      ??Get_Task_Info_3
        ADR      R1,??DataTable12  ;; " "
        B        ??Get_Task_Info_4
??Get_Task_Info_3:
        LDR      R0,[R4, #+28]
        LDR      R1,[R0, #+20]
??Get_Task_Info_4:
        LDR      R0,??DataTable13_27
        BL       BSP_Ser_Printf
        LDR      R1,[R4, #+0]
        LDR      R0,??DataTable13_28
        BL       BSP_Ser_Printf
        LDR      R0,[R4, #+72]
        LDR      R1,[R4, #+0]
        SUBS     R0,R0,R1
        ASRS     R0,R0,#+2
        LSLS     R1,R0,#+2
        LDR      R0,??DataTable13_29
        BL       BSP_Ser_Printf
        LDR      R1,[R4, #+76]
        LDR      R0,??DataTable13_26
        BL       BSP_Ser_Printf
        LDR      R0,[R4, #+12]
        LSLS     R1,R0,#+2
        LDR      R0,??DataTable13_26
        BL       BSP_Ser_Printf
        LDR      R1,[R4, #+72]
        LDR      R0,??DataTable13_28
        BL       BSP_Ser_Printf
        LDR      R1,[R4, #+8]
        LDR      R0,??DataTable13_28
        BL       BSP_Ser_Printf
        LDR      R0,??DataTable13_30
        BL       BSP_Ser_Printf
        LDR      R4,[R4, #+20]
        B        ??Get_Task_Info_1
??Get_Task_Info_2:
        LDR      R0,??DataTable13_31
        BL       BSP_Ser_Printf
??Get_Task_Info_0:
        POP      {R0,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC8      0x25, 0x63, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Get_Run_Time:
        PUSH     {R4-R8,LR}
        SUB      SP,SP,#+8
        LDR      R0,??DataTable13_32
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        BL       __aeabi_uidiv
        MOVS     R4,R0
        MOVS     R0,R4
        MOV      R1,#+60
        BL       __aeabi_uidivmod
        MOVS     R5,R1
        MOVS     R0,R4
        MOV      R1,#+60
        BL       __aeabi_uidiv
        MOV      R1,#+60
        BL       __aeabi_uidivmod
        MOVS     R6,R1
        MOVS     R0,R4
        MOV      R1,#+3600
        BL       __aeabi_uidiv
        MOV      R1,#+24
        BL       __aeabi_uidivmod
        MOVS     R7,R1
        MOVS     R0,R4
        MOV      R1,#+3600
        BL       __aeabi_uidiv
        MOV      R1,#+24
        BL       __aeabi_uidiv
        MOVS     R8,R0
        MOVS     R0,R5
        ANDS     R0,R0,#0xFF      ;; Zero extend
        STR      R0,[SP, #+0]
        MOVS     R3,R6
        ANDS     R3,R3,#0xFF      ;; Zero extend
        MOVS     R2,R7
        ANDS     R2,R2,#0xFF      ;; Zero extend
        MOVS     R1,R8
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable13_33
        BL       BSP_Ser_Printf
        POP      {R0,R1,R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Time_Stamp:
        PUSH     {R4-R8,LR}
        SUB      SP,SP,#+8
        LDR      R0,??DataTable13_32
        LDR      R0,[R0, #+0]
        MOVS     R4,R0
        MOVS     R0,R4
        MOV      R1,#+1000
        BL       __aeabi_uidivmod
        MOVS     R8,R1
        MOVS     R0,R4
        MOV      R1,#+1000
        BL       __aeabi_uidiv
        MOVS     R4,R0
        MOVS     R0,R4
        MOV      R1,#+60
        BL       __aeabi_uidivmod
        MOVS     R5,R1
        MOVS     R0,R4
        MOV      R1,#+60
        BL       __aeabi_uidiv
        MOV      R1,#+60
        BL       __aeabi_uidivmod
        MOVS     R6,R1
        MOVS     R0,R4
        MOV      R1,#+3600
        BL       __aeabi_uidiv
        MOV      R1,#+24
        BL       __aeabi_uidivmod
        MOVS     R7,R1
        MOVS     R0,R8
        LSL      R0,R0,#+16
        LSRS     R0,R0,#+16
        STR      R0,[SP, #+0]
        MOVS     R3,R5
        ANDS     R3,R3,#0xFF      ;; Zero extend
        MOVS     R2,R6
        ANDS     R2,R2,#0xFF      ;; Zero extend
        MOVS     R1,R7
        ANDS     R1,R1,#0xFF      ;; Zero extend
        LDR      R0,??DataTable13_34
        BL       BSP_Ser_Printf
        POP      {R0,R1,R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC8      " ",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        ARM
Head_Info:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+52
        ADD      R0,SP,#+4
        BL       Read_Flash_State
        LDR      R0,??DataTable13_35
        BL       BSP_Ser_Printf
        LDR      R0,??DataTable13_36
        BL       BSP_Ser_Printf
        LDR      R0,??DataTable13_37
        BL       BSP_Ser_Printf
        LDR      R0,??DataTable13_38
        BL       BSP_Ser_Printf
        LDR      R2,??DataTable13_39
        LDR      R1,??DataTable13_40
        LDR      R0,??DataTable13_41
        BL       BSP_Ser_Printf
        LDR      R2,??DataTable13_42
        LDR      R1,??DataTable13_43
        LDR      R0,??DataTable13_44
        BL       BSP_Ser_Printf
        LDR      R0,??DataTable13_36
        BL       BSP_Ser_Printf
        ADR      R0,??DataTable13  ;; 0x0D, 0x0A, 0x00, 0x00
        BL       BSP_Ser_Printf
        BL       OSVersion
        MOVS     R4,R0
        BL       OSVersion
        MOVS     R5,R0
        LSL      R4,R4,#+16
        LSRS     R4,R4,#+16
        MOVS     R0,R4
        MOV      R1,#+100
        BL       __aeabi_idivmod
        MOVS     R2,R1
        MOVS     R4,R2
        LSL      R5,R5,#+16
        LSRS     R5,R5,#+16
        MOVS     R0,R5
        MOV      R1,#+100
        BL       __aeabi_idiv
        MOVS     R1,R0
        MOVS     R2,R4
        LDR      R0,??DataTable13_45
        BL       BSP_Ser_Printf
        BL       BSP_CPU_ClkFreq
        MOV      R3,#+1000
        MOVS     R4,R3
        MOV      R1,#+999424
        ORR      R1,R1,#0x240
        BL       __aeabi_uidiv
        MOVS     R2,R0
        MOVS     R3,R4
        LDR      R0,??DataTable13_46
        LDRB     R1,[R0, #+0]
        LDR      R0,??DataTable13_47
        BL       BSP_Ser_Printf
        LDR      R0,??DataTable13_48
        LDR      R2,[R0, #+0]
        LDR      R0,??DataTable13_32
        LDR      R1,[R0, #+0]
        LDR      R0,??DataTable13_49
        BL       BSP_Ser_Printf
        BL       Get_Run_Time
        ADR      R0,??DataTable13  ;; 0x0D, 0x0A, 0x00, 0x00
        BL       BSP_Ser_Printf
        LDR      R0,??DataTable13_50
        BL       BSP_Ser_Printf
        LDR      R0,??DataTable13_51
        LDR      R0,[R0, #+0]
        LDR      R2,[R0, #+12]
        LDR      R0,??DataTable13_51
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+12]
        LDR      R1,??DataTable13_51
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+16]
        SUBS     R1,R0,R1
        LDR      R0,??DataTable13_52
        BL       BSP_Ser_Printf
        LDR      R0,??DataTable13_53
        LDR      R1,[R0, #+0]
        LDR      R0,??DataTable13_54
        BL       BSP_Ser_Printf
        LDR      R0,??DataTable13_55
        LDR      R1,[R0, #+0]
        LDR      R0,??DataTable13_56
        BL       BSP_Ser_Printf
        LDR      R0,??DataTable13_57
        LDR      R0,[R0, #+0]
        LDRH     R1,[R0, #+8]
        LDR      R0,??DataTable13_58
        BL       BSP_Ser_Printf
        LDR      R0,??DataTable13_59
        LDR      R0,[R0, #+0]
        LDRH     R1,[R0, #+8]
        LDR      R0,??DataTable13_60
        BL       BSP_Ser_Printf
        LDR      R0,??DataTable13_61
        LDR      R0,[R0, #+0]
        LDRH     R1,[R0, #+8]
        LDR      R0,??DataTable13_62
        BL       BSP_Ser_Printf
        LDR      R0,??DataTable13_63
        LDR      R0,[R0, #+0]
        LDRH     R1,[R0, #+8]
        LDR      R0,??DataTable13_64
        BL       BSP_Ser_Printf
        LDR      R0,??DataTable13_65
        LDRB     R0,[R0, #+0]
        LDR      R1,??DataTable13_65
        LDRB     R3,[R1, #+1]
        LDR      R1,??DataTable13_65
        LDRB     R2,[R1, #+2]
        ANDS     R0,R0,#0xFF      ;; Zero extend
        STR      R0,[SP, #+0]
        ANDS     R3,R3,#0xFF      ;; Zero extend
        ANDS     R2,R2,#0xFF      ;; Zero extend
        LDR      R0,??DataTable13_65
        LDRB     R1,[R0, #+3]
        LDR      R0,??DataTable13_66
        BL       BSP_Ser_Printf
        LDR      R0,??DataTable13_67
        LDRB     R0,[R0, #+0]
        LDR      R1,??DataTable13_67
        LDRB     R3,[R1, #+1]
        LDR      R1,??DataTable13_67
        LDRB     R2,[R1, #+2]
        ANDS     R0,R0,#0xFF      ;; Zero extend
        STR      R0,[SP, #+0]
        ANDS     R3,R3,#0xFF      ;; Zero extend
        ANDS     R2,R2,#0xFF      ;; Zero extend
        LDR      R0,??DataTable13_67
        LDRB     R1,[R0, #+3]
        LDR      R0,??DataTable13_68
        BL       BSP_Ser_Printf
        LDR      R0,??DataTable13_69
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable13_69
        LDR      R3,[R1, #+4]
        LDR      R1,??DataTable13_69
        LDR      R2,[R1, #+8]
        STR      R0,[SP, #+0]
        LDR      R0,??DataTable13_69
        LDR      R1,[R0, #+12]
        LDR      R0,??DataTable13_70
        BL       BSP_Ser_Printf
        LDR      R2,[SP, #+8]
        LDR      R1,[SP, #+12]
        LDR      R0,??DataTable13_71
        BL       BSP_Ser_Printf
        LDR      R0,[SP, #+4]
        CMP      R0,#+85
        BNE      ??Head_Info_0
        ADR      R0,??DataTable13_1  ;; 0x4F, 0x4B, 0x00, 0x00
        B        ??Head_Info_1
??Head_Info_0:
        LDR      R0,??DataTable13_72
??Head_Info_1:
        LDR      R1,[SP, #+4]
        CMP      R1,#+85
        BNE      ??Head_Info_2
        ADD      R1,SP,#+20
        B        ??Head_Info_3
??Head_Info_2:
        LDR      R1,??DataTable13_73
??Head_Info_3:
        STR      R0,[SP, #+0]
        LDR      R3,[SP, #+4]
        LDR      R2,[SP, #+16]
        LDR      R0,??DataTable13_74
        BL       BSP_Ser_Printf
        LDR      R0,??DataTable13_75
        LDR      R0,[R0, #+0]
        STR      R0,[SP, #+0]
        LDR      R0,??DataTable13_76
        LDR      R3,[R0, #+0]
        LDR      R0,??DataTable13_77
        LDR      R2,[R0, #+0]
        LDR      R0,??DataTable13_78
        LDR      R1,[R0, #+0]
        LDR      R0,??DataTable13_79
        BL       BSP_Ser_Printf
        LDR      R0,??DataTable13_80
        LDR      R1,[R0, #+0]
        LDR      R0,??DataTable13_81
        BL       BSP_Ser_Printf
        ADR      R0,??DataTable13  ;; 0x0D, 0x0A, 0x00, 0x00
        BL       BSP_Ser_Printf
        BL       Get_Task_Info
        ADD      SP,SP,#+52       ;; stack cleaning
        POP      {R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13:
        DC8      0x0D, 0x0A, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_1:
        DC8      0x4F, 0x4B, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_2:
        DC32     Flag_Reset_Pin_Trigger

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_3:
        DC32     Debug_COM_Sel

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_4:
        DC32     0xfffc000c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_5:
        DC32     0xfffc0004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_6:
        DC32     0xfffc0020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_7:
        DC32     0xfffc0120

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_8:
        DC32     Bsp_Ser_Tx_Sem_lock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_9:
        DC32     0xfffc0014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_10:
        DC32     0xfffc001c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_11:
        DC32     Bsp_Ser_Rx_Sem_lock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_12:
        DC32     0xfffc0018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_13:
        DC32     ??buffer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_14:
        DC32     PinBuzzer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_15:
        DC32     os_stat_desp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_16:
        DC32     OSRunning

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_17:
        DC32     `?<Constant "---------------------...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_18:
        DC32     `?<Constant "|--------------------...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_19:
        DC32     `?<Constant "| ID  |    Name    | ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_20:
        DC32     OSTCBList

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_21:
        DC32     `?<Constant "|%2d ">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_22:
        DC32     `?<Constant "%13.13s">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_23:
        DC32     `?<Constant "      %2d ">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_24:
        DC32     `?<Constant "  %10d ">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_25:
        DC32     `?<Constant "   %s  ">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_26:
        DC32     `?<Constant " %5d ">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_27:
        DC32     `?<Constant " %22.22s ">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_28:
        DC32     `?<Constant " %08X ">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_29:
        DC32     `?<Constant " %4d ">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_30:
        DC32     `?<Constant " |\\r\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_31:
        DC32     `?<Constant "---------------------...">_1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_32:
        DC32     OSTime

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_33:
        DC32     `?<Constant "OS Running Time  =  %...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_34:
        DC32     `?<Constant "\\r\\n[%d:%02d:%02d.%03d] ">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_35:
        DC32     `?<Constant "\\r\\n\\r\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_36:
        DC32     `?<Constant "---------------------...">_2`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_37:
        DC32     `?<Constant "----                 ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_38:
        DC32     `?<Constant "----         iSAM Tes...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_39:
        DC32     fw_version

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_40:
        DC32     hw_model

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_41:
        DC32     `?<Constant "----   %20s-%s       ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_42:
        DC32     `?<Constant "13:31:07">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_43:
        DC32     `?<Constant "Dec 19 2014">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_44:
        DC32     `?<Constant "----   Compile date: ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_45:
        DC32     `?<Constant "Micrium uC/OS-II on t...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_46:
        DC32     OSCPUUsage

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_47:
        DC32     `?<Constant "CPU Usage = %d%%, CPU...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_48:
        DC32     OSCtxSwCtr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_49:
        DC32     `?<Constant "#Ticks = %8d, #CtxSw ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_50:
        DC32     `?<Constant "---------------------...">_3`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_51:
        DC32     pMEM_Part_MsgUART

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_52:
        DC32     `?<Constant "MEM_Part_MsgUART :   ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_53:
        DC32     Tx_ReSend_Happens

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_54:
        DC32     `?<Constant "Tx_ReSend_Happens:   ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_55:
        DC32     Tx_ReSend_Happens_Ruler

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_56:
        DC32     `?<Constant "Tx_ReSend_Happens_Rul...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_57:
        DC32     TWI_Sem_lock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_58:
        DC32     `?<Constant "TWI_Sem_lock:        ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_59:
        DC32     TWI_Sem_done

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_60:
        DC32     `?<Constant "TWI_Sem_done:        ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_61:
        DC32     UART_MUX_Sem_lock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_62:
        DC32     `?<Constant "UART_MUX_Sem_lock:   ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_63:
        DC32     Done_Sem_RulerUART

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_64:
        DC32     `?<Constant "Done_Sem_RulerUART:  ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_65:
        DC32     Global_Ruler_State

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_66:
        DC32     `?<Constant "Global_Ruler_State[3....">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_67:
        DC32     Global_Ruler_Type

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_68:
        DC32     `?<Constant "Global_Ruler_Type[3.....">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_69:
        DC32     Global_Mic_Mask

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_70:
        DC32     `?<Constant "Global_Mic_Mask[3..0]...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_71:
        DC32     `?<Constant "Flash Write Cycle:   ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_72:
        DC32     `?<Constant "Error">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_73:
        DC32     `?<Constant " -- ">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_74:
        DC32     `?<Constant "Ruler FW Bin File:   ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_75:
        DC32     test_counter4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_76:
        DC32     test_counter3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_77:
        DC32     test_counter2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_78:
        DC32     test_counter1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_79:
        DC32     `?<Constant "Test Counter:        ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_80:
        DC32     test_counter5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_81:
        DC32     `?<Constant "Test Counter:  UART_W...">`

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
//    94 bytes in section .bss
//    12 bytes in section .data
// 2 284 bytes in section .rodata
// 6 560 bytes in section .text
// 
// 6 560 bytes of CODE  memory
// 2 284 bytes of CONST memory
//   106 bytes of DATA  memory
//
//Errors: none
//Warnings: 4
