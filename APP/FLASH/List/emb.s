///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.10.3.6832/W32 for ARM       05/Sep/2014  09:57:03
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  arm
//    Endian       =  little
//    Source file  =  E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Noah\emb.c
//    Command line =  
//        "E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\Noah\emb.c" -lcN
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
//        E:\SVN Dir\PQ\iSAM Test Bench\Bridge_Host_OS\APP\FLASH\List\emb.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN memcpy
        EXTERN strlen

        PUBLIC emb_append_attr_binary
        PUBLIC emb_append_attr_double
        PUBLIC emb_append_attr_float
        PUBLIC emb_append_attr_sint
        PUBLIC emb_append_attr_string
        PUBLIC emb_append_attr_uint
        PUBLIC emb_append_element
        PUBLIC emb_append_end
        PUBLIC emb_attach
        PUBLIC emb_get_attr_binary
        PUBLIC emb_get_attr_double
        PUBLIC emb_get_attr_float
        PUBLIC emb_get_attr_int
        PUBLIC emb_get_attr_string
        PUBLIC emb_get_binary
        PUBLIC emb_get_double
        PUBLIC emb_get_first_node
        PUBLIC emb_get_float
        PUBLIC emb_get_id
        PUBLIC emb_get_int
        PUBLIC emb_get_next_node
        PUBLIC emb_get_node_replace
        PUBLIC emb_get_string
        PUBLIC emb_init_builder
        PUBLIC emb_validate


        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_attach:
        STR      R0,[R2, #+0]
        LDR      R3,[R2, #+0]
        ADDS     R3,R1,R3
        STR      R3,[R2, #+4]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_parse_uint:
        PUSH     {R4,LR}
        MOVS     R3,R0
        MOV      R0,#+0
        MOVS     R12,R0
        MOV      R0,#+0
        MOVS     LR,R0
??emb_parse_uint_0:
        CMP      R3,R1
        BCS      ??emb_parse_uint_1
        LDRB     R4,[R3, #+0]
        ADDS     R3,R3,#+1
        ANDS     R0,R4,#0x7F
        ADDS     R12,R12,R0, LSL LR
        TST      R4,#0x80
        BNE      ??emb_parse_uint_2
        STR      R12,[R2, #+0]
        MOVS     R0,R3
        B        ??emb_parse_uint_3
??emb_parse_uint_2:
        ADDS     LR,LR,#+7
        B        ??emb_parse_uint_0
??emb_parse_uint_1:
        MOV      R0,#+0
??emb_parse_uint_3:
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_parse_sint:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R2,R6
        MOVS     R1,R5
        MOVS     R0,R4
        BL       emb_parse_uint
        MOVS     R4,R0
        CMP      R4,#+0
        BEQ      ??emb_parse_sint_0
        LDRB     R0,[R6, #+0]
        ANDS     R1,R0,#0x1
        LDR      R0,[R6, #+0]
        ASRS     R0,R0,#+1
        BICS     R0,R0,#0x8
        STR      R0,[R6, #+0]
        CMP      R1,#+0
        BEQ      ??emb_parse_sint_1
        MVN      R0,#+0
        LDR      R2,[R6, #+0]
        SUBS     R0,R0,R2
        STR      R0,[R6, #+0]
??emb_parse_sint_1:
        MOVS     R0,R4
        B        ??emb_parse_sint_2
??emb_parse_sint_0:
        MOV      R0,#+0
??emb_parse_sint_2:
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_parse_string:
        MOVS     R3,R0
        MOVS     R12,R3
??emb_parse_string_0:
        CMP      R12,R1
        BCS      ??emb_parse_string_1
        MOVS     R0,R12
        ADDS     R12,R0,#+1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??emb_parse_string_0
        STR      R3,[R2, #+0]
        MOVS     R0,R12
        B        ??emb_parse_string_2
??emb_parse_string_1:
        MOV      R0,#+0
??emb_parse_string_2:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_parse_binary:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOVS     R2,R7
        MOVS     R1,R5
        MOVS     R0,R4
        BL       emb_parse_uint
        MOVS     R4,R0
        CMP      R4,#+0
        BEQ      ??emb_parse_binary_0
        STR      R4,[R6, #+0]
        LDR      R0,[R7, #+0]
        ADDS     R4,R0,R4
        CMP      R5,R4
        BCC      ??emb_parse_binary_0
        MOVS     R0,R4
        B        ??emb_parse_binary_1
??emb_parse_binary_0:
        MOV      R0,#+0
??emb_parse_binary_1:
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_parse_float:
        MOVS     R3,R0
        ADDS     R0,R3,#+4
        CMP      R0,R1
        BCC      ??emb_parse_float_0
        LDR      R0,[R3, #+0]
        STR      R0,[R2, #+0]
        ADDS     R0,R3,#+4
        B        ??emb_parse_float_1
??emb_parse_float_0:
        MOV      R0,#+0
??emb_parse_float_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_parse_double:
        PUSH     {R4,R5}
        MOVS     R3,R0
        ADDS     R0,R3,#+8
        CMP      R0,R1
        BCC      ??emb_parse_double_0
        LDM      R3,{R4,R5}
        STM      R2,{R4,R5}
        ADDS     R0,R3,#+8
        B        ??emb_parse_double_1
??emb_parse_double_0:
        MOV      R0,#+0
??emb_parse_double_1:
        POP      {R4,R5}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_parse_id_type:
        PUSH     {R4,LR}
        MOVS     R12,R0
        LDRB     R0,[R12, #+0]
        ANDS     R0,R0,#0x7
        STR      R0,[R2, #+0]
        LDRB     R0,[R12, #+0]
        ANDS     R0,R0,#0xFF      ;; Zero extend
        LSRS     R0,R0,#+4
        ANDS     R0,R0,#0xFF      ;; Zero extend
        STR      R0,[R3, #+0]
        MOVS     R0,R12
        ADDS     R12,R0,#+1
        LDRB     R0,[R0, #+0]
        TST      R0,#0x8
        BNE      ??emb_parse_id_type_0
        MOVS     R0,R12
        B        ??emb_parse_id_type_1
??emb_parse_id_type_0:
        MOV      R0,#+3
        MOVS     LR,R0
??emb_parse_id_type_2:
        CMP      R12,R1
        BCS      ??emb_parse_id_type_3
        LDR      R0,[R2, #+0]
        LDRB     R4,[R12, #+0]
        ANDS     R4,R4,#0x7F
        ADDS     R0,R0,R4, LSL LR
        STR      R0,[R2, #+0]
        MOVS     R0,R12
        ADDS     R12,R0,#+1
        LDRB     R0,[R0, #+0]
        TST      R0,#0x80
        BNE      ??emb_parse_id_type_4
        MOVS     R0,R12
        B        ??emb_parse_id_type_1
??emb_parse_id_type_4:
        ADDS     LR,LR,#+7
        B        ??emb_parse_id_type_2
??emb_parse_id_type_3:
        MOV      R0,#+0
??emb_parse_id_type_1:
        POP      {R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_skip_int:
        MOVS     R2,R0
??emb_skip_int_0:
        CMP      R2,R1
        BCS      ??emb_skip_int_1
        MOVS     R0,R2
        ADDS     R2,R0,#+1
        LDRB     R0,[R0, #+0]
        TST      R0,#0x80
        BNE      ??emb_skip_int_0
        MOVS     R0,R2
        B        ??emb_skip_int_2
??emb_skip_int_1:
        MOV      R0,#+0
??emb_skip_int_2:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_skip_header:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        LDR      R5,[R4, #+0]
        MOVS     R0,R5
        ADDS     R5,R0,#+1
        LDRB     R0,[R0, #+0]
        TST      R0,#0x8
        BNE      ??emb_skip_header_0
        MOVS     R0,R5
        B        ??emb_skip_header_1
??emb_skip_header_0:
        LDR      R1,[R4, #+4]
        MOVS     R0,R5
        BL       emb_skip_int
??emb_skip_header_1:
        POP      {R1,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_skip_fixed:
        MOVS     R3,R0
        ADDS     R3,R2,R3
        CMP      R1,R3
        BCC      ??emb_skip_fixed_0
        MOVS     R0,R3
        B        ??emb_skip_fixed_1
??emb_skip_fixed_0:
        MOV      R0,#+0
??emb_skip_fixed_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_skip_string:
        MOVS     R2,R0
??emb_skip_string_0:
        CMP      R2,R1
        BCS      ??emb_skip_string_1
        MOVS     R0,R2
        ADDS     R2,R0,#+1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??emb_skip_string_0
        MOVS     R0,R2
        B        ??emb_skip_string_2
??emb_skip_string_1:
        MOV      R0,#+0
??emb_skip_string_2:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_skip_binary:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,SP
        MOVS     R1,R5
        MOVS     R0,R4
        BL       emb_parse_uint
        MOVS     R4,R0
        CMP      R4,#+0
        BEQ      ??emb_skip_binary_0
        LDR      R0,[SP, #+0]
        ADDS     R4,R0,R4
        CMP      R5,R4
        BCC      ??emb_skip_binary_0
        MOVS     R0,R4
        B        ??emb_skip_binary_1
??emb_skip_binary_0:
        MOV      R0,#+0
??emb_skip_binary_1:
        POP      {R1,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_skip_element:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+12
        MOVS     R4,R0
        MOVS     R5,R1
??emb_skip_element_0:
        CMP      R4,R5
        BCS      ??emb_skip_element_1
        MOVS     R3,SP
        ADD      R2,SP,#+4
        MOVS     R1,R5
        MOVS     R0,R4
        BL       emb_parse_id_type
        MOVS     R4,R0
        CMP      R4,#+0
        BNE      ??emb_skip_element_2
        MOV      R0,#+0
        B        ??emb_skip_element_3
??emb_skip_element_2:
        LDR      R0,[SP, #+0]
        CMP      R0,#+15
        BNE      ??emb_skip_element_4
        MOVS     R0,R4
        B        ??emb_skip_element_3
??emb_skip_element_4:
        MOVS     R2,R5
        MOVS     R1,R4
        LDR      R0,[SP, #+0]
        BL       emb_skip_node
        MOVS     R4,R0
        CMP      R4,#+0
        BNE      ??emb_skip_element_0
        MOV      R0,#+0
        B        ??emb_skip_element_3
??emb_skip_element_1:
        MOV      R0,#+0
??emb_skip_element_3:
        POP      {R1-R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_skip_node:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R0,R4
        CMP      R0,#+6
        BHI      ??emb_skip_node_1
        LDRB     R1,[PC, R0]
        ADD      PC,PC,R1, LSL #+2
        DATA
??emb_skip_node_0:
        DC8      0x1,0x5,0x5,0x9
        DC8      0xE,0x13,0x17,0x0
        ARM
??emb_skip_node_2:
        MOVS     R1,R6
        MOVS     R0,R5
        BL       emb_skip_element
        B        ??emb_skip_node_3
??emb_skip_node_4:
        MOVS     R1,R6
        MOVS     R0,R5
        BL       emb_skip_int
        B        ??emb_skip_node_3
??emb_skip_node_5:
        MOV      R2,#+4
        MOVS     R1,R6
        MOVS     R0,R5
        BL       emb_skip_fixed
        B        ??emb_skip_node_3
??emb_skip_node_6:
        MOV      R2,#+8
        MOVS     R1,R6
        MOVS     R0,R5
        BL       emb_skip_fixed
        B        ??emb_skip_node_3
??emb_skip_node_7:
        MOVS     R1,R6
        MOVS     R0,R5
        BL       emb_skip_string
        B        ??emb_skip_node_3
??emb_skip_node_8:
        MOVS     R1,R6
        MOVS     R0,R5
        BL       emb_skip_binary
        B        ??emb_skip_node_3
??emb_skip_node_1:
        MOV      R0,#+0
??emb_skip_node_3:
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_get_node:
        PUSH     {R2-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R0,R4
        BL       emb_skip_header
        MOVS     R7,R0
        CMP      R7,#+0
        BNE      ??emb_get_node_0
        MVN      R0,#+0
        B        ??emb_get_node_1
??emb_get_node_0:
        LDR      R0,[R4, #+4]
        CMP      R7,R0
        BCS      ??emb_get_node_2
        MOVS     R3,SP
        ADD      R2,SP,#+4
        LDR      R1,[R4, #+4]
        MOVS     R0,R7
        BL       emb_parse_id_type
        MOVS     R8,R0
        CMP      R8,#+0
        BEQ      ??emb_get_node_3
        LDR      R0,[SP, #+0]
        CMP      R0,#+15
        BNE      ??emb_get_node_4
??emb_get_node_3:
        MVN      R0,#+0
        B        ??emb_get_node_1
??emb_get_node_4:
        LDR      R0,[SP, #+4]
        CMP      R0,R5
        BNE      ??emb_get_node_5
        STR      R7,[R6, #+0]
        LDR      R0,[R4, #+4]
        STR      R0,[R6, #+4]
        MOV      R0,#+0
        B        ??emb_get_node_1
??emb_get_node_5:
        LDR      R2,[R4, #+4]
        MOVS     R1,R8
        LDR      R0,[SP, #+0]
        BL       emb_skip_node
        MOVS     R7,R0
        CMP      R7,#+0
        BNE      ??emb_get_node_0
        MVN      R0,#+0
        B        ??emb_get_node_1
??emb_get_node_2:
        MVN      R0,#+0
??emb_get_node_1:
        POP      {R1,R2,R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_get_node_replace:
        PUSH     {R2-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R0,R4
        BL       emb_skip_header
        MOVS     R8,R0
        CMP      R8,#+0
        BNE      ??emb_get_node_replace_0
        MVN      R0,#+0
        B        ??emb_get_node_replace_1
??emb_get_node_replace_0:
        LDR      R0,[R4, #+4]
        CMP      R8,R0
        BCS      ??emb_get_node_replace_2
        MOVS     R3,SP
        ADD      R2,SP,#+4
        LDR      R1,[R4, #+4]
        MOVS     R0,R8
        BL       emb_parse_id_type
        MOVS     R7,R0
        CMP      R7,#+0
        BEQ      ??emb_get_node_replace_3
        LDR      R0,[SP, #+0]
        CMP      R0,#+15
        BNE      ??emb_get_node_replace_4
??emb_get_node_replace_3:
        MVN      R0,#+0
        B        ??emb_get_node_replace_1
??emb_get_node_replace_4:
        LDR      R0,[SP, #+4]
        CMP      R0,R5
        BNE      ??emb_get_node_replace_5
        STRB     R6,[R7, #+0]
        MOV      R0,#+0
        B        ??emb_get_node_replace_1
??emb_get_node_replace_5:
        LDR      R2,[R4, #+4]
        MOVS     R1,R7
        LDR      R0,[SP, #+0]
        BL       emb_skip_node
        MOVS     R8,R0
        CMP      R8,#+0
        BNE      ??emb_get_node_replace_0
        MVN      R0,#+0
        B        ??emb_get_node_replace_1
??emb_get_node_replace_2:
        MVN      R0,#+0
??emb_get_node_replace_1:
        POP      {R1,R2,R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_validate:
        MOVS     R1,R0
        MOV      R0,#+0
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_get_id:
        PUSH     {R2-R4,LR}
        MOVS     R4,R0
        ADD      R3,SP,#+4
        MOVS     R2,SP
        LDR      R1,[R4, #+4]
        LDR      R0,[R4, #+0]
        BL       emb_parse_id_type
        CMP      R0,#+0
        BNE      ??emb_get_id_0
        MVN      R0,#+0
        B        ??emb_get_id_1
??emb_get_id_0:
        LDR      R0,[SP, #+0]
??emb_get_id_1:
        POP      {R1,R2,R4,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_get_first_node:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R2,R6
        MOVS     R1,R5
        MOVS     R0,R4
        BL       emb_get_node
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_get_next_node:
        PUSH     {R4-R8,LR}
        SUB      SP,SP,#+16
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R3,SP
        ADD      R2,SP,#+8
        LDR      R1,[R5, #+4]
        LDR      R0,[R5, #+0]
        BL       emb_parse_id_type
        MOVS     R7,R0
        CMP      R7,#+0
        BNE      ??emb_get_next_node_0
        MVN      R0,#+0
        B        ??emb_get_next_node_1
??emb_get_next_node_0:
        LDR      R0,[R4, #+4]
        CMP      R7,R0
        BCS      ??emb_get_next_node_2
        LDR      R2,[R4, #+4]
        MOVS     R1,R7
        LDR      R0,[SP, #+0]
        BL       emb_skip_node
        MOVS     R8,R0
        CMP      R8,#+0
        BNE      ??emb_get_next_node_3
        MVN      R0,#+0
        B        ??emb_get_next_node_1
??emb_get_next_node_3:
        MOVS     R3,SP
        ADD      R2,SP,#+4
        LDR      R1,[R4, #+4]
        MOVS     R0,R8
        BL       emb_parse_id_type
        MOVS     R7,R0
        CMP      R7,#+0
        BEQ      ??emb_get_next_node_4
        LDR      R0,[SP, #+0]
        CMP      R0,#+15
        BNE      ??emb_get_next_node_5
??emb_get_next_node_4:
        MVN      R0,#+0
        B        ??emb_get_next_node_1
??emb_get_next_node_5:
        LDR      R0,[SP, #+8]
        LDR      R1,[SP, #+4]
        CMP      R0,R1
        BNE      ??emb_get_next_node_0
        STR      R8,[R6, #+0]
        LDR      R0,[R4, #+4]
        STR      R0,[R6, #+4]
        MOV      R0,#+0
        B        ??emb_get_next_node_1
??emb_get_next_node_2:
        MVN      R0,#+0
??emb_get_next_node_1:
        ADD      SP,SP,#+16       ;; stack cleaning
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_get_int:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+16
        MOVS     R4,R0
        MOVS     R5,R1
        ADD      R3,SP,#+4
        ADD      R2,SP,#+8
        LDR      R1,[R4, #+4]
        LDR      R0,[R4, #+0]
        BL       emb_parse_id_type
        MOVS     R6,R0
        LDR      R0,[SP, #+4]
        CMP      R0,#+1
        BEQ      ??emb_get_int_0
        CMP      R0,#+2
        BEQ      ??emb_get_int_1
        B        ??emb_get_int_2
??emb_get_int_0:
        MOVS     R2,SP
        LDR      R1,[R4, #+4]
        MOVS     R0,R6
        BL       emb_parse_uint
        MOVS     R6,R0
        B        ??emb_get_int_3
??emb_get_int_1:
        MOVS     R2,SP
        LDR      R1,[R4, #+4]
        MOVS     R0,R6
        BL       emb_parse_sint
        MOVS     R6,R0
        B        ??emb_get_int_3
??emb_get_int_2:
        MOVS     R0,R5
        B        ??emb_get_int_4
??emb_get_int_3:
        CMP      R6,#+0
        BEQ      ??emb_get_int_5
??emb_get_int_6:
        LDR      R5,[SP, #+0]
??emb_get_int_5:
        MOVS     R0,R5
??emb_get_int_4:
        ADD      SP,SP,#+16       ;; stack cleaning
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_get_float:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+16
        MOVS     R4,R0
        MOVS     R5,R1
        ADD      R3,SP,#+4
        ADD      R2,SP,#+8
        LDR      R1,[R4, #+4]
        LDR      R0,[R4, #+0]
        BL       emb_parse_id_type
        MOVS     R6,R0
        LDR      R0,[SP, #+4]
        CMP      R0,#+3
        BNE      ??emb_get_float_0
        MOVS     R2,SP
        LDR      R1,[R4, #+4]
        MOVS     R0,R6
        BL       emb_parse_float
        MOVS     R6,R0
        CMP      R6,#+0
        BNE      ??emb_get_float_1
        B        ??emb_get_float_2
??emb_get_float_0:
        MOVS     R0,R5
        B        ??emb_get_float_3
??emb_get_float_2:
        B        ??emb_get_float_4
??emb_get_float_1:
        LDR      R5,[SP, #+0]
??emb_get_float_4:
        MOVS     R0,R5
??emb_get_float_3:
        ADD      SP,SP,#+16       ;; stack cleaning
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_get_double:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+20
        MOVS     R6,R0
        MOV      R4,R2
        MOV      R5,R3
        MOVS     R3,SP
        ADD      R2,SP,#+4
        LDR      R1,[R6, #+4]
        LDR      R0,[R6, #+0]
        BL       emb_parse_id_type
        MOVS     R7,R0
        LDR      R0,[SP, #+0]
        CMP      R0,#+4
        BNE      ??emb_get_double_0
        ADD      R2,SP,#+8
        LDR      R1,[R6, #+4]
        MOVS     R0,R7
        BL       emb_parse_double
        MOVS     R7,R0
        CMP      R7,#+0
        BNE      ??emb_get_double_1
        B        ??emb_get_double_2
??emb_get_double_0:
        MOV      R0,R4
        MOV      R1,R5
        B        ??emb_get_double_3
??emb_get_double_2:
        MOV      R0,R4
        MOV      R1,R5
        B        ??emb_get_double_4
??emb_get_double_1:
        ADD      R2,SP,#+8
        LDM      R2,{R0,R1}
??emb_get_double_4:
??emb_get_double_3:
        ADD      SP,SP,#+20       ;; stack cleaning
        POP      {R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_get_string:
        PUSH     {R1-R5,LR}
        MOVS     R4,R0
        ADD      R3,SP,#+4
        ADD      R2,SP,#+8
        LDR      R1,[R4, #+4]
        LDR      R0,[R4, #+0]
        BL       emb_parse_id_type
        MOVS     R5,R0
        LDR      R0,[SP, #+4]
        CMP      R0,#+5
        BNE      ??emb_get_string_0
        MOVS     R2,SP
        LDR      R1,[R4, #+4]
        MOVS     R0,R5
        BL       emb_parse_string
        MOVS     R5,R0
        CMP      R5,#+0
        BNE      ??emb_get_string_1
        B        ??emb_get_string_2
??emb_get_string_0:
        MOV      R0,#+0
        B        ??emb_get_string_3
??emb_get_string_2:
        MOV      R0,#+0
        B        ??emb_get_string_4
??emb_get_string_1:
        LDR      R0,[SP, #+0]
??emb_get_string_4:
??emb_get_string_3:
        POP      {R1-R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_get_binary:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+16
        MOVS     R4,R0
        MOVS     R5,R1
        ADD      R3,SP,#+4
        ADD      R2,SP,#+8
        LDR      R1,[R4, #+4]
        LDR      R0,[R4, #+0]
        BL       emb_parse_id_type
        MOVS     R6,R0
        LDR      R0,[SP, #+4]
        CMP      R0,#+6
        BNE      ??emb_get_binary_0
        MOVS     R3,R5
        MOVS     R2,SP
        LDR      R1,[R4, #+4]
        MOVS     R0,R6
        BL       emb_parse_binary
        MOVS     R6,R0
        CMP      R6,#+0
        BNE      ??emb_get_binary_1
        B        ??emb_get_binary_2
??emb_get_binary_0:
        MOV      R0,#+0
        B        ??emb_get_binary_3
??emb_get_binary_2:
        MOV      R0,#+0
        B        ??emb_get_binary_4
??emb_get_binary_1:
        LDR      R0,[SP, #+0]
??emb_get_binary_4:
??emb_get_binary_3:
        ADD      SP,SP,#+16       ;; stack cleaning
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_get_attr_int:
        PUSH     {R2-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R2,SP
        MOVS     R1,R5
        MOVS     R0,R4
        BL       emb_get_node
        CMP      R0,#+0
        BPL      ??emb_get_attr_int_0
        MOVS     R0,R6
        B        ??emb_get_attr_int_1
??emb_get_attr_int_0:
        MOVS     R1,R6
        MOVS     R0,SP
        BL       emb_get_int
??emb_get_attr_int_1:
        POP      {R1,R2,R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_get_attr_float:
        PUSH     {R2-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R2,SP
        MOVS     R1,R5
        MOVS     R0,R4
        BL       emb_get_node
        CMP      R0,#+0
        BPL      ??emb_get_attr_float_0
        MOVS     R0,R6
        B        ??emb_get_attr_float_1
??emb_get_attr_float_0:
        MOVS     R1,R6
        MOVS     R0,SP
        BL       emb_get_float
??emb_get_attr_float_1:
        POP      {R1,R2,R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_get_attr_double:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+12
        MOVS     R6,R0
        MOVS     R7,R1
        MOV      R4,R2
        MOV      R5,R3
        MOVS     R2,SP
        MOVS     R1,R7
        MOVS     R0,R6
        BL       emb_get_node
        CMP      R0,#+0
        BPL      ??emb_get_attr_double_0
        MOV      R0,R4
        MOV      R1,R5
        B        ??emb_get_attr_double_1
??emb_get_attr_double_0:
        MOV      R2,R4
        MOV      R3,R5
        MOVS     R0,SP
        BL       emb_get_double
??emb_get_attr_double_1:
        ADD      SP,SP,#+12       ;; stack cleaning
        POP      {R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_get_attr_string:
        PUSH     {R2-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,SP
        MOVS     R1,R5
        MOVS     R0,R4
        BL       emb_get_node
        MOVS     R6,R0
        CMP      R6,#+0
        BPL      ??emb_get_attr_string_0
        MOV      R0,#+0
        B        ??emb_get_attr_string_1
??emb_get_attr_string_0:
        MOVS     R0,SP
        BL       emb_get_string
??emb_get_attr_string_1:
        POP      {R1,R2,R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_get_attr_binary:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+12
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R2,SP
        MOVS     R1,R5
        MOVS     R0,R4
        BL       emb_get_node
        MOVS     R7,R0
        CMP      R7,#+0
        BPL      ??emb_get_attr_binary_0
        MOV      R0,#+0
        B        ??emb_get_attr_binary_1
??emb_get_attr_binary_0:
        MOVS     R1,R6
        MOVS     R0,SP
        BL       emb_get_binary
??emb_get_attr_binary_1:
        POP      {R1-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_encode_uint:
        MOVS     R3,R0
        MOV      R12,#+1
??emb_encode_uint_0:
        CMP      R3,R1
        BCS      ??emb_encode_uint_1
        MOVS     R0,R2
        ANDS     R0,R0,#0x7F
        STRB     R0,[R3, #+0]
        LSRS     R2,R2,#+7
        CMP      R2,#+0
        BEQ      ??emb_encode_uint_2
        LDRB     R0,[R3, #+0]
        ORRS     R0,R0,#0x80
        STRB     R0,[R3, #+0]
        ADDS     R12,R12,#+1
        ADDS     R3,R3,#+1
        B        ??emb_encode_uint_0
??emb_encode_uint_2:
        MOVS     R0,R12
        B        ??emb_encode_uint_3
??emb_encode_uint_1:
        MVN      R0,#+0
??emb_encode_uint_3:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_encode_header:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R8,R2
        MOVS     R6,R3
        MOV      R7,#+1
        ANDS     R0,R8,#0x7
        ADDS     R0,R0,R6, LSL #+4
        STRB     R0,[R4, #+0]
        ASRS     R8,R8,#+3
        CMP      R8,#+1
        BLT      ??emb_encode_header_0
        LDRB     R0,[R4, #+0]
        ORRS     R0,R0,#0x8
        STRB     R0,[R4, #+0]
        MOVS     R2,R8
        MOVS     R1,R5
        ADDS     R0,R4,#+1
        BL       emb_encode_uint
        MOVS     R7,R0
        CMP      R7,#+0
        BPL      ??emb_encode_header_1
        B        ??emb_encode_header_2
??emb_encode_header_0:
        MOV      R0,#+1
        B        ??emb_encode_header_3
??emb_encode_header_2:
        MVN      R0,#+0
        B        ??emb_encode_header_3
??emb_encode_header_1:
        ADDS     R0,R7,#+1
??emb_encode_header_3:
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_encode_sint:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        ASRS     R0,R6,#+31
        EORS     R7,R0,R6, LSL #+1
        MOVS     R2,R7
        MOVS     R1,R5
        MOVS     R0,R4
        BL       emb_encode_uint
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_encode_fixed:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        ADDS     R0,R7,R4
        CMP      R5,R0
        BCC      ??emb_encode_fixed_0
        MOVS     R2,R7
        MOVS     R1,R6
        MOVS     R0,R4
        BL       memcpy
        MOVS     R0,R7
        B        ??emb_encode_fixed_1
??emb_encode_fixed_0:
        MVN      R0,#+0
??emb_encode_fixed_1:
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_encode_float:
        PUSH     {R2,R4,R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R3,#+4
        MOVS     R2,SP
        MOVS     R1,R5
        MOVS     R0,R4
        BL       emb_encode_fixed
        POP      {R1,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_encode_double:
        PUSH     {R3-R5,LR}
        PUSH     {R2,R3}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R3,#+8
        MOVS     R2,SP
        MOVS     R1,R5
        MOVS     R0,R4
        BL       emb_encode_fixed
        POP      {R1-R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_encode_string:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R0,R6
        BL       strlen
        ADDS     R3,R0,#+1
        MOVS     R2,R6
        MOVS     R1,R5
        MOVS     R0,R4
        BL       emb_encode_fixed
        POP      {R4-R6,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_encode_binary:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOVS     R2,R7
        MOVS     R1,R5
        MOVS     R0,R4
        BL       emb_encode_uint
        MOVS     R8,R0
        CMP      R8,#+1
        BLT      ??emb_encode_binary_0
        MOVS     R3,R7
        MOVS     R2,R6
        MOVS     R1,R5
        ADDS     R0,R8,R4
        BL       emb_encode_fixed
        CMP      R0,#+0
        BMI      ??emb_encode_binary_0
        ADDS     R0,R7,R8
        B        ??emb_encode_binary_1
??emb_encode_binary_0:
        MVN      R0,#+0
??emb_encode_binary_1:
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_init_builder:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        STR      R4,[R7, #+0]
        LDR      R0,[R7, #+0]
        ADDS     R0,R5,R0
        STR      R0,[R7, #+4]
        MOV      R3,#+0
        MOVS     R2,R6
        LDR      R1,[R7, #+4]
        LDR      R0,[R7, #+0]
        BL       emb_encode_header
        POP      {R1,R4-R7,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_append_attr_uint:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDR      R0,[R4, #+0]
        ADDS     R8,R5,R0
        MOV      R3,#+1
        MOVS     R2,R6
        LDR      R1,[R4, #+4]
        MOVS     R0,R8
        BL       emb_encode_header
        CMP      R0,#+1
        BLT      ??emb_append_attr_uint_0
        ADDS     R5,R0,R5
        MOVS     R2,R7
        LDR      R1,[R4, #+4]
        ADDS     R0,R0,R8
        BL       emb_encode_uint
        CMP      R0,#+1
        BLT      ??emb_append_attr_uint_0
        ADDS     R0,R5,R0
        B        ??emb_append_attr_uint_1
??emb_append_attr_uint_0:
        MVN      R0,#+0
??emb_append_attr_uint_1:
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_append_attr_sint:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDR      R0,[R4, #+0]
        ADDS     R8,R5,R0
        MOV      R3,#+2
        MOVS     R2,R6
        LDR      R1,[R4, #+4]
        MOVS     R0,R8
        BL       emb_encode_header
        CMP      R0,#+1
        BLT      ??emb_append_attr_sint_0
        ADDS     R5,R0,R5
        MOVS     R2,R7
        LDR      R1,[R4, #+4]
        ADDS     R0,R0,R8
        BL       emb_encode_sint
        CMP      R0,#+1
        BLT      ??emb_append_attr_sint_0
        ADDS     R0,R5,R0
        B        ??emb_append_attr_sint_1
??emb_append_attr_sint_0:
        MVN      R0,#+0
??emb_append_attr_sint_1:
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_append_attr_float:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDR      R0,[R4, #+0]
        ADDS     R8,R5,R0
        MOV      R3,#+3
        MOVS     R2,R6
        LDR      R1,[R4, #+4]
        MOVS     R0,R8
        BL       emb_encode_header
        CMP      R0,#+1
        BLT      ??emb_append_attr_float_0
        ADDS     R5,R0,R5
        MOVS     R2,R7
        LDR      R1,[R4, #+4]
        ADDS     R0,R0,R8
        BL       emb_encode_float
        CMP      R0,#+1
        BLT      ??emb_append_attr_float_0
        ADDS     R0,R5,R0
        B        ??emb_append_attr_float_1
??emb_append_attr_float_0:
        MVN      R0,#+0
??emb_append_attr_float_1:
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_append_attr_double:
        PUSH     {R3-R9,LR}
        MOVS     R6,R0
        MOVS     R7,R1
        MOVS     R8,R2
        ADD      R0,SP,#+32
        LDM      R0,{R4,R5}
        LDR      R0,[R6, #+0]
        ADDS     R9,R7,R0
        MOV      R3,#+4
        MOVS     R2,R8
        LDR      R1,[R6, #+4]
        MOVS     R0,R9
        BL       emb_encode_header
        CMP      R0,#+1
        BLT      ??emb_append_attr_double_0
        ADDS     R7,R0,R7
        MOV      R2,R4
        MOV      R3,R5
        LDR      R1,[R6, #+4]
        ADDS     R0,R0,R9
        BL       emb_encode_double
        CMP      R0,#+1
        BLT      ??emb_append_attr_double_0
        ADDS     R0,R7,R0
        B        ??emb_append_attr_double_1
??emb_append_attr_double_0:
        MVN      R0,#+0
??emb_append_attr_double_1:
        POP      {R1,R4-R9,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_append_attr_string:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDR      R0,[R4, #+0]
        ADDS     R8,R5,R0
        MOV      R3,#+5
        MOVS     R2,R6
        LDR      R1,[R4, #+4]
        MOVS     R0,R8
        BL       emb_encode_header
        CMP      R0,#+1
        BLT      ??emb_append_attr_string_0
        ADDS     R5,R0,R5
        MOVS     R2,R7
        LDR      R1,[R4, #+4]
        ADDS     R0,R0,R8
        BL       emb_encode_string
        CMP      R0,#+1
        BLT      ??emb_append_attr_string_0
        ADDS     R0,R5,R0
        B        ??emb_append_attr_string_1
??emb_append_attr_string_0:
        MVN      R0,#+0
??emb_append_attr_string_1:
        POP      {R4-R8,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_append_attr_binary:
        PUSH     {R4-R10,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDR      R8,[SP, #+32]
        LDR      R0,[R4, #+0]
        ADDS     R9,R5,R0
        MOV      R3,#+6
        MOVS     R2,R6
        LDR      R1,[R4, #+4]
        MOVS     R0,R9
        BL       emb_encode_header
        MOVS     R10,R0
        CMP      R10,#+1
        BLT      ??emb_append_attr_binary_0
        ADDS     R5,R10,R5
        MOVS     R3,R8
        MOVS     R2,R7
        LDR      R1,[R4, #+4]
        ADDS     R0,R10,R9
        BL       emb_encode_binary
        MOVS     R10,R0
        CMP      R10,#+1
        BLT      ??emb_append_attr_binary_0
        ADDS     R0,R5,R10
        B        ??emb_append_attr_binary_1
??emb_append_attr_binary_0:
        MVN      R0,#+0
??emb_append_attr_binary_1:
        POP      {R4-R10,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_append_end:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R3,#+15
        MOV      R2,#+0
        LDR      R1,[R4, #+4]
        LDR      R0,[R4, #+0]
        ADDS     R0,R5,R0
        BL       emb_encode_header
        CMP      R0,#+1
        BLT      ??emb_append_end_0
        ADDS     R0,R0,R5
        B        ??emb_append_end_1
??emb_append_end_0:
        MVN      R0,#+0
??emb_append_end_1:
        POP      {R1,R4,R5,LR}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        ARM
emb_append_element:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R3,#+0
        MOVS     R2,R6
        LDR      R1,[R4, #+4]
        LDR      R0,[R4, #+0]
        ADDS     R0,R5,R0
        BL       emb_encode_header
        CMP      R0,#+1
        BLT      ??emb_append_element_0
        ADDS     R0,R0,R5
        B        ??emb_append_element_1
??emb_append_element_0:
        MVN      R0,#+0
??emb_append_element_1:
        POP      {R4-R6,LR}
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
// 4 224 bytes in section .text
// 
// 4 224 bytes of CODE memory
//
//Errors: none
//Warnings: none
