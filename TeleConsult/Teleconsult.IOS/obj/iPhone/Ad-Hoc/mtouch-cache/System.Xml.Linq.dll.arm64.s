.subsections_via_symbols
.section __DWARF, __debug_abbrev,regular,debug

	.byte 1,17,1,37,8,3,8,27,8,19,11,17,1,18,1,16,6,0,0,2,46,1,3,8,135,64,8,58,15,59,15,17
	.byte 1,18,1,64,10,0,0,3,5,0,3,8,73,19,2,10,0,0,15,5,0,3,8,73,19,2,6,0,0,4,36,0
	.byte 11,11,62,11,3,8,0,0,5,2,1,3,8,11,15,0,0,17,2,0,3,8,11,15,0,0,6,13,0,3,8,73
	.byte 19,56,10,0,0,7,22,0,3,8,73,19,0,0,8,4,1,3,8,11,15,73,19,0,0,9,40,0,3,8,28,13
	.byte 0,0,10,57,1,3,8,0,0,11,52,0,3,8,73,19,2,10,0,0,12,52,0,3,8,73,19,2,6,0,0,13
	.byte 15,0,73,19,0,0,14,16,0,73,19,0,0,16,28,0,73,19,56,10,0,0,18,46,0,3,8,17,1,18,1,0
	.byte 0,0
.section __DWARF, __debug_info,regular,debug
Ldebug_info_start:

LDIFF_SYM0=Ldebug_info_end - Ldebug_info_begin
	.long LDIFF_SYM0
Ldebug_info_begin:

	.short 2
	.long 0
	.byte 8,1
	.asciz "Mono AOT Compiler 4.0.2 (mono-4.0.0-branch-c5sr2-xi/7aa9041 Tue Jun 30 15:13:46 EDT 2015)"
	.asciz "System.Xml.Linq.dll"
	.asciz ""

	.byte 2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
LDIFF_SYM1=Ldebug_line_start - Ldebug_line_section_start
	.long LDIFF_SYM1
LDIE_I1:

	.byte 4,1,5
	.asciz "sbyte"
LDIE_U1:

	.byte 4,1,7
	.asciz "byte"
LDIE_I2:

	.byte 4,2,5
	.asciz "short"
LDIE_U2:

	.byte 4,2,7
	.asciz "ushort"
LDIE_I4:

	.byte 4,4,5
	.asciz "int"
LDIE_U4:

	.byte 4,4,7
	.asciz "uint"
LDIE_I8:

	.byte 4,8,5
	.asciz "long"
LDIE_U8:

	.byte 4,8,7
	.asciz "ulong"
LDIE_I:

	.byte 4,8,5
	.asciz "intptr"
LDIE_U:

	.byte 4,8,7
	.asciz "uintptr"
LDIE_R4:

	.byte 4,4,4
	.asciz "float"
LDIE_R8:

	.byte 4,8,4
	.asciz "double"
LDIE_BOOLEAN:

	.byte 4,1,2
	.asciz "boolean"
LDIE_CHAR:

	.byte 4,2,8
	.asciz "char"
LDIE_STRING:

	.byte 4,8,1
	.asciz "string"
LDIE_OBJECT:

	.byte 4,8,1
	.asciz "object"
LDIE_SZARRAY:

	.byte 4,8,1
	.asciz "object"
.section __DWARF, __debug_loc,regular,debug
Ldebug_loc_start:
.section __DWARF, __debug_frame,regular,debug
	.align 3

LDIFF_SYM2=Lcie0_end - Lcie0_start
	.long LDIFF_SYM2
Lcie0_start:

	.long -1
	.byte 3
	.asciz ""

	.byte 1,120,30
	.align 3
Lcie0_end:
.text
	.align 3
methods:
jit_code_start:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XAttribute__ctor_System_Xml_Linq_XAttribute
System_Xml_Linq_XAttribute__ctor_System_Xml_Linq_XAttribute:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xb4000400
.word 0xf9400fa0
.word 0xf9401c01
.word 0xf9001f21
.word 0x9100e322
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xf9402000
.word 0xf9002320
.word 0x91010321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2800021
bl _p_1
.word 0xaa0003e1
.word 0xd28068e0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2

Lme_0:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XAttribute__ctor_System_Xml_Linq_XName_object
System_Xml_Linq_XAttribute__ctor_System_Xml_Linq_XName_object:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400fa0
.word 0xd2800001
bl System_Xml_Linq_XName_op_Equality_System_Xml_Linq_XName_System_Xml_Linq_XName
.word 0x53001c00
.word 0x35000280
.word 0xf9400fa1
.word 0xf9400ba0
.word 0xf9001c01
.word 0x9100e002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xf94013a1
bl System_Xml_Linq_XAttribute_SetValue_object
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd28001a1
bl _p_1
.word 0xaa0003e1
.word 0xd28068e0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2

Lme_1:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XAttribute_get_IsNamespaceDeclaration
System_Xml_Linq_XAttribute_get_IsNamespaceDeclaration:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf9401f40
.word 0xaa0003e1
.word 0xf940003e
.word 0xf9400c00
.word 0xf90013a0
bl _p_3
.word 0xaa0003e1
.word 0xf94013a0
bl _p_4
.word 0x53001c00
.word 0x35000300
.word 0xf9401f40
.word 0xaa0003e1
.word 0xf940003e
.word 0xf9400800

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #32]
bl _p_5
.word 0x53001c00
.word 0x34000180
.word 0xf9401f40
.word 0xaa0003e1
.word 0xf940003e
.word 0xf9400c00
.word 0xf90013a0
bl _p_6
.word 0xaa0003e1
.word 0xf94013a0
bl _p_4
.word 0x53001c1a
.word 0x14000002
.word 0xd280001a
.word 0x14000002
.word 0xd280003a
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_2:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XAttribute_get_Name
System_Xml_Linq_XAttribute_get_Name:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9401c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XAttribute_get_NextAttribute
System_Xml_Linq_XAttribute_get_NextAttribute:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9402400
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XAttribute_set_NextAttribute_System_Xml_Linq_XAttribute
System_Xml_Linq_XAttribute_set_NextAttribute_System_Xml_Linq_XAttribute:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9002420
.word 0x91012021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_5:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XAttribute_get_NodeType
System_Xml_Linq_XAttribute_get_NodeType:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2800040
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_6:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XAttribute_set_PreviousAttribute_System_Xml_Linq_XAttribute
System_Xml_Linq_XAttribute_set_PreviousAttribute_System_Xml_Linq_XAttribute:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9002820
.word 0x91014021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_7:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XAttribute_get_Value
System_Xml_Linq_XAttribute_get_Value:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9402000
bl _p_7
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_8:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XAttribute_set_Value_string
System_Xml_Linq_XAttribute_set_Value_string:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl System_Xml_Linq_XAttribute_SetValue_object
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_9:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XAttribute_Remove
System_Xml_Linq_XAttribute_Remove:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003fa
.word 0xf9400b59
.word 0xaa1903f8
.word 0xeb1f033f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #40]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb4001298
.word 0xf9400b59
.word 0xaa1903e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf940005e
bl _p_8
.word 0xf9402740
.word 0xb40001e0
.word 0xf9402741
.word 0xf9402b40
.word 0xf9002820
.word 0x91014021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9402b40
.word 0xb40001e0
.word 0xf9402b41
.word 0xf9402740
.word 0xf9002420
.word 0x91012021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9400b58
.word 0xaa1803f7
.word 0xeb1f031f
.word 0x54000160
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #40]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800017
.word 0xf94002fe
.word 0xf94032e0
.word 0xeb1a001f
.word 0x540003a1
.word 0xf9400b58
.word 0xaa1803f7
.word 0xeb1f031f
.word 0x54000160
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #40]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800017
.word 0xf9402740
.word 0xf94002fe
.word 0xf90032e0
.word 0x910182e1
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9400b58
.word 0xaa1803f7
.word 0xeb1f031f
.word 0x54000160
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #40]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800017
.word 0xf94002fe
.word 0xf94036e0
.word 0xeb1a001f
.word 0x540003a1
.word 0xf9400b58
.word 0xaa1803f7
.word 0xeb1f031f
.word 0x54000160
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #40]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800017
.word 0xf9402b40
.word 0xf94002fe
.word 0xf90036e0
.word 0x9101a2e1
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xd2800000
.word 0xf9000b5f
.word 0x91004341
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xf940033e
bl _p_9
.word 0xf900275f
.word 0xf9002b5f
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_a:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XAttribute_SetValue_object
System_Xml_Linq_XAttribute_SetValue_object:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xb4000320
.word 0xaa1903e0
.word 0xaa1903e1
bl _p_10
.word 0xf9400fa0
bl _p_7
.word 0xf9002320
.word 0x91010321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xaa1903e0
.word 0xaa1903e1
bl _p_11
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2800461
bl _p_1
.word 0xaa0003e1
.word 0xd28068e0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2

Lme_b:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XAttribute_GetPrefixOfNamespace_System_Xml_Linq_XNamespace
System_Xml_Linq_XAttribute_GetPrefixOfNamespace_System_Xml_Linq_XNamespace:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0xf940035e
bl _p_12
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0xb9801000
.word 0x350000c0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xf9400000
.word 0x1400001e
bl _p_13
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf940003e
bl _p_12
.word 0xaa0003e1
.word 0xaa1a03e0
bl _p_5
.word 0x53001c00
.word 0x340000a0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #56]
.word 0x14000010
bl _p_3
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf940003e
bl _p_12
.word 0xaa0003e1
.word 0xaa1a03e0
bl _p_5
.word 0x53001c00
.word 0x340000a0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #32]
.word 0x14000002
.word 0xd2800000
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_c:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XAttribute_ToString
System_Xml_Linq_XAttribute_ToString:
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003fa
.word 0xf90013bf
.word 0xf90017bf
bl _p_14

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #64]
.word 0xf9400000
.word 0xf90037a0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #72]
bl _p_15
.word 0xf94037a1
.word 0xf90033a0
bl _p_16
.word 0xf94033a0
.word 0xf90013a0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #80]
bl _p_15
.word 0xf90033a0
bl _p_17
.word 0xf94033a0
.word 0xaa0003f9
.word 0xaa1903e0
.word 0xf940001e
.word 0xd280003e
.word 0xb9002f3e
.word 0xf94013a0
.word 0xaa1903e1
bl _p_18
.word 0xf90017a0
.word 0xf94017a0
.word 0xf9003fa0
.word 0xf9401f40
.word 0xaa0003e1
.word 0xf940003e
.word 0xf9400c00
bl _p_19
.word 0xf90033a0
.word 0xf9401f40
.word 0xaa0003e1
.word 0xf940003e
.word 0xf9400800
.word 0xf90037a0
.word 0xf9401f41
.word 0xaa0103e0
.word 0xf940003e
bl System_Xml_Linq_XName_get_NamespaceName
.word 0xf9003ba0
.word 0xaa1a03e0
bl System_Xml_Linq_XAttribute_get_Value
.word 0xaa0003e4
.word 0xf94033a1
.word 0xf94037a2
.word 0xf9403ba3
.word 0xf9403fa5
.word 0xaa0503e0
.word 0xf94000be
bl _p_20
.word 0x94000002
.word 0x14000010
.word 0xf90027be
.word 0xf94017a0
.word 0xb4000160
.word 0xf94017a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94027be
.word 0xd61f03c0
.word 0xf94013a1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9401c30
.word 0xd63f0200
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf940003e
bl _p_21
.word 0xaa0003fa
.word 0x94000002
.word 0x14000010
.word 0xf9002bbe
.word 0xf94013a0
.word 0xb4000160
.word 0xf94013a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9402bbe
.word 0xd61f03c0
.word 0xaa1a03e0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_d:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XAttribute__cctor
System_Xml_Linq_XAttribute__cctor:
.word 0xa9be7bfd
.word 0x910003fd

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #96]
.word 0xd2800001
bl _p_22
.word 0xaa0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #104]
.word 0xf9000001

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #112]
.word 0xd28000e1
bl _p_22
.word 0xf9000ba0
.word 0x91008000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #120]
.word 0xd28001c2
bl _p_23
.word 0xf9400ba1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #128]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_e:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XCData__ctor_string
System_Xml_Linq_XCData__ctor_string:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9002420
.word 0x91012021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_f:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XCData__ctor_System_Xml_Linq_XCData
System_Xml_Linq_XCData__ctor_System_Xml_Linq_XCData:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9402400
.word 0xf9400ba1
.word 0xf9002420
.word 0x91012021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_10:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XCData_get_NodeType
System_Xml_Linq_XCData_get_NodeType:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2800080
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_11:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XCData_WriteTo_System_Xml_XmlWriter
System_Xml_Linq_XCData_WriteTo_System_Xml_XmlWriter:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0x1400003e
.word 0xf9402721
.word 0x93407ec0
.word 0xb9801022
.word 0xeb00005f
.word 0x10000011
.word 0x54000bc9
.word 0xd37ff800
.word 0x8b010000
.word 0x79402800
.word 0xd2800bbe
.word 0x6b1e001f
.word 0x54000621
.word 0xf9402721
.word 0x110006c0
.word 0x93407c00
.word 0xb9801022
.word 0xeb00005f
.word 0x10000011
.word 0x54000a29
.word 0xd37ff800
.word 0x8b010000
.word 0x79402800
.word 0xd2800bbe
.word 0x6b1e001f
.word 0x54000481
.word 0xf9402721
.word 0x11000ac0
.word 0x93407c00
.word 0xb9801022
.word 0xeb00005f
.word 0x10000011
.word 0x54000889
.word 0xd37ff800
.word 0x8b010000
.word 0x79402800
.word 0xd28007de
.word 0x6b1e001f
.word 0x540002e1
.word 0xb5000137

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #136]
bl _p_15
.word 0xf90023a0
bl _p_24
.word 0xf94023a0
.word 0xaa0003f7
.word 0xf9402721
.word 0x4b1802c3
.word 0xaa1703e0
.word 0xaa1803e2
.word 0xf94002fe
bl _p_25

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #144]
.word 0xaa1703e0
.word 0xf94002fe
bl _p_26
.word 0x11000ed8
.word 0x110006d6
.word 0xf9402720
.word 0xb9801000
.word 0x51000800
.word 0x6b0002df
.word 0x54fff7eb
.word 0x340001b8
.word 0xf9402720
.word 0xb9801000
.word 0x6b00031f
.word 0x54000120
.word 0xf9402721
.word 0xf9402720
.word 0xb9801000
.word 0x4b180003
.word 0xaa1703e0
.word 0xaa1803e2
.word 0xf94002fe
bl _p_25
.word 0xaa1a03f8
.word 0xb5000077
.word 0xf940273a
.word 0x14000006
.word 0xaa1703e0
.word 0xf94002e1
.word 0xf9401c30
.word 0xd63f0200
.word 0xaa0003fa
.word 0xaa1803e0
.word 0xaa1a03e1
.word 0xf9400302
.word 0xf9407050
.word 0xd63f0200
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xd2807140
.word 0xaa1103e1
bl _p_27

Lme_12:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XComment__ctor_string
System_Xml_Linq_XComment__ctor_string:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9002420
.word 0x91012021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_13:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XComment__ctor_System_Xml_Linq_XComment
System_Xml_Linq_XComment__ctor_System_Xml_Linq_XComment:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9402400
.word 0xf9400ba1
.word 0xf9002420
.word 0x91012021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_14:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XComment_get_NodeType
System_Xml_Linq_XComment_get_NodeType:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2800100
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_15:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XComment_get_Value
System_Xml_Linq_XComment_get_Value:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9402400
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_16:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XComment_set_Value_string
System_Xml_Linq_XComment_set_Value_string:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9002420
.word 0x91012021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_17:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XComment_WriteTo_System_Xml_XmlWriter
System_Xml_Linq_XComment_WriteTo_System_Xml_XmlWriter:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xaa0003f9
.word 0xf90013a1
.word 0xf9402723

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #152]

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #160]
.word 0xaa0303e0
.word 0xf940007e
bl _p_28
.word 0xaa0003f9
.word 0xaa1903e0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #168]
bl _p_29
.word 0x53003c00
.word 0xd28005be
.word 0x6b1e001f
.word 0x540001a1
.word 0xb9801320
.word 0x51000402
.word 0xaa1903e0
.word 0xd2800001
.word 0xf940033e
bl _p_30

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #176]
bl _p_31
.word 0xaa0003f8
.word 0x14000002
.word 0xaa1903f8
.word 0xaa1803f9
.word 0xf94013a0
.word 0xaa1803e1
.word 0xf94013a2
.word 0xf9400042
.word 0xf9406c50
.word 0xd63f0200
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_18:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__ctor
System_Xml_Linq_XContainer__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_19:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer_get_FirstNode
System_Xml_Linq_XContainer_get_FirstNode:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9402400
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_1a:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer_set_FirstNode_System_Xml_Linq_XNode
System_Xml_Linq_XContainer_set_FirstNode_System_Xml_Linq_XNode:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9002420
.word 0x91012021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_1b:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer_get_LastNode
System_Xml_Linq_XContainer_get_LastNode:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9402800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_1c:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer_set_LastNode_System_Xml_Linq_XNode
System_Xml_Linq_XContainer_set_LastNode_System_Xml_Linq_XNode:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9002820
.word 0x91014021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_1d:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer_CheckChildType_object_bool
System_Xml_Linq_XContainer_CheckChildType_object_bool:
.word 0xa9b67bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa
.word 0xf90023bf
.word 0xf90027bf
.word 0xb4001959
.word 0xaa1903f7
.word 0xaa1903f6
.word 0xeb1f033f
.word 0x54000160
.word 0xf94002e0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #184]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800016
.word 0xb5001776
.word 0xaa1903f7
.word 0xaa1903f6
.word 0xeb1f033f
.word 0x54000160
.word 0xf94002e0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #192]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800016
.word 0xb5001596
.word 0xaa1903f7
.word 0xaa1903f6
.word 0xb40002b9
.word 0xf94002d5
.word 0x794052a0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #200]
.word 0xeb01001f
.word 0x540001c3
.word 0xf94012a0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #200]
.word 0x9343fc22
.word 0x8b020000
.word 0x39400000
.word 0xd28000fe
.word 0xa1e0022
.word 0xd2800021
.word 0x1ac22021
.word 0xa010000
.word 0xb5000060
.word 0xd2800036
.word 0x14000002
.word 0xd2800016
.word 0x34000076
.word 0xd2800016
.word 0x14000002
.word 0xaa1703f6
.word 0xb4001016
.word 0xaa1903f7
.word 0xaa1903f6
.word 0xb4000319
.word 0xf9400320
.word 0x79405001

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #200]
.word 0xeb02003f
.word 0x10000011
.word 0x54001103
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #200]
.word 0x9343fc22
.word 0x8b020000
.word 0x39400000
.word 0xd28000fe
.word 0xa1e0022
.word 0xd2800021
.word 0x1ac22021
.word 0xa010000
.word 0xeb1f001f
.word 0x10000011
.word 0x54000f20
.word 0xaa1703e0
.word 0xf94002e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #208]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf90023a0
.word 0x14000010
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #216]
.word 0x928003f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003f9
.word 0xaa1803e0
.word 0xaa1903e1
.word 0xaa1a03e2
bl _p_32
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fffcc0
.word 0x94000002
.word 0x1400004b
.word 0xf9004fbe
.word 0xf94023a0
.word 0xf9002ba0
.word 0xf9402ba0
.word 0xf9002fa0
.word 0xf9402fa0
.word 0xb4000320
.word 0xf9402fa0
.word 0xf9400000
.word 0xf90043a0
.word 0xf94043a0
.word 0x79405000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #232]
.word 0xeb01001f
.word 0x540001e3
.word 0xf94043a0
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #232]
.word 0x9343fc22
.word 0x8b020000
.word 0x39400000
.word 0xd28000fe
.word 0xa1e0022
.word 0xd2800021
.word 0x1ac22021
.word 0xa010000
.word 0xb5000080
.word 0xd280003e
.word 0xf90033be
.word 0x14000002
.word 0xf90033bf
.word 0xf94033a0
.word 0x34000060
.word 0xf90037bf
.word 0x14000003
.word 0xf9402ba0
.word 0xf90037a0
.word 0xf94037a0
.word 0xf9003ba0
.word 0xf9403ba0
.word 0xf9003fa0
.word 0xf9403fa0
.word 0xf9403fa1
.word 0xf90027a1
.word 0xb4000160
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9404fbe
.word 0xd61f03c0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2800be1
bl _p_1
.word 0xf9400321
.word 0xf9400c21
bl _p_33
.word 0xaa0003e1
.word 0xd28068c0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0
.word 0xd2807180
.word 0xaa1103e1
bl _p_27

Lme_1e:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer_Add_object
System_Xml_Linq_XContainer_Add_object:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xf90013bf
.word 0xb4000a1a
.word 0xaa1a03e0
bl _p_34
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #240]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf90013a0
.word 0x14000025
.word 0xf94013a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #248]
.word 0x928005f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0xb5000040
.word 0x14000017
.word 0xf9402b23
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd2800002
.word 0xd2800004
.word 0xf9400325
.word 0xf94040b0
.word 0xd63f0200
.word 0x53001c00
.word 0x350001a0
.word 0xaa1a03e0
bl _p_35
.word 0xaa0003fa
.word 0xaa1903e0
.word 0xaa1a03e1
bl _p_36
.word 0xaa1903e0
.word 0xaa1a03e1
bl _p_37
.word 0xaa1903e0
.word 0xaa1a03e1
bl _p_38
.word 0xf94013a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fffa20
.word 0x94000002
.word 0x14000010
.word 0xf9001fbe
.word 0xf94013a0
.word 0xb4000160
.word 0xf94013a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9401fbe
.word 0xd61f03c0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_1f:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer_AddNode_System_Xml_Linq_XNode
System_Xml_Linq_XContainer_AddNode_System_Xml_Linq_XNode:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd2800002
bl _p_32
.word 0xaa1a03e0
bl System_Xml_Linq_XUtil_GetDetachedObject_System_Xml_Linq_XObject
.word 0xaa0003f8
.word 0xb4000178
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #192]
.word 0xeb01001f
.word 0x10000011
.word 0x54000b01
.word 0xaa1803fa
.word 0xf940031e
.word 0xf9000b19
.word 0x91004300
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0xf9402720
.word 0xb5000360
.word 0xaa1a03f8
.word 0xf900273a
.word 0x91012320
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0xf9002b3a
.word 0x91014320
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0x14000029
.word 0xf9402b20
.word 0xf940001e
.word 0xf900201a
.word 0x91010000
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0xf9402b20
.word 0xf940035e
.word 0xf9001f40
.word 0x9100e341
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9002b3a
.word 0x91014320
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd2807180
.word 0xaa1103e1
bl _p_27

Lme_20:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer_Add_object__
System_Xml_Linq_XContainer_Add_object__:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xf90013bf
.word 0xb400075a
.word 0xaa1a03e0
bl _p_34
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #240]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf90013a0
.word 0x1400000f
.word 0xf94013a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #248]
.word 0x928005f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003fa
.word 0xaa1903e0
.word 0xaa1a03e1
bl _p_39
.word 0xf94013a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fffce0
.word 0x94000002
.word 0x14000010
.word 0xf9001fbe
.word 0xf94013a0
.word 0xb4000160
.word 0xf94013a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9401fbe
.word 0xd61f03c0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_21:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer_OnAddingObject_object_bool_System_Xml_Linq_XNode_bool
System_Xml_Linq_XContainer_OnAddingObject_object_bool_System_Xml_Linq_XNode_bool:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9001ba4
.word 0xd2800000
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_22:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer_Nodes
System_Xml_Linq_XContainer_Nodes:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #256]
bl _p_15
.word 0xf9400ba1
.word 0xf9001001
.word 0x91008002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900341e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_23:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer_DescendantNodes
System_Xml_Linq_XContainer_DescendantNodes:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #264]
bl _p_15
.word 0xf9400ba1
.word 0xf9001c01
.word 0x9100e002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x9280003e
.word 0xf2bffffe
.word 0xb9004c1e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_24:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer_Descendants
System_Xml_Linq_XContainer_Descendants:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #272]
bl _p_15
.word 0xf9400ba1
.word 0xf9001401
.word 0x9100a002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x9280003e
.word 0xf2bffffe
.word 0xb9003c1e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_25:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer_Descendants_System_Xml_Linq_XName
System_Xml_Linq_XContainer_Descendants_System_Xml_Linq_XName:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #280]
bl _p_15
.word 0xf9400fa1
.word 0xf9001001
.word 0x91008002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xf9400ba1
.word 0xf9001401
.word 0x9100a002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x9280003e
.word 0xf2bffffe
.word 0xb9003c1e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_26:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer_Elements
System_Xml_Linq_XContainer_Elements:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #288]
bl _p_15
.word 0xf9400ba1
.word 0xf9001401
.word 0x9100a002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x9280003e
.word 0xf2bffffe
.word 0xb9003c1e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_27:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer_Elements_System_Xml_Linq_XName
System_Xml_Linq_XContainer_Elements_System_Xml_Linq_XName:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #296]
bl _p_15
.word 0xf9400fa1
.word 0xf9001401
.word 0x9100a002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xf9400ba1
.word 0xf9001801
.word 0x9100c002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900441e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_28:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer_Element_System_Xml_Linq_XName
System_Xml_Linq_XContainer_Element_System_Xml_Linq_XName:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xf90017bf
.word 0xaa1903e0
bl _p_40
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #304]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf90017a0
.word 0x14000026
.word 0xf94017a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #312]
.word 0x928005f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003f9
.word 0xaa1903f8
.word 0xaa1803f9
.word 0xeb1f031f
.word 0x54000180
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #40]
.word 0xeb01001f
.word 0x54000060
.word 0xd2800019
.word 0x14000001
.word 0xaa1903f8
.word 0xb4000159
.word 0xf940031e
.word 0xf9402f00
.word 0xaa1a03e1
bl System_Xml_Linq_XName_op_Equality_System_Xml_Linq_XName_System_Xml_Linq_XName
.word 0x53001c00
.word 0x34000080
.word 0xaa1803fa
.word 0x94000010
.word 0x14000020
.word 0xf94017a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fffa00
.word 0x94000002
.word 0x14000010
.word 0xf90023be
.word 0xf94017a0
.word 0xb4000160
.word 0xf94017a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94023be
.word 0xd61f03c0
.word 0xd2800000
.word 0x14000002
.word 0xaa1a03e0
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_29:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer_ReadContentFrom_System_Xml_XmlReader_System_Xml_Linq_LoadOptions
System_Xml_Linq_XContainer_ReadContentFrom_System_Xml_XmlReader_System_Xml_Linq_LoadOptions:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa
.word 0x1400000f
.word 0xaa1903e0
.word 0xf9400321
.word 0xf940c430
.word 0xd63f0200
.word 0x93407c00
.word 0xd28001fe
.word 0x6b1e001f
.word 0x540001a0
.word 0xaa1903e0
.word 0xaa1a03e1
bl _p_41
.word 0xaa0003e1
.word 0xaa1803e0
bl _p_39
.word 0xaa1903e0
.word 0xf9400321
.word 0xf940ec30
.word 0xd63f0200
.word 0x53001c00
.word 0x34fffda0
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_2a:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer_RemoveNodes
System_Xml_Linq_XContainer_RemoveNodes:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf9000fbf
.word 0xaa1a03e0
bl _p_40
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #304]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9000fa0
.word 0x14000010
.word 0xf9400fa1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #312]
.word 0x928005f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003fa
.word 0xaa1a03e1
.word 0xaa0103e0
.word 0xf940003e
bl System_Xml_Linq_XNode_Remove
.word 0xf9400fa1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fffcc0
.word 0x94000002
.word 0x14000010
.word 0xf9001bbe
.word 0xf9400fa0
.word 0xb4000160
.word 0xf9400fa1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9401bbe
.word 0xd61f03c0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_2b:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Nodesc__Iterator0__ctor
System_Xml_Linq_XContainer__Nodesc__Iterator0__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2c:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Nodesc__Iterator0_MoveNext
System_Xml_Linq_XContainer__Nodesc__Iterator0_MoveNext:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xb9803740
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900375e
.word 0xf9000fa0
.word 0xd280005e
.word 0x6b1e001f
.word 0x540009a2
.word 0xf9400fa0
.word 0xd37df000
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #320]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0xf9401340
.word 0xf9402400
.word 0xf9000b40
.word 0x91004341
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x14000030
.word 0xf9400b40
.word 0xaa0003e1
.word 0xf940003e
.word 0xf9402000
.word 0xf9000f40
.word 0x91006341
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9400b40
.word 0xf9001740
.word 0x9100a341
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x3940c340
.word 0x35000300
.word 0xd280003e
.word 0xb900375e
.word 0x14000015
.word 0xf9400f40
.word 0xf9000b40
.word 0x91004341
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9400b40
.word 0xb5fffa00
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900375e
.word 0xd2800000
.word 0x14000002
.word 0xd2800020
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2d:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Nodesc__Iterator0_System_Collections_Generic_IEnumerator_System_Xml_Linq_XNode_get_Current
System_Xml_Linq_XContainer__Nodesc__Iterator0_System_Collections_Generic_IEnumerator_System_Xml_Linq_XNode_get_Current:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9401400
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2e:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Nodesc__Iterator0_System_Collections_IEnumerator_get_Current
System_Xml_Linq_XContainer__Nodesc__Iterator0_System_Collections_IEnumerator_get_Current:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9401400
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2f:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Nodesc__Iterator0_Dispose
System_Xml_Linq_XContainer__Nodesc__Iterator0_Dispose:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xd280003e
.word 0x3900c01e
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900341e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_30:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Nodesc__Iterator0_Reset
System_Xml_Linq_XContainer__Nodesc__Iterator0_Reset:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd28073c0
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_2
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_31:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Nodesc__Iterator0_System_Collections_IEnumerable_GetEnumerator
System_Xml_Linq_XContainer__Nodesc__Iterator0_System_Collections_IEnumerable_GetEnumerator:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
bl _p_42
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_32:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Nodesc__Iterator0_System_Collections_Generic_IEnumerable_System_Xml_Linq_XNode_GetEnumerator
System_Xml_Linq_XContainer__Nodesc__Iterator0_System_Collections_Generic_IEnumerable_System_Xml_Linq_XNode_GetEnumerator:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xeb1f035f
.word 0x10000011
.word 0x540004e0
.word 0x9100d340
.word 0xd2800001
.word 0x92800022
.word 0xf2bfffe2
.word 0x885ffc10
.word 0x6b02021f
.word 0x54000061
.word 0x8811fc01
.word 0x35ffff91
.word 0xaa1003e0
.word 0x9280003e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x54000061
.word 0xaa1a03e0
.word 0x14000013

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #256]
bl _p_15
.word 0xf9000fa0
.word 0xf9401341
.word 0xf9001001
.word 0x91008002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.word 0xd28073e0
.word 0xaa1103e1
bl _p_27

Lme_33:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__DescendantNodesc__Iterator1__ctor
System_Xml_Linq_XContainer__DescendantNodesc__Iterator1__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_34:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_MoveNext
System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_MoveNext:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90017a0
.word 0x3900c3bf
.word 0xf94017a0
.word 0xb9804c1a
.word 0xf94017a0
.word 0x9280001e
.word 0xf2bffffe
.word 0xb9004c1e
.word 0x3900c3bf
.word 0xaa1a03f9
.word 0xd280007e
.word 0x6b1e035f
.word 0x54002682
.word 0xd37df320
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #328]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0xf94017a0
.word 0xf90033a0
.word 0xf94017a0
.word 0xf9401c00
bl _p_40
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #304]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94033a1
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x9280005a
.word 0xf2bffffa
.word 0x51000759
.word 0xd280005e
.word 0x6b1e033f
.word 0x54000122
.word 0xd37df320
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #336]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0x140000d9
.word 0xf94017a0
.word 0xf90033a0
.word 0xf94017a0
.word 0xf9400801
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #312]
.word 0x928005f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94033a1
.word 0xf9000c20
.word 0x91006021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94017a1
.word 0xf94017a0
.word 0xf9400c00
.word 0xf9002020
.word 0x91010021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94017a0
.word 0x39412000
.word 0x35000080
.word 0xf94017a0
.word 0xd280003e
.word 0xb9004c1e
.word 0xd280003e
.word 0x3900c3be
.word 0x940000b6
.word 0x140000d0
.word 0xf94017ba
.word 0xf94017a0
.word 0xf9400c19
.word 0xaa1903f8
.word 0xeb1f033f
.word 0x54000180
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #344]
.word 0xeb01001f
.word 0x54000060
.word 0xd2800018
.word 0x14000001
.word 0xf9001358
.word 0x91008340
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0xf94017a0
.word 0xf9401000
.word 0xb40010c0
.word 0xf94017a0
.word 0xf90033a0
.word 0xf94017a0
.word 0xf9401001
.word 0xaa0103e0
.word 0xf940003e
bl _p_43
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #304]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94033a1
.word 0xf9001420
.word 0x9100a021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x9280005a
.word 0xf2bffffa
.word 0x51000b59
.word 0xd280003e
.word 0x6b1e033f
.word 0x54000122
.word 0xd37df320
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #352]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0x14000035
.word 0xf94017a0
.word 0xf90033a0
.word 0xf94017a0
.word 0xf9401401
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #312]
.word 0x928005f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94033a1
.word 0xf9001820
.word 0x9100c021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94017a1
.word 0xf94017a0
.word 0xf9401800
.word 0xf9002020
.word 0x91010021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94017a0
.word 0x39412000
.word 0x35000080
.word 0xf94017a0
.word 0xd280005e
.word 0xb9004c1e
.word 0xd280003e
.word 0x3900c3be
.word 0x94000012
.word 0x94000035
.word 0x1400004f
.word 0xf94017a0
.word 0xf9401401
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fff800
.word 0x94000002
.word 0x14000016
.word 0xf9002bbe
.word 0x3940c3a0
.word 0x34000060
.word 0xf9402bbe
.word 0xd61f03c0
.word 0xf94017a0
.word 0xf9401400
.word 0xb4000180
.word 0xf94017a0
.word 0xf9401401
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9402bbe
.word 0xd61f03c0
.word 0xf94017a0
.word 0xf9400801
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35ffe380
.word 0x94000002
.word 0x14000016
.word 0xf9002fbe
.word 0x3940c3a0
.word 0x34000060
.word 0xf9402fbe
.word 0xd61f03c0
.word 0xf94017a0
.word 0xf9400800
.word 0xb4000180
.word 0xf94017a0
.word 0xf9400801
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9402fbe
.word 0xd61f03c0
.word 0xf94017a0
.word 0x9280001e
.word 0xf2bffffe
.word 0xb9004c1e
.word 0xd2800000
.word 0x14000002
.word 0xd2800020
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_35:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_System_Collections_Generic_IEnumerator_System_Xml_Linq_XNode_get_Current
System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_System_Collections_Generic_IEnumerator_System_Xml_Linq_XNode_get_Current:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9402000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_36:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_System_Collections_IEnumerator_get_Current
System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_System_Collections_IEnumerator_get_Current:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9402000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_37:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_Dispose
System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_Dispose:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0xf94013a0
.word 0xb9804c1a
.word 0xf94013a0
.word 0xd280003e
.word 0x3901201e
.word 0xf94013a0
.word 0x9280001e
.word 0xf2bffffe
.word 0xb9004c1e
.word 0xaa1a03f9
.word 0xd280007e
.word 0x6b1e035f
.word 0x54000782
.word 0xd37df320
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #360]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0x51000759
.word 0xd280005e
.word 0x6b1e033f
.word 0x54000122
.word 0xd37df320
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #368]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0x14000014
.word 0x94000002
.word 0x14000012
.word 0xf90023be
.word 0xf94013a0
.word 0xf9401400
.word 0xb4000180
.word 0xf94013a0
.word 0xf9401401
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94023be
.word 0xd61f03c0
.word 0x94000002
.word 0x14000012
.word 0xf90027be
.word 0xf94013a0
.word 0xf9400800
.word 0xb4000180
.word 0xf94013a0
.word 0xf9400801
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94027be
.word 0xd61f03c0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_38:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_Reset
System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_Reset:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd28073c0
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_2
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_39:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_System_Collections_IEnumerable_GetEnumerator
System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_System_Collections_IEnumerable_GetEnumerator:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
bl _p_44
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3a:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_System_Collections_Generic_IEnumerable_System_Xml_Linq_XNode_GetEnumerator
System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_System_Collections_Generic_IEnumerable_System_Xml_Linq_XNode_GetEnumerator:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xeb1f035f
.word 0x10000011
.word 0x540004e0
.word 0x91013340
.word 0xd2800001
.word 0x92800022
.word 0xf2bfffe2
.word 0x885ffc10
.word 0x6b02021f
.word 0x54000061
.word 0x8811fc01
.word 0x35ffff91
.word 0xaa1003e0
.word 0x9280003e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x54000061
.word 0xaa1a03e0
.word 0x14000013

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #264]
bl _p_15
.word 0xf9000fa0
.word 0xf9401f41
.word 0xf9001c01
.word 0x9100e002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.word 0xd28073e0
.word 0xaa1103e1
bl _p_27

Lme_3b:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Descendantsc__Iterator2__ctor
System_Xml_Linq_XContainer__Descendantsc__Iterator2__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3c:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Descendantsc__Iterator2_MoveNext
System_Xml_Linq_XContainer__Descendantsc__Iterator2_MoveNext:
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90017a0
.word 0x3900c3bf
.word 0xf94017a0
.word 0xb9803c1a
.word 0xf94017a0
.word 0x9280001e
.word 0xf2bffffe
.word 0xb9003c1e
.word 0x3900c3bf
.word 0xaa1a03f9
.word 0xd280005e
.word 0x6b1e035f
.word 0x540015e2
.word 0xd37df320
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #376]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0xf94017a0
.word 0xf9002ba0
.word 0xf94017a0
.word 0xf9401400
bl _p_43
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #304]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9402ba1
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x9280005a
.word 0xf2bffffa
.word 0x51000759
.word 0xd280003e
.word 0x6b1e033f
.word 0x54000122
.word 0xd37df320
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #384]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0x14000054
.word 0xf94017a0
.word 0xf9002ba0
.word 0xf94017a0
.word 0xf9400801
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #312]
.word 0x928005f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9402ba1
.word 0xf9000c20
.word 0x91006021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94017ba
.word 0xf94017a0
.word 0xf9400c19
.word 0xaa1903f8
.word 0xeb1f033f
.word 0x54000180
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #40]
.word 0xeb01001f
.word 0x54000060
.word 0xd2800018
.word 0x14000001
.word 0xf9001358
.word 0x91008340
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0xf94017a0
.word 0xf9401000
.word 0xb4000340
.word 0xf94017a1
.word 0xf94017a0
.word 0xf9401000
.word 0xf9001820
.word 0x9100c021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94017a0
.word 0x3940e000
.word 0x35000080
.word 0xf94017a0
.word 0xd280003e
.word 0xb9003c1e
.word 0xd280003e
.word 0x3900c3be
.word 0x94000011
.word 0x1400002b
.word 0xf94017a0
.word 0xf9400801
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fff420
.word 0x94000002
.word 0x14000016
.word 0xf90027be
.word 0x3940c3a0
.word 0x34000060
.word 0xf94027be
.word 0xd61f03c0
.word 0xf94017a0
.word 0xf9400800
.word 0xb4000180
.word 0xf94017a0
.word 0xf9400801
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94027be
.word 0xd61f03c0
.word 0xf94017a0
.word 0x9280001e
.word 0xf2bffffe
.word 0xb9003c1e
.word 0xd2800000
.word 0x14000002
.word 0xd2800020
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_3d:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Descendantsc__Iterator2_System_Collections_Generic_IEnumerator_System_Xml_Linq_XElement_get_Current
System_Xml_Linq_XContainer__Descendantsc__Iterator2_System_Collections_Generic_IEnumerator_System_Xml_Linq_XElement_get_Current:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9401800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3e:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Descendantsc__Iterator2_System_Collections_IEnumerator_get_Current
System_Xml_Linq_XContainer__Descendantsc__Iterator2_System_Collections_IEnumerator_get_Current:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9401800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3f:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Descendantsc__Iterator2_Dispose
System_Xml_Linq_XContainer__Descendantsc__Iterator2_Dispose:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xb9803c00
.word 0xf9400ba1
.word 0xd280003e
.word 0x3900e03e
.word 0xf9400ba1
.word 0x9280001e
.word 0xf2bffffe
.word 0xb9003c3e
.word 0xf9000fa0
.word 0xd280005e
.word 0x6b1e001f
.word 0x540003a2
.word 0xf9400fa0
.word 0xd37df000
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #392]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0x94000002
.word 0x14000012
.word 0xf9001bbe
.word 0xf9400ba0
.word 0xf9400800
.word 0xb4000180
.word 0xf9400ba0
.word 0xf9400801
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9401bbe
.word 0xd61f03c0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_40:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Descendantsc__Iterator2_Reset
System_Xml_Linq_XContainer__Descendantsc__Iterator2_Reset:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd28073c0
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_2
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_41:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Descendantsc__Iterator2_System_Collections_IEnumerable_GetEnumerator
System_Xml_Linq_XContainer__Descendantsc__Iterator2_System_Collections_IEnumerable_GetEnumerator:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
bl _p_45
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_42:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Descendantsc__Iterator2_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator
System_Xml_Linq_XContainer__Descendantsc__Iterator2_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xeb1f035f
.word 0x10000011
.word 0x540004e0
.word 0x9100f340
.word 0xd2800001
.word 0x92800022
.word 0xf2bfffe2
.word 0x885ffc10
.word 0x6b02021f
.word 0x54000061
.word 0x8811fc01
.word 0x35ffff91
.word 0xaa1003e0
.word 0x9280003e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x54000061
.word 0xaa1a03e0
.word 0x14000013

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #272]
bl _p_15
.word 0xf9000fa0
.word 0xf9401741
.word 0xf9001401
.word 0x9100a002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.word 0xd28073e0
.word 0xaa1103e1
bl _p_27

Lme_43:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Descendantsc__Iterator3__ctor
System_Xml_Linq_XContainer__Descendantsc__Iterator3__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_44:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Descendantsc__Iterator3_MoveNext
System_Xml_Linq_XContainer__Descendantsc__Iterator3_MoveNext:
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0x3900a3bf
.word 0xf94013a0
.word 0xb9803c1a
.word 0xf94013a0
.word 0x9280001e
.word 0xf2bffffe
.word 0xb9003c1e
.word 0x3900a3bf
.word 0xaa1a03f9
.word 0xd280005e
.word 0x6b1e035f
.word 0x54001322
.word 0xd37df320
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #400]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0xf94013a0
.word 0xf9002ba0
.word 0xf94013a0
.word 0xf9401400
bl _p_46
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #408]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9402ba1
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x9280005a
.word 0xf2bffffa
.word 0x51000759
.word 0xd280003e
.word 0x6b1e033f
.word 0x54000122
.word 0xd37df320
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #416]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0x1400003e
.word 0xf94013a0
.word 0xf9002ba0
.word 0xf94013a0
.word 0xf9400801
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #424]
.word 0x928005f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9402ba1
.word 0xf9000c20
.word 0x91006021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013a0
.word 0xf9400c00
.word 0xaa0003e1
.word 0xf940003e
.word 0xf9402c00
.word 0xf94013a1
.word 0xf9401021
bl System_Xml_Linq_XName_op_Equality_System_Xml_Linq_XName_System_Xml_Linq_XName
.word 0x53001c00
.word 0x34000340
.word 0xf94013a1
.word 0xf94013a0
.word 0xf9400c00
.word 0xf9001820
.word 0x9100c021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013a0
.word 0x3940e000
.word 0x35000080
.word 0xf94013a0
.word 0xd280003e
.word 0xb9003c1e
.word 0xd280003e
.word 0x3900a3be
.word 0x94000011
.word 0x1400002b
.word 0xf94013a0
.word 0xf9400801
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fff6e0
.word 0x94000002
.word 0x14000016
.word 0xf90023be
.word 0x3940a3a0
.word 0x34000060
.word 0xf94023be
.word 0xd61f03c0
.word 0xf94013a0
.word 0xf9400800
.word 0xb4000180
.word 0xf94013a0
.word 0xf9400801
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94023be
.word 0xd61f03c0
.word 0xf94013a0
.word 0x9280001e
.word 0xf2bffffe
.word 0xb9003c1e
.word 0xd2800000
.word 0x14000002
.word 0xd2800020
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_45:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Descendantsc__Iterator3_System_Collections_Generic_IEnumerator_System_Xml_Linq_XElement_get_Current
System_Xml_Linq_XContainer__Descendantsc__Iterator3_System_Collections_Generic_IEnumerator_System_Xml_Linq_XElement_get_Current:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9401800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_46:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Descendantsc__Iterator3_System_Collections_IEnumerator_get_Current
System_Xml_Linq_XContainer__Descendantsc__Iterator3_System_Collections_IEnumerator_get_Current:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9401800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_47:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Descendantsc__Iterator3_Dispose
System_Xml_Linq_XContainer__Descendantsc__Iterator3_Dispose:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xb9803c00
.word 0xf9400ba1
.word 0xd280003e
.word 0x3900e03e
.word 0xf9400ba1
.word 0x9280001e
.word 0xf2bffffe
.word 0xb9003c3e
.word 0xf9000fa0
.word 0xd280005e
.word 0x6b1e001f
.word 0x540003a2
.word 0xf9400fa0
.word 0xd37df000
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #432]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0x94000002
.word 0x14000012
.word 0xf9001bbe
.word 0xf9400ba0
.word 0xf9400800
.word 0xb4000180
.word 0xf9400ba0
.word 0xf9400801
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9401bbe
.word 0xd61f03c0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_48:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Descendantsc__Iterator3_Reset
System_Xml_Linq_XContainer__Descendantsc__Iterator3_Reset:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd28073c0
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_2
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_49:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Descendantsc__Iterator3_System_Collections_IEnumerable_GetEnumerator
System_Xml_Linq_XContainer__Descendantsc__Iterator3_System_Collections_IEnumerable_GetEnumerator:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
bl _p_47
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4a:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Descendantsc__Iterator3_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator
System_Xml_Linq_XContainer__Descendantsc__Iterator3_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xeb1f035f
.word 0x10000011
.word 0x54000680
.word 0x9100f340
.word 0xd2800001
.word 0x92800022
.word 0xf2bfffe2
.word 0x885ffc10
.word 0x6b02021f
.word 0x54000061
.word 0x8811fc01
.word 0x35ffff91
.word 0xaa1003e0
.word 0x9280003e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x54000061
.word 0xaa1a03e0
.word 0x14000020

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #280]
bl _p_15
.word 0xf9000fa0
.word 0xf9401741
.word 0xf9001401
.word 0x9100a002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xf9401341
.word 0xf9001001
.word 0x91008002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.word 0xd28073e0
.word 0xaa1103e1
bl _p_27

Lme_4b:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Elementsc__Iterator4__ctor
System_Xml_Linq_XContainer__Elementsc__Iterator4__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4c:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Elementsc__Iterator4_MoveNext
System_Xml_Linq_XContainer__Elementsc__Iterator4_MoveNext:
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90017a0
.word 0x3900c3bf
.word 0xf94017a0
.word 0xb9803c1a
.word 0xf94017a0
.word 0x9280001e
.word 0xf2bffffe
.word 0xb9003c1e
.word 0x3900c3bf
.word 0xaa1a03f9
.word 0xd280005e
.word 0x6b1e035f
.word 0x540015e2
.word 0xd37df320
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #440]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0xf94017a0
.word 0xf9002ba0
.word 0xf94017a0
.word 0xf9401400
bl _p_40
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #304]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9402ba1
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x9280005a
.word 0xf2bffffa
.word 0x51000759
.word 0xd280003e
.word 0x6b1e033f
.word 0x54000122
.word 0xd37df320
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #448]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0x14000054
.word 0xf94017a0
.word 0xf9002ba0
.word 0xf94017a0
.word 0xf9400801
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #312]
.word 0x928005f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9402ba1
.word 0xf9000c20
.word 0x91006021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94017ba
.word 0xf94017a0
.word 0xf9400c19
.word 0xaa1903f8
.word 0xeb1f033f
.word 0x54000180
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #40]
.word 0xeb01001f
.word 0x54000060
.word 0xd2800018
.word 0x14000001
.word 0xf9001358
.word 0x91008340
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0xf94017a0
.word 0xf9401000
.word 0xb4000340
.word 0xf94017a1
.word 0xf94017a0
.word 0xf9401000
.word 0xf9001820
.word 0x9100c021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94017a0
.word 0x3940e000
.word 0x35000080
.word 0xf94017a0
.word 0xd280003e
.word 0xb9003c1e
.word 0xd280003e
.word 0x3900c3be
.word 0x94000011
.word 0x1400002b
.word 0xf94017a0
.word 0xf9400801
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fff420
.word 0x94000002
.word 0x14000016
.word 0xf90027be
.word 0x3940c3a0
.word 0x34000060
.word 0xf94027be
.word 0xd61f03c0
.word 0xf94017a0
.word 0xf9400800
.word 0xb4000180
.word 0xf94017a0
.word 0xf9400801
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94027be
.word 0xd61f03c0
.word 0xf94017a0
.word 0x9280001e
.word 0xf2bffffe
.word 0xb9003c1e
.word 0xd2800000
.word 0x14000002
.word 0xd2800020
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_4d:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Elementsc__Iterator4_System_Collections_Generic_IEnumerator_System_Xml_Linq_XElement_get_Current
System_Xml_Linq_XContainer__Elementsc__Iterator4_System_Collections_Generic_IEnumerator_System_Xml_Linq_XElement_get_Current:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9401800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4e:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Elementsc__Iterator4_System_Collections_IEnumerator_get_Current
System_Xml_Linq_XContainer__Elementsc__Iterator4_System_Collections_IEnumerator_get_Current:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9401800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4f:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Elementsc__Iterator4_Dispose
System_Xml_Linq_XContainer__Elementsc__Iterator4_Dispose:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xb9803c00
.word 0xf9400ba1
.word 0xd280003e
.word 0x3900e03e
.word 0xf9400ba1
.word 0x9280001e
.word 0xf2bffffe
.word 0xb9003c3e
.word 0xf9000fa0
.word 0xd280005e
.word 0x6b1e001f
.word 0x540003a2
.word 0xf9400fa0
.word 0xd37df000
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #456]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0x94000002
.word 0x14000012
.word 0xf9001bbe
.word 0xf9400ba0
.word 0xf9400800
.word 0xb4000180
.word 0xf9400ba0
.word 0xf9400801
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9401bbe
.word 0xd61f03c0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_50:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Elementsc__Iterator4_Reset
System_Xml_Linq_XContainer__Elementsc__Iterator4_Reset:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd28073c0
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_2
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_51:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Elementsc__Iterator4_System_Collections_IEnumerable_GetEnumerator
System_Xml_Linq_XContainer__Elementsc__Iterator4_System_Collections_IEnumerable_GetEnumerator:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
bl _p_48
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_52:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Elementsc__Iterator4_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator
System_Xml_Linq_XContainer__Elementsc__Iterator4_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xeb1f035f
.word 0x10000011
.word 0x540004e0
.word 0x9100f340
.word 0xd2800001
.word 0x92800022
.word 0xf2bfffe2
.word 0x885ffc10
.word 0x6b02021f
.word 0x54000061
.word 0x8811fc01
.word 0x35ffff91
.word 0xaa1003e0
.word 0x9280003e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x54000061
.word 0xaa1a03e0
.word 0x14000013

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #288]
bl _p_15
.word 0xf9000fa0
.word 0xf9401741
.word 0xf9001401
.word 0x9100a002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.word 0xd28073e0
.word 0xaa1103e1
bl _p_27

Lme_53:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Elementsc__Iterator5__ctor
System_Xml_Linq_XContainer__Elementsc__Iterator5__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_54:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Elementsc__Iterator5_MoveNext
System_Xml_Linq_XContainer__Elementsc__Iterator5_MoveNext:
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90017a0
.word 0x3900c3bf
.word 0xf94017a0
.word 0xb980441a
.word 0xf94017a0
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900441e
.word 0x3900c3bf
.word 0xaa1a03f9
.word 0xd280005e
.word 0x6b1e035f
.word 0x54001722
.word 0xd37df320
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #464]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0xf94017a0
.word 0xf9002ba0
.word 0xf94017a0
.word 0xf9401800
bl _p_40
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #304]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9402ba1
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x9280005a
.word 0xf2bffffa
.word 0x51000759
.word 0xd280003e
.word 0x6b1e033f
.word 0x54000122
.word 0xd37df320
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #472]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0x1400005e
.word 0xf94017a0
.word 0xf9002ba0
.word 0xf94017a0
.word 0xf9400801
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #312]
.word 0x928005f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9402ba1
.word 0xf9000c20
.word 0x91006021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94017ba
.word 0xf94017a0
.word 0xf9400c19
.word 0xaa1903f8
.word 0xeb1f033f
.word 0x54000180
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #40]
.word 0xeb01001f
.word 0x54000060
.word 0xd2800018
.word 0x14000001
.word 0xf9001358
.word 0x91008340
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0xf94017a0
.word 0xf9401000
.word 0xb4000480
.word 0xf94017a0
.word 0xf9401000
.word 0xaa0003e1
.word 0xf940003e
.word 0xf9402c00
.word 0xf94017a1
.word 0xf9401421
bl System_Xml_Linq_XName_op_Equality_System_Xml_Linq_XName_System_Xml_Linq_XName
.word 0x53001c00
.word 0x34000340
.word 0xf94017a1
.word 0xf94017a0
.word 0xf9401000
.word 0xf9001c20
.word 0x9100e021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94017a0
.word 0x39410000
.word 0x35000080
.word 0xf94017a0
.word 0xd280003e
.word 0xb900441e
.word 0xd280003e
.word 0x3900c3be
.word 0x94000011
.word 0x1400002b
.word 0xf94017a0
.word 0xf9400801
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fff2e0
.word 0x94000002
.word 0x14000016
.word 0xf90027be
.word 0x3940c3a0
.word 0x34000060
.word 0xf94027be
.word 0xd61f03c0
.word 0xf94017a0
.word 0xf9400800
.word 0xb4000180
.word 0xf94017a0
.word 0xf9400801
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94027be
.word 0xd61f03c0
.word 0xf94017a0
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900441e
.word 0xd2800000
.word 0x14000002
.word 0xd2800020
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_55:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Elementsc__Iterator5_System_Collections_Generic_IEnumerator_System_Xml_Linq_XElement_get_Current
System_Xml_Linq_XContainer__Elementsc__Iterator5_System_Collections_Generic_IEnumerator_System_Xml_Linq_XElement_get_Current:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9401c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_56:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Elementsc__Iterator5_System_Collections_IEnumerator_get_Current
System_Xml_Linq_XContainer__Elementsc__Iterator5_System_Collections_IEnumerator_get_Current:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9401c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_57:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Elementsc__Iterator5_Dispose
System_Xml_Linq_XContainer__Elementsc__Iterator5_Dispose:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xb9804400
.word 0xf9400ba1
.word 0xd280003e
.word 0x3901003e
.word 0xf9400ba1
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900443e
.word 0xf9000fa0
.word 0xd280005e
.word 0x6b1e001f
.word 0x540003a2
.word 0xf9400fa0
.word 0xd37df000
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #480]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0x94000002
.word 0x14000012
.word 0xf9001bbe
.word 0xf9400ba0
.word 0xf9400800
.word 0xb4000180
.word 0xf9400ba0
.word 0xf9400801
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9401bbe
.word 0xd61f03c0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_58:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Elementsc__Iterator5_Reset
System_Xml_Linq_XContainer__Elementsc__Iterator5_Reset:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd28073c0
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_2
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_59:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Elementsc__Iterator5_System_Collections_IEnumerable_GetEnumerator
System_Xml_Linq_XContainer__Elementsc__Iterator5_System_Collections_IEnumerable_GetEnumerator:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
bl _p_49
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_5a:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XContainer__Elementsc__Iterator5_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator
System_Xml_Linq_XContainer__Elementsc__Iterator5_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xeb1f035f
.word 0x10000011
.word 0x54000680
.word 0x91011340
.word 0xd2800001
.word 0x92800022
.word 0xf2bfffe2
.word 0x885ffc10
.word 0x6b02021f
.word 0x54000061
.word 0x8811fc01
.word 0x35ffff91
.word 0xaa1003e0
.word 0x9280003e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x54000061
.word 0xaa1a03e0
.word 0x14000020

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #296]
bl _p_15
.word 0xf9000fa0
.word 0xf9401b41
.word 0xf9001801
.word 0x9100c002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xf9401741
.word 0xf9001401
.word 0x9100a002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.word 0xd28073e0
.word 0xaa1103e1
bl _p_27

Lme_5b:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XDeclaration__ctor_string_string_string
System_Xml_Linq_XDeclaration__ctor_string_string_string:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb7
.word 0xaa0003f7
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9400fa0
.word 0xf90012e0
.word 0x910082e1
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013a0
.word 0xf9000ae0
.word 0x910042e1
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94017a0
.word 0xf9000ee0
.word 0x910062e1
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9400bb7
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_5c:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XDeclaration__ctor_System_Xml_Linq_XDeclaration
System_Xml_Linq_XDeclaration__ctor_System_Xml_Linq_XDeclaration:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xb400059a
.word 0xf9401340
.word 0xf9001320
.word 0x91008321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9400b40
.word 0xf9000b20
.word 0x91004321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9400f40
.word 0xf9000f20
.word 0x91006321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2800021
bl _p_1
.word 0xaa0003e1
.word 0xd28068e0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2

Lme_5d:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XDeclaration_get_Encoding
System_Xml_Linq_XDeclaration_get_Encoding:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_5e:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XDeclaration_set_Encoding_string
System_Xml_Linq_XDeclaration_set_Encoding_string:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_5f:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XDeclaration_get_Standalone
System_Xml_Linq_XDeclaration_get_Standalone:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_60:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XDeclaration_set_Standalone_string
System_Xml_Linq_XDeclaration_set_Standalone_string:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9000c20
.word 0x91006021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_61:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XDeclaration_get_Version
System_Xml_Linq_XDeclaration_get_Version:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9401000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_62:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XDeclaration_ToString
System_Xml_Linq_XDeclaration_ToString:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003fa

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #488]
.word 0xd2800161
bl _p_22
.word 0xaa0003e3
.word 0xaa0303e0
.word 0xf90023a0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #496]
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9407c70
.word 0xd63f0200
.word 0xf94023a1
.word 0xaa0103e2
.word 0xf9401340
.word 0xaa0203f9
.word 0xaa0103f8
.word 0xd2800037
.word 0xb40000a0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x22, [x16, #504]
.word 0x14000002
.word 0xd2800016
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xaa1603e2
.word 0xf9400303
.word 0xf9407c70
.word 0xd63f0200
.word 0xf9401340
.word 0xaa1903f8
.word 0xd2800057
.word 0xb4000060
.word 0xf9401356
.word 0x14000002
.word 0xd2800016
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xaa1603e2
.word 0xf9400303
.word 0xf9407c70
.word 0xd63f0200
.word 0xf9401340
.word 0xaa1903f8
.word 0xd2800077
.word 0xb40000a0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x22, [x16, #512]
.word 0x14000002
.word 0xd2800016
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xaa1603e2
.word 0xf9400303
.word 0xf9407c70
.word 0xd63f0200
.word 0xf9400b40
.word 0xaa1903f8
.word 0xd2800097
.word 0xb40000a0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x22, [x16, #520]
.word 0x14000002
.word 0xd2800016
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xaa1603e2
.word 0xf9400303
.word 0xf9407c70
.word 0xd63f0200
.word 0xf9400b40
.word 0xaa1903f8
.word 0xd28000b7
.word 0xb4000060
.word 0xf9400b56
.word 0x14000002
.word 0xd2800016
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xaa1603e2
.word 0xf9400303
.word 0xf9407c70
.word 0xd63f0200
.word 0xf9400b40
.word 0xaa1903f8
.word 0xd28000d7
.word 0xb40000a0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x22, [x16, #512]
.word 0x14000002
.word 0xd2800016
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xaa1603e2
.word 0xf9400303
.word 0xf9407c70
.word 0xd63f0200
.word 0xf9400f40
.word 0xaa1903f8
.word 0xd28000f7
.word 0xb40000a0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x22, [x16, #528]
.word 0x14000002
.word 0xd2800016
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xaa1603e2
.word 0xf9400303
.word 0xf9407c70
.word 0xd63f0200
.word 0xf9400f40
.word 0xaa1903f8
.word 0xd2800117
.word 0xb4000060
.word 0xf9400f56
.word 0x14000002
.word 0xd2800016
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xaa1603e2
.word 0xf9400303
.word 0xf9407c70
.word 0xd63f0200
.word 0xf9400f40
.word 0xaa1903f8
.word 0xd2800137
.word 0xb40000a0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x22, [x16, #512]
.word 0x14000002
.word 0xd2800016
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xaa1603e2
.word 0xf9400303
.word 0xf9407c70
.word 0xd63f0200

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #536]
.word 0xaa1903e0
.word 0xd2800141
.word 0xf9400323
.word 0xf9407c70
.word 0xd63f0200
.word 0xaa1903e0
bl _p_50
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_63:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XDocument__ctor
System_Xml_Linq_XDocument__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_64:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XDocument_get_Declaration
System_Xml_Linq_XDocument_get_Declaration:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9402c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_65:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XDocument_set_Declaration_System_Xml_Linq_XDeclaration
System_Xml_Linq_XDocument_set_Declaration_System_Xml_Linq_XDeclaration:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9002c20
.word 0x91016021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_66:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XDocument_get_DocumentType
System_Xml_Linq_XDocument_get_DocumentType:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003fa
.word 0xf90017bf
.word 0xaa1a03e0
bl _p_40
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #304]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf90017a0
.word 0x1400002b
.word 0xf94017a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #312]
.word 0x928005f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003fa
.word 0xaa1a03f9
.word 0xaa1903f8
.word 0xeb1f033f
.word 0x54000180
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #544]
.word 0xeb01001f
.word 0x54000060
.word 0xd2800018
.word 0x14000001
.word 0xb4000218
.word 0xaa1a03f9
.word 0xb400017a
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #544]
.word 0xeb01001f
.word 0x10000011
.word 0x54000521
.word 0xaa1903fa
.word 0x94000010
.word 0x14000020
.word 0xf94017a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fff960
.word 0x94000002
.word 0x14000010
.word 0xf90023be
.word 0xf94017a0
.word 0xb4000160
.word 0xf94017a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94023be
.word 0xd61f03c0
.word 0xd2800000
.word 0x14000002
.word 0xaa1a03e0
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xd2807180
.word 0xaa1103e1
bl _p_27

Lme_67:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XDocument_get_NodeType
System_Xml_Linq_XDocument_get_NodeType:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2800120
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_68:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XDocument_get_Root
System_Xml_Linq_XDocument_get_Root:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003fa
.word 0xf90017bf
.word 0xaa1a03e0
bl _p_40
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #304]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf90017a0
.word 0x1400002b
.word 0xf94017a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #312]
.word 0x928005f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003fa
.word 0xaa1a03f9
.word 0xaa1903f8
.word 0xeb1f033f
.word 0x54000180
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #40]
.word 0xeb01001f
.word 0x54000060
.word 0xd2800018
.word 0x14000001
.word 0xb4000218
.word 0xaa1a03f9
.word 0xb400017a
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #40]
.word 0xeb01001f
.word 0x10000011
.word 0x54000521
.word 0xaa1903fa
.word 0x94000010
.word 0x14000020
.word 0xf94017a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fff960
.word 0x94000002
.word 0x14000010
.word 0xf90023be
.word 0xf94017a0
.word 0xb4000160
.word 0xf94017a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94023be
.word 0xd61f03c0
.word 0xd2800000
.word 0x14000002
.word 0xaa1a03e0
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xd2807180
.word 0xaa1103e1
bl _p_27

Lme_69:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XDocument_Load_System_IO_TextReader_System_Xml_Linq_LoadOptions
System_Xml_Linq_XDocument_Load_System_IO_TextReader_System_Xml_Linq_LoadOptions:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xaa0103fa
.word 0xf90013bf

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #552]
bl _p_15
.word 0xf90023a0
bl _p_51
.word 0xf94023a0
.word 0xaa0003e1
.word 0xaa0103e2
.word 0xf940005e
.word 0x3901103f
.word 0xd280003e
.word 0xa1e0342
.word 0x6b1f005f
.word 0x9a9f17e2
.word 0xf940003e
.word 0x3900e802
.word 0xf9400fa0
bl _p_52
.word 0xf90013a0
.word 0xf94013a0
.word 0xaa1a03e1
bl _p_53
.word 0xaa0003fa
.word 0x94000002
.word 0x14000010
.word 0xf9001fbe
.word 0xf94013a0
.word 0xb4000160
.word 0xf94013a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9401fbe
.word 0xd61f03c0
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_6a:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XDocument_LoadCore_System_Xml_XmlReader_System_Xml_Linq_LoadOptions
System_Xml_Linq_XDocument_LoadCore_System_Xml_XmlReader_System_Xml_Linq_LoadOptions:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #560]
bl _p_15
.word 0xaa0003e3
.word 0xaa0303e0
.word 0xf90013a0
.word 0xaa0303e0
.word 0xf9400ba1
.word 0xb9801ba2
.word 0xf940007e
bl _p_54
.word 0xf94013a0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_6b:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XDocument_ReadContent_System_Xml_XmlReader_System_Xml_Linq_LoadOptions
System_Xml_Linq_XDocument_ReadContent_System_Xml_XmlReader_System_Xml_Linq_LoadOptions:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xf90013a2
.word 0xaa1903e0
.word 0xf9400321
.word 0xf940bc30
.word 0xd63f0200
.word 0x93407c00
.word 0x350000a0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9406c30
.word 0xd63f0200
.word 0xaa1803e0
.word 0xaa1903e1
.word 0xb98023a2
bl _p_55
.word 0xaa1903e0
.word 0xf9400321
.word 0xf940c430
.word 0xd63f0200
.word 0x93407c00
.word 0xd280023e
.word 0x6b1e001f
.word 0x54000661

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #568]
.word 0xaa1903e0
.word 0xf9400322
.word 0xf940a050
.word 0xd63f0200
.word 0xf9001fa0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #576]
.word 0xaa1903e0
.word 0xf9400322
.word 0xf940a050
.word 0xd63f0200
.word 0xf90023a0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #584]
.word 0xaa1903e0
.word 0xf9400322
.word 0xf940a050
.word 0xd63f0200
.word 0xf90027a0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #592]
bl _p_15
.word 0xf9401fa1
.word 0xf94023a2
.word 0xf94027a3
.word 0xf9001ba0
bl System_Xml_Linq_XDeclaration__ctor_string_string_string
.word 0xf9401ba0
.word 0xf9002f00
.word 0x91016301
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9406c30
.word 0xd63f0200
.word 0xaa1803e0
.word 0xaa1903e1
.word 0xb98023a2
bl System_Xml_Linq_XContainer_ReadContentFrom_System_Xml_XmlReader_System_Xml_Linq_LoadOptions
.word 0xaa1803e0
bl _p_56
.word 0xb40000a0
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2802421
bl _p_1
.word 0xaa0003e1
.word 0xd28071a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2

Lme_6c:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XDocument_ValidateWhitespace_string
System_Xml_Linq_XDocument_ValidateWhitespace_string:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003fa
.word 0xd2800019
.word 0x1400001a
.word 0x93407f20
.word 0xb9801341
.word 0xeb00003f
.word 0x10000011
.word 0x540004e9
.word 0xd37ff800
.word 0x8b1a0000
.word 0x79402818
.word 0xaa1803e0
.word 0x51002417
.word 0xd28000be
.word 0x6b1e02ff
.word 0x54000122
.word 0xd37df2e0
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #600]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0xd280041e
.word 0x6b1e031f
.word 0x54000141
.word 0x11000739
.word 0xb9801340
.word 0x6b00033f
.word 0x54fffcab
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2802c61
bl _p_1
.word 0xaa0003e1
.word 0xd28068c0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2
.word 0xd2807140
.word 0xaa1103e1
bl _p_27

Lme_6d:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XDocument_Parse_string
System_Xml_Linq_XDocument_Parse_string:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xd2800001
bl _p_57
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_6e:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XDocument_Parse_string_System_Xml_Linq_LoadOptions
System_Xml_Linq_XDocument_Parse_string_System_Xml_Linq_LoadOptions:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #608]
bl _p_15
.word 0xf90013a0
.word 0xf9400ba1
bl _p_58
.word 0xf94013a0
.word 0xb9801ba1
bl _p_59
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_6f:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XDocument_WriteTo_System_Xml_XmlWriter
System_Xml_Linq_XDocument_WriteTo_System_Xml_XmlWriter:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xf90013bf
.word 0xf9402f20
.word 0xb4000280
.word 0xf9402f20
.word 0xaa0003e1
.word 0xf940003e
.word 0xf9400c00
.word 0xb40001e0
.word 0xf9402f20
.word 0xaa0003e1
.word 0xf940003e
.word 0xf9400c00

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #616]
bl _p_5
.word 0x53001c01
.word 0xaa1a03e0
.word 0xf9400342
.word 0xf9403c50
.word 0xd63f0200
.word 0x14000005
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf9404030
.word 0xd63f0200
.word 0xaa1903e0
bl _p_40
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #304]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf90013a0
.word 0x14000012
.word 0xf94013a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #312]
.word 0x928005f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003f9
.word 0xaa1903e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf9400042
.word 0xf9403c50
.word 0xd63f0200
.word 0xf94013a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fffc80
.word 0x94000002
.word 0x14000010
.word 0xf9001fbe
.word 0xf94013a0
.word 0xb4000160
.word 0xf94013a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9401fbe
.word 0xd61f03c0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_70:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XDocument_OnAddingObject_object_bool_System_Xml_Linq_XNode_bool
System_Xml_Linq_XDocument_OnAddingObject_object_bool_System_Xml_Linq_XNode_bool:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9001ba4
.word 0xf9400ba0
.word 0xf9400fa1
.word 0x3940c3a2
bl _p_60
.word 0xd2800000
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_71:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XDocument_VerifyAddedNode_object_bool
System_Xml_Linq_XDocument_VerifyAddedNode_object_bool:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa
.word 0xb4000e19
.word 0xaa1903f7
.word 0xaa1903f6
.word 0xeb1f033f
.word 0x54000160
.word 0xf94002e0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #184]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800016
.word 0xb40001f6
.word 0xaa1903f7
.word 0xb4000179
.word 0xf94002e0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #184]
.word 0xeb01001f
.word 0x10000011
.word 0x540010e1
.word 0xaa1703e0
bl _p_61
.word 0xaa1903f7
.word 0xaa1903f6
.word 0xeb1f033f
.word 0x54000160
.word 0xf94002e0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #624]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800016
.word 0xb4000236
.word 0xaa1903fa
.word 0xb4000179
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #624]
.word 0xeb01001f
.word 0x10000011
.word 0x54000d41
.word 0xf940035e
.word 0xf9402740
bl _p_61
.word 0x1400002e
.word 0xaa1903f7
.word 0xaa1903f6
.word 0xeb1f033f
.word 0x54000160
.word 0xf94002e0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #544]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800016
.word 0xb4000136
.word 0xaa1803e0
bl _p_62
.word 0xb5000580
.word 0xaa1803e0
bl _p_56
.word 0xb4000320
.word 0x3400065a
.word 0x14000017
.word 0xaa1903f7
.word 0xaa1903f6
.word 0xeb1f033f
.word 0x54000160
.word 0xf94002e0
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #40]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800016
.word 0xb4000116
.word 0xaa1803e0
bl _p_56
.word 0xb5000520
.word 0xaa1803e0
bl _p_62
.word 0xb4000040
.word 0x350005fa
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2803ae1
bl _p_1
.word 0xaa0003e1
.word 0xd28071a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd28041e1
bl _p_1
.word 0xaa0003e1
.word 0xd28071a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2804ea1
bl _p_1
.word 0xaa0003e1
.word 0xd28071a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2805d61
bl _p_1
.word 0xaa0003e1
.word 0xd28071a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd28067e1
bl _p_1
.word 0xaa0003e1
.word 0xd28071a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2
.word 0xd2807180
.word 0xaa1103e1
bl _p_27

Lme_72:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XDocumentType__ctor_string_string_string_string
System_Xml_Linq_XDocumentType__ctor_string_string_string_string:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb6
.word 0xaa0003f6
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9001ba4
.word 0xf9400fa0
.word 0xf90026c0
.word 0x910122c1
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013a0
.word 0xf9002ac0
.word 0x910142c1
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94017a0
.word 0xf9002ec0
.word 0x910162c1
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9401ba0
.word 0xf90032c0
.word 0x910182c1
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9400bb6
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_73:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XDocumentType__ctor_System_Xml_Linq_XDocumentType
System_Xml_Linq_XDocumentType__ctor_System_Xml_Linq_XDocumentType:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xb400073a
.word 0xf9402740
.word 0xf9002720
.word 0x91012321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9402b40
.word 0xf9002b20
.word 0x91014321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9402f40
.word 0xf9002f20
.word 0x91016321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9403340
.word 0xf9003320
.word 0x91018321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2800021
bl _p_1
.word 0xaa0003e1
.word 0xd28068e0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2

Lme_74:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XDocumentType_get_Name
System_Xml_Linq_XDocumentType_get_Name:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9402400
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_75:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XDocumentType_get_PublicId
System_Xml_Linq_XDocumentType_get_PublicId:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9402800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_76:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XDocumentType_get_SystemId
System_Xml_Linq_XDocumentType_get_SystemId:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9402c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_77:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XDocumentType_get_InternalSubset
System_Xml_Linq_XDocumentType_get_InternalSubset:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9403000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_78:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XDocumentType_get_NodeType
System_Xml_Linq_XDocumentType_get_NodeType:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2800140
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_79:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XDocumentType_WriteTo_System_Xml_XmlWriter
System_Xml_Linq_XDocumentType_WriteTo_System_Xml_XmlWriter:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xaa0003f9
.word 0xf90013a1
.word 0xaa1903e0
bl _p_63
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf940003e
bl _p_56
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xb40001c0
.word 0xf940031e
.word 0xf9402f00
.word 0xaa0003e1
.word 0xf940003e
.word 0xf9400801
.word 0xf9402b22
.word 0xf9402f23
.word 0xf9403324
.word 0xf94013a0
.word 0xf94013a5
.word 0xf94000a5
.word 0xf94068b0
.word 0xd63f0200
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_7a:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement__ctor_System_Xml_Linq_XName_object
System_Xml_Linq_XElement__ctor_System_Xml_Linq_XName_object:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xaa0003f8
.word 0xf9000fa1
.word 0xf90013a2
.word 0xd280003e
.word 0x3901c31e
.word 0xf9400fa0
.word 0xd2800001
bl System_Xml_Linq_XName_op_Equality_System_Xml_Linq_XName_System_Xml_Linq_XName
.word 0x53001c00
.word 0x350002a0
.word 0xf9400fa0
.word 0xf9002f00
.word 0x91016301
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xaa1803e0
.word 0xf94013a1
bl _p_39
.word 0xf9400bb8
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd28001a1
bl _p_1
.word 0xaa0003e1
.word 0xd28068e0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2

Lme_7b:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement__ctor_System_Xml_Linq_XElement
System_Xml_Linq_XElement__ctor_System_Xml_Linq_XElement:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xd280003e
.word 0x3901c33e
.word 0xb40003da
.word 0xf9402f40
.word 0xf9002f20
.word 0x91016321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xaa1a03e0
.word 0xf940035e
bl _p_64
.word 0xaa0003e1
.word 0xaa1903e0
bl _p_39
.word 0xaa1a03e0
.word 0xf940035e
bl _p_40
.word 0xaa0003e1
.word 0xaa1903e0
bl _p_39
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2800021
bl _p_1
.word 0xaa0003e1
.word 0xd28068e0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2

Lme_7c:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement__ctor_System_Xml_Linq_XName
System_Xml_Linq_XElement__ctor_System_Xml_Linq_XName:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xd280003e
.word 0x3901c01e
.word 0xf9400fa0
.word 0xd2800001
bl System_Xml_Linq_XName_op_Equality_System_Xml_Linq_XName_System_Xml_Linq_XName
.word 0x53001c00
.word 0x35000240
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9002c20
.word 0x91016021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd28001a1
bl _p_1
.word 0xaa0003e1
.word 0xd28068e0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2

Lme_7d:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_ConvertForAssignment_object
System_Xml_Linq_XElement_ConvertForAssignment_object:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003fa
.word 0xaa1a03f9
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #632]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xaa1803f9
.word 0xb5000078
.word 0xaa1a03e0
.word 0x1400001c

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #640]
bl _p_15
.word 0xf9001fa0
bl _p_65
.word 0xf9401fa0
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0xf9001ba0
.word 0xaa1a03e0
.word 0xaa1903e1
.word 0xd2800022
.word 0xf9400343
.word 0xf940c870
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf9401ba2
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9405050
.word 0xd63f0200
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf9409830
.word 0xd63f0200
bl System_Xml_Linq_XElement_Parse_string
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_7e:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_get_FirstAttribute
System_Xml_Linq_XElement_get_FirstAttribute:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9403000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_7f:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_set_FirstAttribute_System_Xml_Linq_XAttribute
System_Xml_Linq_XElement_set_FirstAttribute_System_Xml_Linq_XAttribute:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9003020
.word 0x91018021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_80:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_get_LastAttribute
System_Xml_Linq_XElement_get_LastAttribute:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9403400
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_81:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_set_LastAttribute_System_Xml_Linq_XAttribute
System_Xml_Linq_XElement_set_LastAttribute_System_Xml_Linq_XAttribute:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9003420
.word 0x9101a021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_82:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_get_HasAttributes
System_Xml_Linq_XElement_get_HasAttributes:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9403000
.word 0xeb1f001f
.word 0x9a9f17e0
.word 0x6b1f001f
.word 0x9a9f17e0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_83:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_get_HasElements
System_Xml_Linq_XElement_get_HasElements:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003fa
.word 0xf90013bf
.word 0xaa1a03e0
bl _p_40
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #304]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf90013a0
.word 0x1400001f
.word 0xf94013a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #312]
.word 0x928005f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003fa
.word 0xaa1a03f9
.word 0xaa1903fa
.word 0xeb1f033f
.word 0x54000180
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #40]
.word 0xeb01001f
.word 0x54000060
.word 0xd280001a
.word 0x14000001
.word 0xb400009a
.word 0xd280003a
.word 0x94000010
.word 0x14000020
.word 0xf94013a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fffae0
.word 0x94000002
.word 0x14000010
.word 0xf9001fbe
.word 0xf94013a0
.word 0xb4000160
.word 0xf94013a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9401fbe
.word 0xd61f03c0
.word 0xd2800000
.word 0x14000002
.word 0xaa1a03e0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_84:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_get_IsEmpty
System_Xml_Linq_XElement_get_IsEmpty:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xaa1a03e0
bl _p_40
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #304]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35000060
.word 0x3941c35a
.word 0x14000002
.word 0xd280001a
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_85:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_get_Name
System_Xml_Linq_XElement_get_Name:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9402c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_86:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_set_Name_System_Xml_Linq_XName
System_Xml_Linq_XElement_set_Name_System_Xml_Linq_XName:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xd2800001
bl System_Xml_Linq_XName_op_Equality_System_Xml_Linq_XName_System_Xml_Linq_XName
.word 0x53001c00
.word 0x35000300
.word 0xaa1903e0
.word 0xaa1903e1
bl _p_66
.word 0xf9400fa0
.word 0xf9002f20
.word 0x91016321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xaa1903e0
.word 0xaa1903e1
bl _p_67
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd28077e1
bl _p_1
.word 0xaa0003e1
.word 0xd28068e0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2

Lme_87:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_get_NodeType
System_Xml_Linq_XElement_get_NodeType:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2800020
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_88:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_get_Value
System_Xml_Linq_XElement_get_Value:
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003fa
.word 0xf9001bbf
.word 0xd2800019
.word 0xaa1a03e0
bl _p_40
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #304]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9001ba0
.word 0x1400005c
.word 0xf9401ba1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #312]
.word 0x928005f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003fa
.word 0xb5000139

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #136]
bl _p_15
.word 0xf9002ba0
bl _p_24
.word 0xf9402ba0
.word 0xaa0003f9
.word 0xaa1a03f8
.word 0xaa1a03f7
.word 0xeb1f035f
.word 0x54000180
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #624]
.word 0xeb01001f
.word 0x54000060
.word 0xd2800017
.word 0x14000001
.word 0xb4000297
.word 0xaa1903f8
.word 0xaa1a03f7
.word 0xb400017a
.word 0xf94002e0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #624]
.word 0xeb01001f
.word 0x10000011
.word 0x54000b21
.word 0xf94002fe
.word 0xf94026e1
.word 0xaa1803e0
.word 0xf940031e
bl _p_26
.word 0x14000025
.word 0xaa1a03f8
.word 0xaa1a03f7
.word 0xeb1f035f
.word 0x54000180
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #40]
.word 0xeb01001f
.word 0x54000060
.word 0xd2800017
.word 0x14000001
.word 0xb40002b7
.word 0xaa1903f8
.word 0xaa1a03f7
.word 0xb400017a
.word 0xf94002e0
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #40]
.word 0xeb01001f
.word 0x10000011
.word 0x540006c1
.word 0xaa1703e0
.word 0xf94002fe
bl _p_68
.word 0xaa0003e1
.word 0xaa1803e0
.word 0xf940031e
bl _p_26
.word 0xf9401ba1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fff340
.word 0x94000002
.word 0x14000010
.word 0xf90027be
.word 0xf9401ba0
.word 0xb4000160
.word 0xf9401ba1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94027be
.word 0xd61f03c0
.word 0xb50000d9

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xf940001a
.word 0x14000006
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9401c30
.word 0xd63f0200
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
.word 0xd2807180
.word 0xaa1103e1
bl _p_27

Lme_89:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_set_Value_string
System_Xml_Linq_XElement_set_Value_string:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
bl _p_69
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_39
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_8a:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_Attribute_System_Xml_Linq_XName
System_Xml_Linq_XElement_Attribute_System_Xml_Linq_XName:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf9000fba
.word 0xf90013a0
.word 0xaa0103fa
.word 0xf94013a0
.word 0xf9403018
.word 0x1400000b
.word 0xf940031e
.word 0xf9401f00
.word 0xaa1a03e1
bl System_Xml_Linq_XName_op_Equality_System_Xml_Linq_XName_System_Xml_Linq_XName
.word 0x53001c00
.word 0x34000060
.word 0xaa1803e0
.word 0x14000005
.word 0xf940031e
.word 0xf9402718
.word 0xb5fffed8
.word 0xd2800000
.word 0xf9400bb8
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_8b:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_Attributes
System_Xml_Linq_XElement_Attributes:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #648]
bl _p_15
.word 0xf9400ba1
.word 0xf9001001
.word 0x91008002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900341e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_8c:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_DefineDefaultSettings_System_Xml_XmlReaderSettings_System_Xml_Linq_LoadOptions
System_Xml_Linq_XElement_DefineDefaultSettings_System_Xml_XmlReaderSettings_System_Xml_Linq_LoadOptions:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1
.word 0xf940033e
.word 0x3901133f
.word 0xb9801ba0
.word 0xd280003e
.word 0xa1e0000
.word 0x6b1f001f
.word 0x9a9f17e0
.word 0xf940033e
.word 0x3900eb20
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_8d:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_CreateDefaultSettings_System_Xml_Linq_LoadOptions
System_Xml_Linq_XElement_CreateDefaultSettings_System_Xml_Linq_LoadOptions:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #552]
bl _p_15
.word 0xf90017a0
bl _p_51
.word 0xf94017a0
.word 0xf90013a0
.word 0xb98013a1
bl System_Xml_Linq_XElement_DefineDefaultSettings_System_Xml_XmlReaderSettings_System_Xml_Linq_LoadOptions
.word 0xf94013a0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_8e:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_Load_System_IO_TextReader_System_Xml_Linq_LoadOptions
System_Xml_Linq_XElement_Load_System_IO_TextReader_System_Xml_Linq_LoadOptions:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xaa0103fa
.word 0xf90013bf
.word 0xaa1a03e0
bl _p_70
.word 0xaa0003e1
.word 0xf9400fa0
bl _p_52
.word 0xf90013a0
.word 0xf94013a0
.word 0xaa1a03e1
bl _p_71
.word 0xaa0003fa
.word 0x94000002
.word 0x14000010
.word 0xf9001fbe
.word 0xf94013a0
.word 0xb4000160
.word 0xf94013a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9401fbe
.word 0xd61f03c0
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_8f:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_LoadCore_System_Xml_XmlReader_System_Xml_Linq_LoadOptions
System_Xml_Linq_XElement_LoadCore_System_Xml_XmlReader_System_Xml_Linq_LoadOptions:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9407c30
.word 0xd63f0200
.word 0x93407c00
.word 0xaa1903e0
.word 0xf9400321
.word 0xf940c430
.word 0xd63f0200
.word 0x93407c00
.word 0xd280003e
.word 0x6b1e001f
.word 0x54001321
.word 0xaa1903e0
.word 0xf9400321
.word 0xf940d430
.word 0xd63f0200
.word 0xf90023a0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf940cc30
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94023a0
bl System_Xml_Linq_XName_Get_string_string
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xf9001fa0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #656]
bl _p_15
.word 0xf9401fa1
.word 0xf9001ba0
bl System_Xml_Linq_XElement__ctor_System_Xml_Linq_XName
.word 0xf9401ba0
.word 0xaa0003f8
.word 0xaa1803e3
.word 0xaa0303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xf940007e
bl _p_55
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9407430
.word 0xd63f0200
.word 0x53001c00
.word 0x34000a80
.word 0xaa1903e0
.word 0xf9400321
.word 0xf940d430
.word 0xd63f0200

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #32]
bl _p_5
.word 0x53001c00
.word 0x34000460
.word 0xaa1903e0
.word 0xf9400321
.word 0xf940cc30
.word 0xd63f0200
.word 0xf9001ba0
bl _p_3
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf940003e
bl _p_12
.word 0xaa0003e1
.word 0xf9401ba0
bl _p_5
.word 0x53001c00
.word 0x34000280
bl _p_6
.word 0xaa0003e2

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #32]
.word 0xaa0203e0
.word 0xf940005e
bl _p_72
.word 0xf9001ba0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf940b030
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf9401ba1
.word 0xaa1803e0
.word 0xf940031e
bl _p_73
.word 0x14000017
.word 0xaa1903e0
.word 0xf9400321
.word 0xf940d430
.word 0xd63f0200
.word 0xf9001fa0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf940cc30
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf9401fa0
bl System_Xml_Linq_XName_Get_string_string
.word 0xf9001ba0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf940b030
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf9401ba1
.word 0xaa1803e0
.word 0xf940031e
bl _p_73
.word 0xf940031e
.word 0xf9403703
.word 0xaa0303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xf940007e
bl _p_55
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9407030
.word 0xd63f0200
.word 0x53001c00
.word 0x35fff640
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9407830
.word 0xd63f0200
.word 0xaa1903e0
.word 0xf9400321
.word 0xf940e430
.word 0xd63f0200
.word 0x53001c00
.word 0x35000200
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9406c30
.word 0xd63f0200
.word 0xaa1803e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xf940031e
bl System_Xml_Linq_XContainer_ReadContentFrom_System_Xml_XmlReader_System_Xml_Linq_LoadOptions
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9406030
.word 0xd63f0200
.word 0x3901c31f
.word 0x14000007
.word 0xd280003e
.word 0x3901c31e
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9406c30
.word 0xd63f0200
.word 0xaa1803e0
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2807921
bl _p_1
.word 0xaa0003e1
.word 0xd28071a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2

Lme_90:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_Parse_string
System_Xml_Linq_XElement_Parse_string:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xd2800001
bl _p_74
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_91:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_Parse_string_System_Xml_Linq_LoadOptions
System_Xml_Linq_XElement_Parse_string_System_Xml_Linq_LoadOptions:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #608]
bl _p_15
.word 0xf90013a0
.word 0xf9400ba1
bl _p_58
.word 0xf94013a0
.word 0xb9801ba1
bl _p_75
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_92:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_RemoveAttributes
System_Xml_Linq_XElement_RemoveAttributes:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0x14000005
.word 0xf9403741
.word 0xaa0103e0
.word 0xf940003e
bl _p_76
.word 0xf9403340
.word 0xb5ffff60
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_93:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_Save_System_Xml_XmlWriter
System_Xml_Linq_XElement_Save_System_Xml_XmlWriter:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf9400ba2
.word 0xf9400042
.word 0xf9403c50
.word 0xd63f0200
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_94:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_DescendantsAndSelf
System_Xml_Linq_XElement_DescendantsAndSelf:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #664]
bl _p_15
.word 0xaa0003e2

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #672]
.word 0xf9400000
.word 0xf9000840
.word 0x91004041
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030021
.word 0xd280003e
.word 0x3900003e
.word 0xaa0203e0
.word 0xf90017a0
.word 0xaa0203e0
.word 0xf9400ba1
.word 0xf940005e
bl _p_77
.word 0xf9400ba0
bl _p_46
.word 0xaa0003e1
.word 0xf94017a2
.word 0xaa0203e0
.word 0xf940005e
.word 0xf90013a2
bl _p_78
.word 0xf94013a0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_95:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_SetAttributeValue_System_Xml_Linq_XName_object
System_Xml_Linq_XElement_SetAttributeValue_System_Xml_Linq_XName_object:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb7
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9400fa0
.word 0xf94013a1
bl System_Xml_Linq_XElement_Attribute_System_Xml_Linq_XName
.word 0xaa0003f7
.word 0xf94017a0
.word 0xb50000c0
.word 0xb4000317
.word 0xaa1703e0
.word 0xf94002fe
bl _p_76
.word 0x14000014
.word 0xb50001b7

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #680]
bl _p_15
.word 0xf9001ba0
.word 0xf94013a1
.word 0xf94017a2
bl System_Xml_Linq_XAttribute__ctor_System_Xml_Linq_XName_object
.word 0xf9401ba1
.word 0xf9400fa0
bl _p_79
.word 0x14000007
.word 0xf94017a0
bl _p_7
.word 0xaa0003e1
.word 0xaa1703e0
.word 0xf94002fe
bl System_Xml_Linq_XAttribute_set_Value_string
.word 0xf9400bb7
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_96:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_SetAttributeObject_System_Xml_Linq_XAttribute
System_Xml_Linq_XElement_SetAttributeObject_System_Xml_Linq_XAttribute:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xaa1903e0
.word 0xaa1a03e1
bl _p_36
.word 0xaa1a03e0
bl System_Xml_Linq_XUtil_GetDetachedObject_System_Xml_Linq_XObject
.word 0xaa0003f8
.word 0xb4000178
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #688]
.word 0xeb01001f
.word 0x10000011
.word 0x54000b41
.word 0xaa1803fa
.word 0xf940031e
.word 0xf9000b19
.word 0x91004300
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0xf9403320
.word 0xb5000340
.word 0xf900333a
.word 0x91018320
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0xf900373a
.word 0x9101a320
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0x14000029
.word 0xf9403720
.word 0xf940001e
.word 0xf900241a
.word 0x91012000
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0xf9403720
.word 0xf940035e
.word 0xf9002b40
.word 0x91014341
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf900373a
.word 0x9101a320
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0xaa1903e0
.word 0xaa1a03e1
bl _p_38
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd2807180
.word 0xaa1103e1
bl _p_27

Lme_97:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_LookupPrefix_string_System_Xml_XmlWriter
System_Xml_Linq_XElement_LookupPrefix_string_System_Xml_XmlWriter:
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa
.word 0xf9001bbf
.word 0xb9801320
.word 0x6b1f001f
.word 0x540001ed
.word 0xaa1903e0
bl _p_80
.word 0xaa0003e1
.word 0xaa1803e0
bl _p_81
.word 0xaa0003f7
.word 0xb50000e0
.word 0xaa1a03e0
.word 0xaa1903e1
.word 0xf9400342
.word 0xf9407450
.word 0xd63f0200
.word 0xaa0003f7
.word 0x14000005

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xf9400017
.word 0xaa1703fa
.word 0xaa1803e0
bl _p_64
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #696]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9001ba0
.word 0x1400002b
.word 0xf9401ba1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #704]
.word 0x928005f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003f8
.word 0xaa1803e1
.word 0xaa0103e0
.word 0xf940003e
bl _p_82
.word 0x53001c00
.word 0x34000340
.word 0xaa1803e0
.word 0xf940031e
bl System_Xml_Linq_XAttribute_get_Value
.word 0xaa1903e1
bl _p_5
.word 0x53001c00
.word 0x34000260
.word 0xf940031e
.word 0xf9401f00
.word 0xaa0003e1
.word 0xf940003e
.word 0xf9400c00
.word 0xf9002ba0
bl _p_3
.word 0xaa0003e1
.word 0xf9402ba0
bl _p_4
.word 0x53001c00
.word 0x340000c0
.word 0xf940031e
.word 0xf9401f00
.word 0xaa0003e1
.word 0xf940003e
.word 0xf940081a
.word 0x1400000d
.word 0xf9401ba1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fff960
.word 0x94000002
.word 0x14000010
.word 0xf90027be
.word 0xf9401ba0
.word 0xb4000160
.word 0xf9401ba1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94027be
.word 0xd61f03c0
.word 0xaa1a03e0
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_98:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_CreateDummyNamespace_int__System_Collections_Generic_IEnumerable_1_System_Xml_Linq_XAttribute_bool
System_Xml_Linq_XElement_CreateDummyNamespace_int__System_Collections_Generic_IEnumerable_1_System_Xml_Linq_XAttribute_bool:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb7
.word 0xf9000fba
.word 0xf90013a0
.word 0xf90017a1
.word 0xaa0203fa

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #712]
bl _p_15
.word 0xaa0003f7
.word 0x350005fa

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #720]
.word 0xf9400000
.word 0xf94017ba
.word 0xb5000320

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #728]
bl _p_15
.word 0xaa0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #736]
.word 0xf9001420

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #744]
.word 0xf9001c20

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #752]
.word 0xf9401402
.word 0xf9000c22
.word 0xf9401000
.word 0xf9000820

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #720]
.word 0xf9000001

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #720]
.word 0xf9400001

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #760]
.word 0xaa1a03e0
bl _p_83
.word 0x53001c00
.word 0x340000c0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xf9400000
.word 0x1400004d
.word 0xf9000aff

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #768]
.word 0xf9001ba0
.word 0xf94013a0
.word 0xb9800001
.word 0x11000422
.word 0xaa0203e1
.word 0xf9001fa2
.word 0xaa0203fa
.word 0xb9000001

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #776]
bl _p_84
.word 0xaa0003e1
.word 0xf9401ba0
.word 0xf9401fa2
.word 0xb9001022
bl _p_33
.word 0xf9000ae0
.word 0x910042e1
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xeb1f02ff
.word 0x10000011
.word 0x540005c0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #728]
bl _p_15
.word 0xaa0003e1
.word 0xf9001037
.word 0x91008020
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020000
.word 0xd280003e
.word 0x3900001e

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #784]
.word 0xf9001420

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #792]
.word 0xf9001c20

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #800]
.word 0xf9401402
.word 0xf9000c22
.word 0xf9401000
.word 0xf9000820

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #760]
.word 0xf94017a0
bl _p_83
.word 0x53001c00
.word 0x34fff6e0
.word 0xf9400ae0
.word 0xf9400bb7
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd28068c0
.word 0xaa1103e1
bl _p_27

Lme_99:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_WriteTo_System_Xml_XmlWriter
System_Xml_Linq_XElement_WriteTo_System_Xml_XmlWriter:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xb90033bf
.word 0xf9001fbf
.word 0xf90023bf
.word 0xf9402f21
.word 0xaa0103e0
.word 0xf940003e
bl System_Xml_Linq_XName_get_NamespaceName
.word 0xaa0003e1
.word 0xaa1903e0
.word 0xaa1a03e2
bl _p_85
.word 0xaa0003f8
.word 0xb90033bf
.word 0xb5000158
.word 0x9100c3a0
.word 0xf9003ba0
.word 0xaa1903e0
bl _p_64
.word 0xaa0003e1
.word 0xf9403ba0
.word 0xd2800002
bl _p_86
.word 0xaa0003f8
.word 0xf9402f20
.word 0xaa0003e1
.word 0xf940003e
.word 0xf9400800
.word 0xf9003ba0
.word 0xf9402f20
.word 0xaa0003e1
.word 0xf940003e
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf940003e
bl _p_12
.word 0xaa0003e3
.word 0xf9403ba2
.word 0xaa1a03e0
.word 0xaa1803e1
.word 0xf9400344
.word 0xf9403890
.word 0xd63f0200
.word 0xaa1903e0
bl _p_64
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #696]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9001fa0
.word 0x14000074
.word 0xf9401fa1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #704]
.word 0x928005f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003f8
.word 0xaa1803e1
.word 0xaa0103e0
.word 0xf940003e
bl _p_82
.word 0x53001c00
.word 0x340006a0
.word 0xf940031e
.word 0xf9401f00
.word 0xaa0003e1
.word 0xf940003e
.word 0xf9400c00
.word 0xf9003ba0
bl _p_3
.word 0xaa0003e1
.word 0xf9403ba0
bl _p_4
.word 0x53001c00
.word 0x34000380

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #32]
.word 0xf9003ba0
.word 0xf940031e
.word 0xf9401f00
.word 0xaa0003e1
.word 0xf940003e
.word 0xf9400800
.word 0xf9003fa0
bl _p_3
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf940003e
bl _p_12
.word 0xf90043a0
.word 0xaa1803e0
.word 0xf940031e
bl System_Xml_Linq_XAttribute_get_Value
.word 0xaa0003e4
.word 0xf9403ba1
.word 0xf9403fa2
.word 0xf94043a3
.word 0xaa1a03e0
.word 0xf940035e
bl _p_20
.word 0x1400000d

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #32]
.word 0xf9003ba0
.word 0xaa1803e0
.word 0xf940031e
bl System_Xml_Linq_XAttribute_get_Value
.word 0xaa0003e2
.word 0xf9403ba1
.word 0xaa1a03e0
.word 0xf940035e
bl _p_87
.word 0x1400002f
.word 0xf940031e
.word 0xf9401f01
.word 0xaa0103e0
.word 0xf940003e
bl System_Xml_Linq_XName_get_NamespaceName
.word 0xaa0003e1
.word 0xaa1903e0
.word 0xaa1a03e2
bl _p_85
.word 0xaa0003f7
.word 0xaa1703e0
.word 0xb5000140
.word 0x9100c3a0
.word 0xf9003ba0
.word 0xaa1903e0
bl _p_64
.word 0xaa0003e1
.word 0xf9403ba0
.word 0xd2800022
bl _p_86
.word 0xaa0003f7
.word 0xf940031e
.word 0xf9401f00
.word 0xaa0003e1
.word 0xf940003e
.word 0xf9400800
.word 0xf9003ba0
.word 0xf940031e
.word 0xf9401f00
.word 0xaa0003e1
.word 0xf940003e
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf940003e
bl _p_12
.word 0xf9003fa0
.word 0xaa1803e0
.word 0xf940031e
bl System_Xml_Linq_XAttribute_get_Value
.word 0xaa0003e4
.word 0xf9403ba2
.word 0xf9403fa3
.word 0xaa1a03e0
.word 0xaa1703e1
.word 0xf940035e
bl _p_20
.word 0xf9401fa1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fff040
.word 0x94000002
.word 0x14000010
.word 0xf9002fbe
.word 0xf9401fa0
.word 0xb4000160
.word 0xf9401fa1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9402fbe
.word 0xd61f03c0
.word 0xaa1903e0
bl _p_40
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #304]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf90023a0
.word 0x14000012
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #312]
.word 0x928005f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003f8
.word 0xaa1803e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf9400042
.word 0xf9403c50
.word 0xd63f0200
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fffc80
.word 0x94000002
.word 0x14000010
.word 0xf90037be
.word 0xf94023a0
.word 0xb4000160
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94037be
.word 0xd61f03c0
.word 0x3941c320
.word 0x340000c0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf9406030
.word 0xd63f0200
.word 0x14000005
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf9405830
.word 0xd63f0200
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_9a:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_GetNamespaceOfPrefix_string
System_Xml_Linq_XElement_GetNamespaceOfPrefix_string:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xf90017bf
.word 0xaa1903f8
.word 0x1400006a
.word 0xaa1803e0
.word 0xf940031e
bl _p_64
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #696]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf90017a0
.word 0x1400002f
.word 0xf94017a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #704]
.word 0x928005f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003f9
.word 0xaa1903e1
.word 0xaa0103e0
.word 0xf940003e
bl _p_82
.word 0x53001c00
.word 0x340003c0
.word 0xb9801340
.word 0x35000180
.word 0xf940033e
.word 0xf9401f20
.word 0xaa0003e1
.word 0xf940003e
.word 0xf9400800

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #32]
bl _p_5
.word 0x53001c00
.word 0x35000140
.word 0xf940033e
.word 0xf9401f20
.word 0xaa0003e1
.word 0xf940003e
.word 0xf9400800
.word 0xaa1a03e1
bl _p_5
.word 0x53001c00
.word 0x34000100
.word 0xaa1903e0
.word 0xf940033e
bl System_Xml_Linq_XAttribute_get_Value
bl _p_88
.word 0xaa0003fa
.word 0x94000010
.word 0x14000030
.word 0xf94017a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fff8e0
.word 0x94000002
.word 0x14000010
.word 0xf90023be
.word 0xf94017a0
.word 0xb4000160
.word 0xf94017a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94023be
.word 0xd61f03c0
.word 0xf940031e
.word 0xf9400b19
.word 0xaa1903f8
.word 0xeb1f033f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #40]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb5fff2f8
bl _p_6
.word 0x14000002
.word 0xaa1a03e0
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_9b:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_GetPrefixOfNamespace_System_Xml_Linq_XNamespace
System_Xml_Linq_XElement_GetPrefixOfNamespace_System_Xml_Linq_XNamespace:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xf90017bf
.word 0xaa1903e0
.word 0xaa1a03e1
bl _p_89
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #808]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf90017a0
.word 0x14000016
.word 0xf94017a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #816]
.word 0x928005f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003f8
.word 0xaa1903e0
.word 0xaa1803e1
bl _p_90
.word 0xaa1a03e1
bl _p_4
.word 0x53001c00
.word 0x34000080
.word 0xaa1803fa
.word 0x94000010
.word 0x14000020
.word 0xf94017a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fffc00
.word 0x94000002
.word 0x14000010
.word 0xf90023be
.word 0xf94017a0
.word 0xb4000160
.word 0xf94017a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94023be
.word 0xd61f03c0
.word 0xd2800000
.word 0x14000002
.word 0xaa1a03e0
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_9c:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_GetPrefixOfNamespaceCore_System_Xml_Linq_XNamespace
System_Xml_Linq_XElement_GetPrefixOfNamespaceCore_System_Xml_Linq_XNamespace:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #824]
bl _p_15
.word 0xf9400fa1
.word 0xf9001401
.word 0x9100a002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xf9400ba1
.word 0xf9001801
.word 0x9100c002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900441e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_9d:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_ReplaceAttributes_object
System_Xml_Linq_XElement_ReplaceAttributes_object:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
bl _p_34

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #832]
bl _p_91
.word 0xaa0003e1
.word 0xf9400ba0
bl System_Xml_Linq_XElement_ReplaceAttributes_object__
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_9e:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_ReplaceAttributes_object__
System_Xml_Linq_XElement_ReplaceAttributes_object__:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
bl System_Xml_Linq_XElement_RemoveAttributes
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_92
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_9f:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_OnAddingObject_object_bool_System_Xml_Linq_XNode_bool
System_Xml_Linq_XElement_OnAddingObject_object_bool_System_Xml_Linq_XNode_bool:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003f7
.word 0xaa0103f8
.word 0xaa0203f9
.word 0xaa0303fa
.word 0xf90023a4
.word 0xf90027bf
.word 0xaa1803f6
.word 0xaa1803f5
.word 0xeb1f031f
.word 0x54000160
.word 0xf94002c0
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #840]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800015
.word 0xb5001b35
.word 0xaa1803f6
.word 0xaa1803f5
.word 0xeb1f031f
.word 0x54000160
.word 0xf94002c0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #544]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800015
.word 0xb5001955
.word 0xaa1803f6
.word 0xaa1803f5
.word 0xeb1f031f
.word 0x54000160
.word 0xf94002c0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #848]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800015
.word 0xb5001775
.word 0x34000219
.word 0xaa1803f9
.word 0xaa1803f6
.word 0xeb1f031f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #688]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800016
.word 0xb5001576
.word 0xaa1803f9
.word 0xaa1803f6
.word 0xeb1f031f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #688]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800016
.word 0xaa1603f9
.word 0xb4000a16
.word 0xaa1703e0
bl _p_64
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #696]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf90027a0
.word 0x14000020
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #704]
.word 0x928005f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003fa
.word 0xf940033e
.word 0xf9401f20
.word 0xf940035e
.word 0xf9401f41
bl System_Xml_Linq_XName_op_Equality_System_Xml_Linq_XName_System_Xml_Linq_XName
.word 0x53001c00
.word 0x340001c0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2809161
bl _p_1
.word 0xf940033e
.word 0xf9401f21
bl _p_93
.word 0xaa0003e1
.word 0xd28071a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fffac0
.word 0x94000002
.word 0x14000010
.word 0xf90033be
.word 0xf94027a0
.word 0xb4000160
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94033be
.word 0xd61f03c0
.word 0xaa1703e0
.word 0xaa1903e1
bl _p_79
.word 0xd2800020
.word 0x14000046
.word 0xaa1803f9
.word 0xaa1803f7
.word 0xeb1f031f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #184]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800017
.word 0xb40006d7
.word 0xaa1a03f9
.word 0xaa1a03f7
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #624]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800017
.word 0xb40004f7
.word 0xaa1a03f9
.word 0xb400017a
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #624]
.word 0xeb01001f
.word 0x10000011
.word 0x540005e1
.word 0xaa1903fa
.word 0xf940033e
.word 0xf9402737
.word 0xaa1803f9
.word 0xaa1803f6
.word 0xeb1f031f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #184]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800016
.word 0xaa1703e0
.word 0xaa1603e1
bl _p_31
.word 0xaa0003e1
.word 0xaa1a03e0
.word 0xf940035e
bl System_Xml_Linq_XText_set_Value_string
.word 0xd2800020
.word 0x14000002
.word 0xd2800000
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2808561
bl _p_1
.word 0xf9400301
.word 0xf9400c21
bl _p_93
.word 0xaa0003e1
.word 0xd28068c0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2
.word 0xd2807180
.word 0xaa1103e1
bl _p_27

Lme_a0:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_System_Xml_Serialization_IXmlSerializable_WriteXml_System_Xml_XmlWriter
System_Xml_Linq_XElement_System_Xml_Serialization_IXmlSerializable_WriteXml_System_Xml_XmlWriter:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl System_Xml_Linq_XElement_Save_System_Xml_XmlWriter
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_a1:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_System_Xml_Serialization_IXmlSerializable_ReadXml_System_Xml_XmlReader
System_Xml_Linq_XElement_System_Xml_Serialization_IXmlSerializable_ReadXml_System_Xml_XmlReader:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xd2800002
bl System_Xml_Linq_XContainer_ReadContentFrom_System_Xml_XmlReader_System_Xml_Linq_LoadOptions
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_a2:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement_System_Xml_Serialization_IXmlSerializable_GetSchema
System_Xml_Linq_XElement_System_Xml_Serialization_IXmlSerializable_GetSchema:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2800000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_a3:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement__cctor
System_Xml_Linq_XElement__cctor:
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #664]
bl _p_15
.word 0xaa0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #672]
.word 0xf9400000
.word 0xf9000820
.word 0x91004022
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #856]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_a4:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement__CreateDummyNamespacem__0_System_Xml_Linq_XAttribute
System_Xml_Linq_XElement__CreateDummyNamespacem__0_System_Xml_Linq_XAttribute:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf940035e
.word 0xf9401f40
.word 0xaa0003e1
.word 0xf940003e
.word 0xf9400800

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #32]
bl _p_94
.word 0x53001c00
.word 0x35000220
.word 0xf940035e
.word 0xf9401f41
.word 0xaa0103e0
.word 0xf940003e
bl System_Xml_Linq_XName_get_NamespaceName
.word 0xf90013a0
bl _p_3
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf940003e
bl _p_12
.word 0xaa0003e1
.word 0xf94013a0
bl _p_5
.word 0x53001c1a
.word 0x14000002
.word 0xd280003a
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_a5:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement__Attributesc__Iterator0__ctor
System_Xml_Linq_XElement__Attributesc__Iterator0__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_a6:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement__Attributesc__Iterator0_MoveNext
System_Xml_Linq_XElement__Attributesc__Iterator0_MoveNext:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xb9803740
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900375e
.word 0xf9000fa0
.word 0xd280005e
.word 0x6b1e001f
.word 0x540009a2
.word 0xf9400fa0
.word 0xd37df000
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #864]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0xf9401340
.word 0xf9403000
.word 0xf9000b40
.word 0x91004341
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x14000030
.word 0xf9400b40
.word 0xaa0003e1
.word 0xf940003e
.word 0xf9402400
.word 0xf9000f40
.word 0x91006341
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9400b40
.word 0xf9001740
.word 0x9100a341
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x3940c340
.word 0x35000300
.word 0xd280003e
.word 0xb900375e
.word 0x14000015
.word 0xf9400f40
.word 0xf9000b40
.word 0x91004341
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9400b40
.word 0xb5fffa00
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900375e
.word 0xd2800000
.word 0x14000002
.word 0xd2800020
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_a7:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement__Attributesc__Iterator0_System_Collections_Generic_IEnumerator_System_Xml_Linq_XAttribute_get_Current
System_Xml_Linq_XElement__Attributesc__Iterator0_System_Collections_Generic_IEnumerator_System_Xml_Linq_XAttribute_get_Current:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9401400
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_a8:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement__Attributesc__Iterator0_System_Collections_IEnumerator_get_Current
System_Xml_Linq_XElement__Attributesc__Iterator0_System_Collections_IEnumerator_get_Current:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9401400
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_a9:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement__Attributesc__Iterator0_Dispose
System_Xml_Linq_XElement__Attributesc__Iterator0_Dispose:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xd280003e
.word 0x3900c01e
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900341e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_aa:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement__Attributesc__Iterator0_Reset
System_Xml_Linq_XElement__Attributesc__Iterator0_Reset:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd28073c0
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_2
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_ab:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement__Attributesc__Iterator0_System_Collections_IEnumerable_GetEnumerator
System_Xml_Linq_XElement__Attributesc__Iterator0_System_Collections_IEnumerable_GetEnumerator:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
bl _p_95
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_ac:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement__Attributesc__Iterator0_System_Collections_Generic_IEnumerable_System_Xml_Linq_XAttribute_GetEnumerator
System_Xml_Linq_XElement__Attributesc__Iterator0_System_Collections_Generic_IEnumerable_System_Xml_Linq_XAttribute_GetEnumerator:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xeb1f035f
.word 0x10000011
.word 0x540004e0
.word 0x9100d340
.word 0xd2800001
.word 0x92800022
.word 0xf2bfffe2
.word 0x885ffc10
.word 0x6b02021f
.word 0x54000061
.word 0x8811fc01
.word 0x35ffff91
.word 0xaa1003e0
.word 0x9280003e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x54000061
.word 0xaa1a03e0
.word 0x14000013

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #648]
bl _p_15
.word 0xf9000fa0
.word 0xf9401341
.word 0xf9001001
.word 0x91008002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.word 0xd28073e0
.word 0xaa1103e1
bl _p_27

Lme_ad:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement__CreateDummyNamespacec__AnonStorey4__ctor
System_Xml_Linq_XElement__CreateDummyNamespacec__AnonStorey4__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_ae:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement__CreateDummyNamespacec__AnonStorey4__m__0_System_Xml_Linq_XAttribute
System_Xml_Linq_XElement__CreateDummyNamespacec__AnonStorey4__m__0_System_Xml_Linq_XAttribute:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xaa0103fa
.word 0xf940035e
.word 0xf9401f40
.word 0xaa0003e1
.word 0xf940003e
.word 0xf9400800
.word 0xf9400fa1
.word 0xf9400821
bl _p_94
.word 0x53001c00
.word 0x35000220
.word 0xf940035e
.word 0xf9401f41
.word 0xaa0103e0
.word 0xf940003e
bl System_Xml_Linq_XName_get_NamespaceName
.word 0xf90013a0
bl _p_3
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf940003e
bl _p_12
.word 0xaa0003e1
.word 0xf94013a0
bl _p_5
.word 0x53001c1a
.word 0x14000002
.word 0xd280003a
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_af:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3__ctor
System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_b0:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_MoveNext
System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_MoveNext:
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90017a0
.word 0x3900c3bf
.word 0xf94017a0
.word 0xb980441a
.word 0xf94017a0
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900441e
.word 0x3900c3bf
.word 0xaa1a03f9
.word 0xd280005e
.word 0x6b1e035f
.word 0x54001ee2
.word 0xd37df320
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #872]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0xf94017a1
.word 0xf94017a0
.word 0xf9401800
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x140000d8
.word 0xf94017a0
.word 0xf9002ba0
.word 0xf94017a0
.word 0xf9400801
.word 0xaa0103e0
.word 0xf940003e
bl _p_64
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #696]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9402ba1
.word 0xf9000c20
.word 0x91006021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x9280005a
.word 0xf2bffffa
.word 0x51000759
.word 0xd280003e
.word 0x6b1e033f
.word 0x54000122
.word 0xd37df320
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #880]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0x14000068
.word 0xf94017a0
.word 0xf9002ba0
.word 0xf94017a0
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #704]
.word 0x928005f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9402ba1
.word 0xf9001020
.word 0x91008021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94017a0
.word 0xf9401001
.word 0xaa0103e0
.word 0xf940003e
bl _p_82
.word 0x53001c00
.word 0x340008e0
.word 0xf94017a0
.word 0xf9401001
.word 0xaa0103e0
.word 0xf940003e
bl System_Xml_Linq_XAttribute_get_Value
.word 0xf9002ba0
.word 0xf94017a0
.word 0xf9401401
.word 0xaa0103e0
.word 0xf940003e
bl _p_12
.word 0xaa0003e1
.word 0xf9402ba0
bl _p_5
.word 0x53001c00
.word 0x340006e0
.word 0xf94017a0
.word 0xf9002ba0
.word 0xf94017a0
.word 0xf9401000
.word 0xaa0003e1
.word 0xf940003e
.word 0xf9401c00
.word 0xaa0003e1
.word 0xf940003e
.word 0xf9400c00
.word 0xf9002fa0
bl _p_6
.word 0xaa0003e1
.word 0xf9402fa0
bl _p_4
.word 0xf9402ba1
.word 0x53001c00
.word 0xaa0103fa
.word 0x340000c0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xf9400019
.word 0x14000009
.word 0xf94017a0
.word 0xf9401000
.word 0xaa0003e1
.word 0xf940003e
.word 0xf9401c00
.word 0xaa0003e1
.word 0xf940003e
.word 0xf9400819
.word 0xf9001f59
.word 0x9100e340
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0xf94017a0
.word 0x39410000
.word 0x35000080
.word 0xf94017a0
.word 0xd280003e
.word 0xb900441e
.word 0xd280003e
.word 0x3900c3be
.word 0x94000011
.word 0x1400004d
.word 0xf94017a0
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fff1a0
.word 0x94000002
.word 0x14000016
.word 0xf90027be
.word 0x3940c3a0
.word 0x34000060
.word 0xf94027be
.word 0xd61f03c0
.word 0xf94017a0
.word 0xf9400c00
.word 0xb4000180
.word 0xf94017a0
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94027be
.word 0xd61f03c0
.word 0xf94017ba
.word 0xf94017a0
.word 0xf9400800
.word 0xaa0003e1
.word 0xf940003e
.word 0xf9400819
.word 0xaa1903f8
.word 0xeb1f033f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #40]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xf9000b58
.word 0x91004340
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0xf94017a0
.word 0xf9400800
.word 0xb5ffe4e0
.word 0xf94017a0
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900441e
.word 0xd2800000
.word 0x14000002
.word 0xd2800020
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_b1:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_System_Collections_Generic_IEnumerator_string_get_Current
System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_System_Collections_Generic_IEnumerator_string_get_Current:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9401c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_b2:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_System_Collections_IEnumerator_get_Current
System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_System_Collections_IEnumerator_get_Current:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9401c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_b3:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_Dispose
System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_Dispose:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xb9804400
.word 0xf9400ba1
.word 0xd280003e
.word 0x3901003e
.word 0xf9400ba1
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900443e
.word 0xf9000fa0
.word 0xd280005e
.word 0x6b1e001f
.word 0x540003a2
.word 0xf9400fa0
.word 0xd37df000
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #888]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0x94000002
.word 0x14000012
.word 0xf9001bbe
.word 0xf9400ba0
.word 0xf9400c00
.word 0xb4000180
.word 0xf9400ba0
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9401bbe
.word 0xd61f03c0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_b4:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_Reset
System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_Reset:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd28073c0
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_2
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_b5:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_System_Collections_IEnumerable_GetEnumerator
System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_System_Collections_IEnumerable_GetEnumerator:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
bl _p_96
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_b6:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_System_Collections_Generic_IEnumerable_string_GetEnumerator
System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_System_Collections_Generic_IEnumerable_string_GetEnumerator:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xeb1f035f
.word 0x10000011
.word 0x54000680
.word 0x91011340
.word 0xd2800001
.word 0x92800022
.word 0xf2bfffe2
.word 0x885ffc10
.word 0x6b02021f
.word 0x54000061
.word 0x8811fc01
.word 0x35ffff91
.word 0xaa1003e0
.word 0x9280003e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x54000061
.word 0xaa1a03e0
.word 0x14000020

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #824]
bl _p_15
.word 0xf9000fa0
.word 0xf9401b41
.word 0xf9001801
.word 0x9100c002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xf9401741
.word 0xf9001401
.word 0x9100a002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.word 0xd28073e0
.word 0xaa1103e1
bl _p_27

Lme_b7:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XName__ctor_System_Runtime_Serialization_SerializationInfo_System_Runtime_Serialization_StreamingContext
System_Xml_Linq_XName__ctor_System_Runtime_Serialization_SerializationInfo_System_Runtime_Serialization_StreamingContext:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9001bbf
.word 0xf9001fbf

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #896]
.word 0xf9400fa0
.word 0xf9400fa2
.word 0xf940005e
bl _p_97
.word 0x9100c3a1
.word 0x9100e3a2
bl _p_98
.word 0xf9401ba0
.word 0xf9000b20
.word 0x91004321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9401fa0
bl _p_88
.word 0xf9000f20
.word 0x91006321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_b8:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XName__ctor_string_System_Xml_Linq_XNamespace
System_Xml_Linq_XName__ctor_string_System_Xml_Linq_XNamespace:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xaa0003f8
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400fa0
bl _p_99
.word 0xf9000b00
.word 0x91004301
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013a0
.word 0xf9000f00
.word 0x91006301
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9400bb8
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_b9:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XName_ErrorInvalidExpandedName
System_Xml_Linq_XName_ErrorInvalidExpandedName:
.word 0xa9be7bfd
.word 0x910003fd

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #904]
.word 0xf9000fa0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #912]
bl _p_15
.word 0xf9400fa1
.word 0xf9000ba0
bl _p_100
.word 0xf9400ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_ba:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XName_get_LocalName
System_Xml_Linq_XName_get_LocalName:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_bb:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XName_get_Namespace
System_Xml_Linq_XName_get_Namespace:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_bc:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XName_get_NamespaceName
System_Xml_Linq_XName_get_NamespaceName:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf940003e
bl _p_12
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_bd:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XName_Equals_object
System_Xml_Linq_XName_Equals_object:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb7
.word 0xf9000fba
.word 0xf90013a0
.word 0xaa0103fa
.word 0xf90017ba
.word 0xaa1a03f7
.word 0xeb1f035f
.word 0x54000180
.word 0xf94017a0
.word 0xf9400000
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #920]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800017
.word 0xaa1703fa
.word 0xaa1703e0
.word 0xd2800001
bl System_Xml_Linq_XName_op_Inequality_System_Xml_Linq_XName_System_Xml_Linq_XName
.word 0x53001c00
.word 0x340000c0
.word 0xf94013a0
.word 0xaa1a03e1
bl System_Xml_Linq_XName_op_Equality_System_Xml_Linq_XName_System_Xml_Linq_XName
.word 0x53001c1a
.word 0x14000002
.word 0xd280001a
.word 0xaa1a03e0
.word 0xf9400bb7
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_be:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XName_System_IEquatable_System_Xml_Linq_XName_Equals_System_Xml_Linq_XName
System_Xml_Linq_XName_System_IEquatable_System_Xml_Linq_XName_Equals_System_Xml_Linq_XName:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl System_Xml_Linq_XName_op_Equality_System_Xml_Linq_XName_System_Xml_Linq_XName
.word 0x53001c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_bf:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XName_Get_string
System_Xml_Linq_XName_Get_string:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fbf
.word 0xf90013bf
.word 0x910063a1
.word 0x910083a2
.word 0xf9400ba0
bl _p_98
.word 0xf9400fa0
.word 0xf94013a1
bl System_Xml_Linq_XName_Get_string_string
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_c0:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XName_ExpandName_string_string__string_
System_Xml_Linq_XName_ExpandName_string_string__string_:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa
.word 0xb4000ef8
.word 0xf900035f
.word 0xf900033f
.word 0xb9801300
.word 0x34000da0
.word 0xd2800000
.word 0x93407c00
.word 0xb9801301
.word 0xeb00003f
.word 0x10000011
.word 0x54000ee9
.word 0xd37ff800
.word 0x8b180000
.word 0x79402800
.word 0xd2800f7e
.word 0x6b1e001f
.word 0x54000841
.word 0xd2800037
.word 0x1400001d
.word 0x93407ee0
.word 0xb9801301
.word 0xeb00003f
.word 0x10000011
.word 0x54000d49
.word 0xd37ff800
.word 0x8b180000
.word 0x79402800
.word 0xd2800fbe
.word 0x6b1e001f
.word 0x54000221
.word 0x510006e2
.word 0xaa1803e0
.word 0xd2800021
.word 0xf940031e
bl _p_30
.word 0xf9000340
.word 0xd349ff41
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x110006f7
.word 0xb9801300
.word 0x6b0002ff
.word 0x54fffc4b
.word 0xf9400357
.word 0xb40000b7
.word 0xb98012e0
.word 0x6b1f001f
.word 0x9a9f17f7
.word 0x14000002
.word 0xd2800037
.word 0x35000757
.word 0xb9801300
.word 0xf9400341
.word 0xb9801021
.word 0x11000821
.word 0x6b01001f
.word 0x540006c0
.word 0xf9400340
.word 0xb9801000
.word 0x11000801
.word 0xaa1803e0
.word 0xf940031e
bl _p_101
.word 0xf9000320
.word 0xd349ff21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x1400001b
.word 0xf9000338
.word 0xd349ff20
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xf9400000
.word 0xf9000340
.word 0xd349ff41
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
bl _p_102
bl _p_2
bl _p_102
bl _p_2
bl _p_102
bl _p_2

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2809d61
bl _p_1
.word 0xaa0003e1
.word 0xd28068e0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2
.word 0xd2807140
.word 0xaa1103e1
bl _p_27

Lme_c1:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XName_Get_string_string
System_Xml_Linq_XName_Get_string_string:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
bl _p_88
.word 0xaa0003e2
.word 0xaa0203e0
.word 0xf9400ba1
.word 0xf940005e
bl _p_72
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_c2:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XName_GetHashCode
System_Xml_Linq_XName_GetHashCode:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400801
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9402030
.word 0xd63f0200
.word 0x93407c00
.word 0xf90013a0
.word 0xf9400ba0
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9402030
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003e1
.word 0xf94013a0
.word 0x4a010000
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_c3:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XName_op_Equality_System_Xml_Linq_XName_System_Xml_Linq_XName
System_Xml_Linq_XName_op_Equality_System_Xml_Linq_XName_System_Xml_Linq_XName:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xb5000099
.word 0xeb1f035f
.word 0x9a9f17e0
.word 0x14000015
.word 0xb500007a
.word 0xd2800000
.word 0x14000012
.word 0xeb1a033f
.word 0x9a9f17e0
.word 0x350001a0
.word 0xf9400b20
.word 0xf9400b41
bl _p_5
.word 0x53001c00
.word 0x340000c0
.word 0xf9400f20
.word 0xf9400f41
bl _p_4
.word 0x53001c1a
.word 0x14000002
.word 0xd280001a
.word 0x14000002
.word 0xd280003a
.word 0xaa1a03e0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_c4:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XName_op_Implicit_string
System_Xml_Linq_XName_op_Implicit_string:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xb500007a
.word 0xd280001a
.word 0x14000004
.word 0xaa1a03e0
bl System_Xml_Linq_XName_Get_string
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_c5:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XName_op_Inequality_System_Xml_Linq_XName_System_Xml_Linq_XName
System_Xml_Linq_XName_op_Inequality_System_Xml_Linq_XName_System_Xml_Linq_XName:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl System_Xml_Linq_XName_op_Equality_System_Xml_Linq_XName_System_Xml_Linq_XName
.word 0x53001c00
.word 0x6b1f001f
.word 0x9a9f17e0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_c6:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XName_ToString
System_Xml_Linq_XName_ToString:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf9400f40
.word 0xf90013a0
bl _p_6
.word 0xaa0003e1
.word 0xf94013a0
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000060
.word 0xf9400b40
.word 0x14000010

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #928]
.word 0xf90013a0
.word 0xf9400f41
.word 0xaa0103e0
.word 0xf940003e
bl _p_12
.word 0xaa0003e1
.word 0xf94013a0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #936]
.word 0xf9400b43
bl _p_103
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_c7:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNamespace__cctor
System_Xml_Linq_XNamespace__cctor:
.word 0xa9be7bfd
.word 0x910003fd

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #944]
bl _p_15
.word 0xf9000ba0
bl _p_104
.word 0xf9400ba1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #952]
.word 0xf9000001

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xf9400000
bl _p_88
.word 0xaa0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #960]
.word 0xf9000001

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #968]
bl _p_88
.word 0xaa0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #976]
.word 0xf9000001

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #984]
bl _p_88
.word 0xaa0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #992]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_c8:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNamespace__ctor_string
System_Xml_Linq_XNamespace__ctor_string:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xb4000240
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd280b261
bl _p_1
.word 0xaa0003e1
.word 0xd28068e0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2

Lme_c9:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNamespace_get_None
System_Xml_Linq_XNamespace_get_None:
.word 0xa9bf7bfd
.word 0x910003fd
bl _p_105

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #960]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_ca:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNamespace_get_Xml
System_Xml_Linq_XNamespace_get_Xml:
.word 0xa9bf7bfd
.word 0x910003fd
bl _p_105

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #976]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_cb:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNamespace_get_Xmlns
System_Xml_Linq_XNamespace_get_Xmlns:
.word 0xa9bf7bfd
.word 0x910003fd
bl _p_105

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #992]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_cc:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNamespace_Get_string
System_Xml_Linq_XNamespace_Get_string:
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf9000fbf
.word 0x390083bf
.word 0xf90017bf
bl _p_105

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #952]
.word 0xf9400000
.word 0xf9000fa0
.word 0x390083bf
.word 0xf9400fa0
.word 0x910083a1
bl _p_106
bl _p_105

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #952]
.word 0xf9400003
.word 0x9100a3a2
.word 0xaa0303e0
.word 0xaa1a03e1
.word 0xf940007e
bl _p_107
.word 0x53001c00
.word 0x35000280
bl _p_105

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1000]
bl _p_15
.word 0xf9002ba0
.word 0xaa1a03e1
bl _p_108
.word 0xf9402ba0
.word 0xf90017a0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #952]
.word 0xf9400003
.word 0xf94017a2
.word 0xaa0303e0
.word 0xaa1a03e1
.word 0xf940007e
bl _p_109
.word 0xf94017ba
.word 0x94000002
.word 0x14000008
.word 0xf90023be
.word 0x394083a0
.word 0x34000060
.word 0xf9400fa0
bl _p_110
.word 0xf94023be
.word 0xd61f03c0
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_cd:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNamespace_GetName_string
System_Xml_Linq_XNamespace_GetName_string:
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xf90013bf
.word 0x3900a3bf
.word 0xf9001bbf

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #952]
.word 0xf9400000
.word 0xf90013a0
.word 0x3900a3bf
.word 0xf94013a0
.word 0x9100a3a1
bl _p_106
.word 0xf9400f20
.word 0xb5000280

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1008]
bl _p_15
.word 0xf9002ba0
bl _p_111
.word 0xf9402ba0
.word 0xf9000f20
.word 0x91006321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9400f23
.word 0x9100c3a2
.word 0xaa0303e0
.word 0xaa1a03e1
.word 0xf940007e
bl _p_112
.word 0x53001c00
.word 0x35000220

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1016]
bl _p_15
.word 0xf9002ba0
.word 0xaa1a03e1
.word 0xaa1903e2
bl System_Xml_Linq_XName__ctor_string_System_Xml_Linq_XNamespace
.word 0xf9402ba0
.word 0xf9001ba0
.word 0xf9400f23
.word 0xf9401ba2
.word 0xaa0303e0
.word 0xaa1a03e1
.word 0xf940007e
bl _p_113
.word 0xf9401bba
.word 0x94000002
.word 0x14000008
.word 0xf90027be
.word 0x3940a3a0
.word 0x34000060
.word 0xf94013a0
bl _p_110
.word 0xf94027be
.word 0xd61f03c0
.word 0xaa1a03e0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_ce:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNamespace_get_NamespaceName
System_Xml_Linq_XNamespace_get_NamespaceName:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_cf:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNamespace_Equals_object
System_Xml_Linq_XNamespace_Equals_object:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb7
.word 0xf9000fba
.word 0xf90013a0
.word 0xaa0103fa
.word 0xf94013a0
.word 0xeb1a001f
.word 0x9a9f17e0
.word 0x34000060
.word 0xd2800020
.word 0x1400001e
.word 0xf90017ba
.word 0xaa1a03f7
.word 0xeb1f035f
.word 0x54000180
.word 0xf94017a0
.word 0xf9400000
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #1024]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800017
.word 0xaa1703fa
.word 0xaa1703e0
.word 0xd2800001
bl _p_114
.word 0x53001c00
.word 0x340000e0
.word 0xf94013a0
.word 0xf9400800
.word 0xf9400b41
bl _p_5
.word 0x53001c1a
.word 0x14000002
.word 0xd280001a
.word 0xaa1a03e0
.word 0xf9400bb7
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_d0:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNamespace_op_Equality_System_Xml_Linq_XNamespace_System_Xml_Linq_XNamespace
System_Xml_Linq_XNamespace_op_Equality_System_Xml_Linq_XNamespace_System_Xml_Linq_XNamespace:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xaa0103fa
.word 0xf9400fa0
.word 0xb4000120
.word 0xf9400fa0
.word 0xaa1a03e1
.word 0xf9400fa2
.word 0xf9400042
.word 0xf9402850
.word 0xd63f0200
.word 0x53001c1a
.word 0x14000003
.word 0xeb1f035f
.word 0x9a9f17fa
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_d1:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNamespace_op_Inequality_System_Xml_Linq_XNamespace_System_Xml_Linq_XNamespace
System_Xml_Linq_XNamespace_op_Inequality_System_Xml_Linq_XNamespace_System_Xml_Linq_XNamespace:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_4
.word 0x53001c00
.word 0x6b1f001f
.word 0x9a9f17e0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_d2:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNamespace_op_Implicit_string
System_Xml_Linq_XNamespace_op_Implicit_string:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xb40000ba
.word 0xaa1a03e0
bl _p_88
.word 0xaa0003fa
.word 0x14000002
.word 0xd280001a
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_d3:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNamespace_GetHashCode
System_Xml_Linq_XNamespace_GetHashCode:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400801
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9402030
.word 0xd63f0200
.word 0x93407c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_d4:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNamespace_ToString
System_Xml_Linq_XNamespace_ToString:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_d5:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNode__ctor
System_Xml_Linq_XNode__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_d6:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNode_set_PreviousNode_System_Xml_Linq_XNode
System_Xml_Linq_XNode_set_PreviousNode_System_Xml_Linq_XNode:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9001c20
.word 0x9100e021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_d7:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNode_get_NextNode
System_Xml_Linq_XNode_get_NextNode:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9402000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_d8:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNode_set_NextNode_System_Xml_Linq_XNode
System_Xml_Linq_XNode_set_NextNode_System_Xml_Linq_XNode:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9002020
.word 0x91010021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_d9:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNode_ToString_System_Xml_Linq_SaveOptions
System_Xml_Linq_XNode_ToString_System_Xml_Linq_SaveOptions:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #72]
bl _p_15
.word 0xf90023a0
bl _p_115
.word 0xf94023a0
.word 0xf9001ba0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #80]
bl _p_15
.word 0xf9001fa0
bl _p_17
.word 0xf9401ba0
.word 0xf9401fa2
.word 0xaa0203e1
.word 0xaa0103e3
.word 0xf940007e
.word 0xb9002c3f
.word 0xb9801ba3
.word 0xd280003e
.word 0x6b1e007f
.word 0x9a9f17e3
.word 0x6b1f007f
.word 0x9a9f17e3
.word 0xf940003e
.word 0x3900c043
.word 0xf940003e
.word 0xd280003e
.word 0x3900e05e
.word 0xf90013a0
bl _p_18
.word 0xaa0003e1
.word 0xf9400ba0
.word 0xf90017a1
.word 0xf9400ba2
.word 0xf9400042
.word 0xf9403c50
.word 0xd63f0200
.word 0xf94017a1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9408030
.word 0xd63f0200
.word 0xf94013a1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9401c30
.word 0xd63f0200
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_da:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNode_ReadFrom_System_Xml_XmlReader_System_Xml_Linq_LoadOptions
System_Xml_Linq_XNode_ReadFrom_System_Xml_XmlReader_System_Xml_Linq_LoadOptions:
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xaa1903e0
.word 0xf9400321
.word 0xf940c430
.word 0xd63f0200
.word 0x93407c00
.word 0x51000418
.word 0xd28001de
.word 0x6b1e031f
.word 0x54001902
.word 0xd37df300
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1032]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0xaa1903e0
.word 0xaa1a03e1
bl _p_71
.word 0x140000d6
.word 0xaa1903e0
.word 0xf9400321
.word 0xf940b030
.word 0xd63f0200
.word 0xf9001ba0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1040]
bl _p_15
.word 0xaa0003e3
.word 0xf9401ba0
.word 0xf9002460
.word 0x91012061
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xaa0303f8
.word 0xaa0303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xf940007e
bl _p_55
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9406c30
.word 0xd63f0200
.word 0xaa1803e0
.word 0x140000b3
.word 0xaa1903e0
.word 0xf9400321
.word 0xf940b030
.word 0xd63f0200
.word 0xf9001ba0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1048]
bl _p_15
.word 0xaa0003e3
.word 0xf9401ba0
.word 0xf9002460
.word 0x91012061
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xaa0303f8
.word 0xaa0303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xf940007e
bl _p_55
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9406c30
.word 0xd63f0200
.word 0xaa1803e0
.word 0x14000090
.word 0xaa1903e0
.word 0xf9400321
.word 0xf940d030
.word 0xd63f0200
.word 0xf9001fa0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf940b030
.word 0xd63f0200
.word 0xf90023a0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1056]
bl _p_15
.word 0xf9401fa1
.word 0xf94023a2
.word 0xf9001ba0
bl System_Xml_Linq_XProcessingInstruction__ctor_string_string
.word 0xf9401ba0
.word 0xaa0003f8
.word 0xaa1803e3
.word 0xaa0303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xf940007e
bl _p_55
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9406c30
.word 0xd63f0200
.word 0xaa1803e0
.word 0x14000070
.word 0xaa1903e0
.word 0xf9400321
.word 0xf940b030
.word 0xd63f0200
.word 0xf9001ba0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1064]
bl _p_15
.word 0xaa0003e3
.word 0xf9401ba0
.word 0xf9002460
.word 0x91012061
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xaa0303f8
.word 0xaa0303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xf940007e
bl _p_55
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9406c30
.word 0xd63f0200
.word 0xaa1803e0
.word 0x1400004d
.word 0xaa1903e0
.word 0xf9400321
.word 0xf940d030
.word 0xd63f0200
.word 0xf9001fa0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #1072]
.word 0xaa1903e0
.word 0xf9400322
.word 0xf940a050
.word 0xd63f0200
.word 0xf90023a0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #1080]
.word 0xaa1903e0
.word 0xf9400322
.word 0xf940a050
.word 0xd63f0200
.word 0xf90027a0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf940b030
.word 0xd63f0200
.word 0xf9002ba0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1088]
bl _p_15
.word 0xf9401fa1
.word 0xf94023a2
.word 0xf94027a3
.word 0xf9402ba4
.word 0xf9001ba0
bl System_Xml_Linq_XDocumentType__ctor_string_string_string_string
.word 0xf9401ba0
.word 0xaa0003f8
.word 0xaa1803e3
.word 0xaa0303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xf940007e
bl _p_55
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9406c30
.word 0xd63f0200
.word 0xaa1803e0
.word 0x1400001b

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd280b961
bl _p_1
.word 0xf9001ba0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf940c430
.word 0xd63f0200
.word 0x93407c00
.word 0xf9001fa0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1096]
bl _p_84
.word 0xaa0003e1
.word 0xf9401ba0
.word 0xf9401fa2
.word 0xb9001022
bl _p_93
.word 0xaa0003e1
.word 0xd28071a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_db:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNode_Remove
System_Xml_Linq_XNode_Remove:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003fa
.word 0xf9400b40
.word 0xb4000d00
.word 0xf9400b59
.word 0xaa1903e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf940005e
bl _p_8
.word 0xf9400b40
.word 0xaa0003e1
.word 0xf940003e
.word 0xf9402400
.word 0xeb1a001f
.word 0x54000201
.word 0xf9400b41
.word 0xf9402340
.word 0xf940003e
.word 0xf9002420
.word 0x91012021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9400b40
.word 0xaa0003e1
.word 0xf940003e
.word 0xf9402800
.word 0xeb1a001f
.word 0x54000201
.word 0xf9400b41
.word 0xf9401f40
.word 0xf940003e
.word 0xf9002820
.word 0x91014021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9401f40
.word 0xb40001e0
.word 0xf9401f41
.word 0xf9402340
.word 0xf9002020
.word 0x91010021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9402340
.word 0xb40001e0
.word 0xf9402341
.word 0xf9401f40
.word 0xf9001c20
.word 0x9100e021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9001f5f
.word 0xf900235f
.word 0xd2800000
.word 0xf9000b5f
.word 0x91004341
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xf940033e
bl _p_9
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd280c121
bl _p_1
.word 0xaa0003e1
.word 0xd28071a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2

Lme_dc:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNode_ToString
System_Xml_Linq_XNode_ToString:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xd2800001
bl _p_116
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_dd:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNode_Ancestors
System_Xml_Linq_XNode_Ancestors:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1104]
bl _p_15
.word 0xf9400ba1
.word 0xf9000c01
.word 0x91006002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x9280003e
.word 0xf2bffffe
.word 0xb9002c1e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_df:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNode__cctor
System_Xml_Linq_XNode__cctor:
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1112]
bl _p_117
.word 0xaa0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1120]
.word 0xf9000001

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1128]
bl _p_117
.word 0xaa0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1136]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_e0:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNode__Ancestorsc__Iterator0__ctor
System_Xml_Linq_XNode__Ancestorsc__Iterator0__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_e1:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNode__Ancestorsc__Iterator0_MoveNext
System_Xml_Linq_XNode__Ancestorsc__Iterator0_MoveNext:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003fa
.word 0xb9802f40
.word 0x9280001e
.word 0xf2bffffe
.word 0xb9002f5e
.word 0xaa0003f9
.word 0xd280005e
.word 0x6b1e001f
.word 0x54000b62
.word 0xd37df320
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1144]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0xaa1a03f9
.word 0xf9400f40
.word 0xf9400818
.word 0xaa1803f7
.word 0xeb1f031f
.word 0x54000160
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #40]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800017
.word 0xf9000b37
.word 0x91004320
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0x14000031
.word 0xf9400b40
.word 0xf9001340
.word 0x91008341
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x3940a340
.word 0x35000520
.word 0xd280003e
.word 0xb9002f5e
.word 0x14000026
.word 0xaa1a03f9
.word 0xf9400b40
.word 0xaa0003e1
.word 0xf940003e
.word 0xf9400818
.word 0xaa1803f7
.word 0xeb1f031f
.word 0x54000160
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #40]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800017
.word 0xf9000b37
.word 0x91004320
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0xf9400b40
.word 0xb5fff9e0
.word 0x9280001e
.word 0xf2bffffe
.word 0xb9002f5e
.word 0xd2800000
.word 0x14000002
.word 0xd2800020
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_e2:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNode__Ancestorsc__Iterator0_System_Collections_Generic_IEnumerator_System_Xml_Linq_XElement_get_Current
System_Xml_Linq_XNode__Ancestorsc__Iterator0_System_Collections_Generic_IEnumerator_System_Xml_Linq_XElement_get_Current:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9401000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_e3:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNode__Ancestorsc__Iterator0_System_Collections_IEnumerator_get_Current
System_Xml_Linq_XNode__Ancestorsc__Iterator0_System_Collections_IEnumerator_get_Current:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9401000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_e4:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNode__Ancestorsc__Iterator0_Dispose
System_Xml_Linq_XNode__Ancestorsc__Iterator0_Dispose:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xd280003e
.word 0x3900a01e
.word 0x9280001e
.word 0xf2bffffe
.word 0xb9002c1e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_e5:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNode__Ancestorsc__Iterator0_Reset
System_Xml_Linq_XNode__Ancestorsc__Iterator0_Reset:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd28073c0
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_2
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_e6:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNode__Ancestorsc__Iterator0_System_Collections_IEnumerable_GetEnumerator
System_Xml_Linq_XNode__Ancestorsc__Iterator0_System_Collections_IEnumerable_GetEnumerator:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
bl _p_118
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_e7:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNode__Ancestorsc__Iterator0_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator
System_Xml_Linq_XNode__Ancestorsc__Iterator0_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xeb1f035f
.word 0x10000011
.word 0x540004e0
.word 0x9100b340
.word 0xd2800001
.word 0x92800022
.word 0xf2bfffe2
.word 0x885ffc10
.word 0x6b02021f
.word 0x54000061
.word 0x8811fc01
.word 0x35ffff91
.word 0xaa1003e0
.word 0x9280003e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x54000061
.word 0xaa1a03e0
.word 0x14000013

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1104]
bl _p_15
.word 0xf9000fa0
.word 0xf9400f41
.word 0xf9000c01
.word 0x91006002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.word 0xd28073e0
.word 0xaa1103e1
bl _p_27

Lme_e8:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNodeDocumentOrderComparer__ctor
System_Xml_Linq_XNodeDocumentOrderComparer__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_e9:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNodeDocumentOrderComparer_Compare_System_Xml_Linq_XNode_System_Xml_Linq_XNode
System_Xml_Linq_XNodeDocumentOrderComparer_Compare_System_Xml_Linq_XNode_System_Xml_Linq_XNode:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xf90013a1
.word 0xaa0203fa
.word 0xf90017bf
.word 0xf9400fa0
.word 0xf94013a1
.word 0xaa1a03e2
bl _p_119
.word 0x93407c00
.word 0xaa0003fa
.word 0xd28000fe
.word 0x6b1e035f
.word 0x540004c2
.word 0xd37df340
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1152]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0xd2800000
.word 0x1400001e
.word 0x9100a3a0
.word 0xf9001ba0
bl _p_120
.word 0xf9401bbe
.word 0xf90003c0
.word 0xf94017a0
.word 0xd29fffe1
.word 0xf2bfffe1
.word 0xf2dfffe1
.word 0xf2e7ffe1
.word 0x8a010000
.word 0xd37ffc01
.word 0x8b010000
.word 0xd280003e
.word 0x8a1e0000
.word 0xcb010000
.word 0xd280003e
.word 0xeb1e001f
.word 0x54000061
.word 0xd280003a
.word 0x14000003
.word 0x9280001a
.word 0xf2bffffa
.word 0xaa1a03e0
.word 0x14000005
.word 0xd2800020
.word 0x14000003
.word 0x92800000
.word 0xf2bfffe0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_ea:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNodeDocumentOrderComparer_CompareCore_System_Xml_Linq_XNode_System_Xml_Linq_XNode
System_Xml_Linq_XNodeDocumentOrderComparer_CompareCore_System_Xml_Linq_XNode_System_Xml_Linq_XNode:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa
.word 0xeb1a033f
.word 0x54000061
.word 0xd2800000
.word 0x1400009d
.word 0xf940033e
.word 0xf9400b20
.word 0xb5000520
.word 0xf940035e
.word 0xf9400b40
.word 0xb5000060
.word 0xd2800020
.word 0x14000095
.word 0xf940035e
.word 0xf9400b42
.word 0xaa1803e0
.word 0xaa1903e1
bl _p_119
.word 0x93407c00
.word 0xaa0003fa
.word 0xaa1a03f9
.word 0xd28000de
.word 0x6b1e033f
.word 0x540002e2
.word 0xd37df320
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1160]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0xd2800060
.word 0x14000080
.word 0xd28000a0
.word 0x1400007e

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd280c561
bl _p_1
.word 0xaa0003e1
.word 0xd2806e00
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2
.word 0xaa1a03e0
.word 0x14000072
.word 0xf940035e
.word 0xf9400b40
.word 0xb5000420
.word 0xaa1803e0
.word 0xaa1a03e1
.word 0xaa1903e2
bl _p_119
.word 0x93407c00
.word 0xaa0003f7
.word 0xaa1703f6
.word 0xd280011e
.word 0x6b1e02df
.word 0x540002e2
.word 0xd37df2c0
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1168]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0xd2800060
.word 0x1400005b
.word 0xd2800040
.word 0x14000059
.word 0xd28000a0
.word 0x14000057
.word 0xd2800080
.word 0x14000055
.word 0xd28000c0
.word 0x14000053
.word 0xd28000e0
.word 0x14000051
.word 0xaa1703e0
.word 0x1400004f
.word 0xf940033e
.word 0xf9400b21
.word 0xf940035e
.word 0xf9400b42
.word 0xaa1803e0
bl _p_119
.word 0x93407c00
.word 0xaa0003f7
.word 0xaa1703f6
.word 0xd28000de
.word 0x6b1e02df
.word 0x54000842
.word 0xd37df2c0
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1176]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0xaa1803e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xd2800003
bl System_Xml_Linq_XNodeDocumentOrderComparer_CompareSibling_System_Xml_Linq_XNode_System_Xml_Linq_XNode_System_Xml_Linq_XNodeDocumentOrderComparer_CompareResult
.word 0x93407c00
.word 0x14000034
.word 0xf940035e
.word 0xf9400b42
.word 0xaa1803e0
.word 0xaa1903e1
.word 0xd2800063
bl System_Xml_Linq_XNodeDocumentOrderComparer_CompareSibling_System_Xml_Linq_XNode_System_Xml_Linq_XNode_System_Xml_Linq_XNodeDocumentOrderComparer_CompareResult
.word 0x93407c00
.word 0x1400002c
.word 0xf940033e
.word 0xf9400b21
.word 0xaa1803e0
.word 0xaa1a03e2
.word 0xd2800043
bl System_Xml_Linq_XNodeDocumentOrderComparer_CompareSibling_System_Xml_Linq_XNode_System_Xml_Linq_XNode_System_Xml_Linq_XNodeDocumentOrderComparer_CompareResult
.word 0x93407c00
.word 0x14000024
.word 0xaa1a03f7
.word 0xf94002fe
.word 0xf9400ae0
.word 0xf940033e
.word 0xf9400b21
.word 0xeb01001f
.word 0x54000101
.word 0xaa1803e0
.word 0xaa1903e1
.word 0xaa1703e2
.word 0xd28000a3
bl System_Xml_Linq_XNodeDocumentOrderComparer_CompareSibling_System_Xml_Linq_XNode_System_Xml_Linq_XNode_System_Xml_Linq_XNodeDocumentOrderComparer_CompareResult
.word 0x93407c00
.word 0x14000016
.word 0xf94002fe
.word 0xf9400af7
.word 0x17fffff1
.word 0xaa1903f7
.word 0xf94002fe
.word 0xf9400ae0
.word 0xf940035e
.word 0xf9400b41
.word 0xeb01001f
.word 0x54000101
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xaa1a03e2
.word 0xd2800083
bl System_Xml_Linq_XNodeDocumentOrderComparer_CompareSibling_System_Xml_Linq_XNode_System_Xml_Linq_XNode_System_Xml_Linq_XNodeDocumentOrderComparer_CompareResult
.word 0x93407c00
.word 0x14000005
.word 0xf94002fe
.word 0xf9400af7
.word 0x17fffff1
.word 0xaa1703e0
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_eb:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNodeDocumentOrderComparer_CompareSibling_System_Xml_Linq_XNode_System_Xml_Linq_XNode_System_Xml_Linq_XNodeDocumentOrderComparer_CompareResult
System_Xml_Linq_XNodeDocumentOrderComparer_CompareSibling_System_Xml_Linq_XNode_System_Xml_Linq_XNode_System_Xml_Linq_XNodeDocumentOrderComparer_CompareResult:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90017a0
.word 0xaa0103f8
.word 0xaa0203f9
.word 0xaa0303fa
.word 0xeb19031f
.word 0x54000061
.word 0xaa1a03e0
.word 0x1400000c
.word 0xf940031e
.word 0xf940231a
.word 0x14000007
.word 0xeb19035f
.word 0x54000061
.word 0xd28000e0
.word 0x14000005
.word 0xf940035e
.word 0xf940235a
.word 0xb5ffff5a
.word 0xd28000c0
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_ec:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNodeDocumentOrderComparer_System_Collections_IComparer_Compare_object_object
System_Xml_Linq_XNodeDocumentOrderComparer_System_Collections_IComparer_Compare_object_object:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xf90013a2
.word 0xf90017b8
.word 0xaa1903f8
.word 0xb4000179
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #192]
.word 0xeb01001f
.word 0x10000011
.word 0x540002e1
.word 0xf94013b9
.word 0xf94013a0
.word 0xb4000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #192]
.word 0xeb01001f
.word 0x10000011
.word 0x54000141
.word 0xf94017a0
.word 0xaa1803e1
.word 0xaa1903e2
bl _p_121
.word 0x93407c00
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd2807180
.word 0xaa1103e1
bl _p_27

Lme_ed:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNodeEqualityComparer__ctor
System_Xml_Linq_XNodeEqualityComparer__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_ee:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNodeEqualityComparer_Equals_System_Xml_Linq_XNode_System_Xml_Linq_XNode
System_Xml_Linq_XNodeEqualityComparer_Equals_System_Xml_Linq_XNode_System_Xml_Linq_XNode:
.word 0xa9b67bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa
.word 0xf9001fbf
.word 0xf90023bf
.word 0xf90027bf
.word 0xb5000099
.word 0xeb1f035f
.word 0x9a9f17e0
.word 0x14000281
.word 0xb500007a
.word 0xd2800000
.word 0x1400027e
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9403830
.word 0xd63f0200
.word 0x93407c00
.word 0xf9004ba0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf9403830
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003e1
.word 0xf9404ba0
.word 0x6b01001f
.word 0x54000060
.word 0xd2800000
.word 0x1400026d
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9403830
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003f7
.word 0xaa1703e0
.word 0x51001c16
.word 0xd280009e
.word 0x6b1e02df
.word 0x54000122
.word 0xd37df2c0
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1184]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0x510006f6
.word 0xd280007e
.word 0x6b1e02df
.word 0x54004962
.word 0xd37df2c0
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1192]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0xaa1903f7
.word 0xb4000179
.word 0xf94002e0
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #840]
.word 0xeb01001f
.word 0x10000011
.word 0x54004901
.word 0xaa1703f9
.word 0xaa1a03f7
.word 0xb400017a
.word 0xf94002e0
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #840]
.word 0xeb01001f
.word 0x10000011
.word 0x54004761
.word 0xaa1703fa
.word 0xf940033e
.word 0xf9402f21
.word 0xf94002fe
.word 0xf9402ee2
.word 0xaa1803e0
bl System_Xml_Linq_XNodeEqualityComparer_Equals_System_Xml_Linq_XDeclaration_System_Xml_Linq_XDeclaration
.word 0x53001c00
.word 0x35000060
.word 0xd2800000
.word 0x1400022a
.word 0xaa1a03e0
.word 0xf940035e
bl _p_40
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #304]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003fa
.word 0xaa1903e0
.word 0xf940033e
bl _p_40
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #304]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9001fa0
.word 0x1400002c
.word 0xf9401fa1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #312]
.word 0x928005f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003f9
.word 0xaa1a03e0
.word 0xf9400341

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35000080
.word 0xd280001a
.word 0x94000022
.word 0x140001f3
.word 0xaa1a03e0
.word 0xf9400341

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #312]
.word 0x928005f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003e2
.word 0xaa1803e0
.word 0xaa1903e1
bl _p_122
.word 0x53001c00
.word 0x35000080
.word 0xd280001a
.word 0x94000010
.word 0x140001e1
.word 0xf9401fa1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fff940
.word 0x94000002
.word 0x14000010
.word 0xf90033be
.word 0xf9401fa0
.word 0xb4000160
.word 0xf9401fa1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94033be
.word 0xd61f03c0
.word 0xaa1a03e0
.word 0xf9400341

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x6b1f001f
.word 0x9a9f17e0
.word 0x140001b8
.word 0xaa1903f7
.word 0xb4000179
.word 0xf94002e0
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #40]
.word 0xeb01001f
.word 0x10000011
.word 0x54003641
.word 0xaa1703f9
.word 0xaa1a03f7
.word 0xb400017a
.word 0xf94002e0
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #40]
.word 0xeb01001f
.word 0x10000011
.word 0x540034a1
.word 0xaa1703fa
.word 0xf940033e
.word 0xf9402f20
.word 0xf94002fe
.word 0xf9402ee1
bl System_Xml_Linq_XName_op_Inequality_System_Xml_Linq_XName_System_Xml_Linq_XName
.word 0x53001c00
.word 0x34000060
.word 0xd2800000
.word 0x14000195
.word 0xaa1a03e0
.word 0xf940035e
bl _p_64
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #696]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003f7
.word 0xaa1903e0
.word 0xf940033e
bl _p_64
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #696]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf90023a0
.word 0x1400002c
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #704]
.word 0x928005f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003f6
.word 0xaa1703e0
.word 0xf94002e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35000080
.word 0xd280001a
.word 0x94000022
.word 0x1400015e
.word 0xaa1703e0
.word 0xf94002e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #704]
.word 0x928005f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003e2
.word 0xaa1803e0
.word 0xaa1603e1
bl System_Xml_Linq_XNodeEqualityComparer_Equals_System_Xml_Linq_XAttribute_System_Xml_Linq_XAttribute
.word 0x53001c00
.word 0x35000080
.word 0xd280001a
.word 0x94000010
.word 0x1400014c
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fff940
.word 0x94000002
.word 0x14000010
.word 0xf9003bbe
.word 0xf94023a0
.word 0xb4000160
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9403bbe
.word 0xd61f03c0
.word 0xaa1703e0
.word 0xf94002e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x34000060
.word 0xd2800000
.word 0x14000123
.word 0xaa1a03e0
.word 0xf940035e
bl _p_40
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #304]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003fa
.word 0xaa1903e0
.word 0xf940033e
bl _p_40
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #304]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf90027a0
.word 0x1400002c
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #312]
.word 0x928005f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003f9
.word 0xaa1a03e0
.word 0xf9400341

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35000080
.word 0xd280001a
.word 0x94000022
.word 0x140000ec
.word 0xaa1a03e0
.word 0xf9400341

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #312]
.word 0x928005f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003e2
.word 0xaa1803e0
.word 0xaa1903e1
bl _p_122
.word 0x53001c00
.word 0x35000080
.word 0xd280001a
.word 0x94000010
.word 0x140000da
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fff940
.word 0x94000002
.word 0x14000010
.word 0xf90043be
.word 0xf94027a0
.word 0xb4000160
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94043be
.word 0xd61f03c0
.word 0xaa1a03e0
.word 0xf9400341

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x6b1f001f
.word 0x9a9f17e0
.word 0x140000b1
.word 0xaa1903f8
.word 0xb4000179
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #1200]
.word 0xeb01001f
.word 0x10000011
.word 0x54001561
.word 0xaa1803f9
.word 0xaa1a03f8
.word 0xb400017a
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #1200]
.word 0xeb01001f
.word 0x10000011
.word 0x540013c1
.word 0xaa1803fa
.word 0xf940033e
.word 0xf9402720
.word 0xf940031e
.word 0xf9402701
bl _p_5
.word 0x53001c00
.word 0x14000090
.word 0xaa1903f8
.word 0xb4000179
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #1208]
.word 0xeb01001f
.word 0x10000011
.word 0x54001141
.word 0xaa1803f9
.word 0xaa1a03f8
.word 0xb400017a
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #1208]
.word 0xeb01001f
.word 0x10000011
.word 0x54000fa1
.word 0xaa1803fa
.word 0xf940033e
.word 0xf9402720
.word 0xf940031e
.word 0xf9402701
bl _p_5
.word 0x53001c00
.word 0x34000100
.word 0xf940033e
.word 0xf9402b20
.word 0xf940035e
.word 0xf9402b41
bl _p_5
.word 0x53001c1a
.word 0x14000002
.word 0xd280001a
.word 0xaa1a03e0
.word 0x14000065
.word 0xaa1903f8
.word 0xb4000179
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #544]
.word 0xeb01001f
.word 0x10000011
.word 0x54000be1
.word 0xaa1803f9
.word 0xaa1a03f8
.word 0xb400017a
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #544]
.word 0xeb01001f
.word 0x10000011
.word 0x54000a41
.word 0xaa1803fa
.word 0xf940033e
.word 0xf9402720
.word 0xf940031e
.word 0xf9402701
bl _p_5
.word 0x53001c00
.word 0x340002c0
.word 0xf940033e
.word 0xf9402b20
.word 0xf940035e
.word 0xf9402b41
bl _p_5
.word 0x53001c00
.word 0x340001e0
.word 0xf940033e
.word 0xf9402f20
.word 0xf940035e
.word 0xf9402f41
bl _p_5
.word 0x53001c00
.word 0x34000100
.word 0xf940033e
.word 0xf9403320
.word 0xf940035e
.word 0xf9403341
bl _p_5
.word 0x53001c1a
.word 0x14000002
.word 0xd280001a
.word 0xaa1a03e0
.word 0x1400002c
.word 0xaa1903f8
.word 0xb4000179
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #624]
.word 0xeb01001f
.word 0x10000011
.word 0x540004c1
.word 0xf940031e
.word 0xf9402719
.word 0xaa1a03f8
.word 0xb400017a
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #624]
.word 0xeb01001f
.word 0x10000011
.word 0x54000301
.word 0xf940031e
.word 0xf9402701
.word 0xaa1903e0
bl _p_5
.word 0x53001c00
.word 0x1400000c

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd280c561
bl _p_1
.word 0xaa0003e1
.word 0xd2806e00
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2
.word 0xaa1a03e0
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0
.word 0xd2807180
.word 0xaa1103e1
bl _p_27

Lme_ef:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNodeEqualityComparer_Equals_System_Xml_Linq_XAttribute_System_Xml_Linq_XAttribute
System_Xml_Linq_XNodeEqualityComparer_Equals_System_Xml_Linq_XAttribute_System_Xml_Linq_XAttribute:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0xaa0103f9
.word 0xaa0203fa
.word 0xb5000099
.word 0xeb1f035f
.word 0x9a9f17e0
.word 0x14000019
.word 0xb500007a
.word 0xd2800000
.word 0x14000016
.word 0xf940033e
.word 0xf9401f20
.word 0xf940035e
.word 0xf9401f41
bl System_Xml_Linq_XName_op_Equality_System_Xml_Linq_XName_System_Xml_Linq_XName
.word 0x53001c00
.word 0x340001a0
.word 0xaa1903e0
.word 0xf940033e
bl System_Xml_Linq_XAttribute_get_Value
.word 0xf9001ba0
.word 0xaa1a03e0
.word 0xf940035e
bl System_Xml_Linq_XAttribute_get_Value
.word 0xaa0003e1
.word 0xf9401ba0
bl _p_5
.word 0x53001c1a
.word 0x14000002
.word 0xd280001a
.word 0xaa1a03e0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_f0:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNodeEqualityComparer_Equals_System_Xml_Linq_XDeclaration_System_Xml_Linq_XDeclaration
System_Xml_Linq_XNodeEqualityComparer_Equals_System_Xml_Linq_XDeclaration_System_Xml_Linq_XDeclaration:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0xaa0103f9
.word 0xaa0203fa
.word 0xb5000099
.word 0xeb1f035f
.word 0x9a9f17e0
.word 0x1400001b
.word 0xb500007a
.word 0xd2800000
.word 0x14000018
.word 0xf940033e
.word 0xf9401320
.word 0xf940035e
.word 0xf9401341
bl _p_5
.word 0x53001c00
.word 0x340001e0
.word 0xf940033e
.word 0xf9400b20
.word 0xf940035e
.word 0xf9400b41
bl _p_5
.word 0x53001c00
.word 0x34000100
.word 0xf940033e
.word 0xf9400f20
.word 0xf940035e
.word 0xf9400f41
bl _p_5
.word 0x53001c1a
.word 0x14000002
.word 0xd280001a
.word 0xaa1a03e0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_f1:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNodeEqualityComparer_System_Collections_IEqualityComparer_Equals_object_object
System_Xml_Linq_XNodeEqualityComparer_System_Collections_IEqualityComparer_Equals_object_object:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xf90013a2
.word 0xf90017b8
.word 0xaa1903f8
.word 0xb4000179
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #192]
.word 0xeb01001f
.word 0x10000011
.word 0x540002e1
.word 0xf94013b9
.word 0xf94013a0
.word 0xb4000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #192]
.word 0xeb01001f
.word 0x10000011
.word 0x54000141
.word 0xf94017a0
.word 0xaa1803e1
.word 0xaa1903e2
bl _p_122
.word 0x53001c00
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd2807180
.word 0xaa1103e1
bl _p_27

Lme_f2:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNodeEqualityComparer_GetHashCode_System_Xml_Linq_XDeclaration
System_Xml_Linq_XNodeEqualityComparer_GetHashCode_System_Xml_Linq_XDeclaration:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xaa0103fa
.word 0xb500007a
.word 0xd2800000
.word 0x14000020
.word 0xf940035e
.word 0xf9401341
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9402030
.word 0xd63f0200
.word 0x93407c00
.word 0x53196000
.word 0xf90017a0
.word 0xf940035e
.word 0xf9400b41
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9402030
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003e1
.word 0xf94017a0
.word 0x531a6421
.word 0x4a010000
.word 0xf90013a0
.word 0xf940035e
.word 0xf9400f41
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9402030
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003e1
.word 0xf94013a0
.word 0x4a010000
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_f3:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNodeEqualityComparer_GetHashCode_System_Xml_Linq_XNode
System_Xml_Linq_XNodeEqualityComparer_GetHashCode_System_Xml_Linq_XNode:
.word 0xa9b57bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xf9001fbf
.word 0xf90023bf
.word 0xf90027bf
.word 0xb500007a
.word 0xd2800000
.word 0x14000190
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf9403830
.word 0xd63f0200
.word 0x93407c00
.word 0x531a6418
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf9403830
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003f7
.word 0xaa1703e0
.word 0x51001c16
.word 0xd280009e
.word 0x6b1e02df
.word 0x54000122
.word 0xd37df2c0
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1216]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0x510006f9
.word 0xd280007e
.word 0x6b1e033f
.word 0x54002e42
.word 0xd37df320
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1224]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0xaa1a03f7
.word 0xb400017a
.word 0xf94002e0
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #840]
.word 0xeb01001f
.word 0x10000011
.word 0x54002ca1
.word 0xaa1703fa
.word 0xf94002fe
.word 0xf9402ee1
.word 0xaa1903e0
bl System_Xml_Linq_XNodeEqualityComparer_GetHashCode_System_Xml_Linq_XDeclaration
.word 0x93407c00
.word 0x4a000318
.word 0xaa1703e0
.word 0xf94002fe
bl _p_40
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #304]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9001fa0
.word 0x14000013
.word 0xf9401fa1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #312]
.word 0x928005f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf9402030
.word 0xd63f0200
.word 0x93407c00
.word 0x531b6800
.word 0x4a000318
.word 0xf9401fa1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fffc60
.word 0x94000002
.word 0x14000128
.word 0xf90033be
.word 0xf9401fa0
.word 0xb4000160
.word 0xf9401fa1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94033be
.word 0xd61f03c0
.word 0xaa1a03f9
.word 0xb400017a
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #40]
.word 0xeb01001f
.word 0x10000011
.word 0x54002281
.word 0xaa1903fa
.word 0xf940033e
.word 0xf9402f21
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9402030
.word 0xd63f0200
.word 0x93407c00
.word 0x531d7000
.word 0x4a000318
.word 0xaa1903e0
.word 0xf940033e
bl _p_64
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #696]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf90023a0
.word 0x14000013
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #704]
.word 0x928005f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003f9
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9402030
.word 0xd63f0200
.word 0x93407c00
.word 0x53196000
.word 0x4a000318
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fffc60
.word 0x94000002
.word 0x14000010
.word 0xf9003bbe
.word 0xf94023a0
.word 0xb4000160
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9403bbe
.word 0xd61f03c0
.word 0xaa1a03e0
.word 0xf940035e
bl _p_40
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #304]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf90027a0
.word 0x14000013
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #312]
.word 0x928005f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf9402030
.word 0xd63f0200
.word 0x93407c00
.word 0x531a6400
.word 0x4a000318
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fffc60
.word 0x94000002
.word 0x14000096
.word 0xf90043be
.word 0xf94027a0
.word 0xb4000160
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94043be
.word 0xd61f03c0
.word 0xaa1803f9
.word 0xaa1a03f8
.word 0xb400017a
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #1200]
.word 0xeb01001f
.word 0x10000011
.word 0x54001021
.word 0xf940031e
.word 0xf9402701
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9402030
.word 0xd63f0200
.word 0x93407c00
.word 0x4a000338
.word 0x14000071
.word 0xaa1a03f9
.word 0xb400017a
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #1208]
.word 0xeb01001f
.word 0x10000011
.word 0x54000d81
.word 0xaa1903fa
.word 0xf940033e
.word 0xf9402721
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9402030
.word 0xd63f0200
.word 0x93407c00
.word 0x531a6400
.word 0xf9004ba0
.word 0xf940033e
.word 0xf9402b21
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9402030
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003e1
.word 0xf9404ba0
.word 0xb010000
.word 0x4a000318
.word 0x1400004f
.word 0xaa1a03f9
.word 0xb400017a
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #544]
.word 0xeb01001f
.word 0x10000011
.word 0x54000941
.word 0xaa1903fa
.word 0xf940033e
.word 0xf9402721
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9402030
.word 0xd63f0200
.word 0x93407c00
.word 0x53196000
.word 0x4a000300
.word 0xf90053a0
.word 0xf940033e
.word 0xf9402b21
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9402030
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003e1
.word 0xf94053a0
.word 0x531a6421
.word 0x4a010000
.word 0xf9004fa0
.word 0xf940033e
.word 0xf9402f21
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9402030
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003e1
.word 0xf9404fa0
.word 0x531b6821
.word 0x4a010000
.word 0xf9004ba0
.word 0xf940033e
.word 0xf9403321
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9402030
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003e1
.word 0xf9404ba0
.word 0x531c6c21
.word 0x4a010018
.word 0x14000014
.word 0xaa1803f9
.word 0xaa1a03f8
.word 0xb400017a
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #624]
.word 0xeb01001f
.word 0x10000011
.word 0x540001c1
.word 0xaa1803e0
.word 0xf9400301
.word 0xf9402030
.word 0xd63f0200
.word 0x93407c00
.word 0x4a000338
.word 0xaa1803e0
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0
.word 0xd2807180
.word 0xaa1103e1
bl _p_27

Lme_f4:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XNodeEqualityComparer_System_Collections_IEqualityComparer_GetHashCode_object
System_Xml_Linq_XNodeEqualityComparer_System_Collections_IEqualityComparer_GetHashCode_object:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1
.word 0xf90013b9
.word 0xf9400fb9
.word 0xf9400fa0
.word 0xb4000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #192]
.word 0xeb01001f
.word 0x10000011
.word 0x54000121
.word 0xf94013a0
.word 0xaa1903e1
bl _p_123
.word 0x93407c00
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd2807180
.word 0xaa1103e1
bl _p_27

Lme_f5:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XObject__ctor
System_Xml_Linq_XObject__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_f6:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XObject_set_BaseUri_string
System_Xml_Linq_XObject_set_BaseUri_string:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9000c20
.word 0x91006021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_f7:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XObject_get_Document
System_Xml_Linq_XObject_get_Document:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003fa
.word 0xaa1a03f9
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #840]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb40001f8
.word 0xaa1a03f9
.word 0xb400017a
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #840]
.word 0xeb01001f
.word 0x10000011
.word 0x54000541
.word 0xaa1903e0
.word 0x14000023
.word 0xf9400b59
.word 0x1400001f
.word 0xaa1903fa
.word 0xaa1903f8
.word 0xeb1f033f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #840]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb40001f8
.word 0xaa1903fa
.word 0xb4000179
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #840]
.word 0xeb01001f
.word 0x10000011
.word 0x54000161
.word 0xaa1a03e0
.word 0x14000004
.word 0xf9400b39
.word 0xb5fffc59
.word 0xd2800000
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd2807180
.word 0xaa1103e1
bl _p_27

Lme_f8:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XObject_get_Parent
System_Xml_Linq_XObject_get_Parent:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003fa
.word 0xf9400b59
.word 0xaa1903fa
.word 0xeb1f033f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #40]
.word 0xeb01001f
.word 0x54000040
.word 0xd280001a
.word 0xaa1a03e0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_fa:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XObject_get_Owner
System_Xml_Linq_XObject_get_Owner:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_fb:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XObject_SetOwner_System_Xml_Linq_XContainer
System_Xml_Linq_XObject_SetOwner_System_Xml_Linq_XContainer:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_fc:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XObject_get_LineNumber
System_Xml_Linq_XObject_get_LineNumber:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xb9803000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_fd:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XObject_set_LineNumber_int
System_Xml_Linq_XObject_set_LineNumber_int:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xb9801ba1
.word 0xf9400ba0
.word 0xb9003001
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_fe:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XObject_get_LinePosition
System_Xml_Linq_XObject_get_LinePosition:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xb9803400
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_ff:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XObject_set_LinePosition_int
System_Xml_Linq_XObject_set_LinePosition_int:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xb9801ba1
.word 0xf9400ba0
.word 0xb9003401
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_100:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XObject_System_Xml_IXmlLineInfo_get_LineNumber
System_Xml_Linq_XObject_System_Xml_IXmlLineInfo_get_LineNumber:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xb9803000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_101:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XObject_System_Xml_IXmlLineInfo_get_LinePosition
System_Xml_Linq_XObject_System_Xml_IXmlLineInfo_get_LinePosition:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xb9803400
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_102:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XObject_System_Xml_IXmlLineInfo_HasLineInfo
System_Xml_Linq_XObject_System_Xml_IXmlLineInfo_HasLineInfo:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xb9803000
.word 0x6b1f001f
.word 0x9a9fd7e0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_103:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XObject_FillLineInfoAndBaseUri_System_Xml_XmlReader_System_Xml_Linq_LoadOptions
System_Xml_Linq_XObject_FillLineInfoAndBaseUri_System_Xml_XmlReader_System_Xml_Linq_LoadOptions:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xaa0003f8
.word 0xf9001ba1
.word 0xf9001fa2
.word 0xb9803ba0
.word 0xd280009e
.word 0xa1e0000
.word 0x34000840
.word 0xf9401bb7
.word 0xaa1703f6
.word 0xb40002b7
.word 0xf94002d5
.word 0x794052a0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #1232]
.word 0xeb01001f
.word 0x540001c3
.word 0xf94012a0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #1232]
.word 0x9343fc22
.word 0x8b020000
.word 0x39400000
.word 0xd28000fe
.word 0xa1e0022
.word 0xd2800021
.word 0x1ac22021
.word 0xa010000
.word 0xb5000060
.word 0xd2800036
.word 0x14000002
.word 0xd2800016
.word 0x34000076
.word 0xd2800016
.word 0x14000002
.word 0xaa1703f6
.word 0xaa1603f7
.word 0xb4000456
.word 0xaa1703e0
.word 0xf94002e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #1240]
.word 0x92800ff0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x340002e0
.word 0xaa1703e0
.word 0xf94002e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #1248]
.word 0x928008f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x93407c00
.word 0xb9003300
.word 0xaa1703e0
.word 0xf94002e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #1256]
.word 0x928005f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x93407c00
.word 0xb9003700
.word 0xb9803ba0
.word 0xd280005e
.word 0xa1e0000
.word 0x34000240
.word 0xf9401ba0
.word 0xf9401ba1
.word 0xf9400021
.word 0xf940f830
.word 0xd63f0200
.word 0xf9000f00
.word 0x91006301
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xa9415bb5
.word 0xa94263b7
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_104:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XObject_OnAddingObject_object
System_Xml_Linq_XObject_OnAddingObject_object:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1264]
.word 0xf9400002
.word 0xf9400ba0
.word 0xf9400fa1
bl System_Xml_Linq_XObject_OnChanging_object_System_Xml_Linq_XObjectChangeEventArgs
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_105:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XObject_OnAddedObject_object
System_Xml_Linq_XObject_OnAddedObject_object:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1264]
.word 0xf9400002
.word 0xf9400ba0
.word 0xf9400fa1
bl System_Xml_Linq_XObject_OnChanged_object_System_Xml_Linq_XObjectChangeEventArgs
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_106:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XObject_OnNameChanging_object
System_Xml_Linq_XObject_OnNameChanging_object:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1272]
.word 0xf9400002
.word 0xf9400ba0
.word 0xf9400fa1
bl System_Xml_Linq_XObject_OnChanging_object_System_Xml_Linq_XObjectChangeEventArgs
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_107:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XObject_OnNameChanged_object
System_Xml_Linq_XObject_OnNameChanged_object:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1272]
.word 0xf9400002
.word 0xf9400ba0
.word 0xf9400fa1
bl System_Xml_Linq_XObject_OnChanged_object_System_Xml_Linq_XObjectChangeEventArgs
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_108:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XObject_OnRemovingObject_object
System_Xml_Linq_XObject_OnRemovingObject_object:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1280]
.word 0xf9400002
.word 0xf9400ba0
.word 0xf9400fa1
bl System_Xml_Linq_XObject_OnChanging_object_System_Xml_Linq_XObjectChangeEventArgs
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_109:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XObject_OnRemovedObject_object
System_Xml_Linq_XObject_OnRemovedObject_object:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1280]
.word 0xf9400002
.word 0xf9400ba0
.word 0xf9400fa1
bl System_Xml_Linq_XObject_OnChanged_object_System_Xml_Linq_XObjectChangeEventArgs
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_10a:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XObject_OnValueChanging_object
System_Xml_Linq_XObject_OnValueChanging_object:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1288]
.word 0xf9400002
.word 0xf9400ba0
.word 0xf9400fa1
bl System_Xml_Linq_XObject_OnChanging_object_System_Xml_Linq_XObjectChangeEventArgs
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_10b:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XObject_OnValueChanged_object
System_Xml_Linq_XObject_OnValueChanged_object:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1288]
.word 0xf9400002
.word 0xf9400ba0
.word 0xf9400fa1
bl System_Xml_Linq_XObject_OnChanged_object_System_Xml_Linq_XObjectChangeEventArgs
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_10c:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XObject_OnChanging_object_System_Xml_Linq_XObjectChangeEventArgs
System_Xml_Linq_XObject_OnChanging_object_System_Xml_Linq_XObjectChangeEventArgs:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xaa0003f8
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9401300
.word 0xb4000120
.word 0xf9401303
.word 0xaa0303e0
.word 0xf9400fa1
.word 0xf94013a2
.word 0xf9001ba3
.word 0xf9400c70
.word 0xd63f0200
.word 0xf9401ba0
.word 0xf9400b00
.word 0xb40000e0
.word 0xf9400b03
.word 0xaa0303e0
.word 0xf9400fa1
.word 0xf94013a2
.word 0xf940007e
bl System_Xml_Linq_XObject_OnChanging_object_System_Xml_Linq_XObjectChangeEventArgs
.word 0xf9400bb8
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_10d:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XObject_OnChanged_object_System_Xml_Linq_XObjectChangeEventArgs
System_Xml_Linq_XObject_OnChanged_object_System_Xml_Linq_XObjectChangeEventArgs:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xaa0003f8
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9401700
.word 0xb4000120
.word 0xf9401703
.word 0xaa0303e0
.word 0xf9400fa1
.word 0xf94013a2
.word 0xf9001ba3
.word 0xf9400c70
.word 0xd63f0200
.word 0xf9401ba0
.word 0xf9400b00
.word 0xb40000e0
.word 0xf9400b03
.word 0xaa0303e0
.word 0xf9400fa1
.word 0xf94013a2
.word 0xf940007e
bl System_Xml_Linq_XObject_OnChanged_object_System_Xml_Linq_XObjectChangeEventArgs
.word 0xf9400bb8
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_10e:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XObjectChangeEventArgs__ctor_System_Xml_Linq_XObjectChange
System_Xml_Linq_XObjectChangeEventArgs__ctor_System_Xml_Linq_XObjectChange:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xb9801ba1
.word 0xf9400ba0
.word 0xb9001001
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_10f:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XObjectChangeEventArgs__cctor
System_Xml_Linq_XObjectChangeEventArgs__cctor:
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1296]
bl _p_117
.word 0xaa0003e1
.word 0xb900103f

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1264]
.word 0xf9000001

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1296]
bl _p_117
.word 0xaa0003e1
.word 0xd280005e
.word 0xb900103e

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1272]
.word 0xf9000001

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1296]
bl _p_117
.word 0xaa0003e1
.word 0xd280003e
.word 0xb900103e

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1280]
.word 0xf9000001

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1296]
bl _p_117
.word 0xaa0003e1
.word 0xd280007e
.word 0xb900103e

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1288]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_110:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XProcessingInstruction__ctor_string_string
System_Xml_Linq_XProcessingInstruction__ctor_string_string:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xaa0003f8
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400fa0
.word 0xb4000420
.word 0xf94013a0
.word 0xb4000520
.word 0xf9400fa0
.word 0xf9002700
.word 0x91012301
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013a0
.word 0xf9002b00
.word 0x91014301
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9400bb8
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd280cde1
bl _p_1
.word 0xaa0003e1
.word 0xd28068e0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd280cfa1
bl _p_1
.word 0xaa0003e1
.word 0xd28068e0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2

Lme_111:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XProcessingInstruction__ctor_System_Xml_Linq_XProcessingInstruction
System_Xml_Linq_XProcessingInstruction__ctor_System_Xml_Linq_XProcessingInstruction:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xb4000400
.word 0xf9400fa0
.word 0xf9402401
.word 0xf9002721
.word 0x91012322
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xf9402800
.word 0xf9002b20
.word 0x91014321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2800021
bl _p_1
.word 0xaa0003e1
.word 0xd28068e0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2

Lme_112:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XProcessingInstruction_get_Data
System_Xml_Linq_XProcessingInstruction_get_Data:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9402800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_113:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XProcessingInstruction_set_Data_string
System_Xml_Linq_XProcessingInstruction_set_Data_string:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xb4000240
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9002820
.word 0x91014021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2800461
bl _p_1
.word 0xaa0003e1
.word 0xd28068e0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2

Lme_114:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XProcessingInstruction_get_NodeType
System_Xml_Linq_XProcessingInstruction_get_NodeType:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd28000e0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_115:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XProcessingInstruction_get_Target
System_Xml_Linq_XProcessingInstruction_get_Target:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9402400
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_116:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XProcessingInstruction_WriteTo_System_Xml_XmlWriter
System_Xml_Linq_XProcessingInstruction_WriteTo_System_Xml_XmlWriter:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9402401
.word 0xf9402802
.word 0xf9400fa0
.word 0xf9400fa3
.word 0xf9400063
.word 0xf9404c70
.word 0xd63f0200
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_117:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XText__ctor_string
System_Xml_Linq_XText__ctor_string:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9002420
.word 0x91012021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_118:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XText__ctor_System_Xml_Linq_XText
System_Xml_Linq_XText__ctor_System_Xml_Linq_XText:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9402400
.word 0xf9400ba1
.word 0xf9002420
.word 0x91012021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_119:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XText_get_NodeType
System_Xml_Linq_XText_get_NodeType:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2800060
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_11a:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XText_get_Value
System_Xml_Linq_XText_get_Value:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9402400
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_11b:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XText_set_Value_string
System_Xml_Linq_XText_set_Value_string:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xb4000240
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9002420
.word 0x91012021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2800461
bl _p_1
.word 0xaa0003e1
.word 0xd28068e0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2

Lme_11c:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XText_WriteTo_System_Xml_XmlWriter
System_Xml_Linq_XText_WriteTo_System_Xml_XmlWriter:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xf9402720
.word 0xb9801000
.word 0x6b1f001f
.word 0x5400062d
.word 0xf9402721

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1304]
.word 0xf9400000
.word 0xf90013a1
.word 0xb5000320

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1312]
bl _p_15
.word 0xaa0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1320]
.word 0xf9001420

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1328]
.word 0xf9001c20

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1336]
.word 0xf9401402
.word 0xf9000c22
.word 0xf9401000
.word 0xf9000820

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1304]
.word 0xf9000001

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1304]
.word 0xf9400001

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #1344]
.word 0xf94013a0
bl _p_124
.word 0x53001c00
.word 0x340000e0
.word 0xf9402721
.word 0xaa1a03e0
.word 0xf9400342
.word 0xf9403050
.word 0xd63f0200
.word 0x14000006
.word 0xf9402721
.word 0xaa1a03e0
.word 0xf9400342
.word 0xf9403450
.word 0xd63f0200
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_11d:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XText__WriteTom__0_char
System_Xml_Linq_XText__WriteTom__0_char:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xd280041e
.word 0x6b1e035f
.word 0x54000160
.word 0xd280013e
.word 0x6b1e035f
.word 0x54000100
.word 0xd28001be
.word 0x6b1e035f
.word 0x540000a0
.word 0xd280015e
.word 0x6b1e035f
.word 0x9a9f17fa
.word 0x14000002
.word 0xd280003a
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_11e:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XUtil_ToString_object
System_Xml_Linq_XUtil_ToString_object:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003fa
.word 0xd2800000
.word 0xf90027a0
.word 0xf9002ba0
.word 0x9e6703e0
.word 0xfd002fa0
.word 0x9e6703e0
.word 0x1e624010
.word 0xbd0063b0
.word 0xb4001d9a
.word 0xf9400340
.word 0xf9400c00
bl _p_125
.word 0x93407c00
.word 0xaa0003f9
.word 0xaa1903e0
.word 0x51003418
.word 0xd28000de
.word 0x6b1e031f
.word 0x54000122
.word 0xd37df300
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1352]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0xd280007e
.word 0x6b1e033f
.word 0x54000fc0
.word 0x14000086
.word 0xaa1a03f9
.word 0xb400017a
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #184]
.word 0xeb01001f
.word 0x10000011
.word 0x54001a81
.word 0xaa1903e0
.word 0x140000c3
.word 0xf9400340
.word 0x3940a801
.word 0xeb1f003f
.word 0x10000011
.word 0x540019a1
.word 0xf9400000
.word 0xf9400000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #1360]
.word 0xeb01001f
.word 0x10000011
.word 0x540018a1
.word 0x91004340
.word 0xf9400000
.word 0xf90023a0
.word 0xf94023a0
.word 0xd2800061
bl _p_126
.word 0x140000af
.word 0xf9400340
.word 0x3940a801
.word 0xeb1f003f
.word 0x10000011
.word 0x54001721
.word 0xf9400000
.word 0xf9400000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #1368]
.word 0xeb01001f
.word 0x10000011
.word 0x54001621
.word 0x91004340
.word 0xf9400001
.word 0xf90027a1
.word 0xf9400400
.word 0xf9002ba0
.word 0x910123a0
.word 0xf90043a0
bl _p_14
.word 0xf94043a0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #64]
.word 0xf9400021
bl _p_127
.word 0x14000093
.word 0xf9400340
.word 0x3940a801
.word 0xeb1f003f
.word 0x10000011
.word 0x540013a1
.word 0xf9400000
.word 0xf9400000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #1376]
.word 0xeb01001f
.word 0x10000011
.word 0x540012a1
.word 0xfd400b40
.word 0xfd002fa0
.word 0x910163a0
.word 0xf90043a0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1384]
.word 0xf90047a0
bl _p_14
.word 0xf94043a0
.word 0xf94047a1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #64]
.word 0xf9400042
bl _p_128
.word 0x14000075
.word 0xf9400340
.word 0x3940a801
.word 0xeb1f003f
.word 0x10000011
.word 0x54000fe1
.word 0xf9400000
.word 0xf9400000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #1392]
.word 0xeb01001f
.word 0x10000011
.word 0x54000ee1
.word 0xbd401350
.word 0x1e22c200
.word 0x1e624010
.word 0xbd0063b0
.word 0x910183a0
.word 0xf90043a0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1384]
.word 0xf90047a0
bl _p_14
.word 0xf94043a0
.word 0xf94047a1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #64]
.word 0xf9400042
bl _p_129
.word 0x14000055
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf9401c30
.word 0xd63f0200
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf940003e
bl _p_130
.word 0x1400004c
.word 0xaa1a03f9
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #1400]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb4000298
.word 0xf9400340
.word 0x3940a801
.word 0xeb1f003f
.word 0x10000011
.word 0x540008e1
.word 0xf9400000
.word 0xf9400000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #1400]
.word 0xeb01001f
.word 0x10000011
.word 0x540007e1
.word 0x91004340
.word 0xf9400000
.word 0xf9001fa0
.word 0xf9401fa0
bl _p_131
.word 0x1400002a
.word 0xaa1a03f9
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #1408]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb40002f8
.word 0xf9400340
.word 0x3940a801
.word 0xeb1f003f
.word 0x10000011
.word 0x540004a1
.word 0xf9400000
.word 0xf9400000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #1408]
.word 0xeb01001f
.word 0x10000011
.word 0x540003a1
.word 0x91004340
.word 0xf9400001
.word 0xf90017a1
.word 0xf9400400
.word 0xf9001ba0
.word 0xf94017a0
.word 0xf9401ba1
bl _p_132
.word 0x14000005
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf9401c30
.word 0xd63f0200
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd280d0e1
bl _p_1
.word 0xaa0003e1
.word 0xd28071a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2
.word 0xd2807180
.word 0xaa1103e1
bl _p_27

Lme_11f:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XUtil_ExpandArray_object
System_Xml_Linq_XUtil_ExpandArray_object:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1416]
bl _p_15
.word 0xf9400ba1
.word 0xf9000801
.word 0x91004002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900541e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_120:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XUtil_ToNode_object
System_Xml_Linq_XUtil_ToNode_object:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003fa
.word 0xaa1a03f9
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #688]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb5000b18
.word 0xaa1a03f9
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #192]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xaa1803f9
.word 0xb4000078
.word 0xaa1903e0
.word 0x14000041
.word 0xaa1a03f9
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #184]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb40003d8
.word 0xaa1a03f9
.word 0xb400017a
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #184]
.word 0xeb01001f
.word 0x10000011
.word 0x540006a1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1040]
bl _p_15
.word 0xf9002419
.word 0x91012001
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x14000015
.word 0xaa1a03e0
bl _p_7
.word 0xf9001ba0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1040]
bl _p_15
.word 0xf9401ba1
.word 0xf9002401
.word 0x91012002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd280d961
bl _p_1
.word 0xaa0003e1
.word 0xd28068c0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2
.word 0xd2807180
.word 0xaa1103e1
bl _p_27

Lme_121:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XUtil_GetDetachedObject_System_Xml_Linq_XObject
System_Xml_Linq_XUtil_GetDetachedObject_System_Xml_Linq_XObject:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003fa
.word 0xf940035e
.word 0xf9400b40
.word 0xb40000a0
.word 0xaa1a03e0
bl _p_133
.word 0xaa0003f9
.word 0x14000002
.word 0xaa1a03f9
.word 0xaa1903e0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_122:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XUtil_Clone_object
System_Xml_Linq_XUtil_Clone_object:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003fa
.word 0xaa1a03f9
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #184]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb40001f8
.word 0xaa1a03f9
.word 0xb400017a
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #184]
.word 0xeb01001f
.word 0x10000011
.word 0x540028e1
.word 0xaa1903e0
.word 0x14000140
.word 0xaa1a03f9
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #688]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb40002d8
.word 0xaa1a03f9
.word 0xb400017a
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #688]
.word 0xeb01001f
.word 0x10000011
.word 0x54002541

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #680]
bl _p_15
.word 0xf9001ba0
.word 0xaa1903e1
bl System_Xml_Linq_XAttribute__ctor_System_Xml_Linq_XAttribute
.word 0xf9401ba0
.word 0x1400011c
.word 0xaa1a03f9
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #40]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb40002d8
.word 0xaa1a03f9
.word 0xb400017a
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #40]
.word 0xeb01001f
.word 0x10000011
.word 0x540020c1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #656]
bl _p_15
.word 0xf9001ba0
.word 0xaa1903e1
bl System_Xml_Linq_XElement__ctor_System_Xml_Linq_XElement
.word 0xf9401ba0
.word 0x140000f8
.word 0xaa1a03f9
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #1424]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb40003f8
.word 0xaa1a03f9
.word 0xb400017a
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #1424]
.word 0xeb01001f
.word 0x10000011
.word 0x54001c41

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1048]
bl _p_15
.word 0xf9402721
.word 0xf9002401
.word 0x91012002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x140000cb
.word 0xaa1a03f9
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #1200]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb40003f8
.word 0xaa1a03f9
.word 0xb400017a
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #1200]
.word 0xeb01001f
.word 0x10000011
.word 0x540016a1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1064]
bl _p_15
.word 0xf9402721
.word 0xf9002401
.word 0x91012002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x1400009e
.word 0xaa1a03f9
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #1208]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb40002d8
.word 0xaa1a03f9
.word 0xb400017a
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #1208]
.word 0xeb01001f
.word 0x10000011
.word 0x54001101

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1056]
bl _p_15
.word 0xf9001ba0
.word 0xaa1903e1
bl System_Xml_Linq_XProcessingInstruction__ctor_System_Xml_Linq_XProcessingInstruction
.word 0xf9401ba0
.word 0x1400007a
.word 0xaa1a03f9
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #848]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb40002d8
.word 0xaa1a03f9
.word 0xb400017a
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #848]
.word 0xeb01001f
.word 0x10000011
.word 0x54000c81

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #592]
bl _p_15
.word 0xf9001ba0
.word 0xaa1903e1
bl System_Xml_Linq_XDeclaration__ctor_System_Xml_Linq_XDeclaration
.word 0xf9401ba0
.word 0x14000056
.word 0xaa1a03f9
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #544]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb40002d8
.word 0xaa1a03f9
.word 0xb400017a
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #544]
.word 0xeb01001f
.word 0x10000011
.word 0x54000801

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1088]
bl _p_15
.word 0xf9001ba0
.word 0xaa1903e1
bl System_Xml_Linq_XDocumentType__ctor_System_Xml_Linq_XDocumentType
.word 0xf9401ba0
.word 0x14000032
.word 0xaa1a03f9
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #624]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb40003f8
.word 0xaa1a03f9
.word 0xb400017a
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #624]
.word 0xeb01001f
.word 0x10000011
.word 0x54000381

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1040]
bl _p_15
.word 0xf9402721
.word 0xf9002401
.word 0x91012002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x14000005
.word 0xd28068c0
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_2
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2807180
.word 0xaa1103e1
bl _p_27

Lme_123:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XUtil__ExpandArrayc__Iterator0__ctor
System_Xml_Linq_XUtil__ExpandArrayc__Iterator0__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_124:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_MoveNext
System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_MoveNext:
.word 0xa9b47bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90017a0
.word 0x3900c3bf
.word 0xf9001fbf
.word 0xf94017a0
.word 0xb980541a
.word 0xf94017a0
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900541e
.word 0x3900c3bf
.word 0xaa1a03f9
.word 0xd28000be
.word 0x6b1e035f
.word 0x54003c02
.word 0xd37df320
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1432]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0xf94017ba
.word 0xf94017a0
.word 0xf9400819
.word 0xaa1903f8
.word 0xeb1f033f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #192]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xf9000f58
.word 0x91006340
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0xf94017a0
.word 0xf9400c00
.word 0xb40002e0
.word 0xf94017a1
.word 0xf94017a0
.word 0xf9400c00
.word 0xf9002420
.word 0x91012021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94017a0
.word 0x39414000
.word 0x35003520
.word 0xf94017a0
.word 0xd280003e
.word 0xb900541e
.word 0x140001a5
.word 0xf94017a0
.word 0xf940081a
.word 0xaa1a03f9
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #184]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800019
.word 0xb40002f9
.word 0xf94017a1
.word 0xf94017a0
.word 0xf9400800
.word 0xf9002420
.word 0x91012021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94017a0
.word 0x39414000
.word 0x35003060
.word 0xf94017a0
.word 0xd280005e
.word 0xb900541e
.word 0x1400017f
.word 0xf94017a0
.word 0xf940081a
.word 0xaa1a03f9
.word 0xb40002ba
.word 0xf9400338
.word 0x79405300

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #200]
.word 0xeb01001f
.word 0x540001c3
.word 0xf9401300

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #200]
.word 0x9343fc22
.word 0x8b020000
.word 0x39400000
.word 0xd28000fe
.word 0xa1e0022
.word 0xd2800021
.word 0x1ac22021
.word 0xa010000
.word 0xb5000060
.word 0xd2800039
.word 0x14000002
.word 0xd2800019
.word 0x34000079
.word 0xd2800019
.word 0x14000002
.word 0xaa1a03f9
.word 0xb4002879
.word 0xf94017ba
.word 0xf94017a0
.word 0xf9400819
.word 0xaa1903f8
.word 0xf90023b8
.word 0xb4000338
.word 0xf94023a0
.word 0xf9400000
.word 0x79405001

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #200]
.word 0xeb02003f
.word 0x10000011
.word 0x54002ac3
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #200]
.word 0x9343fc22
.word 0x8b020000
.word 0x39400000
.word 0xd28000fe
.word 0xa1e0022
.word 0xd2800021
.word 0x1ac22021
.word 0xa010000
.word 0xeb1f001f
.word 0x10000011
.word 0x540028e0
.word 0xaa1903e0
.word 0xf9400321

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #208]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9001340
.word 0x91008341
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x9280005a
.word 0xf2bffffa
.word 0x51000f59
.word 0xd280003e
.word 0x6b1e033f
.word 0x54000122
.word 0xd37df320
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1440]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0x1400009e
.word 0xf94017a0
.word 0xf9005fa0
.word 0xf94017a0
.word 0xf9401001
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #216]
.word 0x928003f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9405fa1
.word 0xf9001420
.word 0x9100a021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94017a0
.word 0xf9005ba0
.word 0xf94017a0
.word 0xf9401400
bl _p_34
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #240]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9405ba1
.word 0xf9001c20
.word 0x9100e021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x9280005a
.word 0xf2bffffa
.word 0x51000f59
.word 0xd280003e
.word 0x6b1e033f
.word 0x54000122
.word 0xd37df320
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1448]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0x14000035
.word 0xf94017a0
.word 0xf9005ba0
.word 0xf94017a0
.word 0xf9401c01
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #248]
.word 0x928005f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9405ba1
.word 0xf9002020
.word 0x91010021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94017a1
.word 0xf94017a0
.word 0xf9402000
.word 0xf9002420
.word 0x91012021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94017a0
.word 0x39414000
.word 0x35000080
.word 0xf94017a0
.word 0xd280007e
.word 0xb900541e
.word 0xd280003e
.word 0x3900c3be
.word 0x94000012
.word 0x94000035
.word 0x140000a4
.word 0xf94017a0
.word 0xf9401c01
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fff800
.word 0x94000002
.word 0x14000016
.word 0xf90053be
.word 0x3940c3a0
.word 0x34000060
.word 0xf94053be
.word 0xd61f03c0
.word 0xf94017a0
.word 0xf9401c00
.word 0xb4000180
.word 0xf94017a0
.word 0xf9401c01
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94053be
.word 0xd61f03c0
.word 0xf94017a0
.word 0xf9401001
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35ffeae0
.word 0x94000002
.word 0x1400006b
.word 0xf90057be
.word 0x3940c3a0
.word 0x34000060
.word 0xf94057be
.word 0xd61f03c0
.word 0xf94017a0
.word 0xf90027a0
.word 0xf94017a0
.word 0xf9401000
.word 0xf9002ba0
.word 0xf9402ba0
.word 0xf9002fa0
.word 0xf9402fa0
.word 0xb4000320
.word 0xf9402fa0
.word 0xf9400000
.word 0xf90043a0
.word 0xf94043a0
.word 0x79405000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #232]
.word 0xeb01001f
.word 0x540001e3
.word 0xf94043a0
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #232]
.word 0x9343fc22
.word 0x8b020000
.word 0x39400000
.word 0xd28000fe
.word 0xa1e0022
.word 0xd2800021
.word 0x1ac22021
.word 0xa010000
.word 0xb5000080
.word 0xd280003e
.word 0xf90033be
.word 0x14000002
.word 0xf90033bf
.word 0xf94033a0
.word 0x34000060
.word 0xf90037bf
.word 0x14000003
.word 0xf9402ba0
.word 0xf90037a0
.word 0xf94037a0
.word 0xf9003ba0
.word 0xf9403ba0
.word 0xf9003fa0
.word 0xf9403fa0
.word 0xf9403fa1
.word 0xf9001fa1
.word 0xf94027a1
.word 0xf9001820
.word 0xf94027a1
.word 0x9100c021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9401fa0
.word 0xb4000180
.word 0xf94017a0
.word 0xf9401801
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94057be
.word 0xd61f03c0
.word 0xf94017a1
.word 0xf94017a0
.word 0xf9400800
.word 0xf9002420
.word 0x91012021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94017a0
.word 0x39414000
.word 0x35000160
.word 0xf94017a0
.word 0xd280009e
.word 0xb900541e
.word 0x14000007
.word 0xf94017a0
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900541e
.word 0xd2800000
.word 0x14000002
.word 0xd2800020
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8cc7bfd
.word 0xd65f03c0
.word 0xd2807180
.word 0xaa1103e1
bl _p_27

Lme_125:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_System_Collections_Generic_IEnumerator_object_get_Current
System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_System_Collections_Generic_IEnumerator_object_get_Current:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9402400
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_126:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_System_Collections_IEnumerator_get_Current
System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_System_Collections_IEnumerator_get_Current:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9402400
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_127:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_Dispose
System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_Dispose:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fbf
.word 0xf9400ba0
.word 0xb9805400
.word 0xf9400ba1
.word 0xd280003e
.word 0x3901403e
.word 0xf9400ba1
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900543e
.word 0xf90013a0
.word 0xd28000be
.word 0x6b1e001f
.word 0x54000de2
.word 0xf94013a0
.word 0xd37df000
.word 0x2a0003e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1456]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0x94000002
.word 0x14000012
.word 0xf9003fbe
.word 0xf9400ba0
.word 0xf9401c00
.word 0xb4000180
.word 0xf9400ba0
.word 0xf9401c01
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9403fbe
.word 0xd61f03c0
.word 0x94000002
.word 0x14000051
.word 0xf90047be
.word 0xf9400ba0
.word 0xf90017a0
.word 0xf9400ba0
.word 0xf9401000
.word 0xf9001ba0
.word 0xf9401ba0
.word 0xf9001fa0
.word 0xf9401fa0
.word 0xb4000320
.word 0xf9401fa0
.word 0xf9400000
.word 0xf90033a0
.word 0xf94033a0
.word 0x79405000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #232]
.word 0xeb01001f
.word 0x540001e3
.word 0xf94033a0
.word 0xf9401000

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #232]
.word 0x9343fc22
.word 0x8b020000
.word 0x39400000
.word 0xd28000fe
.word 0xa1e0022
.word 0xd2800021
.word 0x1ac22021
.word 0xa010000
.word 0xb5000080
.word 0xd280003e
.word 0xf90023be
.word 0x14000002
.word 0xf90023bf
.word 0xf94023a0
.word 0x34000060
.word 0xf90027bf
.word 0x14000003
.word 0xf9401ba0
.word 0xf90027a0
.word 0xf94027a0
.word 0xf9002ba0
.word 0xf9402ba0
.word 0xf9002fa0
.word 0xf9402fa0
.word 0xf9402fa1
.word 0xf9000fa1
.word 0xf94017a1
.word 0xf9001820
.word 0xf94017a1
.word 0x9100c021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9400fa0
.word 0xb4000180
.word 0xf9400ba0
.word 0xf9401801
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94047be
.word 0xd61f03c0
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_128:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_Reset
System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_Reset:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd28073c0
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_2
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_129:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_System_Collections_IEnumerable_GetEnumerator
System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_System_Collections_IEnumerable_GetEnumerator:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
bl _p_134
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_12a:
.text
	.align 4
	.no_dead_strip System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_System_Collections_Generic_IEnumerable_object_GetEnumerator
System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_System_Collections_Generic_IEnumerable_object_GetEnumerator:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xeb1f035f
.word 0x10000011
.word 0x540004e0
.word 0x91015340
.word 0xd2800001
.word 0x92800022
.word 0xf2bfffe2
.word 0x885ffc10
.word 0x6b02021f
.word 0x54000061
.word 0x8811fc01
.word 0x35ffff91
.word 0xaa1003e0
.word 0x9280003e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x54000061
.word 0xaa1a03e0
.word 0x14000013

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1416]
bl _p_15
.word 0xf9000fa0
.word 0xf9400b41
.word 0xf9000801
.word 0x91004002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.word 0xd28073e0
.word 0xaa1103e1
bl _p_27

Lme_12b:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__IEnumerable_GetEnumerator_T
System_Array_InternalArray__IEnumerable_GetEnumerator_T:
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9001faf
.word 0xf9000ba0
.word 0xf9401fa0
bl _p_135
.word 0xf90023a0
.word 0xf94023a0
.word 0xb9800000
.word 0xf90023bf
.word 0xd2800000
.word 0xf90017a0
.word 0xf9001ba0
.word 0x9100a3a0
.word 0xf9002ba0
.word 0xf9401fa0
bl _p_136
.word 0xf9002fa0
.word 0xf9401fa0
bl _p_137
.word 0xaa0003e2
.word 0xf9402ba0
.word 0xf9402faf
.word 0xf9400ba1
.word 0xd63f0040
.word 0xf94017a0
.word 0xf9000fa0
.word 0xf9401ba0
.word 0xf90013a0
.word 0xf9401fa0
bl _p_136
bl _p_138
.word 0x91004003
.word 0xaa0303e1
.word 0xf9400fa2
.word 0xf9000062
.word 0xd349fc23
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e
.word 0x91002021
.word 0xf94013a2
.word 0xf9000022
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_12d:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_get_Count
System_Array_InternalArray__ICollection_get_Count:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xb9801800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_12e:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_get_IsReadOnly
System_Array_InternalArray__ICollection_get_IsReadOnly:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2800020
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_12f:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_Clear
System_Array_InternalArray__ICollection_Clear:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd28d3ec0
.word 0xf2a00020
bl _p_139
.word 0xaa0003e1
.word 0xd28073c0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_130:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_Add_T_T
System_Array_InternalArray__ICollection_Add_T_T:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf90013af
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf94013a0
bl _p_140
.word 0xf90017a0
.word 0xf94017a0
.word 0xb9800000
.word 0xf90017bf
.word 0xd28d44c0
.word 0xf2a00020
bl _p_139
.word 0xaa0003e1
.word 0xd28073c0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_131:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_Remove_T_T
System_Array_InternalArray__ICollection_Remove_T_T:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf90013af
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf94013a0
bl _p_141
.word 0xf90017a0
.word 0xf94017a0
.word 0xb9800000
.word 0xf90017bf
.word 0xd28d44c0
.word 0xf2a00020
bl _p_139
.word 0xaa0003e1
.word 0xd28073c0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_132:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_Contains_T_T
System_Array_InternalArray__ICollection_Contains_T_T:
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf9001baf
.word 0xaa0003fa
.word 0xf90017a1
.word 0xf9401ba0
bl _p_142
.word 0xaa0003f9
.word 0xb9800320
.word 0xf9001fbf
.word 0xf90023bf
.word 0xf9400340
.word 0x3940a800
.word 0xd280003e
.word 0x6b1e001f
.word 0x5400054c
.word 0xb9801b59
.word 0xd2800018
.word 0x1400001f
.word 0x910103a0
.word 0xf9002ba0
.word 0xf9401ba0
bl _p_143
.word 0xf9002fa0
.word 0xf9401ba0
bl _p_144
.word 0xaa0003e3
.word 0xf9402ba2
.word 0xf9402faf
.word 0xaa1a03e0
.word 0xaa1803e1
.word 0xd63f0060
.word 0xf94017a0
.word 0xb50000a0
.word 0xf94023a0
.word 0xb50001a0
.word 0xd2800020
.word 0x1400000f
.word 0xf94023a1
.word 0xf94017a2
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9402850
.word 0xd63f0200
.word 0x53001c00
.word 0x34000060
.word 0xd2800020
.word 0x14000005
.word 0x11000718
.word 0x6b19031f
.word 0x54fffc2b
.word 0xd2800000
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
.word 0xd28d4c40
.word 0xf2a00020
bl _p_139
bl _p_145
.word 0xaa0003e1
.word 0xd28075e0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2

Lme_133:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_CopyTo_T_T___int
System_Array_InternalArray__ICollection_CopyTo_T_T___int:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xa9025fb6
.word 0xa90367b8
.word 0xf90023ba
.word 0xf90027af
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa
.word 0xf94027a0
bl _p_146
.word 0xaa0003f7
.word 0xb98002e0
.word 0xf9002bbf
.word 0xb4000d59
.word 0xf9400300
.word 0x3940a800
.word 0xd280003e
.word 0x6b1e001f
.word 0x540007cc
.word 0xaa1a03f7
.word 0xaa1803f6
.word 0xf9400b15
.word 0xeb1f02bf
.word 0x54000060
.word 0xb98002b5
.word 0x14000002
.word 0xb9801ad5
.word 0xb1502f6
.word 0xf9400b37
.word 0xeb1f02ff
.word 0x54000060
.word 0xb98006f7
.word 0x14000002
.word 0xd2800017
.word 0xaa1903f5
.word 0xf9400b34
.word 0xeb1f029f
.word 0x54000060
.word 0xb9800294
.word 0x14000002
.word 0xb9801ab4
.word 0xb1402e0
.word 0x6b0002df
.word 0x540005cc
.word 0xf9400320
.word 0x3940a800
.word 0xd280003e
.word 0x6b1e001f
.word 0x5400062c
.word 0x6b1f035f
.word 0x5400070b
.word 0xaa1803f7
.word 0xf9400b16
.word 0xeb1f02df
.word 0x54000060
.word 0xb98006d6
.word 0x14000002
.word 0xd2800016
.word 0xaa1903f5
.word 0xaa1a03f9
.word 0xaa1803fa
.word 0xf9400b14
.word 0xeb1f029f
.word 0x54000060
.word 0xb9800298
.word 0x14000002
.word 0xb9801b58
.word 0xaa1703e0
.word 0xaa1603e1
.word 0xaa1503e2
.word 0xaa1903e3
.word 0xaa1803e4
bl _p_147
.word 0xa94157b4
.word 0xa9425fb6
.word 0xa94367b8
.word 0xf94023ba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.word 0xd28d4c40
.word 0xf2a00020
bl _p_139
bl _p_145
.word 0xaa0003e1
.word 0xd28075e0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2
.word 0xd28d5740
.word 0xf2a00020
bl _p_139
.word 0xaa0003e1
.word 0xd28068c0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2
.word 0xd28d4c40
.word 0xf2a00020
bl _p_139
bl _p_145
.word 0xaa0003e1
.word 0xd28075e0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2
.word 0xd28141e0
bl _p_139
.word 0xf90033a0
.word 0xd28d6fa0
.word 0xf2a00020
bl _p_139
bl _p_145
.word 0xaa0003e2
.word 0xf94033a1
.word 0xd2806900
.word 0xf2a04000
bl _mono_create_corlib_exception_2
bl _p_2
.word 0xd2810940
bl _p_139
.word 0xaa0003e1
.word 0xd28068e0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2

Lme_134:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Predicate_1_System_Xml_Linq_XElement_invoke_bool_T_System_Xml_Linq_XElement
wrapper_delegate_invoke_System_Predicate_1_System_Xml_Linq_XElement_invoke_bool_T_System_Xml_Linq_XElement:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xaa0003f9
.word 0xf90013a1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1464]
.word 0xb9400000
.word 0x350003a0
.word 0x14000001
.word 0xf9402f38
.word 0xaa1803e0
.word 0xb5000280
.word 0xf9401338
.word 0xaa1803e0
.word 0xb40000e0
.word 0xf9400b22
.word 0xaa1803e0
.word 0xf94013a1
.word 0xd63f0040
.word 0x53001c00
.word 0x14000005
.word 0xf9400b21
.word 0xf94013a0
.word 0xd63f0020
.word 0x53001c00
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xaa1803e0
bl _p_2
.word 0xaa1803e0
.word 0xf94013a1
.word 0xf9400f10
.word 0xd63f0200
.word 0x17ffffe9
bl _p_148
.word 0xaa0003f8
.word 0xb5fffee0
.word 0x17ffffe2

Lme_135:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Comparison_1_System_Xml_Linq_XElement_invoke_int_T_T_System_Xml_Linq_XElement_System_Xml_Linq_XElement
wrapper_delegate_invoke_System_Comparison_1_System_Xml_Linq_XElement_invoke_int_T_T_System_Xml_Linq_XElement_System_Xml_Linq_XElement:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xaa0003f8
.word 0xf90013a1
.word 0xf90017a2

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1464]
.word 0xb9400000
.word 0x35000420
.word 0x14000001
.word 0xf9402f17
.word 0xaa1703e0
.word 0xb50002c0
.word 0xf9401317
.word 0xaa1703e0
.word 0xb4000100
.word 0xf9400b03
.word 0xaa1703e0
.word 0xf94013a1
.word 0xf94017a2
.word 0xd63f0060
.word 0x93407c00
.word 0x14000006
.word 0xf9400b02
.word 0xf94013a0
.word 0xf94017a1
.word 0xd63f0040
.word 0x93407c00
.word 0xa94163b7
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xaa1703e0
bl _p_2
.word 0xaa1703e0
.word 0xf94013a1
.word 0xf94017a2
.word 0xf9400ef0
.word 0xd63f0200
.word 0x93407c00
.word 0x17ffffe5
bl _p_148
.word 0xaa0003f7
.word 0xb5fffea0
.word 0x17ffffde

Lme_136:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_System_Xml_Linq_XAttribute_bool_invoke_TResult_T_System_Xml_Linq_XAttribute
wrapper_delegate_invoke_System_Func_2_System_Xml_Linq_XAttribute_bool_invoke_TResult_T_System_Xml_Linq_XAttribute:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xaa0003f9
.word 0xf90013a1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1464]
.word 0xb9400000
.word 0x350003a0
.word 0x14000001
.word 0xf9402f38
.word 0xaa1803e0
.word 0xb5000280
.word 0xf9401338
.word 0xaa1803e0
.word 0xb40000e0
.word 0xf9400b22
.word 0xaa1803e0
.word 0xf94013a1
.word 0xd63f0040
.word 0x53001c00
.word 0x14000005
.word 0xf9400b21
.word 0xf94013a0
.word 0xd63f0020
.word 0x53001c00
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xaa1803e0
bl _p_2
.word 0xaa1803e0
.word 0xf94013a1
.word 0xf9400f10
.word 0xd63f0200
.word 0x17ffffe9
bl _p_148
.word 0xaa0003f8
.word 0xb5fffee0
.word 0x17ffffe2

Lme_13b:
.text
ut_317:
add x0, x0, 16
b System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace__ctor_System_Array
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace__ctor_System_Array
System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace__ctor_System_Array:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa1
.word 0xf9400ba0
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900081e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_13d:
.text
ut_318:
add x0, x0, 16
b System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_Dispose
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_Dispose
System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_Dispose:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900081e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_13e:
.text
ut_319:
add x0, x0, 16
b System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_MoveNext
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_MoveNext
System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_MoveNext:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xb9800b40
.word 0x9280003e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x54000081
.word 0xf9400340
.word 0xb9801800
.word 0xb9000b40
.word 0xb9800b40
.word 0x9280001e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x540001a0
.word 0xb9800b40
.word 0x51000400
.word 0xaa0003e1
.word 0xb9001ba0
.word 0xb9000b41
.word 0x9280001e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x9a9f17e0
.word 0x6b1f001f
.word 0x9a9f17fa
.word 0x14000002
.word 0xd280001a
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_13f:
.text
ut_320:
add x0, x0, 16
b System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_get_Current
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_get_Current
System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_get_Current:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xb9800b40
.word 0x9280003e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x54000380
.word 0xb9800b40
.word 0x9280001e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x540003e0
.word 0xf9400340
.word 0xf9400341
.word 0xb9801821
.word 0x51000421
.word 0xb9800b42
.word 0x4b020021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #1472]
.word 0xf940001e
.word 0x910063a2
.word 0xf90017a2
bl _p_149
.word 0xf94017be
.word 0xf90003c0
.word 0xf90007c1
.word 0xf9400bba
.word 0xf9400fa0
.word 0xf94013a1
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd28e6780
.word 0xf2a00020
bl _p_139
.word 0xaa0003e1
.word 0xd28071a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2
.word 0xd28e7240
.word 0xf2a00020
bl _p_139
.word 0xaa0003e1
.word 0xd28071a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2

Lme_140:
.text
ut_321:
add x0, x0, 16
b System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_System_Collections_IEnumerator_Reset
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_System_Collections_IEnumerator_Reset
System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_System_Collections_IEnumerator_Reset:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900081e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_141:
.text
ut_322:
add x0, x0, 16
b System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_System_Collections_IEnumerator_get_Current
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_System_Collections_IEnumerator_get_Current
System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_System_Collections_IEnumerator_get_Current:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #1480]
.word 0x910063a0
.word 0xf90017a0
.word 0xf9400ba0
bl _p_150
.word 0xf94017be
.word 0xf90003c0
.word 0xf90007c1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1488]
bl _p_15
.word 0x91004003
.word 0xaa0303e1
.word 0xf9400fa2
.word 0xf9000062
.word 0xd349fc23
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e
.word 0x91002022
.word 0xf94013a1
.word 0xf9000041
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_142:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__IEnumerable_GetEnumerator_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace
System_Array_InternalArray__IEnumerable_GetEnumerator_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2800000
.word 0xf90017a0
.word 0xf9001ba0
.word 0x9100a3a0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #1480]
.word 0xf9400ba1
bl _p_151
.word 0xf94017a0
.word 0xf9000fa0
.word 0xf9401ba0
.word 0xf90013a0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1480]
bl _p_15
.word 0x91004003
.word 0xaa0303e1
.word 0xf9400fa2
.word 0xf9000062
.word 0xd349fc23
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e
.word 0x91002021
.word 0xf94013a2
.word 0xf9000022
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_143:
.text
ut_325:
add x0, x0, 16
b System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName__ctor_System_Array
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName__ctor_System_Array
System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName__ctor_System_Array:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa1
.word 0xf9400ba0
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900081e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_145:
.text
ut_326:
add x0, x0, 16
b System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_Dispose
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_Dispose
System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_Dispose:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900081e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_146:
.text
ut_327:
add x0, x0, 16
b System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_MoveNext
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_MoveNext
System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_MoveNext:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xb9800b40
.word 0x9280003e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x54000081
.word 0xf9400340
.word 0xb9801800
.word 0xb9000b40
.word 0xb9800b40
.word 0x9280001e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x540001a0
.word 0xb9800b40
.word 0x51000400
.word 0xaa0003e1
.word 0xb9001ba0
.word 0xb9000b41
.word 0x9280001e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x9a9f17e0
.word 0x6b1f001f
.word 0x9a9f17fa
.word 0x14000002
.word 0xd280001a
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_147:
.text
ut_328:
add x0, x0, 16
b System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_get_Current
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_get_Current
System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_get_Current:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xb9800b40
.word 0x9280003e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x54000380
.word 0xb9800b40
.word 0x9280001e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x540003e0
.word 0xf9400340
.word 0xf9400341
.word 0xb9801821
.word 0x51000421
.word 0xb9800b42
.word 0x4b020021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #1496]
.word 0xf940001e
.word 0x910063a2
.word 0xf90017a2
bl _p_152
.word 0xf94017be
.word 0xf90003c0
.word 0xf90007c1
.word 0xf9400bba
.word 0xf9400fa0
.word 0xf94013a1
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd28e6780
.word 0xf2a00020
bl _p_139
.word 0xaa0003e1
.word 0xd28071a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2
.word 0xd28e7240
.word 0xf2a00020
bl _p_139
.word 0xaa0003e1
.word 0xd28071a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2

Lme_148:
.text
ut_329:
add x0, x0, 16
b System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_System_Collections_IEnumerator_Reset
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_System_Collections_IEnumerator_Reset
System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_System_Collections_IEnumerator_Reset:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900081e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_149:
.text
ut_330:
add x0, x0, 16
b System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_System_Collections_IEnumerator_get_Current
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_System_Collections_IEnumerator_get_Current
System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_System_Collections_IEnumerator_get_Current:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #1504]
.word 0x910063a0
.word 0xf90017a0
.word 0xf9400ba0
bl _p_153
.word 0xf94017be
.word 0xf90003c0
.word 0xf90007c1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1512]
bl _p_15
.word 0x91004003
.word 0xaa0303e1
.word 0xf9400fa2
.word 0xf9000062
.word 0xd349fc23
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e
.word 0x91002022
.word 0xf94013a1
.word 0xf9000041
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_14a:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__IEnumerable_GetEnumerator_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName
System_Array_InternalArray__IEnumerable_GetEnumerator_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2800000
.word 0xf90017a0
.word 0xf9001ba0
.word 0x9100a3a0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #1504]
.word 0xf9400ba1
bl _p_154
.word 0xf94017a0
.word 0xf9000fa0
.word 0xf9401ba0
.word 0xf90013a0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1504]
bl _p_15
.word 0x91004003
.word 0xaa0303e1
.word 0xf9400fa2
.word 0xf9000062
.word 0xd349fc23
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e
.word 0x91002021
.word 0xf94013a2
.word 0xf9000022
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_14b:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_EventHandler_1_System_Xml_Linq_XObjectChangeEventArgs_invoke_void_object_TEventArgs_object_System_Xml_Linq_XObjectChangeEventArgs
wrapper_delegate_invoke_System_EventHandler_1_System_Xml_Linq_XObjectChangeEventArgs_invoke_void_object_TEventArgs_object_System_Xml_Linq_XObjectChangeEventArgs:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xaa0003f8
.word 0xf90013a1
.word 0xf90017a2

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1464]
.word 0xb9400000
.word 0x350003c0
.word 0x14000001
.word 0xf9402f17
.word 0xaa1703e0
.word 0xb5000280
.word 0xf9401317
.word 0xaa1703e0
.word 0xb40000e0
.word 0xf9400b03
.word 0xaa1703e0
.word 0xf94013a1
.word 0xf94017a2
.word 0xd63f0060
.word 0x14000005
.word 0xf9400b02
.word 0xf94013a0
.word 0xf94017a1
.word 0xd63f0040
.word 0xa94163b7
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xaa1703e0
bl _p_2
.word 0xaa1703e0
.word 0xf94013a1
.word 0xf94017a2
.word 0xf9400ef0
.word 0xd63f0200
.word 0x17ffffe8
bl _p_148
.word 0xaa0003f7
.word 0xb5fffec0
.word 0x17ffffe1

Lme_14c:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_char_bool_invoke_TResult_T_char
wrapper_delegate_invoke_System_Func_2_char_bool_invoke_TResult_T_char:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xaa0003f9
.word 0xf90013a1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1464]
.word 0xb9400000
.word 0x350003a0
.word 0x14000001
.word 0xf9402f38
.word 0xaa1803e0
.word 0xb5000280
.word 0xf9401338
.word 0xaa1803e0
.word 0xb40000e0
.word 0xf9400b22
.word 0xaa1803e0
.word 0x794043a1
.word 0xd63f0040
.word 0x53001c00
.word 0x14000005
.word 0xf9400b21
.word 0x794043a0
.word 0xd63f0020
.word 0x53001c00
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xaa1803e0
bl _p_2
.word 0xaa1803e0
.word 0x794043a1
.word 0xf9400f10
.word 0xd63f0200
.word 0x17ffffe9
bl _p_148
.word 0xaa0003f8
.word 0xb5fffee0
.word 0x17ffffe2

Lme_151:
.text
	.align 4
	.no_dead_strip System_Linq_Enumerable_LastOrDefault_char_System_Collections_Generic_IEnumerable_1_char
System_Linq_Enumerable_LastOrDefault_char_System_Collections_Generic_IEnumerable_1_char:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003fa
.word 0xf9001bbf
.word 0xb40010da
.word 0xaa1a03f9
.word 0xaa1a03f8
.word 0xb40002ba
.word 0xf9400317
.word 0x794052e0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #1520]
.word 0xeb01001f
.word 0x540001c3
.word 0xf94012e0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #1520]
.word 0x9343fc22
.word 0x8b020000
.word 0x39400000
.word 0xd28000fe
.word 0xa1e0022
.word 0xd2800021
.word 0x1ac22021
.word 0xa010000
.word 0xb5000060
.word 0xd2800038
.word 0x14000002
.word 0xd2800018
.word 0x34000078
.word 0xd2800018
.word 0x14000002
.word 0xaa1903f8
.word 0xaa1803f9
.word 0xb40004d8
.word 0xaa1903e0
.word 0xf9400321

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #1528]
.word 0x928012f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x93407c00
.word 0x6b1f001f
.word 0x540002ed
.word 0xaa1903e0
.word 0xf9400321

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #1528]
.word 0x928012f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x93407c00
.word 0x51000401
.word 0xaa1903e0
.word 0xf9400322

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #1536]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x53003c1a
.word 0x14000002
.word 0xd280001a
.word 0xaa1a03e0
.word 0x1400003c
.word 0xd2800039
.word 0xd2800018
.word 0xaa1a03e0
.word 0xf9400341

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #1544]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9001ba0
.word 0x1400000e
.word 0xf9401ba1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #1552]
.word 0x928005f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53003c1a
.word 0xaa1a03f8
.word 0xd2800019
.word 0xf9401ba1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fffd00
.word 0x94000002
.word 0x14000010
.word 0xf90027be
.word 0xf9401ba0
.word 0xb4000160
.word 0xf9401ba1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94027be
.word 0xd61f03c0
.word 0x35000079
.word 0xaa1803e0
.word 0x14000002
.word 0xaa1803e0
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1560]
.word 0xd28a0d81
bl _p_1
.word 0xaa0003e1
.word 0xd28068e0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2

Lme_152:
.text
ut_340:
add x0, x0, 16
b System_Array_InternalEnumerator_1_char__ctor_System_Array
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_char__ctor_System_Array
System_Array_InternalEnumerator_1_char__ctor_System_Array:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa1
.word 0xf9400ba0
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900081e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_154:
.text
ut_341:
add x0, x0, 16
b System_Array_InternalEnumerator_1_char_Dispose
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_char_Dispose
System_Array_InternalEnumerator_1_char_Dispose:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900081e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_155:
.text
ut_342:
add x0, x0, 16
b System_Array_InternalEnumerator_1_char_MoveNext
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_char_MoveNext
System_Array_InternalEnumerator_1_char_MoveNext:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xb9800b40
.word 0x9280003e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x54000081
.word 0xf9400340
.word 0xb9801800
.word 0xb9000b40
.word 0xb9800b40
.word 0x9280001e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x540001a0
.word 0xb9800b40
.word 0x51000400
.word 0xaa0003e1
.word 0xb9001ba0
.word 0xb9000b41
.word 0x9280001e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x9a9f17e0
.word 0x6b1f001f
.word 0x9a9f17fa
.word 0x14000002
.word 0xd280001a
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_156:
.text
ut_343:
add x0, x0, 16
b System_Array_InternalEnumerator_1_char_get_Current
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_char_get_Current
System_Array_InternalEnumerator_1_char_get_Current:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xb9800b40
.word 0x9280003e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x540002c0
.word 0xb9800b40
.word 0x9280001e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x54000320
.word 0xf9400340
.word 0xf9400341
.word 0xb9801821
.word 0x51000421
.word 0xb9800b42
.word 0x4b020021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #1568]
.word 0xf940001e
bl _p_155
.word 0x53003c00
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.word 0xd28e6780
.word 0xf2a00020
bl _p_139
.word 0xaa0003e1
.word 0xd28071a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2
.word 0xd28e7240
.word 0xf2a00020
bl _p_139
.word 0xaa0003e1
.word 0xd28071a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2

Lme_157:
.text
ut_344:
add x0, x0, 16
b System_Array_InternalEnumerator_1_char_System_Collections_IEnumerator_Reset
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_char_System_Collections_IEnumerator_Reset
System_Array_InternalEnumerator_1_char_System_Collections_IEnumerator_Reset:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900081e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_158:
.text
ut_345:
add x0, x0, 16
b System_Array_InternalEnumerator_1_char_System_Collections_IEnumerator_get_Current
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_char_System_Collections_IEnumerator_get_Current
System_Array_InternalEnumerator_1_char_System_Collections_IEnumerator_get_Current:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #1576]
.word 0xf9400ba0
bl _p_156
.word 0xf90013a0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1584]
bl _p_84
.word 0xf94013a1
.word 0x79002001
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_159:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__IEnumerable_GetEnumerator_char
System_Array_InternalArray__IEnumerable_GetEnumerator_char:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2800000
.word 0xf90017a0
.word 0xf9001ba0
.word 0x9100a3a0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #1576]
.word 0xf9400ba1
bl _p_157
.word 0xf94017a0
.word 0xf9000fa0
.word 0xf9401ba0
.word 0xf90013a0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1576]
bl _p_15
.word 0x91004003
.word 0xaa0303e1
.word 0xf9400fa2
.word 0xf9000062
.word 0xd349fc23
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e
.word 0x91002021
.word 0xf94013a2
.word 0xf9000022
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_15a:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__Insert_char_int_char
System_Array_InternalArray__Insert_char_int_char:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xd28d44c0
.word 0xf2a00020
bl _p_139
.word 0xaa0003e1
.word 0xd28073c0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_160:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__RemoveAt_int
System_Array_InternalArray__RemoveAt_int:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xd28d44c0
.word 0xf2a00020
bl _p_139
.word 0xaa0003e1
.word 0xd28073c0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_161:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__IndexOf_char_char
System_Array_InternalArray__IndexOf_char_char:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0x790063bf
.word 0xf9400320
.word 0x3940a800
.word 0xd280003e
.word 0x6b1e001f
.word 0x5400078c
.word 0xb9801b38
.word 0xd2800017
.word 0x1400002b

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1592]
.word 0x93407ee0
.word 0xd37ff800
.word 0x8b000320
.word 0x91008000
.word 0x79400000
.word 0x790063a0
.word 0x1400000b
.word 0x1400001f
.word 0xaa1703fa
.word 0xf9400b38
.word 0xeb1f031f
.word 0x54000060
.word 0xb9800719
.word 0x14000002
.word 0xd2800019
.word 0xb190340
.word 0x14000020
.word 0x9100c3a0
.word 0xf90023a0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1584]
bl _p_84
.word 0xaa0003e1
.word 0xf94023a0
.word 0x7900203a
bl _p_158
.word 0x53001c00
.word 0x34000140
.word 0xaa1703fa
.word 0xf9400b38
.word 0xeb1f031f
.word 0x54000060
.word 0xb9800719
.word 0x14000002
.word 0xd2800019
.word 0xb190340
.word 0x1400000b
.word 0x110006f7
.word 0x6b1802ff
.word 0x54fffaab
.word 0xf9400b3a
.word 0xeb1f035f
.word 0x54000060
.word 0xb980075a
.word 0x14000002
.word 0xd280001a
.word 0x51000740
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xd28d4c40
.word 0xf2a00020
bl _p_139
.word 0xaa0003e1
.word 0xd28075e0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2

Lme_162:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__get_Item_char_int
System_Array_InternalArray__get_Item_char_int:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xaa0103fa
.word 0xf9400fa0
.word 0xb9801800
.word 0x6b00035f
.word 0x540001e2

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1592]
.word 0x93407f40
.word 0xd37ff801
.word 0xf9400fa0
.word 0x8b010000
.word 0x91008000
.word 0x7940001a
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.word 0xd28141e0
bl _p_139
.word 0xaa0003e1
.word 0xd2806900
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2

Lme_163:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__set_Item_char_int_char
System_Array_InternalArray__set_Item_char_int_char:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xaa0003f8
.word 0xf9001ba1
.word 0xf9001fa2
.word 0xb9801b01
.word 0xb98033a0
.word 0x6b01001f
.word 0x54000702
.word 0xaa1803f7
.word 0xaa1803f6
.word 0xeb1f031f
.word 0x54000280
.word 0xf94002f5
.word 0x3940aaa0
.word 0xd280003e
.word 0xeb1e001f
.word 0x540001c1
.word 0xf94002a0
.word 0xf9400417
.word 0xf94016e0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x1, [x16, #1600]
.word 0xeb01001f
.word 0x540000e1

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1608]
.word 0xeb0002ff
.word 0x54000040
.word 0xd2800016
.word 0xaa1603f7
.word 0xb4000216
.word 0x794073a0
.word 0xf90023a0

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1584]
bl _p_84
.word 0xaa0003e2
.word 0xf94023a0
.word 0x79002040
.word 0xaa1703e0
.word 0xb98033a1
.word 0xf94002e3
.word 0xf9407c70
.word 0xd63f0200
.word 0x1400000b

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1616]
.word 0xb98033a0
.word 0x93407c00
.word 0xd37ff800
.word 0x8b000300
.word 0x91008000
.word 0x794073a1
.word 0x79000001
.word 0xa9415bb5
.word 0xa94263b7
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xd28141e0
bl _p_139
.word 0xaa0003e1
.word 0xd2806900
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2

Lme_164:
.text
	.align 4
	.no_dead_strip System_Linq_Enumerable_All_char_System_Collections_Generic_IEnumerable_1_char_System_Func_2_char_bool
System_Linq_Enumerable_All_char_System_Collections_Generic_IEnumerable_1_char_System_Func_2_char_bool:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xf90013bf
.word 0xaa1903e0
.word 0xaa1a03e1
bl _p_159
.word 0xaa1903e0
.word 0xf9400321

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #1544]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf90013a0
.word 0x14000015
.word 0xf94013a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #1552]
.word 0x928005f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53003c19
.word 0xaa1a03e0
.word 0xaa1903e1
.word 0xf9400f50
.word 0xd63f0200
.word 0x53001c00
.word 0x35000080
.word 0xd280001a
.word 0x94000010
.word 0x14000020
.word 0xf94013a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fffc20
.word 0x94000002
.word 0x14000010
.word 0xf9001fbe
.word 0xf94013a0
.word 0xb4000160
.word 0xf94013a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x15, [x16, #88]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9401fbe
.word 0xd61f03c0
.word 0xd2800020
.word 0x14000002
.word 0xaa1a03e0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_166:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__get_Item_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_int
System_Array_InternalArray__get_Item_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_int:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf90013a0
.word 0xf90017a1
.word 0xd2800000
.word 0xf9001ba0
.word 0xf9001fa0
.word 0xf94013a0
.word 0xb9801801
.word 0xb9802ba0
.word 0x6b01001f
.word 0x540002e2

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1624]
.word 0xb9802ba0
.word 0x93407c00
.word 0xd37cec01
.word 0xf94013a0
.word 0x8b010000
.word 0x91008000
.word 0xf9400001
.word 0xf9001ba1
.word 0xf9400400
.word 0xf9001fa0
.word 0xf9401ba0
.word 0xf9000ba0
.word 0xf9401fa0
.word 0xf9000fa0
.word 0xf9400ba0
.word 0xf9400fa1
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd28141e0
bl _p_139
.word 0xaa0003e1
.word 0xd2806900
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2

Lme_167:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__get_Item_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_int
System_Array_InternalArray__get_Item_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_int:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf90013a0
.word 0xf90017a1
.word 0xd2800000
.word 0xf9001ba0
.word 0xf9001fa0
.word 0xf94013a0
.word 0xb9801801
.word 0xb9802ba0
.word 0x6b01001f
.word 0x540002e2

adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x0, [x16, #1632]
.word 0xb9802ba0
.word 0x93407c00
.word 0xd37cec01
.word 0xf94013a0
.word 0x8b010000
.word 0x91008000
.word 0xf9400001
.word 0xf9001ba1
.word 0xf9400400
.word 0xf9001fa0
.word 0xf9401ba0
.word 0xf9000ba0
.word 0xf9401fa0
.word 0xf9000fa0
.word 0xf9400ba0
.word 0xf9400fa1
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd28141e0
bl _p_139
.word 0xaa0003e1
.word 0xd2806900
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_2

Lme_168:
.text
	.align 3
jit_code_end:

	.byte 0,0,0,0
.text
	.align 3
method_addresses:
	.no_dead_strip method_addresses
bl System_Xml_Linq_XAttribute__ctor_System_Xml_Linq_XAttribute
bl System_Xml_Linq_XAttribute__ctor_System_Xml_Linq_XName_object
bl System_Xml_Linq_XAttribute_get_IsNamespaceDeclaration
bl System_Xml_Linq_XAttribute_get_Name
bl System_Xml_Linq_XAttribute_get_NextAttribute
bl System_Xml_Linq_XAttribute_set_NextAttribute_System_Xml_Linq_XAttribute
bl System_Xml_Linq_XAttribute_get_NodeType
bl System_Xml_Linq_XAttribute_set_PreviousAttribute_System_Xml_Linq_XAttribute
bl System_Xml_Linq_XAttribute_get_Value
bl System_Xml_Linq_XAttribute_set_Value_string
bl System_Xml_Linq_XAttribute_Remove
bl System_Xml_Linq_XAttribute_SetValue_object
bl System_Xml_Linq_XAttribute_GetPrefixOfNamespace_System_Xml_Linq_XNamespace
bl System_Xml_Linq_XAttribute_ToString
bl System_Xml_Linq_XAttribute__cctor
bl System_Xml_Linq_XCData__ctor_string
bl System_Xml_Linq_XCData__ctor_System_Xml_Linq_XCData
bl System_Xml_Linq_XCData_get_NodeType
bl System_Xml_Linq_XCData_WriteTo_System_Xml_XmlWriter
bl System_Xml_Linq_XComment__ctor_string
bl System_Xml_Linq_XComment__ctor_System_Xml_Linq_XComment
bl System_Xml_Linq_XComment_get_NodeType
bl System_Xml_Linq_XComment_get_Value
bl System_Xml_Linq_XComment_set_Value_string
bl System_Xml_Linq_XComment_WriteTo_System_Xml_XmlWriter
bl System_Xml_Linq_XContainer__ctor
bl System_Xml_Linq_XContainer_get_FirstNode
bl System_Xml_Linq_XContainer_set_FirstNode_System_Xml_Linq_XNode
bl System_Xml_Linq_XContainer_get_LastNode
bl System_Xml_Linq_XContainer_set_LastNode_System_Xml_Linq_XNode
bl System_Xml_Linq_XContainer_CheckChildType_object_bool
bl System_Xml_Linq_XContainer_Add_object
bl System_Xml_Linq_XContainer_AddNode_System_Xml_Linq_XNode
bl System_Xml_Linq_XContainer_Add_object__
bl System_Xml_Linq_XContainer_OnAddingObject_object_bool_System_Xml_Linq_XNode_bool
bl System_Xml_Linq_XContainer_Nodes
bl System_Xml_Linq_XContainer_DescendantNodes
bl System_Xml_Linq_XContainer_Descendants
bl System_Xml_Linq_XContainer_Descendants_System_Xml_Linq_XName
bl System_Xml_Linq_XContainer_Elements
bl System_Xml_Linq_XContainer_Elements_System_Xml_Linq_XName
bl System_Xml_Linq_XContainer_Element_System_Xml_Linq_XName
bl System_Xml_Linq_XContainer_ReadContentFrom_System_Xml_XmlReader_System_Xml_Linq_LoadOptions
bl System_Xml_Linq_XContainer_RemoveNodes
bl System_Xml_Linq_XContainer__Nodesc__Iterator0__ctor
bl System_Xml_Linq_XContainer__Nodesc__Iterator0_MoveNext
bl System_Xml_Linq_XContainer__Nodesc__Iterator0_System_Collections_Generic_IEnumerator_System_Xml_Linq_XNode_get_Current
bl System_Xml_Linq_XContainer__Nodesc__Iterator0_System_Collections_IEnumerator_get_Current
bl System_Xml_Linq_XContainer__Nodesc__Iterator0_Dispose
bl System_Xml_Linq_XContainer__Nodesc__Iterator0_Reset
bl System_Xml_Linq_XContainer__Nodesc__Iterator0_System_Collections_IEnumerable_GetEnumerator
bl System_Xml_Linq_XContainer__Nodesc__Iterator0_System_Collections_Generic_IEnumerable_System_Xml_Linq_XNode_GetEnumerator
bl System_Xml_Linq_XContainer__DescendantNodesc__Iterator1__ctor
bl System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_MoveNext
bl System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_System_Collections_Generic_IEnumerator_System_Xml_Linq_XNode_get_Current
bl System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_System_Collections_IEnumerator_get_Current
bl System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_Dispose
bl System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_Reset
bl System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_System_Collections_IEnumerable_GetEnumerator
bl System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_System_Collections_Generic_IEnumerable_System_Xml_Linq_XNode_GetEnumerator
bl System_Xml_Linq_XContainer__Descendantsc__Iterator2__ctor
bl System_Xml_Linq_XContainer__Descendantsc__Iterator2_MoveNext
bl System_Xml_Linq_XContainer__Descendantsc__Iterator2_System_Collections_Generic_IEnumerator_System_Xml_Linq_XElement_get_Current
bl System_Xml_Linq_XContainer__Descendantsc__Iterator2_System_Collections_IEnumerator_get_Current
bl System_Xml_Linq_XContainer__Descendantsc__Iterator2_Dispose
bl System_Xml_Linq_XContainer__Descendantsc__Iterator2_Reset
bl System_Xml_Linq_XContainer__Descendantsc__Iterator2_System_Collections_IEnumerable_GetEnumerator
bl System_Xml_Linq_XContainer__Descendantsc__Iterator2_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator
bl System_Xml_Linq_XContainer__Descendantsc__Iterator3__ctor
bl System_Xml_Linq_XContainer__Descendantsc__Iterator3_MoveNext
bl System_Xml_Linq_XContainer__Descendantsc__Iterator3_System_Collections_Generic_IEnumerator_System_Xml_Linq_XElement_get_Current
bl System_Xml_Linq_XContainer__Descendantsc__Iterator3_System_Collections_IEnumerator_get_Current
bl System_Xml_Linq_XContainer__Descendantsc__Iterator3_Dispose
bl System_Xml_Linq_XContainer__Descendantsc__Iterator3_Reset
bl System_Xml_Linq_XContainer__Descendantsc__Iterator3_System_Collections_IEnumerable_GetEnumerator
bl System_Xml_Linq_XContainer__Descendantsc__Iterator3_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator
bl System_Xml_Linq_XContainer__Elementsc__Iterator4__ctor
bl System_Xml_Linq_XContainer__Elementsc__Iterator4_MoveNext
bl System_Xml_Linq_XContainer__Elementsc__Iterator4_System_Collections_Generic_IEnumerator_System_Xml_Linq_XElement_get_Current
bl System_Xml_Linq_XContainer__Elementsc__Iterator4_System_Collections_IEnumerator_get_Current
bl System_Xml_Linq_XContainer__Elementsc__Iterator4_Dispose
bl System_Xml_Linq_XContainer__Elementsc__Iterator4_Reset
bl System_Xml_Linq_XContainer__Elementsc__Iterator4_System_Collections_IEnumerable_GetEnumerator
bl System_Xml_Linq_XContainer__Elementsc__Iterator4_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator
bl System_Xml_Linq_XContainer__Elementsc__Iterator5__ctor
bl System_Xml_Linq_XContainer__Elementsc__Iterator5_MoveNext
bl System_Xml_Linq_XContainer__Elementsc__Iterator5_System_Collections_Generic_IEnumerator_System_Xml_Linq_XElement_get_Current
bl System_Xml_Linq_XContainer__Elementsc__Iterator5_System_Collections_IEnumerator_get_Current
bl System_Xml_Linq_XContainer__Elementsc__Iterator5_Dispose
bl System_Xml_Linq_XContainer__Elementsc__Iterator5_Reset
bl System_Xml_Linq_XContainer__Elementsc__Iterator5_System_Collections_IEnumerable_GetEnumerator
bl System_Xml_Linq_XContainer__Elementsc__Iterator5_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator
bl System_Xml_Linq_XDeclaration__ctor_string_string_string
bl System_Xml_Linq_XDeclaration__ctor_System_Xml_Linq_XDeclaration
bl System_Xml_Linq_XDeclaration_get_Encoding
bl System_Xml_Linq_XDeclaration_set_Encoding_string
bl System_Xml_Linq_XDeclaration_get_Standalone
bl System_Xml_Linq_XDeclaration_set_Standalone_string
bl System_Xml_Linq_XDeclaration_get_Version
bl System_Xml_Linq_XDeclaration_ToString
bl System_Xml_Linq_XDocument__ctor
bl System_Xml_Linq_XDocument_get_Declaration
bl System_Xml_Linq_XDocument_set_Declaration_System_Xml_Linq_XDeclaration
bl System_Xml_Linq_XDocument_get_DocumentType
bl System_Xml_Linq_XDocument_get_NodeType
bl System_Xml_Linq_XDocument_get_Root
bl System_Xml_Linq_XDocument_Load_System_IO_TextReader_System_Xml_Linq_LoadOptions
bl System_Xml_Linq_XDocument_LoadCore_System_Xml_XmlReader_System_Xml_Linq_LoadOptions
bl System_Xml_Linq_XDocument_ReadContent_System_Xml_XmlReader_System_Xml_Linq_LoadOptions
bl System_Xml_Linq_XDocument_ValidateWhitespace_string
bl System_Xml_Linq_XDocument_Parse_string
bl System_Xml_Linq_XDocument_Parse_string_System_Xml_Linq_LoadOptions
bl System_Xml_Linq_XDocument_WriteTo_System_Xml_XmlWriter
bl System_Xml_Linq_XDocument_OnAddingObject_object_bool_System_Xml_Linq_XNode_bool
bl System_Xml_Linq_XDocument_VerifyAddedNode_object_bool
bl System_Xml_Linq_XDocumentType__ctor_string_string_string_string
bl System_Xml_Linq_XDocumentType__ctor_System_Xml_Linq_XDocumentType
bl System_Xml_Linq_XDocumentType_get_Name
bl System_Xml_Linq_XDocumentType_get_PublicId
bl System_Xml_Linq_XDocumentType_get_SystemId
bl System_Xml_Linq_XDocumentType_get_InternalSubset
bl System_Xml_Linq_XDocumentType_get_NodeType
bl System_Xml_Linq_XDocumentType_WriteTo_System_Xml_XmlWriter
bl System_Xml_Linq_XElement__ctor_System_Xml_Linq_XName_object
bl System_Xml_Linq_XElement__ctor_System_Xml_Linq_XElement
bl System_Xml_Linq_XElement__ctor_System_Xml_Linq_XName
bl System_Xml_Linq_XElement_ConvertForAssignment_object
bl System_Xml_Linq_XElement_get_FirstAttribute
bl System_Xml_Linq_XElement_set_FirstAttribute_System_Xml_Linq_XAttribute
bl System_Xml_Linq_XElement_get_LastAttribute
bl System_Xml_Linq_XElement_set_LastAttribute_System_Xml_Linq_XAttribute
bl System_Xml_Linq_XElement_get_HasAttributes
bl System_Xml_Linq_XElement_get_HasElements
bl System_Xml_Linq_XElement_get_IsEmpty
bl System_Xml_Linq_XElement_get_Name
bl System_Xml_Linq_XElement_set_Name_System_Xml_Linq_XName
bl System_Xml_Linq_XElement_get_NodeType
bl System_Xml_Linq_XElement_get_Value
bl System_Xml_Linq_XElement_set_Value_string
bl System_Xml_Linq_XElement_Attribute_System_Xml_Linq_XName
bl System_Xml_Linq_XElement_Attributes
bl System_Xml_Linq_XElement_DefineDefaultSettings_System_Xml_XmlReaderSettings_System_Xml_Linq_LoadOptions
bl System_Xml_Linq_XElement_CreateDefaultSettings_System_Xml_Linq_LoadOptions
bl System_Xml_Linq_XElement_Load_System_IO_TextReader_System_Xml_Linq_LoadOptions
bl System_Xml_Linq_XElement_LoadCore_System_Xml_XmlReader_System_Xml_Linq_LoadOptions
bl System_Xml_Linq_XElement_Parse_string
bl System_Xml_Linq_XElement_Parse_string_System_Xml_Linq_LoadOptions
bl System_Xml_Linq_XElement_RemoveAttributes
bl System_Xml_Linq_XElement_Save_System_Xml_XmlWriter
bl System_Xml_Linq_XElement_DescendantsAndSelf
bl System_Xml_Linq_XElement_SetAttributeValue_System_Xml_Linq_XName_object
bl System_Xml_Linq_XElement_SetAttributeObject_System_Xml_Linq_XAttribute
bl System_Xml_Linq_XElement_LookupPrefix_string_System_Xml_XmlWriter
bl System_Xml_Linq_XElement_CreateDummyNamespace_int__System_Collections_Generic_IEnumerable_1_System_Xml_Linq_XAttribute_bool
bl System_Xml_Linq_XElement_WriteTo_System_Xml_XmlWriter
bl System_Xml_Linq_XElement_GetNamespaceOfPrefix_string
bl System_Xml_Linq_XElement_GetPrefixOfNamespace_System_Xml_Linq_XNamespace
bl System_Xml_Linq_XElement_GetPrefixOfNamespaceCore_System_Xml_Linq_XNamespace
bl System_Xml_Linq_XElement_ReplaceAttributes_object
bl System_Xml_Linq_XElement_ReplaceAttributes_object__
bl System_Xml_Linq_XElement_OnAddingObject_object_bool_System_Xml_Linq_XNode_bool
bl System_Xml_Linq_XElement_System_Xml_Serialization_IXmlSerializable_WriteXml_System_Xml_XmlWriter
bl System_Xml_Linq_XElement_System_Xml_Serialization_IXmlSerializable_ReadXml_System_Xml_XmlReader
bl System_Xml_Linq_XElement_System_Xml_Serialization_IXmlSerializable_GetSchema
bl System_Xml_Linq_XElement__cctor
bl System_Xml_Linq_XElement__CreateDummyNamespacem__0_System_Xml_Linq_XAttribute
bl System_Xml_Linq_XElement__Attributesc__Iterator0__ctor
bl System_Xml_Linq_XElement__Attributesc__Iterator0_MoveNext
bl System_Xml_Linq_XElement__Attributesc__Iterator0_System_Collections_Generic_IEnumerator_System_Xml_Linq_XAttribute_get_Current
bl System_Xml_Linq_XElement__Attributesc__Iterator0_System_Collections_IEnumerator_get_Current
bl System_Xml_Linq_XElement__Attributesc__Iterator0_Dispose
bl System_Xml_Linq_XElement__Attributesc__Iterator0_Reset
bl System_Xml_Linq_XElement__Attributesc__Iterator0_System_Collections_IEnumerable_GetEnumerator
bl System_Xml_Linq_XElement__Attributesc__Iterator0_System_Collections_Generic_IEnumerable_System_Xml_Linq_XAttribute_GetEnumerator
bl System_Xml_Linq_XElement__CreateDummyNamespacec__AnonStorey4__ctor
bl System_Xml_Linq_XElement__CreateDummyNamespacec__AnonStorey4__m__0_System_Xml_Linq_XAttribute
bl System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3__ctor
bl System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_MoveNext
bl System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_System_Collections_Generic_IEnumerator_string_get_Current
bl System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_System_Collections_IEnumerator_get_Current
bl System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_Dispose
bl System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_Reset
bl System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_System_Collections_IEnumerable_GetEnumerator
bl System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_System_Collections_Generic_IEnumerable_string_GetEnumerator
bl System_Xml_Linq_XName__ctor_System_Runtime_Serialization_SerializationInfo_System_Runtime_Serialization_StreamingContext
bl System_Xml_Linq_XName__ctor_string_System_Xml_Linq_XNamespace
bl System_Xml_Linq_XName_ErrorInvalidExpandedName
bl System_Xml_Linq_XName_get_LocalName
bl System_Xml_Linq_XName_get_Namespace
bl System_Xml_Linq_XName_get_NamespaceName
bl System_Xml_Linq_XName_Equals_object
bl System_Xml_Linq_XName_System_IEquatable_System_Xml_Linq_XName_Equals_System_Xml_Linq_XName
bl System_Xml_Linq_XName_Get_string
bl System_Xml_Linq_XName_ExpandName_string_string__string_
bl System_Xml_Linq_XName_Get_string_string
bl System_Xml_Linq_XName_GetHashCode
bl System_Xml_Linq_XName_op_Equality_System_Xml_Linq_XName_System_Xml_Linq_XName
bl System_Xml_Linq_XName_op_Implicit_string
bl System_Xml_Linq_XName_op_Inequality_System_Xml_Linq_XName_System_Xml_Linq_XName
bl System_Xml_Linq_XName_ToString
bl System_Xml_Linq_XNamespace__cctor
bl System_Xml_Linq_XNamespace__ctor_string
bl System_Xml_Linq_XNamespace_get_None
bl System_Xml_Linq_XNamespace_get_Xml
bl System_Xml_Linq_XNamespace_get_Xmlns
bl System_Xml_Linq_XNamespace_Get_string
bl System_Xml_Linq_XNamespace_GetName_string
bl System_Xml_Linq_XNamespace_get_NamespaceName
bl System_Xml_Linq_XNamespace_Equals_object
bl System_Xml_Linq_XNamespace_op_Equality_System_Xml_Linq_XNamespace_System_Xml_Linq_XNamespace
bl System_Xml_Linq_XNamespace_op_Inequality_System_Xml_Linq_XNamespace_System_Xml_Linq_XNamespace
bl System_Xml_Linq_XNamespace_op_Implicit_string
bl System_Xml_Linq_XNamespace_GetHashCode
bl System_Xml_Linq_XNamespace_ToString
bl System_Xml_Linq_XNode__ctor
bl System_Xml_Linq_XNode_set_PreviousNode_System_Xml_Linq_XNode
bl System_Xml_Linq_XNode_get_NextNode
bl System_Xml_Linq_XNode_set_NextNode_System_Xml_Linq_XNode
bl System_Xml_Linq_XNode_ToString_System_Xml_Linq_SaveOptions
bl System_Xml_Linq_XNode_ReadFrom_System_Xml_XmlReader_System_Xml_Linq_LoadOptions
bl System_Xml_Linq_XNode_Remove
bl System_Xml_Linq_XNode_ToString
bl method_addresses
bl System_Xml_Linq_XNode_Ancestors
bl System_Xml_Linq_XNode__cctor
bl System_Xml_Linq_XNode__Ancestorsc__Iterator0__ctor
bl System_Xml_Linq_XNode__Ancestorsc__Iterator0_MoveNext
bl System_Xml_Linq_XNode__Ancestorsc__Iterator0_System_Collections_Generic_IEnumerator_System_Xml_Linq_XElement_get_Current
bl System_Xml_Linq_XNode__Ancestorsc__Iterator0_System_Collections_IEnumerator_get_Current
bl System_Xml_Linq_XNode__Ancestorsc__Iterator0_Dispose
bl System_Xml_Linq_XNode__Ancestorsc__Iterator0_Reset
bl System_Xml_Linq_XNode__Ancestorsc__Iterator0_System_Collections_IEnumerable_GetEnumerator
bl System_Xml_Linq_XNode__Ancestorsc__Iterator0_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator
bl System_Xml_Linq_XNodeDocumentOrderComparer__ctor
bl System_Xml_Linq_XNodeDocumentOrderComparer_Compare_System_Xml_Linq_XNode_System_Xml_Linq_XNode
bl System_Xml_Linq_XNodeDocumentOrderComparer_CompareCore_System_Xml_Linq_XNode_System_Xml_Linq_XNode
bl System_Xml_Linq_XNodeDocumentOrderComparer_CompareSibling_System_Xml_Linq_XNode_System_Xml_Linq_XNode_System_Xml_Linq_XNodeDocumentOrderComparer_CompareResult
bl System_Xml_Linq_XNodeDocumentOrderComparer_System_Collections_IComparer_Compare_object_object
bl System_Xml_Linq_XNodeEqualityComparer__ctor
bl System_Xml_Linq_XNodeEqualityComparer_Equals_System_Xml_Linq_XNode_System_Xml_Linq_XNode
bl System_Xml_Linq_XNodeEqualityComparer_Equals_System_Xml_Linq_XAttribute_System_Xml_Linq_XAttribute
bl System_Xml_Linq_XNodeEqualityComparer_Equals_System_Xml_Linq_XDeclaration_System_Xml_Linq_XDeclaration
bl System_Xml_Linq_XNodeEqualityComparer_System_Collections_IEqualityComparer_Equals_object_object
bl System_Xml_Linq_XNodeEqualityComparer_GetHashCode_System_Xml_Linq_XDeclaration
bl System_Xml_Linq_XNodeEqualityComparer_GetHashCode_System_Xml_Linq_XNode
bl System_Xml_Linq_XNodeEqualityComparer_System_Collections_IEqualityComparer_GetHashCode_object
bl System_Xml_Linq_XObject__ctor
bl System_Xml_Linq_XObject_set_BaseUri_string
bl System_Xml_Linq_XObject_get_Document
bl method_addresses
bl System_Xml_Linq_XObject_get_Parent
bl System_Xml_Linq_XObject_get_Owner
bl System_Xml_Linq_XObject_SetOwner_System_Xml_Linq_XContainer
bl System_Xml_Linq_XObject_get_LineNumber
bl System_Xml_Linq_XObject_set_LineNumber_int
bl System_Xml_Linq_XObject_get_LinePosition
bl System_Xml_Linq_XObject_set_LinePosition_int
bl System_Xml_Linq_XObject_System_Xml_IXmlLineInfo_get_LineNumber
bl System_Xml_Linq_XObject_System_Xml_IXmlLineInfo_get_LinePosition
bl System_Xml_Linq_XObject_System_Xml_IXmlLineInfo_HasLineInfo
bl System_Xml_Linq_XObject_FillLineInfoAndBaseUri_System_Xml_XmlReader_System_Xml_Linq_LoadOptions
bl System_Xml_Linq_XObject_OnAddingObject_object
bl System_Xml_Linq_XObject_OnAddedObject_object
bl System_Xml_Linq_XObject_OnNameChanging_object
bl System_Xml_Linq_XObject_OnNameChanged_object
bl System_Xml_Linq_XObject_OnRemovingObject_object
bl System_Xml_Linq_XObject_OnRemovedObject_object
bl System_Xml_Linq_XObject_OnValueChanging_object
bl System_Xml_Linq_XObject_OnValueChanged_object
bl System_Xml_Linq_XObject_OnChanging_object_System_Xml_Linq_XObjectChangeEventArgs
bl System_Xml_Linq_XObject_OnChanged_object_System_Xml_Linq_XObjectChangeEventArgs
bl System_Xml_Linq_XObjectChangeEventArgs__ctor_System_Xml_Linq_XObjectChange
bl System_Xml_Linq_XObjectChangeEventArgs__cctor
bl System_Xml_Linq_XProcessingInstruction__ctor_string_string
bl System_Xml_Linq_XProcessingInstruction__ctor_System_Xml_Linq_XProcessingInstruction
bl System_Xml_Linq_XProcessingInstruction_get_Data
bl System_Xml_Linq_XProcessingInstruction_set_Data_string
bl System_Xml_Linq_XProcessingInstruction_get_NodeType
bl System_Xml_Linq_XProcessingInstruction_get_Target
bl System_Xml_Linq_XProcessingInstruction_WriteTo_System_Xml_XmlWriter
bl System_Xml_Linq_XText__ctor_string
bl System_Xml_Linq_XText__ctor_System_Xml_Linq_XText
bl System_Xml_Linq_XText_get_NodeType
bl System_Xml_Linq_XText_get_Value
bl System_Xml_Linq_XText_set_Value_string
bl System_Xml_Linq_XText_WriteTo_System_Xml_XmlWriter
bl System_Xml_Linq_XText__WriteTom__0_char
bl System_Xml_Linq_XUtil_ToString_object
bl System_Xml_Linq_XUtil_ExpandArray_object
bl System_Xml_Linq_XUtil_ToNode_object
bl System_Xml_Linq_XUtil_GetDetachedObject_System_Xml_Linq_XObject
bl System_Xml_Linq_XUtil_Clone_object
bl System_Xml_Linq_XUtil__ExpandArrayc__Iterator0__ctor
bl System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_MoveNext
bl System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_System_Collections_Generic_IEnumerator_object_get_Current
bl System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_System_Collections_IEnumerator_get_Current
bl System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_Dispose
bl System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_Reset
bl System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_System_Collections_IEnumerable_GetEnumerator
bl System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_System_Collections_Generic_IEnumerable_object_GetEnumerator
bl method_addresses
bl System_Array_InternalArray__IEnumerable_GetEnumerator_T
bl System_Array_InternalArray__ICollection_get_Count
bl System_Array_InternalArray__ICollection_get_IsReadOnly
bl System_Array_InternalArray__ICollection_Clear
bl System_Array_InternalArray__ICollection_Add_T_T
bl System_Array_InternalArray__ICollection_Remove_T_T
bl System_Array_InternalArray__ICollection_Contains_T_T
bl System_Array_InternalArray__ICollection_CopyTo_T_T___int
bl wrapper_delegate_invoke_System_Predicate_1_System_Xml_Linq_XElement_invoke_bool_T_System_Xml_Linq_XElement
bl wrapper_delegate_invoke_System_Comparison_1_System_Xml_Linq_XElement_invoke_int_T_T_System_Xml_Linq_XElement_System_Xml_Linq_XElement
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl wrapper_delegate_invoke_System_Func_2_System_Xml_Linq_XAttribute_bool_invoke_TResult_T_System_Xml_Linq_XAttribute
bl method_addresses
bl System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace__ctor_System_Array
bl System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_Dispose
bl System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_MoveNext
bl System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_get_Current
bl System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_System_Collections_IEnumerator_Reset
bl System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_System_Collections_IEnumerator_get_Current
bl System_Array_InternalArray__IEnumerable_GetEnumerator_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace
bl method_addresses
bl System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName__ctor_System_Array
bl System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_Dispose
bl System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_MoveNext
bl System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_get_Current
bl System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_System_Collections_IEnumerator_Reset
bl System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_System_Collections_IEnumerator_get_Current
bl System_Array_InternalArray__IEnumerable_GetEnumerator_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName
bl wrapper_delegate_invoke_System_EventHandler_1_System_Xml_Linq_XObjectChangeEventArgs_invoke_void_object_TEventArgs_object_System_Xml_Linq_XObjectChangeEventArgs
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl wrapper_delegate_invoke_System_Func_2_char_bool_invoke_TResult_T_char
bl System_Linq_Enumerable_LastOrDefault_char_System_Collections_Generic_IEnumerable_1_char
bl method_addresses
bl System_Array_InternalEnumerator_1_char__ctor_System_Array
bl System_Array_InternalEnumerator_1_char_Dispose
bl System_Array_InternalEnumerator_1_char_MoveNext
bl System_Array_InternalEnumerator_1_char_get_Current
bl System_Array_InternalEnumerator_1_char_System_Collections_IEnumerator_Reset
bl System_Array_InternalEnumerator_1_char_System_Collections_IEnumerator_get_Current
bl System_Array_InternalArray__IEnumerable_GetEnumerator_char
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl System_Array_InternalArray__Insert_char_int_char
bl System_Array_InternalArray__RemoveAt_int
bl System_Array_InternalArray__IndexOf_char_char
bl System_Array_InternalArray__get_Item_char_int
bl System_Array_InternalArray__set_Item_char_int_char
bl method_addresses
bl System_Linq_Enumerable_All_char_System_Collections_Generic_IEnumerable_1_char_System_Func_2_char_bool
bl System_Array_InternalArray__get_Item_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_int
bl System_Array_InternalArray__get_Item_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_int
method_addresses_end:

.section __TEXT, __const
	.align 3
unbox_trampolines:

	.long 317,318,319,320,321,322,325,326
	.long 327,328,329,330,340,341,342,343
	.long 344,345
unbox_trampolines_end:

	.long 0
.text
	.align 3
unbox_trampoline_addresses:
bl ut_317
bl ut_318
bl ut_319
bl ut_320
bl ut_321
bl ut_322
bl ut_325
bl ut_326
bl ut_327
bl ut_328
bl ut_329
bl ut_330
bl ut_340
bl ut_341
bl ut_342
bl ut_343
bl ut_344
bl ut_345

	.long 0
.section __TEXT, __const
	.align 3
method_info_offsets:

	.long 361,10,37,2
	.short 0, 10, 20, 30, 40, 51, 62, 73
	.short 84, 95, 106, 117, 128, 139, 150, 161
	.short 172, 183, 194, 205, 216, 227, 238, 254
	.short 265, 280, 291, 302, 313, 324, 335, 346
	.short 367, 383, 403, 418, 434
	.byte 1,3,3,4,3,3,3,3,3,3,32,8,3,6,8,8,2,2,2,4,77,2,2,2,2,6,2,2,2,2,101,14
	.byte 6,3,6,2,3,3,3,3,128,147,3,7,2,6,2,3,2,2,2,128,178,2,3,2,14,2,2,6,2,2,128,216
	.byte 2,9,2,2,4,2,2,3,2,128,252,2,2,4,2,2,3,2,9,2,129,26,4,2,2,3,2,9,2,2,4,129
	.byte 58,2,3,2,2,2,2,2,2,2,129,88,2,2,2,8,2,8,4,3,6,129,128,2,3,7,2,8,2,2,2,2
	.byte 129,160,2,2,2,3,3,3,5,3,3,129,189,3,3,8,5,3,3,3,13,3,129,236,4,3,4,4,6,3,4,3
	.byte 3,130,19,4,4,8,20,13,9,7,4,4,130,95,16,3,3,3,6,4,2,3,2,130,139,2,2,2,3,2,2,2
	.byte 10,2,130,168,4,2,2,3,3,2,4,2,2,130,194,3,2,2,3,2,2,2,2,2,130,218,11,3,4,4,4,7
	.byte 6,3,5,131,12,3,3,3,3,3,3,3,3,5,131,62,3,255,255,255,252,191,131,68,5,11,2,6,2,2,131,98
	.byte 2,2,4,2,4,8,2,4,2,131,174,2,2,4,2,26,3,2,2,255,255,255,252,39,131,223,3,2,2,2,2,2
	.byte 2,2,2,131,244,12,4,4,4,4,4,4,4,4,132,34,2,3,19,2,2,2,2,2,2,132,72,2,2,2,2,2
	.byte 18,2,28,4,132,144,2,39,2,24,2,2,8,2,2,0,132,231,2,2,2,2,2,2,2,2,132,251,255,255,255,251
	.byte 5,0,0,0,132,255,255,255,255,251,1,133,3,2,2,133,9,4,2,6,255,255,255,250,235,133,27,2,2,2,4,133
	.byte 39,6,6,255,255,255,250,205,0,0,0,133,55,4,255,255,255,250,197,133,79,2,2,2,4,2,6,255,255,255,250,159
	.byte 0,0,0,0,133,103,2,2,6,4,255,255,255,250,139,133,127,8,133,139
.section __TEXT, __const
	.align 3
extra_method_table:

	.long 73,1455,302,0,0,0,0,2053
	.long 344,0,0,0,0,0,0,0
	.long 1480,305,80,0,0,0,0,0
	.long 0,2169,356,0,0,0,0,1631
	.long 315,74,1459,303,0,0,0,0
	.long 0,0,0,1828,326,0,0,0
	.long 0,0,0,0,0,0,0,1621
	.long 310,0,1681,318,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,1900,330,0
	.long 0,0,0,0,0,0,1981,340
	.long 79,0,0,0,0,0,0,0
	.long 0,0,1846,327,0,0,0,0
	.long 0,0,0,0,0,0,1771,323
	.long 73,0,0,0,1576,308,0,1735
	.long 321,0,1663,317,0,1961,338,0
	.long 0,0,0,1463,304,0,0,0
	.long 0,0,0,0,1544,307,0,0
	.long 0,0,0,0,0,2089,346,0
	.long 1753,322,0,0,0,0,0,0
	.long 0,2131,354,0,0,0,0,1512
	.long 306,75,1717,320,77,1949,337,0
	.long 1436,301,0,1603,309,0,2035,343
	.long 0,1699,319,0,0,0,0,1937
	.long 332,0,2017,342,0,1999,341,78
	.long 2150,355,0,0,0,0,0,0
	.long 0,0,0,0,1810,325,76,1864
	.long 328,81,1882,329,0,1918,331,0
	.long 2071,345,0,2108,352,0,2127,353
	.long 0,2188,358,0,2199,359,82,2218
	.long 360,0
.section __TEXT, __const
	.align 3
extra_method_info_offsets:

	.long 60,301,1436,302,1455,303,1459,304
	.long 1463,305,1480,306,1512,307,1544,308
	.long 1576,309,1603,310,1621,311,0,312
	.long 0,313,0,314,0,315,1631,316
	.long 0,317,1663,318,1681,319,1699,320
	.long 1717,321,1735,322,1753,323,1771,324
	.long 0,325,1810,326,1828,327,1846,328
	.long 1864,329,1882,330,1900,331,1918,332
	.long 1937,333,0,334,0,335,0,336
	.long 0,337,1949,338,1961,339,0,340
	.long 1981,341,1999,342,2017,343,2035,344
	.long 2053,345,2071,346,2089,347,0,348
	.long 0,349,0,350,0,351,0,352
	.long 2108,353,2127,354,2131,355,2150,356
	.long 2169,357,0,358,2188,359,2199,360
	.long 2218
.section __TEXT, __const
	.align 3
class_name_table:

	.short 73, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 27, 0, 0, 0, 1
	.short 0, 0, 0, 0, 0, 0, 0, 30
	.short 76, 21, 0, 0, 0, 0, 0, 0
	.short 0, 7, 74, 15, 0, 0, 0, 18
	.short 0, 32, 0, 0, 0, 8, 0, 0
	.short 0, 16, 0, 0, 0, 24, 77, 0
	.short 0, 19, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 20, 0, 14
	.short 0, 0, 0, 5, 0, 0, 0, 0
	.short 0, 0, 0, 29, 0, 0, 0, 10
	.short 78, 11, 0, 0, 0, 26, 0, 23
	.short 0, 0, 0, 22, 0, 2, 73, 0
	.short 0, 6, 75, 3, 0, 0, 0, 0
	.short 0, 0, 0, 12, 0, 13, 0, 0
	.short 0, 17, 0, 0, 0, 0, 0, 35
	.short 0, 0, 0, 4, 79, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 9, 0, 25, 0, 28
	.short 0, 31, 0, 33, 0, 34, 0, 36
	.short 0
.section __TEXT, __const
	.align 3
got_info_offsets:

	.long 205,10,21,2
	.short 0, 11, 22, 33, 44, 55, 66, 77
	.short 88, 99, 110, 121, 132, 143, 154, 165
	.short 176, 187, 198, 209, 220
	.byte 136,189,2,1,1,1,3,3,7,3,7,136,222,5,5,5,4,6,7,4,5,3,137,13,3,12,3,5,3,4,5,5
	.byte 5,137,63,11,11,3,3,3,3,3,3,11,137,125,5,7,6,3,4,6,6,5,4,137,176,5,11,4,11,5,5,4
	.byte 5,5,137,235,5,7,4,4,4,4,4,4,3,138,23,3,4,4,4,3,7,5,4,3,138,65,5,3,3,6,8,3
	.byte 3,11,11,138,121,4,6,3,3,10,12,4,5,3,138,174,10,11,11,3,12,3,3,4,5,138,241,4,5,3,4,5
	.byte 3,4,4,6,139,27,4,4,4,4,4,3,6,3,3,139,88,3,3,3,3,4,4,3,5,3,139,122,4,3,4,5
	.byte 14,14,18,14,10,139,216,3,3,10,8,5,5,5,5,5,140,14,5,5,3,5,6,3,3,10,12,140,80,4,4,5
	.byte 4,5,5,4,3,3,140,128,4,4,11,1,20,4,4,20,4,140,212,12,19,27,27,19,2,20,4,4,141,110,5,5
	.byte 20,20
.section __TEXT, __const
	.align 3
ex_info_offsets:

	.long 361,10,37,2
	.short 0, 11, 22, 33, 44, 55, 66, 77
	.short 88, 99, 110, 121, 132, 143, 154, 165
	.short 176, 187, 198, 209, 220, 231, 242, 258
	.short 269, 284, 295, 306, 317, 328, 339, 350
	.short 371, 387, 407, 422, 438
	.byte 146,247,3,3,3,3,3,3,3,3,3,147,21,3,3,3,23,3,3,3,3,3,147,71,3,3,3,3,4,3,3,3
	.byte 3,147,102,16,14,4,14,4,3,3,3,3,147,169,3,14,4,14,3,3,3,3,3,147,222,3,3,3,25,3,3,24
	.byte 3,3,148,39,3,15,3,3,12,3,3,3,3,148,102,3,3,12,3,3,3,3,15,3,148,153,12,3,3,3,3,15
	.byte 3,3,12,148,213,3,3,4,4,3,3,3,3,3,148,245,3,3,3,14,3,14,14,3,4,149,53,3,3,15,4,4
	.byte 4,4,3,3,149,99,3,3,4,4,4,3,4,3,3,149,133,3,3,14,3,3,3,3,14,3,149,186,3,3,3,12
	.byte 4,3,3,3,3,149,226,4,4,15,4,25,14,14,3,3,150,59,15,3,3,3,4,3,3,3,3,150,102,3,3,3
	.byte 3,3,3,3,15,3,150,144,12,3,3,3,4,4,3,3,3,150,185,4,3,3,3,3,3,4,3,3,150,217,3,3
	.byte 4,4,4,14,14,3,4,151,17,3,3,3,3,3,3,3,3,4,151,49,4,255,255,255,232,203,151,56,3,4,3,3
	.byte 3,3,151,78,3,3,3,3,4,4,4,4,3,151,145,4,4,4,3,36,4,3,3,255,255,255,232,50,151,210,4,3
	.byte 3,3,3,3,3,3,3,151,241,4,3,3,3,3,3,3,3,3,152,17,4,3,4,4,3,3,3,3,3,152,50,3
	.byte 3,3,3,3,4,3,4,3,152,83,4,4,3,27,3,3,22,3,3,0,152,158,32,3,3,3,31,31,32,32,153,73
	.byte 255,255,255,230,183,0,0,0,153,77,255,255,255,230,179,153,81,3,3,153,90,3,3,3,255,255,255,230,157,153,103,3
	.byte 3,3,3,153,118,3,4,255,255,255,230,131,0,0,0,153,129,4,255,255,255,230,123,153,148,3,3,3,3,3,3,255
	.byte 255,255,230,90,0,0,0,0,153,170,3,3,4,3,255,255,255,230,73,153,187,14,153,205
.section __TEXT, __const
	.align 3
unwind_info:

	.byte 16,12,31,0,68,14,32,157,4,158,3,68,13,29,68,153,2,13,12,31,0,68,14,48,157,6,158,5,68,13,29,16
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4,13,12,31,0,68,14,32,157,4,158,3,68,13,29,23,12
	.byte 31,0,68,14,48,157,6,158,5,68,13,29,68,151,4,152,3,68,153,2,154,1,16,12,31,0,68,14,32,157,4,158
	.byte 3,68,13,29,68,154,2,19,12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,153,14,154,13,26,12,31,0,68
	.byte 14,80,157,10,158,9,68,13,29,68,150,8,151,7,68,152,6,153,5,68,154,4,18,12,31,0,68,14,48,157,6,158
	.byte 5,68,13,29,68,152,4,153,3,29,12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,149,18,150,17,68,151,16
	.byte 152,15,68,153,14,154,13,18,12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6,154,5,21,12,31,0,68,14
	.byte 48,157,6,158,5,68,13,29,68,152,4,153,3,68,154,2,13,12,31,0,68,14,64,157,8,158,7,68,13,29,21,12
	.byte 31,0,68,14,80,157,10,158,9,68,13,29,68,152,8,153,7,68,154,6,16,12,31,0,68,14,64,157,8,158,7,68
	.byte 13,29,68,154,6,21,12,31,0,68,14,112,157,14,158,13,68,13,29,68,152,12,153,11,68,154,10,18,12,31,0,68
	.byte 14,80,157,10,158,9,68,13,29,68,153,8,154,7,21,12,31,0,68,14,96,157,12,158,11,68,13,29,68,152,10,153
	.byte 9,68,154,8,18,12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10,154,9,16,12,31,0,68,14,48,157,6
	.byte 158,5,68,13,29,68,151,4,18,12,31,0,68,14,32,157,4,158,3,68,13,29,68,153,2,154,1,16,12,31,0,68
	.byte 14,80,157,10,158,9,68,13,29,68,154,8,18,12,31,0,68,14,80,157,10,158,9,68,13,29,68,152,8,153,7,26
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,150,6,151,5,68,152,4,153,3,68,154,2,16,12,31,0,68,14
	.byte 64,157,8,158,7,68,13,29,68,150,6,16,12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4,21,12,31,0
	.byte 68,14,64,157,8,158,7,68,13,29,68,152,6,153,5,68,154,4,23,12,31,0,68,14,96,157,12,158,11,68,13,29
	.byte 68,151,10,152,9,68,153,8,154,7,19,12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4,68,154,3,16,12
	.byte 31,0,68,14,64,157,8,158,7,68,13,29,68,151,6,19,12,31,0,68,14,64,157,8,158,7,68,13,29,68,151,6
	.byte 68,154,5,24,12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,151,16,152,15,68,153,14,154,13,28,12,31,0
	.byte 68,14,112,157,14,158,13,68,13,29,68,149,12,150,11,68,151,10,152,9,68,153,8,154,7,13,12,31,0,68,14,16
	.byte 157,2,158,1,68,13,29,16,12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6,19,12,31,0,68,14,48,157
	.byte 6,158,5,68,13,29,68,151,4,68,154,3,16,12,31,0,68,14,96,157,12,158,11,68,13,29,68,154,10,13,12,31
	.byte 0,68,14,80,157,10,158,9,68,13,29,27,12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,150,18,151,17,68
	.byte 152,16,153,15,68,154,14,18,12,31,0,68,14,48,157,6,158,5,68,13,29,68,153,4,154,3,27,12,31,0,68,14
	.byte 176,1,157,22,158,21,68,13,29,68,150,20,151,19,68,152,18,153,17,68,154,16,16,12,31,0,68,14,48,157,6,158
	.byte 5,68,13,29,68,153,4,23,12,31,0,68,14,64,157,8,158,7,68,13,29,68,149,6,150,5,68,151,4,152,3,16
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6,22,12,31,0,68,14,144,1,157,18,158,17,68,13,29,68
	.byte 152,16,153,15,68,154,14,22,12,31,0,68,14,192,1,157,24,158,23,68,13,29,68,152,22,153,21,68,154,20,14,12
	.byte 31,0,68,14,144,1,157,18,158,17,68,13,29,13,12,31,0,68,14,96,157,12,158,11,68,13,29,31,12,31,0,68
	.byte 14,112,157,14,158,13,68,13,29,68,148,12,149,11,68,150,10,151,9,68,152,8,153,7,68,154,6,18,12,31,0,68
	.byte 14,48,157,6,158,5,68,13,29,68,151,4,152,3,23,12,31,0,68,14,80,157,10,158,9,68,13,29,68,151,8,152
	.byte 7,68,153,6,154,5,23,12,31,0,68,14,80,157,10,158,9,68,13,29,68,149,8,150,7,68,151,6,152,5
.section __TEXT, __const
	.align 3
class_info_offsets:

	.long 36,10,4,2
	.short 0, 11, 22, 33
	.byte 153,209,7,99,99,28,29,29,30,30,30,155,108,30,30,30,20,30,29,41,37,23,156,159,19,19,31,37,27,99,31,30
	.byte 99,158,64,31,31,23,37,23

.text
	.align 4
plt:
_mono_aot_System_Xml_Linq_plt:
	.no_dead_strip plt__jit_icall_mono_helper_ldstr
plt__jit_icall_mono_helper_ldstr:
_p_1:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1648]
br x16
.word 3508
	.no_dead_strip plt__jit_icall_mono_arch_throw_exception
plt__jit_icall_mono_arch_throw_exception:
_p_2:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1656]
br x16
.word 3528
	.no_dead_strip plt_System_Xml_Linq_XNamespace_get_Xmlns
plt_System_Xml_Linq_XNamespace_get_Xmlns:
_p_3:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1664]
br x16
.word 3556
	.no_dead_strip plt_System_Xml_Linq_XNamespace_op_Equality_System_Xml_Linq_XNamespace_System_Xml_Linq_XNamespace
plt_System_Xml_Linq_XNamespace_op_Equality_System_Xml_Linq_XNamespace_System_Xml_Linq_XNamespace:
_p_4:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1672]
br x16
.word 3559
	.no_dead_strip plt_string_op_Equality_string_string
plt_string_op_Equality_string_string:
_p_5:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1680]
br x16
.word 3562
	.no_dead_strip plt_System_Xml_Linq_XNamespace_get_None
plt_System_Xml_Linq_XNamespace_get_None:
_p_6:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1688]
br x16
.word 3567
	.no_dead_strip plt_System_Xml_Linq_XUtil_ToString_object
plt_System_Xml_Linq_XUtil_ToString_object:
_p_7:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1696]
br x16
.word 3570
	.no_dead_strip plt_System_Xml_Linq_XObject_OnRemovingObject_object
plt_System_Xml_Linq_XObject_OnRemovingObject_object:
_p_8:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1704]
br x16
.word 3573
	.no_dead_strip plt_System_Xml_Linq_XObject_OnRemovedObject_object
plt_System_Xml_Linq_XObject_OnRemovedObject_object:
_p_9:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1712]
br x16
.word 3576
	.no_dead_strip plt_System_Xml_Linq_XObject_OnValueChanging_object
plt_System_Xml_Linq_XObject_OnValueChanging_object:
_p_10:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1720]
br x16
.word 3579
	.no_dead_strip plt_System_Xml_Linq_XObject_OnValueChanged_object
plt_System_Xml_Linq_XObject_OnValueChanged_object:
_p_11:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1728]
br x16
.word 3582
	.no_dead_strip plt_System_Xml_Linq_XNamespace_get_NamespaceName
plt_System_Xml_Linq_XNamespace_get_NamespaceName:
_p_12:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1736]
br x16
.word 3585
	.no_dead_strip plt_System_Xml_Linq_XNamespace_get_Xml
plt_System_Xml_Linq_XNamespace_get_Xml:
_p_13:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1744]
br x16
.word 3588
	.no_dead_strip plt___class_init_System_Globalization_CultureInfo
plt___class_init_System_Globalization_CultureInfo:
_p_14:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1752]
br x16
.word 3591
	.no_dead_strip plt__jit_icall_mono_object_new_fast
plt__jit_icall_mono_object_new_fast:
_p_15:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1760]
br x16
.word 3596
	.no_dead_strip plt_System_IO_StringWriter__ctor_System_IFormatProvider
plt_System_IO_StringWriter__ctor_System_IFormatProvider:
_p_16:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1768]
br x16
.word 3619
	.no_dead_strip plt_System_Xml_XmlWriterSettings__ctor
plt_System_Xml_XmlWriterSettings__ctor:
_p_17:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1776]
br x16
.word 3624
	.no_dead_strip plt_System_Xml_XmlWriter_Create_System_IO_TextWriter_System_Xml_XmlWriterSettings
plt_System_Xml_XmlWriter_Create_System_IO_TextWriter_System_Xml_XmlWriterSettings:
_p_18:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1784]
br x16
.word 3629
	.no_dead_strip plt_System_Xml_Linq_XAttribute_GetPrefixOfNamespace_System_Xml_Linq_XNamespace
plt_System_Xml_Linq_XAttribute_GetPrefixOfNamespace_System_Xml_Linq_XNamespace:
_p_19:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1792]
br x16
.word 3634
	.no_dead_strip plt_System_Xml_XmlWriter_WriteAttributeString_string_string_string_string
plt_System_Xml_XmlWriter_WriteAttributeString_string_string_string_string:
_p_20:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1800]
br x16
.word 3636
	.no_dead_strip plt_string_Trim
plt_string_Trim:
_p_21:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1808]
br x16
.word 3641
	.no_dead_strip plt__jit_icall_mono_array_new_specific
plt__jit_icall_mono_array_new_specific:
_p_22:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1816]
br x16
.word 3646
	.no_dead_strip plt_string_memcpy_byte__byte__int
plt_string_memcpy_byte__byte__int:
_p_23:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1824]
br x16
.word 3672
	.no_dead_strip plt_System_Text_StringBuilder__ctor
plt_System_Text_StringBuilder__ctor:
_p_24:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1832]
br x16
.word 3677
	.no_dead_strip plt_System_Text_StringBuilder_Append_string_int_int
plt_System_Text_StringBuilder_Append_string_int_int:
_p_25:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1840]
br x16
.word 3682
	.no_dead_strip plt_System_Text_StringBuilder_Append_string
plt_System_Text_StringBuilder_Append_string:
_p_26:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1848]
br x16
.word 3687
	.no_dead_strip plt__jit_icall_mono_arch_throw_corlib_exception
plt__jit_icall_mono_arch_throw_corlib_exception:
_p_27:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1856]
br x16
.word 3692
	.no_dead_strip plt_string_Replace_string_string
plt_string_Replace_string_string:
_p_28:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1864]
br x16
.word 3727
	.no_dead_strip plt_System_Linq_Enumerable_LastOrDefault_char_System_Collections_Generic_IEnumerable_1_char
plt_System_Linq_Enumerable_LastOrDefault_char_System_Collections_Generic_IEnumerable_1_char:
_p_29:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1872]
br x16
.word 3732
	.no_dead_strip plt_string_Substring_int_int
plt_string_Substring_int_int:
_p_30:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1880]
br x16
.word 3744
	.no_dead_strip plt_string_Concat_string_string
plt_string_Concat_string_string:
_p_31:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1888]
br x16
.word 3749
	.no_dead_strip plt_System_Xml_Linq_XContainer_CheckChildType_object_bool
plt_System_Xml_Linq_XContainer_CheckChildType_object_bool:
_p_32:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1896]
br x16
.word 3754
	.no_dead_strip plt_string_Concat_object_object
plt_string_Concat_object_object:
_p_33:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1904]
br x16
.word 3756
	.no_dead_strip plt_System_Xml_Linq_XUtil_ExpandArray_object
plt_System_Xml_Linq_XUtil_ExpandArray_object:
_p_34:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1912]
br x16
.word 3761
	.no_dead_strip plt_System_Xml_Linq_XUtil_ToNode_object
plt_System_Xml_Linq_XUtil_ToNode_object:
_p_35:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1920]
br x16
.word 3764
	.no_dead_strip plt_System_Xml_Linq_XObject_OnAddingObject_object
plt_System_Xml_Linq_XObject_OnAddingObject_object:
_p_36:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1928]
br x16
.word 3767
	.no_dead_strip plt_System_Xml_Linq_XContainer_AddNode_System_Xml_Linq_XNode
plt_System_Xml_Linq_XContainer_AddNode_System_Xml_Linq_XNode:
_p_37:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1936]
br x16
.word 3770
	.no_dead_strip plt_System_Xml_Linq_XObject_OnAddedObject_object
plt_System_Xml_Linq_XObject_OnAddedObject_object:
_p_38:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1944]
br x16
.word 3772
	.no_dead_strip plt_System_Xml_Linq_XContainer_Add_object
plt_System_Xml_Linq_XContainer_Add_object:
_p_39:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1952]
br x16
.word 3775
	.no_dead_strip plt_System_Xml_Linq_XContainer_Nodes
plt_System_Xml_Linq_XContainer_Nodes:
_p_40:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1960]
br x16
.word 3777
	.no_dead_strip plt_System_Xml_Linq_XNode_ReadFrom_System_Xml_XmlReader_System_Xml_Linq_LoadOptions
plt_System_Xml_Linq_XNode_ReadFrom_System_Xml_XmlReader_System_Xml_Linq_LoadOptions:
_p_41:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1968]
br x16
.word 3779
	.no_dead_strip plt_System_Xml_Linq_XContainer__Nodesc__Iterator0_System_Collections_Generic_IEnumerable_System_Xml_Linq_XNode_GetEnumerator
plt_System_Xml_Linq_XContainer__Nodesc__Iterator0_System_Collections_Generic_IEnumerable_System_Xml_Linq_XNode_GetEnumerator:
_p_42:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1976]
br x16
.word 3782
	.no_dead_strip plt_System_Xml_Linq_XContainer_DescendantNodes
plt_System_Xml_Linq_XContainer_DescendantNodes:
_p_43:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1984]
br x16
.word 3784
	.no_dead_strip plt_System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_System_Collections_Generic_IEnumerable_System_Xml_Linq_XNode_GetEnumerator
plt_System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_System_Collections_Generic_IEnumerable_System_Xml_Linq_XNode_GetEnumerator:
_p_44:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #1992]
br x16
.word 3786
	.no_dead_strip plt_System_Xml_Linq_XContainer__Descendantsc__Iterator2_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator
plt_System_Xml_Linq_XContainer__Descendantsc__Iterator2_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator:
_p_45:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2000]
br x16
.word 3788
	.no_dead_strip plt_System_Xml_Linq_XContainer_Descendants
plt_System_Xml_Linq_XContainer_Descendants:
_p_46:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2008]
br x16
.word 3790
	.no_dead_strip plt_System_Xml_Linq_XContainer__Descendantsc__Iterator3_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator
plt_System_Xml_Linq_XContainer__Descendantsc__Iterator3_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator:
_p_47:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2016]
br x16
.word 3792
	.no_dead_strip plt_System_Xml_Linq_XContainer__Elementsc__Iterator4_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator
plt_System_Xml_Linq_XContainer__Elementsc__Iterator4_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator:
_p_48:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2024]
br x16
.word 3794
	.no_dead_strip plt_System_Xml_Linq_XContainer__Elementsc__Iterator5_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator
plt_System_Xml_Linq_XContainer__Elementsc__Iterator5_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator:
_p_49:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2032]
br x16
.word 3796
	.no_dead_strip plt_string_Concat_string__
plt_string_Concat_string__:
_p_50:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2040]
br x16
.word 3798
	.no_dead_strip plt_System_Xml_XmlReaderSettings__ctor
plt_System_Xml_XmlReaderSettings__ctor:
_p_51:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2048]
br x16
.word 3803
	.no_dead_strip plt_System_Xml_XmlReader_Create_System_IO_TextReader_System_Xml_XmlReaderSettings
plt_System_Xml_XmlReader_Create_System_IO_TextReader_System_Xml_XmlReaderSettings:
_p_52:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2056]
br x16
.word 3808
	.no_dead_strip plt_System_Xml_Linq_XDocument_LoadCore_System_Xml_XmlReader_System_Xml_Linq_LoadOptions
plt_System_Xml_Linq_XDocument_LoadCore_System_Xml_XmlReader_System_Xml_Linq_LoadOptions:
_p_53:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2064]
br x16
.word 3813
	.no_dead_strip plt_System_Xml_Linq_XDocument_ReadContent_System_Xml_XmlReader_System_Xml_Linq_LoadOptions
plt_System_Xml_Linq_XDocument_ReadContent_System_Xml_XmlReader_System_Xml_Linq_LoadOptions:
_p_54:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2072]
br x16
.word 3815
	.no_dead_strip plt_System_Xml_Linq_XObject_FillLineInfoAndBaseUri_System_Xml_XmlReader_System_Xml_Linq_LoadOptions
plt_System_Xml_Linq_XObject_FillLineInfoAndBaseUri_System_Xml_XmlReader_System_Xml_Linq_LoadOptions:
_p_55:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2080]
br x16
.word 3817
	.no_dead_strip plt_System_Xml_Linq_XDocument_get_Root
plt_System_Xml_Linq_XDocument_get_Root:
_p_56:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2088]
br x16
.word 3820
	.no_dead_strip plt_System_Xml_Linq_XDocument_Parse_string_System_Xml_Linq_LoadOptions
plt_System_Xml_Linq_XDocument_Parse_string_System_Xml_Linq_LoadOptions:
_p_57:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2096]
br x16
.word 3822
	.no_dead_strip plt_System_IO_StringReader__ctor_string
plt_System_IO_StringReader__ctor_string:
_p_58:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2104]
br x16
.word 3824
	.no_dead_strip plt_System_Xml_Linq_XDocument_Load_System_IO_TextReader_System_Xml_Linq_LoadOptions
plt_System_Xml_Linq_XDocument_Load_System_IO_TextReader_System_Xml_Linq_LoadOptions:
_p_59:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2112]
br x16
.word 3829
	.no_dead_strip plt_System_Xml_Linq_XDocument_VerifyAddedNode_object_bool
plt_System_Xml_Linq_XDocument_VerifyAddedNode_object_bool:
_p_60:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2120]
br x16
.word 3831
	.no_dead_strip plt_System_Xml_Linq_XDocument_ValidateWhitespace_string
plt_System_Xml_Linq_XDocument_ValidateWhitespace_string:
_p_61:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2128]
br x16
.word 3833
	.no_dead_strip plt_System_Xml_Linq_XDocument_get_DocumentType
plt_System_Xml_Linq_XDocument_get_DocumentType:
_p_62:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2136]
br x16
.word 3835
	.no_dead_strip plt_System_Xml_Linq_XObject_get_Document
plt_System_Xml_Linq_XObject_get_Document:
_p_63:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2144]
br x16
.word 3837
	.no_dead_strip plt_System_Xml_Linq_XElement_Attributes
plt_System_Xml_Linq_XElement_Attributes:
_p_64:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2152]
br x16
.word 3840
	.no_dead_strip plt_System_Xml_XmlDocument__ctor
plt_System_Xml_XmlDocument__ctor:
_p_65:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2160]
br x16
.word 3843
	.no_dead_strip plt_System_Xml_Linq_XObject_OnNameChanging_object
plt_System_Xml_Linq_XObject_OnNameChanging_object:
_p_66:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2168]
br x16
.word 3848
	.no_dead_strip plt_System_Xml_Linq_XObject_OnNameChanged_object
plt_System_Xml_Linq_XObject_OnNameChanged_object:
_p_67:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2176]
br x16
.word 3851
	.no_dead_strip plt_System_Xml_Linq_XElement_get_Value
plt_System_Xml_Linq_XElement_get_Value:
_p_68:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2184]
br x16
.word 3854
	.no_dead_strip plt_System_Xml_Linq_XContainer_RemoveNodes
plt_System_Xml_Linq_XContainer_RemoveNodes:
_p_69:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2192]
br x16
.word 3857
	.no_dead_strip plt_System_Xml_Linq_XElement_CreateDefaultSettings_System_Xml_Linq_LoadOptions
plt_System_Xml_Linq_XElement_CreateDefaultSettings_System_Xml_Linq_LoadOptions:
_p_70:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2200]
br x16
.word 3859
	.no_dead_strip plt_System_Xml_Linq_XElement_LoadCore_System_Xml_XmlReader_System_Xml_Linq_LoadOptions
plt_System_Xml_Linq_XElement_LoadCore_System_Xml_XmlReader_System_Xml_Linq_LoadOptions:
_p_71:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2208]
br x16
.word 3862
	.no_dead_strip plt_System_Xml_Linq_XNamespace_GetName_string
plt_System_Xml_Linq_XNamespace_GetName_string:
_p_72:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2216]
br x16
.word 3865
	.no_dead_strip plt_System_Xml_Linq_XElement_SetAttributeValue_System_Xml_Linq_XName_object
plt_System_Xml_Linq_XElement_SetAttributeValue_System_Xml_Linq_XName_object:
_p_73:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2224]
br x16
.word 3868
	.no_dead_strip plt_System_Xml_Linq_XElement_Parse_string_System_Xml_Linq_LoadOptions
plt_System_Xml_Linq_XElement_Parse_string_System_Xml_Linq_LoadOptions:
_p_74:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2232]
br x16
.word 3871
	.no_dead_strip plt_System_Xml_Linq_XElement_Load_System_IO_TextReader_System_Xml_Linq_LoadOptions
plt_System_Xml_Linq_XElement_Load_System_IO_TextReader_System_Xml_Linq_LoadOptions:
_p_75:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2240]
br x16
.word 3874
	.no_dead_strip plt_System_Xml_Linq_XAttribute_Remove
plt_System_Xml_Linq_XAttribute_Remove:
_p_76:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2248]
br x16
.word 3877
	.no_dead_strip plt_System_Collections_Generic_List_1_System_Xml_Linq_XElement_Add_System_Xml_Linq_XElement
plt_System_Collections_Generic_List_1_System_Xml_Linq_XElement_Add_System_Xml_Linq_XElement:
_p_77:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2256]
br x16
.word 3879
	.no_dead_strip plt_System_Collections_Generic_List_1_System_Xml_Linq_XElement_AddRange_System_Collections_Generic_IEnumerable_1_System_Xml_Linq_XElement
plt_System_Collections_Generic_List_1_System_Xml_Linq_XElement_AddRange_System_Collections_Generic_IEnumerable_1_System_Xml_Linq_XElement:
_p_78:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2264]
br x16
.word 3890
	.no_dead_strip plt_System_Xml_Linq_XElement_SetAttributeObject_System_Xml_Linq_XAttribute
plt_System_Xml_Linq_XElement_SetAttributeObject_System_Xml_Linq_XAttribute:
_p_79:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2272]
br x16
.word 3901
	.no_dead_strip plt_System_Xml_Linq_XNamespace_op_Implicit_string
plt_System_Xml_Linq_XNamespace_op_Implicit_string:
_p_80:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2280]
br x16
.word 3904
	.no_dead_strip plt_System_Xml_Linq_XElement_GetPrefixOfNamespace_System_Xml_Linq_XNamespace
plt_System_Xml_Linq_XElement_GetPrefixOfNamespace_System_Xml_Linq_XNamespace:
_p_81:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2288]
br x16
.word 3907
	.no_dead_strip plt_System_Xml_Linq_XAttribute_get_IsNamespaceDeclaration
plt_System_Xml_Linq_XAttribute_get_IsNamespaceDeclaration:
_p_82:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2296]
br x16
.word 3910
	.no_dead_strip plt_System_Linq_Enumerable_All_System_Xml_Linq_XAttribute_System_Collections_Generic_IEnumerable_1_System_Xml_Linq_XAttribute_System_Func_2_System_Xml_Linq_XAttribute_bool
plt_System_Linq_Enumerable_All_System_Xml_Linq_XAttribute_System_Collections_Generic_IEnumerable_1_System_Xml_Linq_XAttribute_System_Func_2_System_Xml_Linq_XAttribute_bool:
_p_83:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2304]
br x16
.word 3912
	.no_dead_strip plt__jit_icall_mono_object_new_ptrfree_box
plt__jit_icall_mono_object_new_ptrfree_box:
_p_84:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2312]
br x16
.word 3924
	.no_dead_strip plt_System_Xml_Linq_XElement_LookupPrefix_string_System_Xml_XmlWriter
plt_System_Xml_Linq_XElement_LookupPrefix_string_System_Xml_XmlWriter:
_p_85:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2320]
br x16
.word 3954
	.no_dead_strip plt_System_Xml_Linq_XElement_CreateDummyNamespace_int__System_Collections_Generic_IEnumerable_1_System_Xml_Linq_XAttribute_bool
plt_System_Xml_Linq_XElement_CreateDummyNamespace_int__System_Collections_Generic_IEnumerable_1_System_Xml_Linq_XAttribute_bool:
_p_86:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2328]
br x16
.word 3957
	.no_dead_strip plt_System_Xml_XmlWriter_WriteAttributeString_string_string
plt_System_Xml_XmlWriter_WriteAttributeString_string_string:
_p_87:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2336]
br x16
.word 3960
	.no_dead_strip plt_System_Xml_Linq_XNamespace_Get_string
plt_System_Xml_Linq_XNamespace_Get_string:
_p_88:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2344]
br x16
.word 3965
	.no_dead_strip plt_System_Xml_Linq_XElement_GetPrefixOfNamespaceCore_System_Xml_Linq_XNamespace
plt_System_Xml_Linq_XElement_GetPrefixOfNamespaceCore_System_Xml_Linq_XNamespace:
_p_89:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2352]
br x16
.word 3968
	.no_dead_strip plt_System_Xml_Linq_XElement_GetNamespaceOfPrefix_string
plt_System_Xml_Linq_XElement_GetNamespaceOfPrefix_string:
_p_90:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2360]
br x16
.word 3971
	.no_dead_strip plt_System_Linq_Enumerable_ToArray_object_System_Collections_Generic_IEnumerable_1_object
plt_System_Linq_Enumerable_ToArray_object_System_Collections_Generic_IEnumerable_1_object:
_p_91:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2368]
br x16
.word 3974
	.no_dead_strip plt_System_Xml_Linq_XContainer_Add_object__
plt_System_Xml_Linq_XContainer_Add_object__:
_p_92:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2376]
br x16
.word 3986
	.no_dead_strip plt_string_Format_string_object
plt_string_Format_string_object:
_p_93:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2384]
br x16
.word 3988
	.no_dead_strip plt_string_op_Inequality_string_string
plt_string_op_Inequality_string_string:
_p_94:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2392]
br x16
.word 3993
	.no_dead_strip plt_System_Xml_Linq_XElement__Attributesc__Iterator0_System_Collections_Generic_IEnumerable_System_Xml_Linq_XAttribute_GetEnumerator
plt_System_Xml_Linq_XElement__Attributesc__Iterator0_System_Collections_Generic_IEnumerable_System_Xml_Linq_XAttribute_GetEnumerator:
_p_95:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2400]
br x16
.word 3998
	.no_dead_strip plt_System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_System_Collections_Generic_IEnumerable_string_GetEnumerator
plt_System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_System_Collections_Generic_IEnumerable_string_GetEnumerator:
_p_96:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2408]
br x16
.word 4001
	.no_dead_strip plt_System_Runtime_Serialization_SerializationInfo_GetString_string
plt_System_Runtime_Serialization_SerializationInfo_GetString_string:
_p_97:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2416]
br x16
.word 4004
	.no_dead_strip plt_System_Xml_Linq_XName_ExpandName_string_string__string_
plt_System_Xml_Linq_XName_ExpandName_string_string__string_:
_p_98:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2424]
br x16
.word 4009
	.no_dead_strip plt_System_Xml_XmlConvert_VerifyNCName_string
plt_System_Xml_XmlConvert_VerifyNCName_string:
_p_99:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2432]
br x16
.word 4012
	.no_dead_strip plt_System_ArgumentException__ctor_string
plt_System_ArgumentException__ctor_string:
_p_100:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2440]
br x16
.word 4017
	.no_dead_strip plt_string_Substring_int
plt_string_Substring_int:
_p_101:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2448]
br x16
.word 4022
	.no_dead_strip plt_System_Xml_Linq_XName_ErrorInvalidExpandedName
plt_System_Xml_Linq_XName_ErrorInvalidExpandedName:
_p_102:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2456]
br x16
.word 4027
	.no_dead_strip plt_string_Concat_string_string_string_string
plt_string_Concat_string_string_string_string:
_p_103:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2464]
br x16
.word 4030
	.no_dead_strip plt_System_Collections_Generic_Dictionary_2_string_System_Xml_Linq_XNamespace__ctor
plt_System_Collections_Generic_Dictionary_2_string_System_Xml_Linq_XNamespace__ctor:
_p_104:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2472]
br x16
.word 4035
	.no_dead_strip plt___class_init_System_Xml_Linq_XNamespace
plt___class_init_System_Xml_Linq_XNamespace:
_p_105:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2480]
br x16
.word 4046
	.no_dead_strip plt_System_Threading_Monitor_Enter_object_bool_
plt_System_Threading_Monitor_Enter_object_bool_:
_p_106:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2488]
br x16
.word 4049
	.no_dead_strip plt_System_Collections_Generic_Dictionary_2_string_System_Xml_Linq_XNamespace_TryGetValue_string_System_Xml_Linq_XNamespace_
plt_System_Collections_Generic_Dictionary_2_string_System_Xml_Linq_XNamespace_TryGetValue_string_System_Xml_Linq_XNamespace_:
_p_107:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2496]
br x16
.word 4054
	.no_dead_strip plt_System_Xml_Linq_XNamespace__ctor_string
plt_System_Xml_Linq_XNamespace__ctor_string:
_p_108:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2504]
br x16
.word 4065
	.no_dead_strip plt_System_Collections_Generic_Dictionary_2_string_System_Xml_Linq_XNamespace_set_Item_string_System_Xml_Linq_XNamespace
plt_System_Collections_Generic_Dictionary_2_string_System_Xml_Linq_XNamespace_set_Item_string_System_Xml_Linq_XNamespace:
_p_109:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2512]
br x16
.word 4068
	.no_dead_strip plt_System_Threading_Monitor_Exit_object
plt_System_Threading_Monitor_Exit_object:
_p_110:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2520]
br x16
.word 4079
	.no_dead_strip plt_System_Collections_Generic_Dictionary_2_string_System_Xml_Linq_XName__ctor
plt_System_Collections_Generic_Dictionary_2_string_System_Xml_Linq_XName__ctor:
_p_111:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2528]
br x16
.word 4084
	.no_dead_strip plt_System_Collections_Generic_Dictionary_2_string_System_Xml_Linq_XName_TryGetValue_string_System_Xml_Linq_XName_
plt_System_Collections_Generic_Dictionary_2_string_System_Xml_Linq_XName_TryGetValue_string_System_Xml_Linq_XName_:
_p_112:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2536]
br x16
.word 4095
	.no_dead_strip plt_System_Collections_Generic_Dictionary_2_string_System_Xml_Linq_XName_set_Item_string_System_Xml_Linq_XName
plt_System_Collections_Generic_Dictionary_2_string_System_Xml_Linq_XName_set_Item_string_System_Xml_Linq_XName:
_p_113:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2544]
br x16
.word 4106
	.no_dead_strip plt_System_Xml_Linq_XNamespace_op_Inequality_System_Xml_Linq_XNamespace_System_Xml_Linq_XNamespace
plt_System_Xml_Linq_XNamespace_op_Inequality_System_Xml_Linq_XNamespace_System_Xml_Linq_XNamespace:
_p_114:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2552]
br x16
.word 4117
	.no_dead_strip plt_System_IO_StringWriter__ctor
plt_System_IO_StringWriter__ctor:
_p_115:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2560]
br x16
.word 4120
	.no_dead_strip plt_System_Xml_Linq_XNode_ToString_System_Xml_Linq_SaveOptions
plt_System_Xml_Linq_XNode_ToString_System_Xml_Linq_SaveOptions:
_p_116:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2568]
br x16
.word 4125
	.no_dead_strip plt__jit_icall_mono_object_new_ptrfree
plt__jit_icall_mono_object_new_ptrfree:
_p_117:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2576]
br x16
.word 4128
	.no_dead_strip plt_System_Xml_Linq_XNode__Ancestorsc__Iterator0_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator
plt_System_Xml_Linq_XNode__Ancestorsc__Iterator0_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator:
_p_118:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2584]
br x16
.word 4154
	.no_dead_strip plt_System_Xml_Linq_XNodeDocumentOrderComparer_CompareCore_System_Xml_Linq_XNode_System_Xml_Linq_XNode
plt_System_Xml_Linq_XNodeDocumentOrderComparer_CompareCore_System_Xml_Linq_XNode_System_Xml_Linq_XNode:
_p_119:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2592]
br x16
.word 4157
	.no_dead_strip plt_System_DateTime_get_Now
plt_System_DateTime_get_Now:
_p_120:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2600]
br x16
.word 4160
	.no_dead_strip plt_System_Xml_Linq_XNodeDocumentOrderComparer_Compare_System_Xml_Linq_XNode_System_Xml_Linq_XNode
plt_System_Xml_Linq_XNodeDocumentOrderComparer_Compare_System_Xml_Linq_XNode_System_Xml_Linq_XNode:
_p_121:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2608]
br x16
.word 4165
	.no_dead_strip plt_System_Xml_Linq_XNodeEqualityComparer_Equals_System_Xml_Linq_XNode_System_Xml_Linq_XNode
plt_System_Xml_Linq_XNodeEqualityComparer_Equals_System_Xml_Linq_XNode_System_Xml_Linq_XNode:
_p_122:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2616]
br x16
.word 4168
	.no_dead_strip plt_System_Xml_Linq_XNodeEqualityComparer_GetHashCode_System_Xml_Linq_XNode
plt_System_Xml_Linq_XNodeEqualityComparer_GetHashCode_System_Xml_Linq_XNode:
_p_123:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2624]
br x16
.word 4171
	.no_dead_strip plt_System_Linq_Enumerable_All_char_System_Collections_Generic_IEnumerable_1_char_System_Func_2_char_bool
plt_System_Linq_Enumerable_All_char_System_Collections_Generic_IEnumerable_1_char_System_Func_2_char_bool:
_p_124:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2632]
br x16
.word 4174
	.no_dead_strip plt_System_Type_GetTypeCode_System_Type
plt_System_Type_GetTypeCode_System_Type:
_p_125:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2640]
br x16
.word 4186
	.no_dead_strip plt_System_Xml_XmlConvert_ToString_System_DateTime_System_Xml_XmlDateTimeSerializationMode
plt_System_Xml_XmlConvert_ToString_System_DateTime_System_Xml_XmlDateTimeSerializationMode:
_p_126:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2648]
br x16
.word 4191
	.no_dead_strip plt_System_Decimal_ToString_System_IFormatProvider
plt_System_Decimal_ToString_System_IFormatProvider:
_p_127:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2656]
br x16
.word 4196
	.no_dead_strip plt_double_ToString_string_System_IFormatProvider
plt_double_ToString_string_System_IFormatProvider:
_p_128:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2664]
br x16
.word 4201
	.no_dead_strip plt_single_ToString_string_System_IFormatProvider
plt_single_ToString_string_System_IFormatProvider:
_p_129:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2672]
br x16
.word 4206
	.no_dead_strip plt_string_ToLower
plt_string_ToLower:
_p_130:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2680]
br x16
.word 4211
	.no_dead_strip plt_System_Xml_XmlConvert_ToString_System_TimeSpan
plt_System_Xml_XmlConvert_ToString_System_TimeSpan:
_p_131:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2688]
br x16
.word 4216
	.no_dead_strip plt_System_Xml_XmlConvert_ToString_System_DateTimeOffset
plt_System_Xml_XmlConvert_ToString_System_DateTimeOffset:
_p_132:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2696]
br x16
.word 4221
	.no_dead_strip plt_System_Xml_Linq_XUtil_Clone_object
plt_System_Xml_Linq_XUtil_Clone_object:
_p_133:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2704]
br x16
.word 4226
	.no_dead_strip plt_System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_System_Collections_Generic_IEnumerable_object_GetEnumerator
plt_System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_System_Collections_Generic_IEnumerable_object_GetEnumerator:
_p_134:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2712]
br x16
.word 4229
	.no_dead_strip plt__rgctx_fetch_0
plt__rgctx_fetch_0:
_p_135:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2720]
br x16
.word 4251
	.no_dead_strip plt__rgctx_fetch_1
plt__rgctx_fetch_1:
_p_136:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2728]
br x16
.word 4287
	.no_dead_strip plt__rgctx_fetch_2
plt__rgctx_fetch_2:
_p_137:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2736]
br x16
.word 4295
	.no_dead_strip plt__jit_icall_mono_object_new_specific
plt__jit_icall_mono_object_new_specific:
_p_138:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2744]
br x16
.word 4318
	.no_dead_strip plt__jit_icall_mono_helper_ldstr_mscorlib
plt__jit_icall_mono_helper_ldstr_mscorlib:
_p_139:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2752]
br x16
.word 4345
	.no_dead_strip plt__rgctx_fetch_3
plt__rgctx_fetch_3:
_p_140:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2760]
br x16
.word 4393
	.no_dead_strip plt__rgctx_fetch_4
plt__rgctx_fetch_4:
_p_141:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2768]
br x16
.word 4439
	.no_dead_strip plt__rgctx_fetch_5
plt__rgctx_fetch_5:
_p_142:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2776]
br x16
.word 4485
	.no_dead_strip plt__rgctx_fetch_6
plt__rgctx_fetch_6:
_p_143:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2784]
br x16
.word 4512
	.no_dead_strip plt__rgctx_fetch_7
plt__rgctx_fetch_7:
_p_144:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2792]
br x16
.word 4536
	.no_dead_strip plt_Locale_GetText_string
plt_Locale_GetText_string:
_p_145:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2800]
br x16
.word 4577
	.no_dead_strip plt__rgctx_fetch_8
plt__rgctx_fetch_8:
_p_146:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2808]
br x16
.word 4601
	.no_dead_strip plt_System_Array_Copy_System_Array_int_System_Array_int_int
plt_System_Array_Copy_System_Array_int_System_Array_int_int:
_p_147:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2816]
br x16
.word 4628
	.no_dead_strip plt__jit_icall_mono_thread_interruption_checkpoint
plt__jit_icall_mono_thread_interruption_checkpoint:
_p_148:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2824]
br x16
.word 4633
	.no_dead_strip plt_System_Array_InternalArray__get_Item_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_int
plt_System_Array_InternalArray__get_Item_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_int:
_p_149:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2832]
br x16
.word 4671
	.no_dead_strip plt_System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_get_Current
plt_System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_get_Current:
_p_150:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2840]
br x16
.word 4691
	.no_dead_strip plt_System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace__ctor_System_Array
plt_System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace__ctor_System_Array:
_p_151:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2848]
br x16
.word 4710
	.no_dead_strip plt_System_Array_InternalArray__get_Item_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_int
plt_System_Array_InternalArray__get_Item_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_int:
_p_152:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2856]
br x16
.word 4729
	.no_dead_strip plt_System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_get_Current
plt_System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_get_Current:
_p_153:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2864]
br x16
.word 4749
	.no_dead_strip plt_System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName__ctor_System_Array
plt_System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName__ctor_System_Array:
_p_154:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2872]
br x16
.word 4768
	.no_dead_strip plt_System_Array_InternalArray__get_Item_char_int
plt_System_Array_InternalArray__get_Item_char_int:
_p_155:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2880]
br x16
.word 4787
	.no_dead_strip plt_System_Array_InternalEnumerator_1_char_get_Current
plt_System_Array_InternalEnumerator_1_char_get_Current:
_p_156:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2888]
br x16
.word 4807
	.no_dead_strip plt_System_Array_InternalEnumerator_1_char__ctor_System_Array
plt_System_Array_InternalEnumerator_1_char__ctor_System_Array:
_p_157:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2896]
br x16
.word 4826
	.no_dead_strip plt_char_Equals_object
plt_char_Equals_object:
_p_158:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2904]
br x16
.word 4845
	.no_dead_strip plt_System_Linq_Check_SourceAndPredicate_object_object
plt_System_Linq_Check_SourceAndPredicate_object_object:
_p_159:
adrp x16, _mono_aot_System_Xml_Linq_got@PAGE+0
add x16, x16, _mono_aot_System_Xml_Linq_got@PAGEOFF
ldr x16, [x16, #2912]
br x16
.word 4850
plt_end:
.section __TEXT, __const
	.align 3
image_table:

	.long 4
	.asciz "System.Xml.Linq"
	.asciz "C4C2C824-E829-442C-9F44-A9DA33E294EA"
	.asciz ""
	.asciz "31bf3856ad364e35"
	.align 3

	.long 1,2,0,5,0
	.asciz "mscorlib"
	.asciz "37C41D6F-5D1D-48B6-A57B-D05CE3C64559"
	.asciz ""
	.asciz "7cec85d7bea7798e"
	.align 3

	.long 1,2,0,5,0
	.asciz "System.Core"
	.asciz "A6B3DA34-B0E3-4A30-950C-4361CF351CFB"
	.asciz ""
	.asciz "7cec85d7bea7798e"
	.align 3

	.long 1,2,0,5,0
	.asciz "System.Xml"
	.asciz "0A3204D1-F1AC-4113-BDC5-444198425F15"
	.asciz ""
	.asciz "7cec85d7bea7798e"
	.align 3

	.long 1,2,0,5,0
.data
	.align 3
_mono_aot_System_Xml_Linq_got:
	.space 2920
got_end:
.section __TEXT, __const
	.align 2
assembly_guid:
	.asciz "C4C2C824-E829-442C-9F44-A9DA33E294EA"
.section __TEXT, __const
	.align 2
runtime_version:
	.asciz ""
.section __TEXT, __const
	.align 2
assembly_name:
	.asciz "System.Xml.Linq"
.data
	.align 3
_mono_aot_file_info:

	.long 111,0
	.align 3
	.quad _mono_aot_System_Xml_Linq_got
	.align 3
	.quad 0
	.align 3
	.quad methods
	.align 3
	.quad jit_code_start
	.align 3
	.quad jit_code_end
	.align 3
	.quad 0
	.align 3
	.quad blob
	.align 3
	.quad class_name_table
	.align 3
	.quad class_info_offsets
	.align 3
	.quad method_info_offsets
	.align 3
	.quad ex_info_offsets
	.align 3
	.quad method_addresses
	.align 3
	.quad extra_method_info_offsets
	.align 3
	.quad extra_method_table
	.align 3
	.quad got_info_offsets
	.align 3
	.quad 0
	.align 3
	.quad unwind_info
	.align 3
	.quad mem_end
	.align 3
	.quad image_table
	.align 3
	.quad plt
	.align 3
	.quad plt_end
	.align 3
	.quad assembly_guid
	.align 3
	.quad runtime_version
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad globals
	.align 3
	.quad assembly_name
	.align 3
	.quad unbox_trampolines
	.align 3
	.quad unbox_trampolines_end
	.align 3
	.quad unbox_trampoline_addresses

	.long 205,2920,160,361,2,387000831,0,7912
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,128,8,8,15
	.long 0,0,0,0,0
	.globl _mono_aot_module_System_Xml_Linq_info
	.align 3
_mono_aot_module_System_Xml_Linq_info:
	.align 3
	.quad _mono_aot_file_info
.section __TEXT, __const
	.align 3
blob:

	.byte 0,1,4,0,1,4,0,1,4,1,4,1,4,0,1,4,0,1,4,0,1,4,0,1,4,0,1,4,0,1,4,0
	.byte 1,4,5,5,5,5,5,5,1,4,0,1,4,3,6,7,4,1,4,5,8,9,10,11,11,1,4,5,12,13,14,15
	.byte 16,0,0,0,0,0,0,0,2,17,18,0,0,0,0,0,0,0,0,0,0,0,4,19,20,21,22,0,0,0,0,0
	.byte 0,0,0,0,0,0,12,23,24,25,25,25,25,26,27,28,29,29,11,0,4,30,31,28,11,0,1,24,0,4,30,31
	.byte 28,11,0,0,0,1,32,0,1,33,0,1,34,0,1,35,0,1,36,0,1,37,0,5,38,39,5,28,11,0,0,0
	.byte 4,38,39,28,11,0,0,0,1,40,0,0,0,0,0,0,0,0,0,0,0,1,32,0,0,0,12,41,38,42,39,43
	.byte 38,44,39,28,11,28,11,0,0,0,0,0,4,45,46,11,11,0,0,0,0,0,1,33,0,0,0,7,47,38,48,39
	.byte 5,28,11,0,0,0,0,0,2,49,11,0,0,0,0,0,1,34,0,0,0,6,50,51,52,53,28,11,0,0,0,0
	.byte 0,2,54,11,0,0,0,0,0,1,35,0,0,0,7,55,38,56,39,5,28,11,0,0,0,0,0,2,57,11,0,0
	.byte 0,0,0,1,36,0,0,0,7,58,38,59,39,5,28,11,0,0,0,0,0,2,60,11,0,0,0,0,0,1,37,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,61,62,63,64,65,64,66,64,67,0,0,0,0,0,0,0,6
	.byte 38,39,68,68,28,11,0,0,0,6,38,39,5,5,28,11,0,2,69,11,0,1,70,0,4,71,72,73,74,0,1,75
	.byte 0,0,0,1,76,0,5,77,38,39,28,11,0,0,0,6,23,23,78,78,68,5,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,1,17,0,1,17,0,1,17,0,1,17,2,79,80,1,17,0,1,17,0,1,17,0,1,17,0
	.byte 1,17,0,1,17,5,38,39,5,28,11,1,17,2,38,28,1,17,0,1,17,0,1,17,0,1,17,10,38,39,17,78
	.byte 78,5,5,28,11,6,1,17,0,1,17,0,1,17,1,81,1,17,0,1,17,1,69,1,17,1,11,1,17,3,82,4
	.byte 4,1,17,0,1,17,1,76,1,17,0,1,17,0,1,17,2,83,84,1,17,1,85,1,17,1,86,1,17,5,6,87
	.byte 88,28,11,1,17,17,89,90,91,92,93,94,90,90,95,6,96,97,91,98,99,100,95,1,17,10,87,88,4,4,28,11
	.byte 38,39,28,11,1,17,6,87,88,4,28,11,5,1,17,4,101,102,28,11,1,17,1,103,1,17,1,104,1,17,0,1
	.byte 17,13,105,68,106,86,86,87,88,28,11,23,78,78,23,1,17,0,1,17,0,1,17,0,1,17,3,83,84,107,1,17
	.byte 1,4,0,0,0,1,108,0,0,0,0,0,0,0,0,0,0,0,1,81,0,0,0,0,0,0,0,8,109,87,110,88
	.byte 6,28,11,5,0,0,0,0,0,2,111,11,0,0,0,0,0,1,103,0,1,112,0,0,0,2,113,114,0,0,0,0
	.byte 0,0,0,1,115,0,0,0,0,0,1,6,0,0,0,0,0,0,0,0,0,0,0,2,116,117,1,22,8,118,119,6
	.byte 120,121,122,123,124,1,22,0,1,22,1,120,1,22,1,122,1,22,1,124,1,22,4,119,119,125,119,1,22,3,119,126
	.byte 127,1,22,0,1,22,1,128,128,1,22,0,1,22,0,1,22,0,1,22,0,1,22,0,1,23,0,1,23,0,1,23
	.byte 0,1,23,0,1,23,2,9,10,1,23,9,128,129,128,130,128,131,128,132,128,133,128,134,128,135,128,136,128,137,1,23
	.byte 0,1,23,0,1,23,1,128,138,1,23,4,128,139,128,140,128,141,128,142,0,0,0,3,128,143,5,5,0,0,0,0
	.byte 0,0,0,0,0,0,0,1,128,138,0,0,0,1,128,144,0,3,128,145,128,146,128,147,0,0,0,2,24,24,0,0
	.byte 0,38,128,148,128,149,105,105,38,38,39,28,39,28,11,28,5,5,87,87,88,28,88,28,11,28,38,38,39,28,39,28
	.byte 11,28,128,150,128,150,128,151,128,151,68,68,78,78,0,0,0,0,0,2,24,24,0,0,0,20,128,152,128,153,105,38
	.byte 39,28,11,5,87,88,28,11,38,39,28,11,128,150,128,151,68,78,0,1,24,0,0,0,0,0,4,105,105,105,105,0
	.byte 1,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,128,154,128,154,128,155,128,156,128,157
	.byte 0,1,128,158,0,1,128,158,0,1,128,159,0,1,128,159,0,1,128,160,0,1,128,160,0,1,128,161,0,1,128,161
	.byte 0,0,0,0,1,30,0,1,30,8,128,162,128,158,128,162,128,159,128,162,128,160,128,162,128,161,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,128,163,128,164,128,165,128,166,128,167,128,163
	.byte 128,163,128,168,0,0,0,15,128,169,23,128,170,128,171,8,128,172,128,173,8,128,174,128,173,8,128,175,128,175,128,176
	.byte 128,176,0,1,128,177,0,6,86,24,23,23,128,130,128,130,0,0,0,26,23,23,86,86,85,5,5,82,128,178,128,178
	.byte 128,131,128,150,128,150,128,133,128,151,128,151,128,132,106,106,74,68,68,128,136,78,78,128,130,0,0,0,19,128,179,24
	.byte 23,25,25,25,25,26,128,180,27,30,128,181,31,28,11,28,29,29,11,0,0,0,0,0,5,128,182,11,29,29,11,0
	.byte 0,0,0,0,1,128,177,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,128,183,0,1,128,183,0
	.byte 1,128,183,0,0,0,0,0,0,0,1,128,184,0,0,0,2,128,185,128,186,0,2,128,185,128,185,0,0,0,0,0
	.byte 0,0,1,128,187,0,0,0,2,128,188,128,189,0,2,128,188,128,188,0,1,128,183,0,1,128,183,0,10,128,190,128
	.byte 190,128,191,128,191,128,192,128,193,128,194,28,11,128,195,0,0,0,0,0,0,0,1,128,196,0,0,0,2,128,197,128
	.byte 198,0,2,128,197,128,197,0,0,0,0,0,2,128,199,128,198,0,1,128,199,0,4,128,200,128,201,128,198,128,202,0
	.byte 4,128,193,128,194,28,11,0,1,128,203,0,1,128,204,5,30,0,1,255,255,255,255,255,193,0,25,174,255,253,0,0
	.byte 0,2,131,74,1,1,198,0,25,174,0,1,7,133,143,193,0,25,172,193,0,25,173,193,0,25,175,5,30,0,1,255
	.byte 255,255,255,255,193,0,25,176,255,253,0,0,0,2,131,74,1,1,198,0,25,176,0,1,7,133,187,5,30,0,1,255
	.byte 255,255,255,255,193,0,25,177,255,253,0,0,0,2,131,74,1,1,198,0,25,177,0,1,7,133,219,5,30,0,1,255
	.byte 255,255,255,255,193,0,25,178,255,253,0,0,0,2,131,74,1,1,198,0,25,178,0,1,7,133,251,5,30,0,1,255
	.byte 255,255,255,255,193,0,25,179,255,253,0,0,0,2,131,74,1,1,198,0,25,179,0,1,7,134,27,4,2,131,174,1
	.byte 1,1,17,255,252,0,0,0,1,1,7,134,59,4,2,131,91,1,1,1,17,255,252,0,0,0,1,1,7,134,77,255
	.byte 252,0,0,0,1,1,3,219,0,0,10,4,2,66,1,2,2,131,186,1,1,22,4,2,131,75,1,1,7,134,107,255
	.byte 253,0,0,0,7,134,118,1,198,0,26,14,1,7,134,107,0,255,253,0,0,0,7,134,118,1,198,0,26,15,1,7
	.byte 134,107,0,255,253,0,0,0,7,134,118,1,198,0,26,16,1,7,134,107,0,255,253,0,0,0,7,134,118,1,198,0
	.byte 26,17,1,7,134,107,0,255,253,0,0,0,7,134,118,1,198,0,26,18,1,7,134,107,0,255,253,0,0,0,7,134
	.byte 118,1,198,0,26,19,1,7,134,107,0,255,253,0,0,0,2,131,74,1,1,198,0,25,174,0,1,7,134,107,4,2
	.byte 66,1,2,2,131,186,1,1,21,4,2,131,75,1,1,7,134,254,255,253,0,0,0,7,135,9,1,198,0,26,14,1
	.byte 7,134,254,0,255,253,0,0,0,7,135,9,1,198,0,26,15,1,7,134,254,0,255,253,0,0,0,7,135,9,1,198
	.byte 0,26,16,1,7,134,254,0,255,253,0,0,0,7,135,9,1,198,0,26,17,1,7,134,254,0,255,253,0,0,0,7
	.byte 135,9,1,198,0,26,18,1,7,134,254,0,255,253,0,0,0,7,135,9,1,198,0,26,19,1,7,134,254,0,255,253
	.byte 0,0,0,2,131,74,1,1,198,0,25,174,0,1,7,134,254,255,252,0,0,0,1,1,3,219,0,0,18,255,252,0
	.byte 0,0,1,1,3,219,0,0,19,255,254,0,0,0,0,255,43,0,0,1,4,2,131,75,1,1,2,36,1,255,253,0
	.byte 0,0,7,135,180,1,198,0,26,14,1,2,36,1,0,255,253,0,0,0,7,135,180,1,198,0,26,15,1,2,36,1
	.byte 0,255,253,0,0,0,7,135,180,1,198,0,26,16,1,2,36,1,0,255,253,0,0,0,7,135,180,1,198,0,26,17
	.byte 1,2,36,1,0,255,253,0,0,0,7,135,180,1,198,0,26,18,1,2,36,1,0,255,253,0,0,0,7,135,180,1
	.byte 198,0,26,19,1,2,36,1,0,255,253,0,0,0,2,131,74,1,1,198,0,25,174,0,1,2,36,1,255,253,0,0
	.byte 0,2,131,74,1,1,198,0,25,182,0,1,2,36,1,193,0,25,183,255,253,0,0,0,2,131,74,1,1,198,0,25
	.byte 184,0,1,2,36,1,255,253,0,0,0,2,131,74,1,1,198,0,25,185,0,1,2,36,1,255,253,0,0,0,2,131
	.byte 74,1,1,198,0,25,186,0,1,2,36,1,255,254,0,0,0,0,255,43,0,0,4,255,253,0,0,0,2,131,74,1
	.byte 1,198,0,25,185,0,1,7,134,107,255,253,0,0,0,2,131,74,1,1,198,0,25,185,0,1,7,134,254,12,0,40
	.byte 43,48,17,0,23,11,1,17,16,2,131,186,1,142,51,17,0,47,16,2,129,223,1,136,14,14,2,128,187,1,14,2
	.byte 129,146,3,6,193,0,27,111,14,6,1,1,4,16,1,4,10,14,6,1,2,36,1,29,0,196,0,0,148,0,16,1
	.byte 4,15,14,2,131,29,1,17,0,55,17,0,69,17,0,75,34,255,254,0,0,0,0,255,43,0,0,1,17,0,83,11
	.byte 2,131,186,1,11,1,23,23,2,80,1,6,193,0,3,89,6,193,0,3,91,6,193,0,3,90,23,2,131,133,1,6
	.byte 255,254,0,0,0,0,202,0,0,32,6,255,254,0,0,0,0,202,0,0,33,14,1,8,14,1,9,14,1,10,14,1
	.byte 11,14,1,12,14,1,13,6,255,254,0,0,0,0,202,0,0,35,6,255,254,0,0,0,0,202,0,0,36,8,2,84
	.byte 129,24,8,3,100,128,220,128,220,8,2,129,220,130,220,11,1,7,8,1,131,224,8,3,129,48,100,100,8,2,128,228
	.byte 128,152,8,2,100,128,220,8,1,130,92,8,2,128,176,100,8,2,96,128,216,6,255,254,0,0,0,0,202,0,0,43
	.byte 8,1,130,0,6,255,254,0,0,0,0,202,0,0,42,8,2,128,176,100,8,2,100,128,220,8,1,130,92,8,2,128
	.byte 176,100,8,2,100,128,220,8,1,130,132,8,2,128,176,100,14,6,1,2,131,186,1,17,0,128,137,17,0,128,149,17
	.byte 0,128,171,17,0,128,175,17,0,128,199,17,0,128,227,11,1,16,14,2,129,125,3,14,1,15,17,0,128,233,17,0
	.byte 128,249,17,0,129,11,14,1,14,8,5,124,124,112,112,124,14,2,128,186,1,17,0,129,207,11,1,32,11,2,129,104
	.byte 3,14,2,129,85,3,14,1,18,14,1,17,14,3,219,0,0,7,16,3,219,0,0,7,128,200,14,1,4,11,1,4
	.byte 6,255,254,0,0,0,0,202,0,0,74,6,255,254,0,0,0,0,202,0,0,75,14,1,19,16,1,17,76,14,3,219
	.byte 0,0,10,6,128,166,51,128,166,30,3,219,0,0,10,1,128,166,0,34,255,254,0,0,0,0,255,43,0,0,2,17
	.byte 0,132,39,14,2,128,173,1,6,128,176,51,128,176,30,3,219,0,0,10,1,128,176,0,6,255,254,0,0,0,0,202
	.byte 0,0,82,6,255,254,0,0,0,0,202,0,0,83,14,1,20,34,255,254,0,0,0,0,255,43,0,0,3,11,1,15
	.byte 11,1,14,16,1,17,71,8,2,84,129,24,8,2,100,129,36,8,1,130,244,8,2,128,176,100,17,0,13,17,0,132
	.byte 189,14,2,131,70,1,11,1,21,17,0,133,5,17,0,133,9,14,3,219,0,0,14,16,1,22,97,16,1,22,94,17
	.byte 0,133,13,16,1,22,95,17,0,133,87,16,1,22,96,14,1,22,14,3,219,0,0,15,14,1,21,11,1,22,8,14
	.byte 92,131,88,108,128,248,131,88,131,88,129,132,130,4,131,88,130,144,131,88,131,88,108,108,14,1,32,14,1,5,14,1
	.byte 31,14,1,6,17,0,133,175,17,0,133,189,14,1,16,14,2,129,112,3,14,1,24,14,1,27,16,1,23,100,14,1
	.byte 25,16,1,23,101,8,2,84,129,16,8,7,96,104,128,204,128,212,128,204,128,212,128,204,8,6,128,156,128,212,128,172
	.byte 128,164,128,172,128,164,8,8,129,96,129,96,129,48,129,56,129,64,129,72,129,88,129,80,8,6,129,184,130,156,129,244
	.byte 129,212,130,88,130,20,8,4,136,0,135,124,129,8,136,172,8,3,131,96,138,16,137,144,11,1,6,11,1,31,8,4
	.byte 132,172,132,84,128,200,133,52,8,3,130,12,134,108,134,32,23,2,129,65,3,6,195,0,11,14,6,195,0,11,12,6
	.byte 195,0,11,13,16,1,30,128,129,16,1,30,128,130,16,1,30,128,131,16,1,30,128,132,14,1,30,16,1,32,128,137
	.byte 14,3,219,0,0,19,6,129,31,51,129,31,30,3,219,0,0,19,1,129,31,0,34,255,254,0,0,0,0,255,43,0
	.byte 0,4,8,6,130,0,129,136,129,24,128,200,128,128,128,144,11,2,107,1,11,2,112,1,11,2,131,99,1,17,0,134
	.byte 199,11,2,131,184,1,11,2,129,93,1,11,2,109,1,14,1,34,11,1,5,8,5,104,135,180,135,180,131,40,135,180
	.byte 8,1,132,60,8,1,133,64,8,5,129,252,129,252,129,252,104,129,252,33,34,255,253,0,0,0,2,131,74,1,1,198
	.byte 0,25,185,0,1,7,134,107,14,7,134,118,14,7,134,107,34,255,253,0,0,0,2,131,74,1,1,198,0,25,185,0
	.byte 1,7,134,254,14,7,135,9,14,7,134,254,4,2,61,1,1,2,36,1,23,7,140,204,4,2,55,1,1,2,36,1
	.byte 6,255,253,0,0,0,7,140,216,1,198,0,2,143,1,2,36,1,0,6,255,253,0,0,0,7,140,204,1,198,0,2
	.byte 163,1,2,36,1,0,4,2,58,1,1,2,36,1,6,255,253,0,0,0,7,141,6,1,198,0,2,159,1,2,36,1
	.byte 0,4,2,59,1,1,2,36,1,6,255,253,0,0,0,7,141,33,1,198,0,2,160,1,2,36,1,0,12,2,34,255
	.byte 253,0,0,0,2,131,74,1,1,198,0,25,185,0,1,2,36,1,14,7,135,180,14,2,36,1,34,255,253,0,0,0
	.byte 2,131,74,1,1,198,0,25,187,0,1,2,36,1,11,2,131,207,1,11,2,131,108,1,34,255,253,0,0,0,2,131
	.byte 74,1,1,198,0,25,188,0,1,2,36,1,34,255,253,0,0,0,2,131,74,1,1,198,0,25,187,0,1,7,134,107
	.byte 34,255,253,0,0,0,2,131,74,1,1,198,0,25,187,0,1,7,134,254,7,17,109,111,110,111,95,104,101,108,112,101
	.byte 114,95,108,100,115,116,114,0,7,25,109,111,110,111,95,97,114,99,104,95,116,104,114,111,119,95,101,120,99,101,112,116
	.byte 105,111,110,0,3,128,205,3,128,210,3,193,0,28,226,3,128,203,3,129,32,3,129,10,3,129,11,3,129,12,3,129
	.byte 13,3,128,208,3,128,204,15,2,129,223,1,7,20,109,111,110,111,95,111,98,106,101,99,116,95,110,101,119,95,102,97
	.byte 115,116,0,3,193,0,9,127,3,195,0,15,99,3,195,0,15,68,3,13,3,195,0,15,78,3,193,0,28,246,7,23
	.byte 109,111,110,111,95,97,114,114,97,121,95,110,101,119,95,115,112,101,99,105,102,105,99,0,3,193,0,29,118,3,193,0
	.byte 24,143,3,193,0,24,169,3,193,0,24,162,7,32,109,111,110,111,95,97,114,99,104,95,116,104,114,111,119,95,99,111
	.byte 114,108,105,98,95,101,120,99,101,112,116,105,111,110,0,3,193,0,29,48,3,255,254,0,0,0,0,255,43,0,0,1
	.byte 3,193,0,28,244,3,193,0,29,69,3,31,3,193,0,29,67,3,129,33,3,129,34,3,129,6,3,33,3,129,7,3
	.byte 32,3,36,3,128,220,3,52,3,37,3,60,3,68,3,38,3,76,3,84,3,92,3,193,0,29,73,3,195,0,13,200
	.byte 3,195,0,13,146,3,108,3,109,3,129,5,3,106,3,112,3,193,0,9,118,3,107,3,115,3,110,3,104,3,128,249
	.byte 3,128,141,3,195,0,11,227,3,129,8,3,129,9,3,128,138,3,44,3,128,143,3,128,145,3,128,207,3,128,151,3
	.byte 128,147,3,128,144,3,11,3,255,254,0,0,0,0,202,0,0,71,3,255,254,0,0,0,0,202,0,0,72,3,128,152
	.byte 3,128,212,3,128,157,3,3,3,255,254,0,0,0,0,255,43,0,0,2,7,27,109,111,110,111,95,111,98,106,101,99
	.byte 116,95,110,101,119,95,112,116,114,102,114,101,101,95,98,111,120,0,3,128,153,3,128,154,3,195,0,15,76,3,128,206
	.byte 3,128,158,3,128,156,3,255,254,0,0,0,0,255,43,0,0,3,3,34,3,193,0,29,60,3,193,0,28,227,3,128
	.byte 174,3,128,184,3,193,0,23,32,3,128,194,3,195,0,11,201,3,193,0,25,149,3,193,0,28,243,3,128,187,3,193
	.byte 0,29,71,3,255,254,0,0,0,0,202,0,0,101,15,1,22,3,193,0,24,217,3,255,254,0,0,0,0,202,0,0
	.byte 103,3,128,202,3,255,254,0,0,0,0,202,0,0,104,3,193,0,24,208,3,255,254,0,0,0,0,202,0,0,106,3
	.byte 255,254,0,0,0,0,202,0,0,107,3,255,254,0,0,0,0,202,0,0,108,3,128,211,3,193,0,9,126,3,128,219
	.byte 7,23,109,111,110,111,95,111,98,106,101,99,116,95,110,101,119,95,112,116,114,102,114,101,101,0,3,128,233,3,128,236
	.byte 3,193,0,5,156,3,128,235,3,128,240,3,128,245,3,255,254,0,0,0,0,255,43,0,0,4,3,193,0,30,29,3
	.byte 195,0,11,194,3,193,0,6,56,3,193,0,26,161,3,193,0,28,199,3,193,0,29,52,3,195,0,11,188,3,195,0
	.byte 11,206,3,129,36,3,129,44,255,253,0,0,0,2,131,74,1,1,198,0,25,174,0,1,7,133,143,35,144,136,192,0
	.byte 94,41,255,253,0,0,0,2,131,74,1,1,198,0,25,174,0,1,7,133,143,0,4,2,131,75,1,1,7,133,143,35
	.byte 144,136,150,5,7,144,182,35,144,136,140,13,255,253,0,0,0,7,144,182,1,198,0,26,14,1,7,133,143,0,7,24
	.byte 109,111,110,111,95,111,98,106,101,99,116,95,110,101,119,95,115,112,101,99,105,102,105,99,0,7,26,109,111,110,111,95
	.byte 104,101,108,112,101,114,95,108,100,115,116,114,95,109,115,99,111,114,108,105,98,0,255,253,0,0,0,2,131,74,1,1
	.byte 198,0,25,176,0,1,7,133,187,35,145,22,192,0,94,41,255,253,0,0,0,2,131,74,1,1,198,0,25,176,0,1
	.byte 7,133,187,0,255,253,0,0,0,2,131,74,1,1,198,0,25,177,0,1,7,133,219,35,145,68,192,0,94,41,255,253
	.byte 0,0,0,2,131,74,1,1,198,0,25,177,0,1,7,133,219,0,255,253,0,0,0,2,131,74,1,1,198,0,25,178
	.byte 0,1,7,133,251,35,145,114,192,0,94,41,255,253,0,0,0,2,131,74,1,1,198,0,25,178,0,1,7,133,251,0
	.byte 35,145,114,140,17,255,253,0,0,0,2,131,74,1,1,198,0,25,187,0,1,7,133,251,35,145,114,192,0,92,33,16
	.byte 1,3,1,18,2,131,74,1,8,16,30,7,133,251,255,253,0,0,0,2,131,74,1,1,198,0,25,187,0,1,7,133
	.byte 251,3,193,0,14,229,255,253,0,0,0,2,131,74,1,1,198,0,25,179,0,1,7,134,27,35,145,230,192,0,94,41
	.byte 255,253,0,0,0,2,131,74,1,1,198,0,25,179,0,1,7,134,27,0,3,193,0,25,232,7,35,109,111,110,111,95
	.byte 116,104,114,101,97,100,95,105,110,116,101,114,114,117,112,116,105,111,110,95,99,104,101,99,107,112,111,105,110,116,0,3
	.byte 255,253,0,0,0,2,131,74,1,1,198,0,25,185,0,1,7,134,107,3,255,253,0,0,0,7,134,118,1,198,0,26
	.byte 17,1,7,134,107,0,3,255,253,0,0,0,7,134,118,1,198,0,26,14,1,7,134,107,0,3,255,253,0,0,0,2
	.byte 131,74,1,1,198,0,25,185,0,1,7,134,254,3,255,253,0,0,0,7,135,9,1,198,0,26,17,1,7,134,254,0
	.byte 3,255,253,0,0,0,7,135,9,1,198,0,26,14,1,7,134,254,0,3,255,253,0,0,0,2,131,74,1,1,198,0
	.byte 25,185,0,1,2,36,1,3,255,253,0,0,0,7,135,180,1,198,0,26,17,1,2,36,1,0,3,255,253,0,0,0
	.byte 7,135,180,1,198,0,26,14,1,2,36,1,0,3,193,0,1,45,3,194,0,6,51,2,0,0,2,17,0,2,31,0
	.byte 2,48,0,2,48,0,2,48,0,2,48,0,2,48,0,2,48,0,2,48,0,2,62,0,2,0,0,2,86,0,6,103
	.byte 2,2,72,129,72,128,148,129,12,129,12,2,80,129,180,84,129,120,129,120,0,2,48,0,2,48,0,2,48,0,2,48
	.byte 0,2,123,0,2,48,0,2,48,0,2,48,0,2,48,0,2,48,0,2,128,150,0,2,48,0,2,48,0,2,48,0
	.byte 2,48,0,2,48,0,6,128,169,1,2,128,152,131,28,129,176,130,40,130,40,0,6,128,199,1,2,56,129,88,80,129
	.byte 28,129,28,0,2,128,218,0,6,128,199,1,2,56,129,0,80,128,196,128,196,0,2,128,240,0,2,48,0,2,48,0
	.byte 2,48,0,2,48,0,2,48,0,2,48,0,6,128,254,1,2,64,129,92,80,129,32,129,32,0,2,128,218,0,6,129
	.byte 20,1,2,48,128,252,72,128,192,128,192,0,2,48,0,2,86,0,2,48,0,2,48,0,2,48,0,2,48,0,2,48
	.byte 0,2,86,0,2,48,0,6,129,37,2,2,80,132,112,130,220,132,28,132,28,2,88,133,0,128,220,132,172,132,172,0
	.byte 2,48,0,2,48,0,6,129,59,2,2,64,128,228,128,152,128,160,128,160,2,72,129,48,100,128,236,128,236,0,2,48
	.byte 0,2,48,0,2,86,0,2,48,0,6,129,78,1,2,72,130,236,128,220,130,152,130,152,0,2,48,0,2,48,0,6
	.byte 128,240,1,2,48,128,176,100,108,108,0,2,48,0,2,48,0,2,86,0,2,48,0,6,129,100,1,2,64,130,144,128
	.byte 216,130,60,130,60,0,2,48,0,2,48,0,6,128,240,1,2,48,128,176,100,108,108,0,2,48,0,2,48,0,2,86
	.byte 0,2,48,0,6,129,78,1,2,72,130,236,128,220,130,152,130,152,0,2,48,0,2,48,0,6,128,240,1,2,48,128
	.byte 176,100,108,108,0,2,48,0,2,48,0,2,86,0,2,48,0,6,129,78,1,2,72,131,20,128,220,130,192,130,192,0
	.byte 2,48,0,2,48,0,6,128,240,1,2,48,128,176,100,108,108,0,2,48,0,2,48,0,2,86,0,2,129,119,0,2
	.byte 129,136,0,2,48,0,2,48,0,2,48,0,2,48,0,2,48,0,2,123,0,2,48,0,2,48,0,2,48,0,6,128
	.byte 254,1,2,64,129,108,76,129,48,129,48,0,2,48,0,6,128,254,1,2,64,129,108,76,129,48,129,48,0,6,129,155
	.byte 1,2,56,128,188,104,128,128,128,128,0,2,17,0,2,129,172,0,2,62,0,2,48,0,2,17,0,6,128,199,1,2
	.byte 56,129,108,128,176,129,48,129,48,0,2,128,240,0,2,129,191,0,2,129,218,0,2,129,136,0,2,48,0,2,48,0
	.byte 2,48,0,2,48,0,2,48,0,2,128,150,0,2,129,235,0,2,129,136,0,2,48,0,2,129,252,0,2,48,0,2
	.byte 48,0,2,48,0,2,48,0,2,48,0,6,128,199,1,2,56,129,56,72,128,252,128,252,0,2,86,0,2,48,0,2
	.byte 0,0,2,48,0,6,130,18,1,2,72,130,52,80,129,248,129,248,0,2,48,0,2,130,42,0,2,48,0,2,0,0
	.byte 2,17,0,6,129,20,1,2,56,128,132,48,72,72,0,2,128,254,0,2,48,0,2,17,0,2,86,0,2,48,0,2
	.byte 17,0,2,130,62,0,2,128,218,0,6,130,18,1,2,72,129,204,128,172,129,144,129,144,0,2,130,79,0,6,130,99
	.byte 2,2,88,131,56,128,244,130,252,130,252,2,104,132,40,131,108,131,236,131,236,0,6,128,254,1,2,64,129,140,92,129
	.byte 80,129,80,0,6,128,254,1,2,64,129,32,84,128,228,128,228,0,2,48,0,2,48,0,2,48,0,6,130,124,1,2
	.byte 96,130,136,129,148,130,76,130,76,0,2,48,0,2,48,0,2,48,0,2,130,153,0,2,31,0,2,48,0,2,86,0
	.byte 2,48,0,2,48,0,2,48,0,2,48,0,2,48,0,2,86,0,2,48,0,2,31,0,2,48,0,6,129,78,1,2
	.byte 72,131,132,129,36,131,48,131,48,0,2,48,0,2,48,0,6,128,240,1,2,48,128,176,100,108,108,0,2,48,0,2
	.byte 48,0,2,86,0,2,130,167,0,2,129,235,0,2,48,0,2,48,0,2,48,0,2,48,0,2,130,184,0,2,48,0
	.byte 2,17,0,2,62,0,2,48,0,2,17,0,2,129,136,0,2,31,0,2,48,0,2,31,0,2,48,0,2,48,0,2
	.byte 130,153,0,2,130,153,0,2,130,153,0,6,130,204,1,2,64,128,232,56,128,204,128,204,0,6,129,100,1,2,72,129
	.byte 32,56,129,4,129,4,0,2,48,0,2,130,184,0,2,86,0,2,48,0,2,86,0,2,48,0,2,48,0,2,48,0
	.byte 2,48,0,2,48,0,2,48,0,2,130,221,0,2,129,78,0,2,129,136,0,2,48,0,2,48,0,2,130,153,0,2
	.byte 48,0,2,62,0,2,48,0,2,48,0,2,48,0,2,48,0,2,48,0,2,86,0,2,48,0,2,129,20,0,2,129
	.byte 191,0,2,128,218,0,2,128,150,0,2,48,0,6,130,235,3,2,96,131,44,130,8,130,240,130,240,2,112,133,128,132
	.byte 92,133,68,133,68,2,128,128,135,72,134,36,135,12,135,12,0,2,128,199,0,2,131,7,0,2,128,150,0,2,31,0
	.byte 6,131,26,3,2,96,130,12,129,76,129,208,129,208,2,112,131,92,130,156,131,32,131,32,2,128,128,132,84,131,148,132
	.byte 24,132,24,0,2,131,54,0,2,48,0,2,48,0,2,128,218,0,2,129,136,0,2,48,0,2,48,0,2,48,0,2
	.byte 48,0,2,48,0,2,48,0,2,48,0,2,48,0,2,48,0,2,131,71,0,2,48,0,2,48,0,2,48,0,2,48
	.byte 0,2,48,0,2,48,0,2,48,0,2,48,0,2,131,95,0,2,131,95,0,2,48,0,2,130,153,0,2,129,235,0
	.byte 2,0,0,2,48,0,2,48,0,2,48,0,2,48,0,2,48,0,2,48,0,2,48,0,2,48,0,2,48,0,2,48
	.byte 0,2,131,7,0,2,86,0,2,131,112,0,2,48,0,2,129,252,0,2,129,136,0,2,129,252,0,2,48,0,6,131
	.byte 135,2,2,128,160,133,208,132,60,133,124,133,124,2,128,168,135,92,131,40,134,12,134,12,0,2,48,0,2,48,0,6
	.byte 131,158,2,2,120,128,180,104,112,112,2,128,136,129,252,104,128,188,128,188,0,2,48,0,2,48,0,2,86,0,3,131
	.byte 173,0,1,29,56,19,255,253,0,0,0,2,131,74,1,1,198,0,25,174,0,1,7,133,143,1,0,1,0,0,2,48
	.byte 0,2,48,0,2,48,0,3,17,0,1,29,32,19,255,253,0,0,0,2,131,74,1,1,198,0,25,176,0,1,7,133
	.byte 187,1,0,1,0,0,3,17,0,1,29,32,19,255,253,0,0,0,2,131,74,1,1,198,0,25,177,0,1,7,133,219
	.byte 1,0,1,0,0,3,129,78,0,1,29,48,19,255,253,0,0,0,2,131,74,1,1,198,0,25,178,0,1,7,133,251
	.byte 1,0,1,0,0,3,131,187,0,1,29,72,19,255,253,0,0,0,2,131,74,1,1,198,0,25,179,0,1,7,134,27
	.byte 1,0,1,0,0,2,128,150,0,2,131,219,0,2,128,150,0,2,48,0,2,48,0,2,86,0,2,31,0,2,48,0
	.byte 2,17,0,2,128,240,0,2,48,0,2,48,0,2,86,0,2,31,0,2,48,0,2,17,0,2,128,240,0,2,131,219
	.byte 0,2,128,150,0,6,131,238,1,2,72,130,12,129,96,129,208,129,208,0,2,48,0,2,48,0,2,86,0,2,86,0
	.byte 2,48,0,2,17,0,2,128,240,0,2,17,0,2,48,0,2,131,238,0,2,86,0,2,132,6,0,6,128,199,1,2
	.byte 56,129,20,76,128,216,128,216,0,2,128,240,0,2,128,240,0,0,128,144,16,0,0,1,23,128,144,20,0,0,4,193
	.byte 0,26,236,193,0,26,251,193,0,28,121,193,0,26,249,193,0,26,235,193,0,26,203,193,0,26,204,193,0,26,205,193
	.byte 0,26,206,193,0,26,207,193,0,26,208,193,0,26,209,193,0,26,210,193,0,26,211,193,0,26,212,193,0,26,213,193
	.byte 0,26,214,193,0,26,237,193,0,26,215,193,0,26,216,193,0,26,217,193,0,26,218,193,0,26,239,23,128,144,20,0
	.byte 0,4,193,0,26,236,193,0,26,251,193,0,28,121,193,0,26,249,193,0,26,235,193,0,26,203,193,0,26,204,193,0
	.byte 26,205,193,0,26,206,193,0,26,207,193,0,26,208,193,0,26,209,193,0,26,210,193,0,26,211,193,0,26,212,193,0
	.byte 26,213,193,0,26,214,193,0,26,237,193,0,26,215,193,0,26,216,193,0,26,217,193,0,26,218,193,0,26,239,8,128
	.byte 228,15,88,16,0,8,14,193,0,28,122,193,0,28,121,193,0,28,119,129,2,129,3,129,4,7,9,128,160,80,0,0
	.byte 8,128,222,193,0,28,122,193,0,28,121,193,0,28,119,129,2,129,3,129,4,18,19,9,128,160,80,0,0,8,128,222
	.byte 193,0,28,122,193,0,28,121,193,0,28,119,129,2,129,3,129,4,22,25,10,128,168,88,0,0,8,128,222,193,0,28
	.byte 122,193,0,28,121,193,0,28,119,129,2,129,3,129,4,0,0,35,11,128,160,56,0,0,8,193,0,28,125,193,0,28
	.byte 122,193,0,28,121,193,0,28,119,51,52,46,48,50,49,47,11,128,160,80,0,0,8,193,0,28,125,193,0,28,122,193
	.byte 0,28,121,193,0,28,119,59,60,54,56,58,57,55,11,128,160,64,0,0,8,193,0,28,125,193,0,28,122,193,0,28
	.byte 121,193,0,28,119,67,68,62,64,66,65,63,11,128,160,64,0,0,8,193,0,28,125,193,0,28,122,193,0,28,121,193
	.byte 0,28,119,75,76,70,72,74,73,71,11,128,160,64,0,0,8,193,0,28,125,193,0,28,122,193,0,28,121,193,0,28
	.byte 119,83,84,78,80,82,81,79,11,128,160,72,0,0,8,193,0,28,125,193,0,28,122,193,0,28,121,193,0,28,119,91
	.byte 92,86,88,90,89,87,4,128,160,40,0,0,8,100,193,0,28,122,193,0,28,121,193,0,28,119,10,128,160,96,0,0
	.byte 8,128,222,193,0,28,122,193,0,28,121,193,0,28,119,129,2,129,3,129,4,105,113,114,9,128,160,104,0,0,8,128
	.byte 222,193,0,28,122,193,0,28,121,193,0,28,119,129,2,129,3,129,4,122,123,13,128,236,128,165,120,16,0,8,128,222
	.byte 193,0,28,122,193,0,28,121,193,0,28,119,129,2,129,3,129,4,128,137,128,155,128,161,128,164,128,163,128,162,11,128
	.byte 160,56,0,0,8,193,0,28,125,193,0,28,122,193,0,28,121,193,0,28,119,128,173,128,174,128,168,128,170,128,172,128
	.byte 171,128,169,4,128,160,24,0,0,8,193,0,28,125,193,0,28,122,193,0,28,121,193,0,28,119,11,128,160,72,0,0
	.byte 8,193,0,28,125,193,0,28,122,193,0,28,121,193,0,28,119,128,183,128,184,128,178,128,180,128,182,128,181,128,179,5
	.byte 128,160,32,0,0,8,128,200,128,196,193,0,28,121,128,191,128,192,4,128,228,128,201,32,32,0,8,128,214,128,213,193
	.byte 0,28,121,128,209,9,128,236,128,225,72,16,0,8,128,222,193,0,28,122,193,0,28,121,193,0,28,119,129,2,129,3
	.byte 129,4,0,0,11,128,160,48,0,0,8,193,0,28,125,193,0,28,122,193,0,28,121,193,0,28,119,128,232,128,233,128
	.byte 227,128,229,128,231,128,230,128,228,6,128,152,16,0,0,1,193,0,28,125,193,0,28,122,193,0,28,121,193,0,28,119
	.byte 128,238,128,235,23,128,144,20,0,0,4,193,0,26,236,193,0,26,251,193,0,28,121,193,0,26,249,193,0,26,235,193
	.byte 0,26,203,193,0,26,204,193,0,26,205,193,0,26,206,193,0,26,207,193,0,26,208,193,0,26,209,193,0,26,210,193
	.byte 0,26,211,193,0,26,212,193,0,26,213,193,0,26,214,193,0,26,237,193,0,26,215,193,0,26,216,193,0,26,217,193
	.byte 0,26,218,193,0,26,239,8,128,144,16,0,0,1,193,0,28,125,193,0,28,122,193,0,28,121,193,0,28,119,128,243
	.byte 128,246,128,240,128,245,8,128,160,56,0,0,8,193,0,28,125,193,0,28,122,193,0,28,121,193,0,28,119,129,2,129
	.byte 3,129,4,0,23,128,144,20,0,0,4,193,0,26,236,193,0,26,251,193,0,28,121,193,0,26,249,193,0,26,235,193
	.byte 0,26,203,193,0,26,204,193,0,26,205,193,0,26,206,193,0,26,207,193,0,26,208,193,0,26,209,193,0,26,210,193
	.byte 0,26,211,193,0,26,212,193,0,26,213,193,0,26,214,193,0,26,237,193,0,26,215,193,0,26,216,193,0,26,217,193
	.byte 0,26,218,193,0,26,239,4,128,196,129,17,20,32,0,4,193,0,28,125,193,0,28,122,193,0,28,121,193,0,28,119
	.byte 9,128,160,88,0,0,8,128,222,193,0,28,122,193,0,28,121,193,0,28,119,129,2,129,3,129,4,129,22,129,24,9
	.byte 128,224,80,8,0,8,128,222,193,0,28,122,193,0,28,121,193,0,28,119,129,2,129,3,129,4,129,27,129,30,4,128
	.byte 152,16,0,0,1,193,0,28,125,193,0,28,122,193,0,28,121,193,0,28,119,11,128,160,88,0,0,8,193,0,28,125
	.byte 193,0,28,122,193,0,28,121,193,0,28,119,129,43,129,44,129,38,129,40,129,42,129,41,129,39,4,128,136,16,16,0
	.byte 1,193,0,28,125,193,0,28,122,193,0,28,121,193,0,28,119,4,128,144,32,0,1,1,193,0,30,154,193,0,30,153
	.byte 193,0,28,121,193,0,30,151,115,103,101,110,0
.section __TEXT, __const
	.align 3
Lglobals_hash:

	.short 11, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0
.data
	.align 3
globals:
	.align 3
	.quad Lglobals_hash

	.long 0,0
.section __DWARF, __debug_info,regular,debug
LTDIE_2:

	.byte 17
	.asciz "System_Object"

	.byte 16,7
	.asciz "System_Object"

LDIFF_SYM3=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM3
LTDIE_2_POINTER:

	.byte 13
LDIFF_SYM4=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM4
LTDIE_2_REFERENCE:

	.byte 14
LDIFF_SYM5=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM5
LTDIE_4:

	.byte 5
	.asciz "System_Xml_Linq_XNode"

	.byte 72,16
LDIFF_SYM6=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM6
	.byte 2,35,0,6
	.asciz "previous"

LDIFF_SYM7=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM7
	.byte 2,35,56,6
	.asciz "next"

LDIFF_SYM8=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM8
	.byte 2,35,64,0,7
	.asciz "System_Xml_Linq_XNode"

LDIFF_SYM9=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM9
LTDIE_4_POINTER:

	.byte 13
LDIFF_SYM10=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM10
LTDIE_4_REFERENCE:

	.byte 14
LDIFF_SYM11=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM11
LTDIE_3:

	.byte 5
	.asciz "System_Xml_Linq_XContainer"

	.byte 88,16
LDIFF_SYM12=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM12
	.byte 2,35,0,6
	.asciz "first"

LDIFF_SYM13=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM13
	.byte 2,35,72,6
	.asciz "last"

LDIFF_SYM14=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM14
	.byte 2,35,80,0,7
	.asciz "System_Xml_Linq_XContainer"

LDIFF_SYM15=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM15
LTDIE_3_POINTER:

	.byte 13
LDIFF_SYM16=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM16
LTDIE_3_REFERENCE:

	.byte 14
LDIFF_SYM17=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM17
LTDIE_6:

	.byte 5
	.asciz "System_ValueType"

	.byte 16,16
LDIFF_SYM18=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM18
	.byte 2,35,0,0,7
	.asciz "System_ValueType"

LDIFF_SYM19=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM19
LTDIE_6_POINTER:

	.byte 13
LDIFF_SYM20=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM20
LTDIE_6_REFERENCE:

	.byte 14
LDIFF_SYM21=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM21
LTDIE_5:

	.byte 5
	.asciz "System_Int32"

	.byte 20,16
LDIFF_SYM22=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM22
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM23=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM23
	.byte 2,35,16,0,7
	.asciz "System_Int32"

LDIFF_SYM24=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM24
LTDIE_5_POINTER:

	.byte 13
LDIFF_SYM25=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM25
LTDIE_5_REFERENCE:

	.byte 14
LDIFF_SYM26=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM26
LTDIE_12:

	.byte 5
	.asciz "System_Reflection_MemberInfo"

	.byte 16,16
LDIFF_SYM27=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM27
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MemberInfo"

LDIFF_SYM28=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM28
LTDIE_12_POINTER:

	.byte 13
LDIFF_SYM29=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM29
LTDIE_12_REFERENCE:

	.byte 14
LDIFF_SYM30=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM30
LTDIE_11:

	.byte 5
	.asciz "System_Reflection_MethodBase"

	.byte 16,16
LDIFF_SYM31=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM31
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MethodBase"

LDIFF_SYM32=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM32
LTDIE_11_POINTER:

	.byte 13
LDIFF_SYM33=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM33
LTDIE_11_REFERENCE:

	.byte 14
LDIFF_SYM34=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM34
LTDIE_10:

	.byte 5
	.asciz "System_Reflection_MethodInfo"

	.byte 16,16
LDIFF_SYM35=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM35
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MethodInfo"

LDIFF_SYM36=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM36
LTDIE_10_POINTER:

	.byte 13
LDIFF_SYM37=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM37
LTDIE_10_REFERENCE:

	.byte 14
LDIFF_SYM38=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM38
LTDIE_14:

	.byte 5
	.asciz "System_Type"

	.byte 24,16
LDIFF_SYM39=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM39
	.byte 2,35,0,6
	.asciz "_impl"

LDIFF_SYM40=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM40
	.byte 2,35,16,0,7
	.asciz "System_Type"

LDIFF_SYM41=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM41
LTDIE_14_POINTER:

	.byte 13
LDIFF_SYM42=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM42
LTDIE_14_REFERENCE:

	.byte 14
LDIFF_SYM43=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM43
LTDIE_15:

	.byte 5
	.asciz "System_Boolean"

	.byte 17,16
LDIFF_SYM44=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM44
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM45=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM45
	.byte 2,35,16,0,7
	.asciz "System_Boolean"

LDIFF_SYM46=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM46
LTDIE_15_POINTER:

	.byte 13
LDIFF_SYM47=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM47
LTDIE_15_REFERENCE:

	.byte 14
LDIFF_SYM48=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM48
LTDIE_13:

	.byte 5
	.asciz "System_DelegateData"

	.byte 40,16
LDIFF_SYM49=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM49
	.byte 2,35,0,6
	.asciz "target_type"

LDIFF_SYM50=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM50
	.byte 2,35,16,6
	.asciz "method_name"

LDIFF_SYM51=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM51
	.byte 2,35,24,6
	.asciz "curried_first_arg"

LDIFF_SYM52=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM52
	.byte 2,35,32,0,7
	.asciz "System_DelegateData"

LDIFF_SYM53=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM53
LTDIE_13_POINTER:

	.byte 13
LDIFF_SYM54=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM54
LTDIE_13_REFERENCE:

	.byte 14
LDIFF_SYM55=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM55
LTDIE_9:

	.byte 5
	.asciz "System_Delegate"

	.byte 88,16
LDIFF_SYM56=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM56
	.byte 2,35,0,6
	.asciz "method_ptr"

LDIFF_SYM57=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM57
	.byte 2,35,16,6
	.asciz "invoke_impl"

LDIFF_SYM58=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM58
	.byte 2,35,24,6
	.asciz "m_target"

LDIFF_SYM59=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM59
	.byte 2,35,32,6
	.asciz "method"

LDIFF_SYM60=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM60
	.byte 2,35,40,6
	.asciz "delegate_trampoline"

LDIFF_SYM61=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM61
	.byte 2,35,48,6
	.asciz "method_code"

LDIFF_SYM62=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM62
	.byte 2,35,56,6
	.asciz "method_info"

LDIFF_SYM63=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM63
	.byte 2,35,64,6
	.asciz "original_method_info"

LDIFF_SYM64=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM64
	.byte 2,35,72,6
	.asciz "data"

LDIFF_SYM65=LTDIE_13_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM65
	.byte 2,35,80,0,7
	.asciz "System_Delegate"

LDIFF_SYM66=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM66
LTDIE_9_POINTER:

	.byte 13
LDIFF_SYM67=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM67
LTDIE_9_REFERENCE:

	.byte 14
LDIFF_SYM68=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM68
LTDIE_8:

	.byte 5
	.asciz "System_MulticastDelegate"

	.byte 104,16
LDIFF_SYM69=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM69
	.byte 2,35,0,6
	.asciz "prev"

LDIFF_SYM70=LTDIE_8_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM70
	.byte 2,35,88,6
	.asciz "kpm_next"

LDIFF_SYM71=LTDIE_8_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM71
	.byte 2,35,96,0,7
	.asciz "System_MulticastDelegate"

LDIFF_SYM72=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM72
LTDIE_8_POINTER:

	.byte 13
LDIFF_SYM73=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM73
LTDIE_8_REFERENCE:

	.byte 14
LDIFF_SYM74=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM74
LTDIE_7:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 104,16
LDIFF_SYM75=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM75
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM76=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM76
LTDIE_7_POINTER:

	.byte 13
LDIFF_SYM77=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM77
LTDIE_7_REFERENCE:

	.byte 14
LDIFF_SYM78=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM78
LTDIE_1:

	.byte 5
	.asciz "System_Xml_Linq_XObject"

	.byte 56,16
LDIFF_SYM79=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM79
	.byte 2,35,0,6
	.asciz "owner"

LDIFF_SYM80=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM80
	.byte 2,35,16,6
	.asciz "baseuri"

LDIFF_SYM81=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM81
	.byte 2,35,24,6
	.asciz "line"

LDIFF_SYM82=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM82
	.byte 2,35,48,6
	.asciz "column"

LDIFF_SYM83=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM83
	.byte 2,35,52,6
	.asciz "Changing"

LDIFF_SYM84=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM84
	.byte 2,35,32,6
	.asciz "Changed"

LDIFF_SYM85=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM85
	.byte 2,35,40,0,7
	.asciz "System_Xml_Linq_XObject"

LDIFF_SYM86=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM86
LTDIE_1_POINTER:

	.byte 13
LDIFF_SYM87=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM87
LTDIE_1_REFERENCE:

	.byte 14
LDIFF_SYM88=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM88
LTDIE_19:

	.byte 17
	.asciz "System_Collections_Generic_IEqualityComparer`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEqualityComparer`1"

LDIFF_SYM89=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM89
LTDIE_19_POINTER:

	.byte 13
LDIFF_SYM90=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM90
LTDIE_19_REFERENCE:

	.byte 14
LDIFF_SYM91=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM91
LTDIE_20:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM92=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM92
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM93=LTDIE_18_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM93
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM94=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM94
LTDIE_20_POINTER:

	.byte 13
LDIFF_SYM95=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM95
LTDIE_20_REFERENCE:

	.byte 14
LDIFF_SYM96=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM96
LTDIE_21:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM97=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM97
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM98=LTDIE_18_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM98
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM99=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM99
LTDIE_21_POINTER:

	.byte 13
LDIFF_SYM100=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM100
LTDIE_21_REFERENCE:

	.byte 14
LDIFF_SYM101=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM101
LTDIE_18:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM102=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM102
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM103=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM103
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM104=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM104
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM105=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM105
	.byte 2,35,64,6
	.asciz "version"

LDIFF_SYM106=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM106
	.byte 2,35,68,6
	.asciz "freeList"

LDIFF_SYM107=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM107
	.byte 2,35,72,6
	.asciz "freeCount"

LDIFF_SYM108=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM108
	.byte 2,35,76,6
	.asciz "comparer"

LDIFF_SYM109=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM109
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM110=LTDIE_20_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM110
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM111=LTDIE_21_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM111
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM112=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM112
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM113=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM113
LTDIE_18_POINTER:

	.byte 13
LDIFF_SYM114=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM114
LTDIE_18_REFERENCE:

	.byte 14
LDIFF_SYM115=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM115
LTDIE_17:

	.byte 5
	.asciz "System_Xml_Linq_XNamespace"

	.byte 32,16
LDIFF_SYM116=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM116
	.byte 2,35,0,6
	.asciz "uri"

LDIFF_SYM117=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM117
	.byte 2,35,16,6
	.asciz "table"

LDIFF_SYM118=LTDIE_18_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM118
	.byte 2,35,24,0,7
	.asciz "System_Xml_Linq_XNamespace"

LDIFF_SYM119=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM119
LTDIE_17_POINTER:

	.byte 13
LDIFF_SYM120=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM120
LTDIE_17_REFERENCE:

	.byte 14
LDIFF_SYM121=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM121
LTDIE_16:

	.byte 5
	.asciz "System_Xml_Linq_XName"

	.byte 32,16
LDIFF_SYM122=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM122
	.byte 2,35,0,6
	.asciz "local"

LDIFF_SYM123=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM123
	.byte 2,35,16,6
	.asciz "ns"

LDIFF_SYM124=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM124
	.byte 2,35,24,0,7
	.asciz "System_Xml_Linq_XName"

LDIFF_SYM125=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM125
LTDIE_16_POINTER:

	.byte 13
LDIFF_SYM126=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM126
LTDIE_16_REFERENCE:

	.byte 14
LDIFF_SYM127=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM127
LTDIE_0:

	.byte 5
	.asciz "System_Xml_Linq_XAttribute"

	.byte 88,16
LDIFF_SYM128=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM128
	.byte 2,35,0,6
	.asciz "name"

LDIFF_SYM129=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM129
	.byte 2,35,56,6
	.asciz "value"

LDIFF_SYM130=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM130
	.byte 2,35,64,6
	.asciz "next"

LDIFF_SYM131=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM131
	.byte 2,35,72,6
	.asciz "previous"

LDIFF_SYM132=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM132
	.byte 2,35,80,0,7
	.asciz "System_Xml_Linq_XAttribute"

LDIFF_SYM133=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM133
LTDIE_0_POINTER:

	.byte 13
LDIFF_SYM134=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM134
LTDIE_0_REFERENCE:

	.byte 14
LDIFF_SYM135=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM135
	.byte 2
	.asciz "System.Xml.Linq.XAttribute:.ctor"
	.asciz "System_Xml_Linq_XAttribute__ctor_System_Xml_Linq_XAttribute"

	.byte 0,0
	.quad System_Xml_Linq_XAttribute__ctor_System_Xml_Linq_XAttribute
	.quad Lme_0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM136=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM136
	.byte 1,105,3
	.asciz "other"

LDIFF_SYM137=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM137
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM138=Lfde0_end - Lfde0_start
	.long LDIFF_SYM138
Lfde0_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XAttribute__ctor_System_Xml_Linq_XAttribute

LDIFF_SYM139=Lme_0 - System_Xml_Linq_XAttribute__ctor_System_Xml_Linq_XAttribute
	.long LDIFF_SYM139
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,153,2
	.align 3
Lfde0_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XAttribute:.ctor"
	.asciz "System_Xml_Linq_XAttribute__ctor_System_Xml_Linq_XName_object"

	.byte 0,0
	.quad System_Xml_Linq_XAttribute__ctor_System_Xml_Linq_XName_object
	.quad Lme_1

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM140=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM140
	.byte 2,141,16,3
	.asciz "name"

LDIFF_SYM141=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM141
	.byte 2,141,24,3
	.asciz "value"

LDIFF_SYM142=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM142
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM143=Lfde1_end - Lfde1_start
	.long LDIFF_SYM143
Lfde1_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XAttribute__ctor_System_Xml_Linq_XName_object

LDIFF_SYM144=Lme_1 - System_Xml_Linq_XAttribute__ctor_System_Xml_Linq_XName_object
	.long LDIFF_SYM144
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde1_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XAttribute:get_IsNamespaceDeclaration"
	.asciz "System_Xml_Linq_XAttribute_get_IsNamespaceDeclaration"

	.byte 0,0
	.quad System_Xml_Linq_XAttribute_get_IsNamespaceDeclaration
	.quad Lme_2

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM145=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM145
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM146=Lfde2_end - Lfde2_start
	.long LDIFF_SYM146
Lfde2_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XAttribute_get_IsNamespaceDeclaration

LDIFF_SYM147=Lme_2 - System_Xml_Linq_XAttribute_get_IsNamespaceDeclaration
	.long LDIFF_SYM147
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.align 3
Lfde2_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XAttribute:get_Name"
	.asciz "System_Xml_Linq_XAttribute_get_Name"

	.byte 0,0
	.quad System_Xml_Linq_XAttribute_get_Name
	.quad Lme_3

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM148=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM148
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM149=Lfde3_end - Lfde3_start
	.long LDIFF_SYM149
Lfde3_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XAttribute_get_Name

LDIFF_SYM150=Lme_3 - System_Xml_Linq_XAttribute_get_Name
	.long LDIFF_SYM150
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde3_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XAttribute:get_NextAttribute"
	.asciz "System_Xml_Linq_XAttribute_get_NextAttribute"

	.byte 0,0
	.quad System_Xml_Linq_XAttribute_get_NextAttribute
	.quad Lme_4

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM151=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM151
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM152=Lfde4_end - Lfde4_start
	.long LDIFF_SYM152
Lfde4_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XAttribute_get_NextAttribute

LDIFF_SYM153=Lme_4 - System_Xml_Linq_XAttribute_get_NextAttribute
	.long LDIFF_SYM153
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde4_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XAttribute:set_NextAttribute"
	.asciz "System_Xml_Linq_XAttribute_set_NextAttribute_System_Xml_Linq_XAttribute"

	.byte 0,0
	.quad System_Xml_Linq_XAttribute_set_NextAttribute_System_Xml_Linq_XAttribute
	.quad Lme_5

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM154=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM154
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM155=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM155
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM156=Lfde5_end - Lfde5_start
	.long LDIFF_SYM156
Lfde5_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XAttribute_set_NextAttribute_System_Xml_Linq_XAttribute

LDIFF_SYM157=Lme_5 - System_Xml_Linq_XAttribute_set_NextAttribute_System_Xml_Linq_XAttribute
	.long LDIFF_SYM157
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde5_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XAttribute:get_NodeType"
	.asciz "System_Xml_Linq_XAttribute_get_NodeType"

	.byte 0,0
	.quad System_Xml_Linq_XAttribute_get_NodeType
	.quad Lme_6

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM158=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM158
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM159=Lfde6_end - Lfde6_start
	.long LDIFF_SYM159
Lfde6_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XAttribute_get_NodeType

LDIFF_SYM160=Lme_6 - System_Xml_Linq_XAttribute_get_NodeType
	.long LDIFF_SYM160
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde6_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XAttribute:set_PreviousAttribute"
	.asciz "System_Xml_Linq_XAttribute_set_PreviousAttribute_System_Xml_Linq_XAttribute"

	.byte 0,0
	.quad System_Xml_Linq_XAttribute_set_PreviousAttribute_System_Xml_Linq_XAttribute
	.quad Lme_7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM161=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM161
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM162=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM162
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM163=Lfde7_end - Lfde7_start
	.long LDIFF_SYM163
Lfde7_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XAttribute_set_PreviousAttribute_System_Xml_Linq_XAttribute

LDIFF_SYM164=Lme_7 - System_Xml_Linq_XAttribute_set_PreviousAttribute_System_Xml_Linq_XAttribute
	.long LDIFF_SYM164
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde7_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XAttribute:get_Value"
	.asciz "System_Xml_Linq_XAttribute_get_Value"

	.byte 0,0
	.quad System_Xml_Linq_XAttribute_get_Value
	.quad Lme_8

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM165=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM165
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM166=Lfde8_end - Lfde8_start
	.long LDIFF_SYM166
Lfde8_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XAttribute_get_Value

LDIFF_SYM167=Lme_8 - System_Xml_Linq_XAttribute_get_Value
	.long LDIFF_SYM167
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde8_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XAttribute:set_Value"
	.asciz "System_Xml_Linq_XAttribute_set_Value_string"

	.byte 0,0
	.quad System_Xml_Linq_XAttribute_set_Value_string
	.quad Lme_9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM168=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM168
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM169=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM169
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM170=Lfde9_end - Lfde9_start
	.long LDIFF_SYM170
Lfde9_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XAttribute_set_Value_string

LDIFF_SYM171=Lme_9 - System_Xml_Linq_XAttribute_set_Value_string
	.long LDIFF_SYM171
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde9_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XAttribute:Remove"
	.asciz "System_Xml_Linq_XAttribute_Remove"

	.byte 0,0
	.quad System_Xml_Linq_XAttribute_Remove
	.quad Lme_a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM172=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM172
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM173=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM173
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM174=Lfde10_end - Lfde10_start
	.long LDIFF_SYM174
Lfde10_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XAttribute_Remove

LDIFF_SYM175=Lme_a - System_Xml_Linq_XAttribute_Remove
	.long LDIFF_SYM175
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,151,4,152,3,68,153,2,154,1
	.align 3
Lfde10_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XAttribute:SetValue"
	.asciz "System_Xml_Linq_XAttribute_SetValue_object"

	.byte 0,0
	.quad System_Xml_Linq_XAttribute_SetValue_object
	.quad Lme_b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM176=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM176
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM177=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM177
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM178=Lfde11_end - Lfde11_start
	.long LDIFF_SYM178
Lfde11_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XAttribute_SetValue_object

LDIFF_SYM179=Lme_b - System_Xml_Linq_XAttribute_SetValue_object
	.long LDIFF_SYM179
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,153,2
	.align 3
Lfde11_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XAttribute:GetPrefixOfNamespace"
	.asciz "System_Xml_Linq_XAttribute_GetPrefixOfNamespace_System_Xml_Linq_XNamespace"

	.byte 0,0
	.quad System_Xml_Linq_XAttribute_GetPrefixOfNamespace_System_Xml_Linq_XNamespace
	.quad Lme_c

	.byte 2,118,16,3
	.asciz "ns"

LDIFF_SYM180=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM180
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM181=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM181
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM182=Lfde12_end - Lfde12_start
	.long LDIFF_SYM182
Lfde12_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XAttribute_GetPrefixOfNamespace_System_Xml_Linq_XNamespace

LDIFF_SYM183=Lme_c - System_Xml_Linq_XAttribute_GetPrefixOfNamespace_System_Xml_Linq_XNamespace
	.long LDIFF_SYM183
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.align 3
Lfde12_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_24:

	.byte 17
	.asciz "System_IFormatProvider"

	.byte 16,7
	.asciz "System_IFormatProvider"

LDIFF_SYM184=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM184
LTDIE_24_POINTER:

	.byte 13
LDIFF_SYM185=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM185
LTDIE_24_REFERENCE:

	.byte 14
LDIFF_SYM186=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM186
LTDIE_23:

	.byte 5
	.asciz "System_IO_TextWriter"

	.byte 32,16
LDIFF_SYM187=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM187
	.byte 2,35,0,6
	.asciz "CoreNewLine"

LDIFF_SYM188=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM188
	.byte 2,35,16,6
	.asciz "InternalFormatProvider"

LDIFF_SYM189=LTDIE_24_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM189
	.byte 2,35,24,0,7
	.asciz "System_IO_TextWriter"

LDIFF_SYM190=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM190
LTDIE_23_POINTER:

	.byte 13
LDIFF_SYM191=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM191
LTDIE_23_REFERENCE:

	.byte 14
LDIFF_SYM192=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM192
LTDIE_25:

	.byte 5
	.asciz "System_Text_StringBuilder"

	.byte 48,16
LDIFF_SYM193=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM193
	.byte 2,35,0,6
	.asciz "_length"

LDIFF_SYM194=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM194
	.byte 2,35,16,6
	.asciz "_str"

LDIFF_SYM195=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM195
	.byte 2,35,24,6
	.asciz "_cached_str"

LDIFF_SYM196=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM196
	.byte 2,35,32,6
	.asciz "_maxCapacity"

LDIFF_SYM197=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM197
	.byte 2,35,40,0,7
	.asciz "System_Text_StringBuilder"

LDIFF_SYM198=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM198
LTDIE_25_POINTER:

	.byte 13
LDIFF_SYM199=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM199
LTDIE_25_REFERENCE:

	.byte 14
LDIFF_SYM200=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM200
LTDIE_22:

	.byte 5
	.asciz "System_IO_StringWriter"

	.byte 48,16
LDIFF_SYM201=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM201
	.byte 2,35,0,6
	.asciz "_sb"

LDIFF_SYM202=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM202
	.byte 2,35,32,6
	.asciz "_isOpen"

LDIFF_SYM203=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM203
	.byte 2,35,40,0,7
	.asciz "System_IO_StringWriter"

LDIFF_SYM204=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM204
LTDIE_22_POINTER:

	.byte 13
LDIFF_SYM205=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM205
LTDIE_22_REFERENCE:

	.byte 14
LDIFF_SYM206=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM206
LTDIE_27:

	.byte 8
	.asciz "System_Xml_ConformanceLevel"

	.byte 4
LDIFF_SYM207=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM207
	.byte 9
	.asciz "Auto"

	.byte 0,9
	.asciz "Fragment"

	.byte 1,9
	.asciz "Document"

	.byte 2,0,7
	.asciz "System_Xml_ConformanceLevel"

LDIFF_SYM208=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM208
LTDIE_27_POINTER:

	.byte 13
LDIFF_SYM209=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM209
LTDIE_27_REFERENCE:

	.byte 14
LDIFF_SYM210=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM210
LTDIE_30:

	.byte 5
	.asciz "System_UInt32"

	.byte 20,16
LDIFF_SYM211=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM211
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM212=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM212
	.byte 2,35,16,0,7
	.asciz "System_UInt32"

LDIFF_SYM213=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM213
LTDIE_30_POINTER:

	.byte 13
LDIFF_SYM214=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM214
LTDIE_30_REFERENCE:

	.byte 14
LDIFF_SYM215=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM215
LTDIE_29:

	.byte 5
	.asciz "System_Globalization_CodePageDataItem"

	.byte 40,16
LDIFF_SYM216=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM216
	.byte 2,35,0,6
	.asciz "m_dataIndex"

LDIFF_SYM217=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM217
	.byte 2,35,24,6
	.asciz "m_uiFamilyCodePage"

LDIFF_SYM218=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM218
	.byte 2,35,28,6
	.asciz "m_webName"

LDIFF_SYM219=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM219
	.byte 2,35,16,6
	.asciz "m_flags"

LDIFF_SYM220=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM220
	.byte 2,35,32,0,7
	.asciz "System_Globalization_CodePageDataItem"

LDIFF_SYM221=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM221
LTDIE_29_POINTER:

	.byte 13
LDIFF_SYM222=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM222
LTDIE_29_REFERENCE:

	.byte 14
LDIFF_SYM223=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM223
LTDIE_31:

	.byte 5
	.asciz "System_Text_EncoderFallback"

	.byte 17,16
LDIFF_SYM224=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM224
	.byte 2,35,0,6
	.asciz "bIsMicrosoftBestFitFallback"

LDIFF_SYM225=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM225
	.byte 2,35,16,0,7
	.asciz "System_Text_EncoderFallback"

LDIFF_SYM226=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM226
LTDIE_31_POINTER:

	.byte 13
LDIFF_SYM227=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM227
LTDIE_31_REFERENCE:

	.byte 14
LDIFF_SYM228=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM228
LTDIE_32:

	.byte 5
	.asciz "System_Text_DecoderFallback"

	.byte 17,16
LDIFF_SYM229=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM229
	.byte 2,35,0,6
	.asciz "bIsMicrosoftBestFitFallback"

LDIFF_SYM230=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM230
	.byte 2,35,16,0,7
	.asciz "System_Text_DecoderFallback"

LDIFF_SYM231=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM231
LTDIE_32_POINTER:

	.byte 13
LDIFF_SYM232=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM232
LTDIE_32_REFERENCE:

	.byte 14
LDIFF_SYM233=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM233
LTDIE_28:

	.byte 5
	.asciz "System_Text_Encoding"

	.byte 48,16
LDIFF_SYM234=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM234
	.byte 2,35,0,6
	.asciz "m_codePage"

LDIFF_SYM235=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM235
	.byte 2,35,40,6
	.asciz "dataItem"

LDIFF_SYM236=LTDIE_29_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM236
	.byte 2,35,16,6
	.asciz "m_isReadOnly"

LDIFF_SYM237=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM237
	.byte 2,35,44,6
	.asciz "encoderFallback"

LDIFF_SYM238=LTDIE_31_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM238
	.byte 2,35,24,6
	.asciz "decoderFallback"

LDIFF_SYM239=LTDIE_32_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM239
	.byte 2,35,32,0,7
	.asciz "System_Text_Encoding"

LDIFF_SYM240=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM240
LTDIE_28_POINTER:

	.byte 13
LDIFF_SYM241=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM241
LTDIE_28_REFERENCE:

	.byte 14
LDIFF_SYM242=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM242
LTDIE_33:

	.byte 8
	.asciz "System_Xml_NewLineHandling"

	.byte 4
LDIFF_SYM243=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM243
	.byte 9
	.asciz "Replace"

	.byte 0,9
	.asciz "Entitize"

	.byte 1,9
	.asciz "None"

	.byte 2,0,7
	.asciz "System_Xml_NewLineHandling"

LDIFF_SYM244=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM244
LTDIE_33_POINTER:

	.byte 13
LDIFF_SYM245=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM245
LTDIE_33_REFERENCE:

	.byte 14
LDIFF_SYM246=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM246
LTDIE_34:

	.byte 8
	.asciz "System_Xml_XmlOutputMethod"

	.byte 4
LDIFF_SYM247=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM247
	.byte 9
	.asciz "Xml"

	.byte 0,9
	.asciz "Html"

	.byte 1,9
	.asciz "Text"

	.byte 2,9
	.asciz "AutoDetect"

	.byte 3,0,7
	.asciz "System_Xml_XmlOutputMethod"

LDIFF_SYM248=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM248
LTDIE_34_POINTER:

	.byte 13
LDIFF_SYM249=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM249
LTDIE_34_REFERENCE:

	.byte 14
LDIFF_SYM250=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM250
LTDIE_35:

	.byte 8
	.asciz "System_Xml_NamespaceHandling"

	.byte 4
LDIFF_SYM251=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM251
	.byte 9
	.asciz "Default"

	.byte 0,9
	.asciz "OmitDuplicates"

	.byte 1,0,7
	.asciz "System_Xml_NamespaceHandling"

LDIFF_SYM252=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM252
LTDIE_35_POINTER:

	.byte 13
LDIFF_SYM253=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM253
LTDIE_35_REFERENCE:

	.byte 14
LDIFF_SYM254=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM254
LTDIE_26:

	.byte 5
	.asciz "System_Xml_XmlWriterSettings"

	.byte 72,16
LDIFF_SYM255=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM255
	.byte 2,35,0,6
	.asciz "checkCharacters"

LDIFF_SYM256=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM256
	.byte 2,35,40,6
	.asciz "closeOutput"

LDIFF_SYM257=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM257
	.byte 2,35,41,6
	.asciz "conformance"

LDIFF_SYM258=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM258
	.byte 2,35,44,6
	.asciz "encoding"

LDIFF_SYM259=LTDIE_28_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM259
	.byte 2,35,16,6
	.asciz "indent"

LDIFF_SYM260=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM260
	.byte 2,35,48,6
	.asciz "indentChars"

LDIFF_SYM261=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM261
	.byte 2,35,24,6
	.asciz "newLineChars"

LDIFF_SYM262=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM262
	.byte 2,35,32,6
	.asciz "newLineOnAttributes"

LDIFF_SYM263=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM263
	.byte 2,35,49,6
	.asciz "newLineHandling"

LDIFF_SYM264=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM264
	.byte 2,35,52,6
	.asciz "omitXmlDeclaration"

LDIFF_SYM265=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM265
	.byte 2,35,56,6
	.asciz "outputMethod"

LDIFF_SYM266=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM266
	.byte 2,35,60,6
	.asciz "isReadOnly"

LDIFF_SYM267=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM267
	.byte 2,35,64,6
	.asciz "isAsync"

LDIFF_SYM268=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM268
	.byte 2,35,65,6
	.asciz "<NamespaceHandling>k__BackingField"

LDIFF_SYM269=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM269
	.byte 2,35,68,0,7
	.asciz "System_Xml_XmlWriterSettings"

LDIFF_SYM270=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM270
LTDIE_26_POINTER:

	.byte 13
LDIFF_SYM271=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM271
LTDIE_26_REFERENCE:

	.byte 14
LDIFF_SYM272=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM272
LTDIE_36:

	.byte 5
	.asciz "System_Xml_XmlWriter"

	.byte 32,16
LDIFF_SYM273=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM273
	.byte 2,35,0,6
	.asciz "settings"

LDIFF_SYM274=LTDIE_26_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM274
	.byte 2,35,16,6
	.asciz "asyncRunning"

LDIFF_SYM275=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM275
	.byte 2,35,24,0,7
	.asciz "System_Xml_XmlWriter"

LDIFF_SYM276=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM276
LTDIE_36_POINTER:

	.byte 13
LDIFF_SYM277=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM277
LTDIE_36_REFERENCE:

	.byte 14
LDIFF_SYM278=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM278
	.byte 2
	.asciz "System.Xml.Linq.XAttribute:ToString"
	.asciz "System_Xml_Linq_XAttribute_ToString"

	.byte 0,0
	.quad System_Xml_Linq_XAttribute_ToString
	.quad Lme_d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM279=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM279
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM280=LTDIE_22_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM280
	.byte 2,141,32,11
	.asciz "V_1"

LDIFF_SYM281=LTDIE_26_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM281
	.byte 1,105,11
	.asciz "V_2"

LDIFF_SYM282=LTDIE_36_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM282
	.byte 2,141,40,11
	.asciz "V_3"

LDIFF_SYM283=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM283
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM284=Lfde13_end - Lfde13_start
	.long LDIFF_SYM284
Lfde13_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XAttribute_ToString

LDIFF_SYM285=Lme_d - System_Xml_Linq_XAttribute_ToString
	.long LDIFF_SYM285
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,153,14,154,13
	.align 3
Lfde13_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XAttribute:.cctor"
	.asciz "System_Xml_Linq_XAttribute__cctor"

	.byte 0,0
	.quad System_Xml_Linq_XAttribute__cctor
	.quad Lme_e

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM286=Lfde14_end - Lfde14_start
	.long LDIFF_SYM286
Lfde14_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XAttribute__cctor

LDIFF_SYM287=Lme_e - System_Xml_Linq_XAttribute__cctor
	.long LDIFF_SYM287
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde14_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_38:

	.byte 5
	.asciz "System_Xml_Linq_XText"

	.byte 80,16
LDIFF_SYM288=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM288
	.byte 2,35,0,6
	.asciz "value"

LDIFF_SYM289=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM289
	.byte 2,35,72,0,7
	.asciz "System_Xml_Linq_XText"

LDIFF_SYM290=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM290
LTDIE_38_POINTER:

	.byte 13
LDIFF_SYM291=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM291
LTDIE_38_REFERENCE:

	.byte 14
LDIFF_SYM292=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM292
LTDIE_37:

	.byte 5
	.asciz "System_Xml_Linq_XCData"

	.byte 80,16
LDIFF_SYM293=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM293
	.byte 2,35,0,0,7
	.asciz "System_Xml_Linq_XCData"

LDIFF_SYM294=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM294
LTDIE_37_POINTER:

	.byte 13
LDIFF_SYM295=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM295
LTDIE_37_REFERENCE:

	.byte 14
LDIFF_SYM296=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM296
	.byte 2
	.asciz "System.Xml.Linq.XCData:.ctor"
	.asciz "System_Xml_Linq_XCData__ctor_string"

	.byte 0,0
	.quad System_Xml_Linq_XCData__ctor_string
	.quad Lme_f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM297=LTDIE_37_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM297
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM298=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM298
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM299=Lfde15_end - Lfde15_start
	.long LDIFF_SYM299
Lfde15_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XCData__ctor_string

LDIFF_SYM300=Lme_f - System_Xml_Linq_XCData__ctor_string
	.long LDIFF_SYM300
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde15_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XCData:.ctor"
	.asciz "System_Xml_Linq_XCData__ctor_System_Xml_Linq_XCData"

	.byte 0,0
	.quad System_Xml_Linq_XCData__ctor_System_Xml_Linq_XCData
	.quad Lme_10

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM301=LTDIE_37_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM301
	.byte 2,141,16,3
	.asciz "other"

LDIFF_SYM302=LTDIE_37_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM302
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM303=Lfde16_end - Lfde16_start
	.long LDIFF_SYM303
Lfde16_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XCData__ctor_System_Xml_Linq_XCData

LDIFF_SYM304=Lme_10 - System_Xml_Linq_XCData__ctor_System_Xml_Linq_XCData
	.long LDIFF_SYM304
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde16_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XCData:get_NodeType"
	.asciz "System_Xml_Linq_XCData_get_NodeType"

	.byte 0,0
	.quad System_Xml_Linq_XCData_get_NodeType
	.quad Lme_11

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM305=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM305
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM306=Lfde17_end - Lfde17_start
	.long LDIFF_SYM306
Lfde17_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XCData_get_NodeType

LDIFF_SYM307=Lme_11 - System_Xml_Linq_XCData_get_NodeType
	.long LDIFF_SYM307
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde17_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XCData:WriteTo"
	.asciz "System_Xml_Linq_XCData_WriteTo_System_Xml_XmlWriter"

	.byte 0,0
	.quad System_Xml_Linq_XCData_WriteTo_System_Xml_XmlWriter
	.quad Lme_12

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM308=LTDIE_37_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM308
	.byte 1,105,3
	.asciz "writer"

LDIFF_SYM309=LTDIE_36_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM309
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM310=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM310
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM311=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM311
	.byte 1,103,11
	.asciz "V_2"

LDIFF_SYM312=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM312
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM313=Lfde18_end - Lfde18_start
	.long LDIFF_SYM313
Lfde18_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XCData_WriteTo_System_Xml_XmlWriter

LDIFF_SYM314=Lme_12 - System_Xml_Linq_XCData_WriteTo_System_Xml_XmlWriter
	.long LDIFF_SYM314
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,150,8,151,7,68,152,6,153,5,68,154,4
	.align 3
Lfde18_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_39:

	.byte 5
	.asciz "System_Xml_Linq_XComment"

	.byte 80,16
LDIFF_SYM315=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM315
	.byte 2,35,0,6
	.asciz "value"

LDIFF_SYM316=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM316
	.byte 2,35,72,0,7
	.asciz "System_Xml_Linq_XComment"

LDIFF_SYM317=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM317
LTDIE_39_POINTER:

	.byte 13
LDIFF_SYM318=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM318
LTDIE_39_REFERENCE:

	.byte 14
LDIFF_SYM319=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM319
	.byte 2
	.asciz "System.Xml.Linq.XComment:.ctor"
	.asciz "System_Xml_Linq_XComment__ctor_string"

	.byte 0,0
	.quad System_Xml_Linq_XComment__ctor_string
	.quad Lme_13

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM320=LTDIE_39_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM320
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM321=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM321
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM322=Lfde19_end - Lfde19_start
	.long LDIFF_SYM322
Lfde19_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XComment__ctor_string

LDIFF_SYM323=Lme_13 - System_Xml_Linq_XComment__ctor_string
	.long LDIFF_SYM323
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde19_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XComment:.ctor"
	.asciz "System_Xml_Linq_XComment__ctor_System_Xml_Linq_XComment"

	.byte 0,0
	.quad System_Xml_Linq_XComment__ctor_System_Xml_Linq_XComment
	.quad Lme_14

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM324=LTDIE_39_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM324
	.byte 2,141,16,3
	.asciz "other"

LDIFF_SYM325=LTDIE_39_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM325
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM326=Lfde20_end - Lfde20_start
	.long LDIFF_SYM326
Lfde20_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XComment__ctor_System_Xml_Linq_XComment

LDIFF_SYM327=Lme_14 - System_Xml_Linq_XComment__ctor_System_Xml_Linq_XComment
	.long LDIFF_SYM327
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde20_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XComment:get_NodeType"
	.asciz "System_Xml_Linq_XComment_get_NodeType"

	.byte 0,0
	.quad System_Xml_Linq_XComment_get_NodeType
	.quad Lme_15

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM328=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM328
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM329=Lfde21_end - Lfde21_start
	.long LDIFF_SYM329
Lfde21_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XComment_get_NodeType

LDIFF_SYM330=Lme_15 - System_Xml_Linq_XComment_get_NodeType
	.long LDIFF_SYM330
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde21_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XComment:get_Value"
	.asciz "System_Xml_Linq_XComment_get_Value"

	.byte 0,0
	.quad System_Xml_Linq_XComment_get_Value
	.quad Lme_16

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM331=LTDIE_39_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM331
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM332=Lfde22_end - Lfde22_start
	.long LDIFF_SYM332
Lfde22_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XComment_get_Value

LDIFF_SYM333=Lme_16 - System_Xml_Linq_XComment_get_Value
	.long LDIFF_SYM333
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde22_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XComment:set_Value"
	.asciz "System_Xml_Linq_XComment_set_Value_string"

	.byte 0,0
	.quad System_Xml_Linq_XComment_set_Value_string
	.quad Lme_17

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM334=LTDIE_39_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM334
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM335=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM335
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM336=Lfde23_end - Lfde23_start
	.long LDIFF_SYM336
Lfde23_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XComment_set_Value_string

LDIFF_SYM337=Lme_17 - System_Xml_Linq_XComment_set_Value_string
	.long LDIFF_SYM337
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde23_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XComment:WriteTo"
	.asciz "System_Xml_Linq_XComment_WriteTo_System_Xml_XmlWriter"

	.byte 0,0
	.quad System_Xml_Linq_XComment_WriteTo_System_Xml_XmlWriter
	.quad Lme_18

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM338=LTDIE_39_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM338
	.byte 1,105,3
	.asciz "writer"

LDIFF_SYM339=LTDIE_36_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM339
	.byte 2,141,32,11
	.asciz "V_0"

LDIFF_SYM340=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM340
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM341=Lfde24_end - Lfde24_start
	.long LDIFF_SYM341
Lfde24_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XComment_WriteTo_System_Xml_XmlWriter

LDIFF_SYM342=Lme_18 - System_Xml_Linq_XComment_WriteTo_System_Xml_XmlWriter
	.long LDIFF_SYM342
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4,153,3
	.align 3
Lfde24_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer:.ctor"
	.asciz "System_Xml_Linq_XContainer__ctor"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__ctor
	.quad Lme_19

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM343=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM343
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM344=Lfde25_end - Lfde25_start
	.long LDIFF_SYM344
Lfde25_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__ctor

LDIFF_SYM345=Lme_19 - System_Xml_Linq_XContainer__ctor
	.long LDIFF_SYM345
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde25_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer:get_FirstNode"
	.asciz "System_Xml_Linq_XContainer_get_FirstNode"

	.byte 0,0
	.quad System_Xml_Linq_XContainer_get_FirstNode
	.quad Lme_1a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM346=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM346
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM347=Lfde26_end - Lfde26_start
	.long LDIFF_SYM347
Lfde26_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer_get_FirstNode

LDIFF_SYM348=Lme_1a - System_Xml_Linq_XContainer_get_FirstNode
	.long LDIFF_SYM348
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde26_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer:set_FirstNode"
	.asciz "System_Xml_Linq_XContainer_set_FirstNode_System_Xml_Linq_XNode"

	.byte 0,0
	.quad System_Xml_Linq_XContainer_set_FirstNode_System_Xml_Linq_XNode
	.quad Lme_1b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM349=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM349
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM350=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM350
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM351=Lfde27_end - Lfde27_start
	.long LDIFF_SYM351
Lfde27_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer_set_FirstNode_System_Xml_Linq_XNode

LDIFF_SYM352=Lme_1b - System_Xml_Linq_XContainer_set_FirstNode_System_Xml_Linq_XNode
	.long LDIFF_SYM352
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde27_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer:get_LastNode"
	.asciz "System_Xml_Linq_XContainer_get_LastNode"

	.byte 0,0
	.quad System_Xml_Linq_XContainer_get_LastNode
	.quad Lme_1c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM353=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM353
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM354=Lfde28_end - Lfde28_start
	.long LDIFF_SYM354
Lfde28_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer_get_LastNode

LDIFF_SYM355=Lme_1c - System_Xml_Linq_XContainer_get_LastNode
	.long LDIFF_SYM355
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde28_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer:set_LastNode"
	.asciz "System_Xml_Linq_XContainer_set_LastNode_System_Xml_Linq_XNode"

	.byte 0,0
	.quad System_Xml_Linq_XContainer_set_LastNode_System_Xml_Linq_XNode
	.quad Lme_1d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM356=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM356
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM357=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM357
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM358=Lfde29_end - Lfde29_start
	.long LDIFF_SYM358
Lfde29_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer_set_LastNode_System_Xml_Linq_XNode

LDIFF_SYM359=Lme_1d - System_Xml_Linq_XContainer_set_LastNode_System_Xml_Linq_XNode
	.long LDIFF_SYM359
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde29_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_40:

	.byte 17
	.asciz "System_Collections_IEnumerator"

	.byte 16,7
	.asciz "System_Collections_IEnumerator"

LDIFF_SYM360=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM360
LTDIE_40_POINTER:

	.byte 13
LDIFF_SYM361=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM361
LTDIE_40_REFERENCE:

	.byte 14
LDIFF_SYM362=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM362
LTDIE_41:

	.byte 17
	.asciz "System_IDisposable"

	.byte 16,7
	.asciz "System_IDisposable"

LDIFF_SYM363=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM363
LTDIE_41_POINTER:

	.byte 13
LDIFF_SYM364=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM364
LTDIE_41_REFERENCE:

	.byte 14
LDIFF_SYM365=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM365
	.byte 2
	.asciz "System.Xml.Linq.XContainer:CheckChildType"
	.asciz "System_Xml_Linq_XContainer_CheckChildType_object_bool"

	.byte 0,0
	.quad System_Xml_Linq_XContainer_CheckChildType_object_bool
	.quad Lme_1e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM366=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM366
	.byte 1,104,3
	.asciz "o"

LDIFF_SYM367=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM367
	.byte 1,105,3
	.asciz "addFirst"

LDIFF_SYM368=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM368
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM369=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM369
	.byte 1,105,11
	.asciz "V_1"

LDIFF_SYM370=LTDIE_40_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM370
	.byte 3,141,192,0,11
	.asciz "V_2"

LDIFF_SYM371=LTDIE_41_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM371
	.byte 3,141,200,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM372=Lfde30_end - Lfde30_start
	.long LDIFF_SYM372
Lfde30_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer_CheckChildType_object_bool

LDIFF_SYM373=Lme_1e - System_Xml_Linq_XContainer_CheckChildType_object_bool
	.long LDIFF_SYM373
	.long 0
	.byte 12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,149,18,150,17,68,151,16,152,15,68,153,14,154,13
	.align 3
Lfde30_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_42:

	.byte 17
	.asciz "System_Collections_Generic_IEnumerator`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEnumerator`1"

LDIFF_SYM374=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM374
LTDIE_42_POINTER:

	.byte 13
LDIFF_SYM375=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM375
LTDIE_42_REFERENCE:

	.byte 14
LDIFF_SYM376=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM376
	.byte 2
	.asciz "System.Xml.Linq.XContainer:Add"
	.asciz "System_Xml_Linq_XContainer_Add_object"

	.byte 0,0
	.quad System_Xml_Linq_XContainer_Add_object
	.quad Lme_1f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM377=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM377
	.byte 1,105,3
	.asciz "content"

LDIFF_SYM378=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM378
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM379=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM379
	.byte 1,106,11
	.asciz "V_1"

LDIFF_SYM380=LTDIE_42_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM380
	.byte 2,141,32,11
	.asciz "V_2"

LDIFF_SYM381=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM381
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM382=Lfde31_end - Lfde31_start
	.long LDIFF_SYM382
Lfde31_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer_Add_object

LDIFF_SYM383=Lme_1f - System_Xml_Linq_XContainer_Add_object
	.long LDIFF_SYM383
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6,154,5
	.align 3
Lfde31_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer:AddNode"
	.asciz "System_Xml_Linq_XContainer_AddNode_System_Xml_Linq_XNode"

	.byte 0,0
	.quad System_Xml_Linq_XContainer_AddNode_System_Xml_Linq_XNode
	.quad Lme_20

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM384=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM384
	.byte 1,105,3
	.asciz "n"

LDIFF_SYM385=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM385
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM386=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM386
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM387=Lfde32_end - Lfde32_start
	.long LDIFF_SYM387
Lfde32_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer_AddNode_System_Xml_Linq_XNode

LDIFF_SYM388=Lme_20 - System_Xml_Linq_XContainer_AddNode_System_Xml_Linq_XNode
	.long LDIFF_SYM388
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4,153,3,68,154,2
	.align 3
Lfde32_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer:Add"
	.asciz "System_Xml_Linq_XContainer_Add_object__"

	.byte 0,0
	.quad System_Xml_Linq_XContainer_Add_object__
	.quad Lme_21

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM389=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM389
	.byte 1,105,3
	.asciz "content"

LDIFF_SYM390=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM390
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM391=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM391
	.byte 1,106,11
	.asciz "V_1"

LDIFF_SYM392=LTDIE_42_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM392
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM393=Lfde33_end - Lfde33_start
	.long LDIFF_SYM393
Lfde33_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer_Add_object__

LDIFF_SYM394=Lme_21 - System_Xml_Linq_XContainer_Add_object__
	.long LDIFF_SYM394
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6,154,5
	.align 3
Lfde33_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer:OnAddingObject"
	.asciz "System_Xml_Linq_XContainer_OnAddingObject_object_bool_System_Xml_Linq_XNode_bool"

	.byte 0,0
	.quad System_Xml_Linq_XContainer_OnAddingObject_object_bool_System_Xml_Linq_XNode_bool
	.quad Lme_22

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM395=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM395
	.byte 0,3
	.asciz "o"

LDIFF_SYM396=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM396
	.byte 0,3
	.asciz "rejectAttribute"

LDIFF_SYM397=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM397
	.byte 0,3
	.asciz "refNode"

LDIFF_SYM398=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM398
	.byte 0,3
	.asciz "addFirst"

LDIFF_SYM399=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM399
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM400=Lfde34_end - Lfde34_start
	.long LDIFF_SYM400
Lfde34_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer_OnAddingObject_object_bool_System_Xml_Linq_XNode_bool

LDIFF_SYM401=Lme_22 - System_Xml_Linq_XContainer_OnAddingObject_object_bool_System_Xml_Linq_XNode_bool
	.long LDIFF_SYM401
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde34_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_43:

	.byte 5
	.asciz "_<Nodes>c__Iterator0"

	.byte 56,16
LDIFF_SYM402=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM402
	.byte 2,35,0,6
	.asciz "<n>__0"

LDIFF_SYM403=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM403
	.byte 2,35,16,6
	.asciz "<next>__1"

LDIFF_SYM404=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM404
	.byte 2,35,24,6
	.asciz "$this"

LDIFF_SYM405=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM405
	.byte 2,35,32,6
	.asciz "$current"

LDIFF_SYM406=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM406
	.byte 2,35,40,6
	.asciz "$disposing"

LDIFF_SYM407=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM407
	.byte 2,35,48,6
	.asciz "$PC"

LDIFF_SYM408=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM408
	.byte 2,35,52,0,7
	.asciz "_<Nodes>c__Iterator0"

LDIFF_SYM409=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM409
LTDIE_43_POINTER:

	.byte 13
LDIFF_SYM410=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM410
LTDIE_43_REFERENCE:

	.byte 14
LDIFF_SYM411=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM411
	.byte 2
	.asciz "System.Xml.Linq.XContainer:Nodes"
	.asciz "System_Xml_Linq_XContainer_Nodes"

	.byte 0,0
	.quad System_Xml_Linq_XContainer_Nodes
	.quad Lme_23

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM412=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM412
	.byte 2,141,16,11
	.asciz "V_0"

LDIFF_SYM413=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM413
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM414=Lfde35_end - Lfde35_start
	.long LDIFF_SYM414
Lfde35_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer_Nodes

LDIFF_SYM415=Lme_23 - System_Xml_Linq_XContainer_Nodes
	.long LDIFF_SYM415
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde35_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_45:

	.byte 17
	.asciz "System_Collections_Generic_IEnumerator`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEnumerator`1"

LDIFF_SYM416=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM416
LTDIE_45_POINTER:

	.byte 13
LDIFF_SYM417=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM417
LTDIE_45_REFERENCE:

	.byte 14
LDIFF_SYM418=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM418
LTDIE_44:

	.byte 5
	.asciz "_<DescendantNodes>c__Iterator1"

	.byte 80,16
LDIFF_SYM419=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM419
	.byte 2,35,0,6
	.asciz "$locvar0"

LDIFF_SYM420=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM420
	.byte 2,35,16,6
	.asciz "<n>__0"

LDIFF_SYM421=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM421
	.byte 2,35,24,6
	.asciz "<c>__1"

LDIFF_SYM422=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM422
	.byte 2,35,32,6
	.asciz "$locvar1"

LDIFF_SYM423=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM423
	.byte 2,35,40,6
	.asciz "<d>__2"

LDIFF_SYM424=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM424
	.byte 2,35,48,6
	.asciz "$this"

LDIFF_SYM425=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM425
	.byte 2,35,56,6
	.asciz "$current"

LDIFF_SYM426=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM426
	.byte 2,35,64,6
	.asciz "$disposing"

LDIFF_SYM427=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM427
	.byte 2,35,72,6
	.asciz "$PC"

LDIFF_SYM428=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM428
	.byte 2,35,76,0,7
	.asciz "_<DescendantNodes>c__Iterator1"

LDIFF_SYM429=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM429
LTDIE_44_POINTER:

	.byte 13
LDIFF_SYM430=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM430
LTDIE_44_REFERENCE:

	.byte 14
LDIFF_SYM431=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM431
	.byte 2
	.asciz "System.Xml.Linq.XContainer:DescendantNodes"
	.asciz "System_Xml_Linq_XContainer_DescendantNodes"

	.byte 0,0
	.quad System_Xml_Linq_XContainer_DescendantNodes
	.quad Lme_24

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM432=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM432
	.byte 2,141,16,11
	.asciz "V_0"

LDIFF_SYM433=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM433
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM434=Lfde36_end - Lfde36_start
	.long LDIFF_SYM434
Lfde36_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer_DescendantNodes

LDIFF_SYM435=Lme_24 - System_Xml_Linq_XContainer_DescendantNodes
	.long LDIFF_SYM435
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde36_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_47:

	.byte 5
	.asciz "System_Xml_Linq_XElement"

	.byte 120,16
LDIFF_SYM436=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM436
	.byte 2,35,0,6
	.asciz "name"

LDIFF_SYM437=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM437
	.byte 2,35,88,6
	.asciz "attr_first"

LDIFF_SYM438=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM438
	.byte 2,35,96,6
	.asciz "attr_last"

LDIFF_SYM439=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM439
	.byte 2,35,104,6
	.asciz "explicit_is_empty"

LDIFF_SYM440=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM440
	.byte 2,35,112,0,7
	.asciz "System_Xml_Linq_XElement"

LDIFF_SYM441=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM441
LTDIE_47_POINTER:

	.byte 13
LDIFF_SYM442=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM442
LTDIE_47_REFERENCE:

	.byte 14
LDIFF_SYM443=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM443
LTDIE_46:

	.byte 5
	.asciz "_<Descendants>c__Iterator2"

	.byte 64,16
LDIFF_SYM444=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM444
	.byte 2,35,0,6
	.asciz "$locvar0"

LDIFF_SYM445=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM445
	.byte 2,35,16,6
	.asciz "<n>__0"

LDIFF_SYM446=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM446
	.byte 2,35,24,6
	.asciz "<el>__1"

LDIFF_SYM447=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM447
	.byte 2,35,32,6
	.asciz "$this"

LDIFF_SYM448=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM448
	.byte 2,35,40,6
	.asciz "$current"

LDIFF_SYM449=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM449
	.byte 2,35,48,6
	.asciz "$disposing"

LDIFF_SYM450=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM450
	.byte 2,35,56,6
	.asciz "$PC"

LDIFF_SYM451=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM451
	.byte 2,35,60,0,7
	.asciz "_<Descendants>c__Iterator2"

LDIFF_SYM452=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM452
LTDIE_46_POINTER:

	.byte 13
LDIFF_SYM453=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM453
LTDIE_46_REFERENCE:

	.byte 14
LDIFF_SYM454=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM454
	.byte 2
	.asciz "System.Xml.Linq.XContainer:Descendants"
	.asciz "System_Xml_Linq_XContainer_Descendants"

	.byte 0,0
	.quad System_Xml_Linq_XContainer_Descendants
	.quad Lme_25

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM455=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM455
	.byte 2,141,16,11
	.asciz "V_0"

LDIFF_SYM456=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM456
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM457=Lfde37_end - Lfde37_start
	.long LDIFF_SYM457
Lfde37_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer_Descendants

LDIFF_SYM458=Lme_25 - System_Xml_Linq_XContainer_Descendants
	.long LDIFF_SYM458
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde37_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_49:

	.byte 17
	.asciz "System_Collections_Generic_IEnumerator`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEnumerator`1"

LDIFF_SYM459=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM459
LTDIE_49_POINTER:

	.byte 13
LDIFF_SYM460=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM460
LTDIE_49_REFERENCE:

	.byte 14
LDIFF_SYM461=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM461
LTDIE_48:

	.byte 5
	.asciz "_<Descendants>c__Iterator3"

	.byte 64,16
LDIFF_SYM462=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM462
	.byte 2,35,0,6
	.asciz "$locvar0"

LDIFF_SYM463=LTDIE_49_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM463
	.byte 2,35,16,6
	.asciz "<el>__0"

LDIFF_SYM464=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM464
	.byte 2,35,24,6
	.asciz "name"

LDIFF_SYM465=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM465
	.byte 2,35,32,6
	.asciz "$this"

LDIFF_SYM466=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM466
	.byte 2,35,40,6
	.asciz "$current"

LDIFF_SYM467=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM467
	.byte 2,35,48,6
	.asciz "$disposing"

LDIFF_SYM468=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM468
	.byte 2,35,56,6
	.asciz "$PC"

LDIFF_SYM469=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM469
	.byte 2,35,60,0,7
	.asciz "_<Descendants>c__Iterator3"

LDIFF_SYM470=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM470
LTDIE_48_POINTER:

	.byte 13
LDIFF_SYM471=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM471
LTDIE_48_REFERENCE:

	.byte 14
LDIFF_SYM472=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM472
	.byte 2
	.asciz "System.Xml.Linq.XContainer:Descendants"
	.asciz "System_Xml_Linq_XContainer_Descendants_System_Xml_Linq_XName"

	.byte 0,0
	.quad System_Xml_Linq_XContainer_Descendants_System_Xml_Linq_XName
	.quad Lme_26

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM473=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM473
	.byte 2,141,16,3
	.asciz "name"

LDIFF_SYM474=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM474
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM475=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM475
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM476=Lfde38_end - Lfde38_start
	.long LDIFF_SYM476
Lfde38_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer_Descendants_System_Xml_Linq_XName

LDIFF_SYM477=Lme_26 - System_Xml_Linq_XContainer_Descendants_System_Xml_Linq_XName
	.long LDIFF_SYM477
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde38_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_50:

	.byte 5
	.asciz "_<Elements>c__Iterator4"

	.byte 64,16
LDIFF_SYM478=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM478
	.byte 2,35,0,6
	.asciz "$locvar0"

LDIFF_SYM479=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM479
	.byte 2,35,16,6
	.asciz "<n>__0"

LDIFF_SYM480=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM480
	.byte 2,35,24,6
	.asciz "<el>__1"

LDIFF_SYM481=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM481
	.byte 2,35,32,6
	.asciz "$this"

LDIFF_SYM482=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM482
	.byte 2,35,40,6
	.asciz "$current"

LDIFF_SYM483=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM483
	.byte 2,35,48,6
	.asciz "$disposing"

LDIFF_SYM484=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM484
	.byte 2,35,56,6
	.asciz "$PC"

LDIFF_SYM485=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM485
	.byte 2,35,60,0,7
	.asciz "_<Elements>c__Iterator4"

LDIFF_SYM486=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM486
LTDIE_50_POINTER:

	.byte 13
LDIFF_SYM487=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM487
LTDIE_50_REFERENCE:

	.byte 14
LDIFF_SYM488=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM488
	.byte 2
	.asciz "System.Xml.Linq.XContainer:Elements"
	.asciz "System_Xml_Linq_XContainer_Elements"

	.byte 0,0
	.quad System_Xml_Linq_XContainer_Elements
	.quad Lme_27

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM489=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM489
	.byte 2,141,16,11
	.asciz "V_0"

LDIFF_SYM490=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM490
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM491=Lfde39_end - Lfde39_start
	.long LDIFF_SYM491
Lfde39_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer_Elements

LDIFF_SYM492=Lme_27 - System_Xml_Linq_XContainer_Elements
	.long LDIFF_SYM492
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde39_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_51:

	.byte 5
	.asciz "_<Elements>c__Iterator5"

	.byte 72,16
LDIFF_SYM493=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM493
	.byte 2,35,0,6
	.asciz "$locvar0"

LDIFF_SYM494=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM494
	.byte 2,35,16,6
	.asciz "<n>__0"

LDIFF_SYM495=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM495
	.byte 2,35,24,6
	.asciz "<el>__1"

LDIFF_SYM496=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM496
	.byte 2,35,32,6
	.asciz "name"

LDIFF_SYM497=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM497
	.byte 2,35,40,6
	.asciz "$this"

LDIFF_SYM498=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM498
	.byte 2,35,48,6
	.asciz "$current"

LDIFF_SYM499=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM499
	.byte 2,35,56,6
	.asciz "$disposing"

LDIFF_SYM500=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM500
	.byte 2,35,64,6
	.asciz "$PC"

LDIFF_SYM501=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM501
	.byte 2,35,68,0,7
	.asciz "_<Elements>c__Iterator5"

LDIFF_SYM502=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM502
LTDIE_51_POINTER:

	.byte 13
LDIFF_SYM503=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM503
LTDIE_51_REFERENCE:

	.byte 14
LDIFF_SYM504=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM504
	.byte 2
	.asciz "System.Xml.Linq.XContainer:Elements"
	.asciz "System_Xml_Linq_XContainer_Elements_System_Xml_Linq_XName"

	.byte 0,0
	.quad System_Xml_Linq_XContainer_Elements_System_Xml_Linq_XName
	.quad Lme_28

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM505=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM505
	.byte 2,141,16,3
	.asciz "name"

LDIFF_SYM506=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM506
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM507=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM507
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM508=Lfde40_end - Lfde40_start
	.long LDIFF_SYM508
Lfde40_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer_Elements_System_Xml_Linq_XName

LDIFF_SYM509=Lme_28 - System_Xml_Linq_XContainer_Elements_System_Xml_Linq_XName
	.long LDIFF_SYM509
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde40_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer:Element"
	.asciz "System_Xml_Linq_XContainer_Element_System_Xml_Linq_XName"

	.byte 0,0
	.quad System_Xml_Linq_XContainer_Element_System_Xml_Linq_XName
	.quad Lme_29

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM510=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM510
	.byte 1,105,3
	.asciz "name"

LDIFF_SYM511=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM511
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM512=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM512
	.byte 1,105,11
	.asciz "V_1"

LDIFF_SYM513=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM513
	.byte 2,141,40,11
	.asciz "V_2"

LDIFF_SYM514=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM514
	.byte 1,104,11
	.asciz "V_3"

LDIFF_SYM515=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM515
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM516=Lfde41_end - Lfde41_start
	.long LDIFF_SYM516
Lfde41_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer_Element_System_Xml_Linq_XName

LDIFF_SYM517=Lme_29 - System_Xml_Linq_XContainer_Element_System_Xml_Linq_XName
	.long LDIFF_SYM517
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,152,8,153,7,68,154,6
	.align 3
Lfde41_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_54:

	.byte 8
	.asciz "_CommandState"

	.byte 4
LDIFF_SYM518=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM518
	.byte 9
	.asciz "None"

	.byte 0,9
	.asciz "ReadElementContentAsBase64"

	.byte 1,9
	.asciz "ReadContentAsBase64"

	.byte 2,9
	.asciz "ReadElementContentAsBinHex"

	.byte 3,9
	.asciz "ReadContentAsBinHex"

	.byte 4,0,7
	.asciz "_CommandState"

LDIFF_SYM519=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM519
LTDIE_54_POINTER:

	.byte 13
LDIFF_SYM520=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM520
LTDIE_54_REFERENCE:

	.byte 14
LDIFF_SYM521=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM521
LTDIE_53:

	.byte 5
	.asciz "System_Xml_XmlReaderBinarySupport"

	.byte 40,16
LDIFF_SYM522=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM522
	.byte 2,35,0,6
	.asciz "reader"

LDIFF_SYM523=LTDIE_52_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM523
	.byte 2,35,16,6
	.asciz "base64CacheStartsAt"

LDIFF_SYM524=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM524
	.byte 2,35,24,6
	.asciz "state"

LDIFF_SYM525=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM525
	.byte 2,35,28,6
	.asciz "hasCache"

LDIFF_SYM526=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM526
	.byte 2,35,32,6
	.asciz "dontReset"

LDIFF_SYM527=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM527
	.byte 2,35,33,0,7
	.asciz "System_Xml_XmlReaderBinarySupport"

LDIFF_SYM528=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM528
LTDIE_53_POINTER:

	.byte 13
LDIFF_SYM529=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM529
LTDIE_53_REFERENCE:

	.byte 14
LDIFF_SYM530=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM530
LTDIE_56:

	.byte 5
	.asciz "System_Xml_XmlNameTable"

	.byte 16,16
LDIFF_SYM531=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM531
	.byte 2,35,0,0,7
	.asciz "System_Xml_XmlNameTable"

LDIFF_SYM532=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM532
LTDIE_56_POINTER:

	.byte 13
LDIFF_SYM533=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM533
LTDIE_56_REFERENCE:

	.byte 14
LDIFF_SYM534=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM534
LTDIE_58:

	.byte 5
	.asciz "System_Xml_XmlResolver"

	.byte 16,16
LDIFF_SYM535=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM535
	.byte 2,35,0,0,7
	.asciz "System_Xml_XmlResolver"

LDIFF_SYM536=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM536
LTDIE_58_POINTER:

	.byte 13
LDIFF_SYM537=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM537
LTDIE_58_REFERENCE:

	.byte 14
LDIFF_SYM538=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM538
LTDIE_59:

	.byte 5
	.asciz "System_Collections_ArrayList"

	.byte 40,16
LDIFF_SYM539=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM539
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM540=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM540
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM541=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM541
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM542=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM542
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM543=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM543
	.byte 2,35,24,0,7
	.asciz "System_Collections_ArrayList"

LDIFF_SYM544=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM544
LTDIE_59_POINTER:

	.byte 13
LDIFF_SYM545=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM545
LTDIE_59_REFERENCE:

	.byte 14
LDIFF_SYM546=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM546
LTDIE_62:

	.byte 5
	.asciz "_DictionaryNode"

	.byte 40,16
LDIFF_SYM547=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM547
	.byte 2,35,0,6
	.asciz "key"

LDIFF_SYM548=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM548
	.byte 2,35,16,6
	.asciz "value"

LDIFF_SYM549=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM549
	.byte 2,35,24,6
	.asciz "next"

LDIFF_SYM550=LTDIE_62_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM550
	.byte 2,35,32,0,7
	.asciz "_DictionaryNode"

LDIFF_SYM551=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM551
LTDIE_62_POINTER:

	.byte 13
LDIFF_SYM552=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM552
LTDIE_62_REFERENCE:

	.byte 14
LDIFF_SYM553=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM553
LTDIE_63:

	.byte 17
	.asciz "System_Collections_IComparer"

	.byte 16,7
	.asciz "System_Collections_IComparer"

LDIFF_SYM554=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM554
LTDIE_63_POINTER:

	.byte 13
LDIFF_SYM555=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM555
LTDIE_63_REFERENCE:

	.byte 14
LDIFF_SYM556=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM556
LTDIE_61:

	.byte 5
	.asciz "System_Collections_Specialized_ListDictionary"

	.byte 48,16
LDIFF_SYM557=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM557
	.byte 2,35,0,6
	.asciz "head"

LDIFF_SYM558=LTDIE_62_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM558
	.byte 2,35,16,6
	.asciz "version"

LDIFF_SYM559=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM559
	.byte 2,35,40,6
	.asciz "count"

LDIFF_SYM560=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM560
	.byte 2,35,44,6
	.asciz "comparer"

LDIFF_SYM561=LTDIE_63_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM561
	.byte 2,35,24,6
	.asciz "_syncRoot"

LDIFF_SYM562=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM562
	.byte 2,35,32,0,7
	.asciz "System_Collections_Specialized_ListDictionary"

LDIFF_SYM563=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM563
LTDIE_61_POINTER:

	.byte 13
LDIFF_SYM564=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM564
LTDIE_61_REFERENCE:

	.byte 14
LDIFF_SYM565=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM565
LTDIE_60:

	.byte 5
	.asciz "System_Xml_Schema_XmlSchemaObjectTable"

	.byte 24,16
LDIFF_SYM566=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM566
	.byte 2,35,0,6
	.asciz "table"

LDIFF_SYM567=LTDIE_61_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM567
	.byte 2,35,16,0,7
	.asciz "System_Xml_Schema_XmlSchemaObjectTable"

LDIFF_SYM568=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM568
LTDIE_60_POINTER:

	.byte 13
LDIFF_SYM569=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM569
LTDIE_60_REFERENCE:

	.byte 14
LDIFF_SYM570=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM570
LTDIE_64:

	.byte 5
	.asciz "System_Xml_Schema_XmlSchemaCompilationSettings"

	.byte 17,16
LDIFF_SYM571=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM571
	.byte 2,35,0,6
	.asciz "enable_upa_check"

LDIFF_SYM572=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM572
	.byte 2,35,16,0,7
	.asciz "System_Xml_Schema_XmlSchemaCompilationSettings"

LDIFF_SYM573=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM573
LTDIE_64_POINTER:

	.byte 13
LDIFF_SYM574=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM574
LTDIE_64_REFERENCE:

	.byte 14
LDIFF_SYM575=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM575
LTDIE_65:

	.byte 5
	.asciz "System_Xml_Schema_ValidationEventHandler"

	.byte 104,16
LDIFF_SYM576=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM576
	.byte 2,35,0,0,7
	.asciz "System_Xml_Schema_ValidationEventHandler"

LDIFF_SYM577=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM577
LTDIE_65_POINTER:

	.byte 13
LDIFF_SYM578=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM578
LTDIE_65_REFERENCE:

	.byte 14
LDIFF_SYM579=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM579
LTDIE_67:

	.byte 5
	.asciz "System_Single"

	.byte 20,16
LDIFF_SYM580=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM580
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM581=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM581
	.byte 2,35,16,0,7
	.asciz "System_Single"

LDIFF_SYM582=LTDIE_67 - Ldebug_info_start
	.long LDIFF_SYM582
LTDIE_67_POINTER:

	.byte 13
LDIFF_SYM583=LTDIE_67 - Ldebug_info_start
	.long LDIFF_SYM583
LTDIE_67_REFERENCE:

	.byte 14
LDIFF_SYM584=LTDIE_67 - Ldebug_info_start
	.long LDIFF_SYM584
LTDIE_68:

	.byte 17
	.asciz "System_Collections_ICollection"

	.byte 16,7
	.asciz "System_Collections_ICollection"

LDIFF_SYM585=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM585
LTDIE_68_POINTER:

	.byte 13
LDIFF_SYM586=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM586
LTDIE_68_REFERENCE:

	.byte 14
LDIFF_SYM587=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM587
LTDIE_69:

	.byte 17
	.asciz "System_Collections_IEqualityComparer"

	.byte 16,7
	.asciz "System_Collections_IEqualityComparer"

LDIFF_SYM588=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM588
LTDIE_69_POINTER:

	.byte 13
LDIFF_SYM589=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM589
LTDIE_69_REFERENCE:

	.byte 14
LDIFF_SYM590=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM590
LTDIE_66:

	.byte 5
	.asciz "System_Collections_Hashtable"

	.byte 80,16
LDIFF_SYM591=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM591
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM592=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM592
	.byte 2,35,16,6
	.asciz "count"

LDIFF_SYM593=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM593
	.byte 2,35,56,6
	.asciz "occupancy"

LDIFF_SYM594=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM594
	.byte 2,35,60,6
	.asciz "loadsize"

LDIFF_SYM595=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM595
	.byte 2,35,64,6
	.asciz "loadFactor"

LDIFF_SYM596=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM596
	.byte 2,35,68,6
	.asciz "version"

LDIFF_SYM597=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM597
	.byte 2,35,72,6
	.asciz "isWriterInProgress"

LDIFF_SYM598=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM598
	.byte 2,35,76,6
	.asciz "keys"

LDIFF_SYM599=LTDIE_68_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM599
	.byte 2,35,24,6
	.asciz "values"

LDIFF_SYM600=LTDIE_68_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM600
	.byte 2,35,32,6
	.asciz "_keycomparer"

LDIFF_SYM601=LTDIE_69_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM601
	.byte 2,35,40,6
	.asciz "_syncRoot"

LDIFF_SYM602=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM602
	.byte 2,35,48,0,7
	.asciz "System_Collections_Hashtable"

LDIFF_SYM603=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM603
LTDIE_66_POINTER:

	.byte 13
LDIFF_SYM604=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM604
LTDIE_66_REFERENCE:

	.byte 14
LDIFF_SYM605=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM605
LTDIE_57:

	.byte 5
	.asciz "System_Xml_Schema_XmlSchemaSet"

	.byte 144,1,16
LDIFF_SYM606=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM606
	.byte 2,35,0,6
	.asciz "nameTable"

LDIFF_SYM607=LTDIE_56_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM607
	.byte 2,35,16,6
	.asciz "xmlResolver"

LDIFF_SYM608=LTDIE_58_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM608
	.byte 2,35,24,6
	.asciz "schemas"

LDIFF_SYM609=LTDIE_59_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM609
	.byte 2,35,32,6
	.asciz "attributes"

LDIFF_SYM610=LTDIE_60_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM610
	.byte 2,35,40,6
	.asciz "elements"

LDIFF_SYM611=LTDIE_60_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM611
	.byte 2,35,48,6
	.asciz "types"

LDIFF_SYM612=LTDIE_60_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM612
	.byte 2,35,56,6
	.asciz "settings"

LDIFF_SYM613=LTDIE_64_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM613
	.byte 2,35,64,6
	.asciz "isCompiled"

LDIFF_SYM614=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM614
	.byte 2,35,120,6
	.asciz "<CompilationId>k__BackingField"

LDIFF_SYM615=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM615
	.byte 2,35,124,6
	.asciz "ValidationEventHandler"

LDIFF_SYM616=LTDIE_65_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM616
	.byte 2,35,72,6
	.asciz "global_attribute_groups"

LDIFF_SYM617=LTDIE_60_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM617
	.byte 2,35,80,6
	.asciz "global_groups"

LDIFF_SYM618=LTDIE_60_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM618
	.byte 2,35,88,6
	.asciz "global_notations"

LDIFF_SYM619=LTDIE_60_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM619
	.byte 2,35,96,6
	.asciz "global_identity_constraints"

LDIFF_SYM620=LTDIE_60_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM620
	.byte 2,35,104,6
	.asciz "global_ids"

LDIFF_SYM621=LTDIE_66_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM621
	.byte 2,35,112,0,7
	.asciz "System_Xml_Schema_XmlSchemaSet"

LDIFF_SYM622=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM622
LTDIE_57_POINTER:

	.byte 13
LDIFF_SYM623=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM623
LTDIE_57_REFERENCE:

	.byte 14
LDIFF_SYM624=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM624
LTDIE_70:

	.byte 8
	.asciz "System_Xml_Schema_XmlSchemaValidationFlags"

	.byte 4
LDIFF_SYM625=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM625
	.byte 9
	.asciz "None"

	.byte 0,9
	.asciz "ProcessInlineSchema"

	.byte 1,9
	.asciz "ProcessSchemaLocation"

	.byte 2,9
	.asciz "ReportValidationWarnings"

	.byte 4,9
	.asciz "ProcessIdentityConstraints"

	.byte 8,9
	.asciz "AllowXmlAttributes"

	.byte 16,0,7
	.asciz "System_Xml_Schema_XmlSchemaValidationFlags"

LDIFF_SYM626=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM626
LTDIE_70_POINTER:

	.byte 13
LDIFF_SYM627=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM627
LTDIE_70_REFERENCE:

	.byte 14
LDIFF_SYM628=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM628
LTDIE_71:

	.byte 8
	.asciz "System_Xml_ValidationType"

	.byte 4
LDIFF_SYM629=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM629
	.byte 9
	.asciz "None"

	.byte 0,9
	.asciz "Auto"

	.byte 1,9
	.asciz "DTD"

	.byte 2,9
	.asciz "XDR"

	.byte 3,9
	.asciz "Schema"

	.byte 4,0,7
	.asciz "System_Xml_ValidationType"

LDIFF_SYM630=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM630
LTDIE_71_POINTER:

	.byte 13
LDIFF_SYM631=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM631
LTDIE_71_REFERENCE:

	.byte 14
LDIFF_SYM632=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM632
LTDIE_55:

	.byte 5
	.asciz "System_Xml_XmlReaderSettings"

	.byte 88,16
LDIFF_SYM633=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM633
	.byte 2,35,0,6
	.asciz "checkCharacters"

LDIFF_SYM634=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM634
	.byte 2,35,48,6
	.asciz "closeInput"

LDIFF_SYM635=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM635
	.byte 2,35,49,6
	.asciz "conformance"

LDIFF_SYM636=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM636
	.byte 2,35,52,6
	.asciz "ignoreComments"

LDIFF_SYM637=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM637
	.byte 2,35,56,6
	.asciz "ignoreProcessingInstructions"

LDIFF_SYM638=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM638
	.byte 2,35,57,6
	.asciz "ignoreWhitespace"

LDIFF_SYM639=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM639
	.byte 2,35,58,6
	.asciz "lineNumberOffset"

LDIFF_SYM640=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM640
	.byte 2,35,60,6
	.asciz "linePositionOffset"

LDIFF_SYM641=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM641
	.byte 2,35,64,6
	.asciz "prohibitDtd"

LDIFF_SYM642=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM642
	.byte 2,35,68,6
	.asciz "nameTable"

LDIFF_SYM643=LTDIE_56_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM643
	.byte 2,35,16,6
	.asciz "schemas"

LDIFF_SYM644=LTDIE_57_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM644
	.byte 2,35,24,6
	.asciz "schemasNeedsInitialization"

LDIFF_SYM645=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM645
	.byte 2,35,69,6
	.asciz "validationFlags"

LDIFF_SYM646=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM646
	.byte 2,35,72,6
	.asciz "validationType"

LDIFF_SYM647=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM647
	.byte 2,35,76,6
	.asciz "xmlResolver"

LDIFF_SYM648=LTDIE_58_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM648
	.byte 2,35,32,6
	.asciz "isReadOnly"

LDIFF_SYM649=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM649
	.byte 2,35,80,6
	.asciz "isAsync"

LDIFF_SYM650=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM650
	.byte 2,35,81,6
	.asciz "ValidationEventHandler"

LDIFF_SYM651=LTDIE_65_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM651
	.byte 2,35,40,0,7
	.asciz "System_Xml_XmlReaderSettings"

LDIFF_SYM652=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM652
LTDIE_55_POINTER:

	.byte 13
LDIFF_SYM653=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM653
LTDIE_55_REFERENCE:

	.byte 14
LDIFF_SYM654=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM654
LTDIE_52:

	.byte 5
	.asciz "System_Xml_XmlReader"

	.byte 48,16
LDIFF_SYM655=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM655
	.byte 2,35,0,6
	.asciz "readStringBuffer"

LDIFF_SYM656=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM656
	.byte 2,35,16,6
	.asciz "binary"

LDIFF_SYM657=LTDIE_53_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM657
	.byte 2,35,24,6
	.asciz "settings"

LDIFF_SYM658=LTDIE_55_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM658
	.byte 2,35,32,6
	.asciz "asyncRunning"

LDIFF_SYM659=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM659
	.byte 2,35,40,0,7
	.asciz "System_Xml_XmlReader"

LDIFF_SYM660=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM660
LTDIE_52_POINTER:

	.byte 13
LDIFF_SYM661=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM661
LTDIE_52_REFERENCE:

	.byte 14
LDIFF_SYM662=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM662
LTDIE_72:

	.byte 8
	.asciz "System_Xml_Linq_LoadOptions"

	.byte 4
LDIFF_SYM663=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM663
	.byte 9
	.asciz "None"

	.byte 0,9
	.asciz "PreserveWhitespace"

	.byte 1,9
	.asciz "SetBaseUri"

	.byte 2,9
	.asciz "SetLineInfo"

	.byte 4,0,7
	.asciz "System_Xml_Linq_LoadOptions"

LDIFF_SYM664=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM664
LTDIE_72_POINTER:

	.byte 13
LDIFF_SYM665=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM665
LTDIE_72_REFERENCE:

	.byte 14
LDIFF_SYM666=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM666
	.byte 2
	.asciz "System.Xml.Linq.XContainer:ReadContentFrom"
	.asciz "System_Xml_Linq_XContainer_ReadContentFrom_System_Xml_XmlReader_System_Xml_Linq_LoadOptions"

	.byte 0,0
	.quad System_Xml_Linq_XContainer_ReadContentFrom_System_Xml_XmlReader_System_Xml_Linq_LoadOptions
	.quad Lme_2a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM667=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM667
	.byte 1,104,3
	.asciz "reader"

LDIFF_SYM668=LTDIE_52_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM668
	.byte 1,105,3
	.asciz "options"

LDIFF_SYM669=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM669
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM670=Lfde42_end - Lfde42_start
	.long LDIFF_SYM670
Lfde42_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer_ReadContentFrom_System_Xml_XmlReader_System_Xml_Linq_LoadOptions

LDIFF_SYM671=Lme_2a - System_Xml_Linq_XContainer_ReadContentFrom_System_Xml_XmlReader_System_Xml_Linq_LoadOptions
	.long LDIFF_SYM671
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4,153,3,68,154,2
	.align 3
Lfde42_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer:RemoveNodes"
	.asciz "System_Xml_Linq_XContainer_RemoveNodes"

	.byte 0,0
	.quad System_Xml_Linq_XContainer_RemoveNodes
	.quad Lme_2b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM672=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM672
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM673=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM673
	.byte 1,106,11
	.asciz "V_1"

LDIFF_SYM674=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM674
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM675=Lfde43_end - Lfde43_start
	.long LDIFF_SYM675
Lfde43_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer_RemoveNodes

LDIFF_SYM676=Lme_2b - System_Xml_Linq_XContainer_RemoveNodes
	.long LDIFF_SYM676
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde43_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Nodes>c__Iterator0:.ctor"
	.asciz "System_Xml_Linq_XContainer__Nodesc__Iterator0__ctor"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Nodesc__Iterator0__ctor
	.quad Lme_2c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM677=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM677
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM678=Lfde44_end - Lfde44_start
	.long LDIFF_SYM678
Lfde44_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Nodesc__Iterator0__ctor

LDIFF_SYM679=Lme_2c - System_Xml_Linq_XContainer__Nodesc__Iterator0__ctor
	.long LDIFF_SYM679
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde44_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Nodes>c__Iterator0:MoveNext"
	.asciz "System_Xml_Linq_XContainer__Nodesc__Iterator0_MoveNext"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Nodesc__Iterator0_MoveNext
	.quad Lme_2d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM680=LTDIE_43_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM680
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM681=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM681
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM682=Lfde45_end - Lfde45_start
	.long LDIFF_SYM682
Lfde45_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Nodesc__Iterator0_MoveNext

LDIFF_SYM683=Lme_2d - System_Xml_Linq_XContainer__Nodesc__Iterator0_MoveNext
	.long LDIFF_SYM683
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.align 3
Lfde45_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Nodes>c__Iterator0:System.Collections.Generic.IEnumerator<System.Xml.Linq.XNode>.get_Current"
	.asciz "System_Xml_Linq_XContainer__Nodesc__Iterator0_System_Collections_Generic_IEnumerator_System_Xml_Linq_XNode_get_Current"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Nodesc__Iterator0_System_Collections_Generic_IEnumerator_System_Xml_Linq_XNode_get_Current
	.quad Lme_2e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM684=LTDIE_43_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM684
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM685=Lfde46_end - Lfde46_start
	.long LDIFF_SYM685
Lfde46_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Nodesc__Iterator0_System_Collections_Generic_IEnumerator_System_Xml_Linq_XNode_get_Current

LDIFF_SYM686=Lme_2e - System_Xml_Linq_XContainer__Nodesc__Iterator0_System_Collections_Generic_IEnumerator_System_Xml_Linq_XNode_get_Current
	.long LDIFF_SYM686
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde46_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Nodes>c__Iterator0:System.Collections.IEnumerator.get_Current"
	.asciz "System_Xml_Linq_XContainer__Nodesc__Iterator0_System_Collections_IEnumerator_get_Current"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Nodesc__Iterator0_System_Collections_IEnumerator_get_Current
	.quad Lme_2f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM687=LTDIE_43_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM687
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM688=Lfde47_end - Lfde47_start
	.long LDIFF_SYM688
Lfde47_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Nodesc__Iterator0_System_Collections_IEnumerator_get_Current

LDIFF_SYM689=Lme_2f - System_Xml_Linq_XContainer__Nodesc__Iterator0_System_Collections_IEnumerator_get_Current
	.long LDIFF_SYM689
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde47_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Nodes>c__Iterator0:Dispose"
	.asciz "System_Xml_Linq_XContainer__Nodesc__Iterator0_Dispose"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Nodesc__Iterator0_Dispose
	.quad Lme_30

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM690=LTDIE_43_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM690
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM691=Lfde48_end - Lfde48_start
	.long LDIFF_SYM691
Lfde48_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Nodesc__Iterator0_Dispose

LDIFF_SYM692=Lme_30 - System_Xml_Linq_XContainer__Nodesc__Iterator0_Dispose
	.long LDIFF_SYM692
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde48_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Nodes>c__Iterator0:Reset"
	.asciz "System_Xml_Linq_XContainer__Nodesc__Iterator0_Reset"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Nodesc__Iterator0_Reset
	.quad Lme_31

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM693=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM693
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM694=Lfde49_end - Lfde49_start
	.long LDIFF_SYM694
Lfde49_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Nodesc__Iterator0_Reset

LDIFF_SYM695=Lme_31 - System_Xml_Linq_XContainer__Nodesc__Iterator0_Reset
	.long LDIFF_SYM695
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde49_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Nodes>c__Iterator0:System.Collections.IEnumerable.GetEnumerator"
	.asciz "System_Xml_Linq_XContainer__Nodesc__Iterator0_System_Collections_IEnumerable_GetEnumerator"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Nodesc__Iterator0_System_Collections_IEnumerable_GetEnumerator
	.quad Lme_32

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM696=LTDIE_43_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM696
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM697=Lfde50_end - Lfde50_start
	.long LDIFF_SYM697
Lfde50_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Nodesc__Iterator0_System_Collections_IEnumerable_GetEnumerator

LDIFF_SYM698=Lme_32 - System_Xml_Linq_XContainer__Nodesc__Iterator0_System_Collections_IEnumerable_GetEnumerator
	.long LDIFF_SYM698
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde50_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Nodes>c__Iterator0:System.Collections.Generic.IEnumerable<System.Xml.Linq.XNode>.GetEnumerator"
	.asciz "System_Xml_Linq_XContainer__Nodesc__Iterator0_System_Collections_Generic_IEnumerable_System_Xml_Linq_XNode_GetEnumerator"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Nodesc__Iterator0_System_Collections_Generic_IEnumerable_System_Xml_Linq_XNode_GetEnumerator
	.quad Lme_33

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM699=LTDIE_43_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM699
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM700=LTDIE_43_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM700
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM701=Lfde51_end - Lfde51_start
	.long LDIFF_SYM701
Lfde51_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Nodesc__Iterator0_System_Collections_Generic_IEnumerable_System_Xml_Linq_XNode_GetEnumerator

LDIFF_SYM702=Lme_33 - System_Xml_Linq_XContainer__Nodesc__Iterator0_System_Collections_Generic_IEnumerable_System_Xml_Linq_XNode_GetEnumerator
	.long LDIFF_SYM702
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.align 3
Lfde51_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<DescendantNodes>c__Iterator1:.ctor"
	.asciz "System_Xml_Linq_XContainer__DescendantNodesc__Iterator1__ctor"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__DescendantNodesc__Iterator1__ctor
	.quad Lme_34

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM703=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM703
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM704=Lfde52_end - Lfde52_start
	.long LDIFF_SYM704
Lfde52_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__DescendantNodesc__Iterator1__ctor

LDIFF_SYM705=Lme_34 - System_Xml_Linq_XContainer__DescendantNodesc__Iterator1__ctor
	.long LDIFF_SYM705
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde52_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<DescendantNodes>c__Iterator1:MoveNext"
	.asciz "System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_MoveNext"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_MoveNext
	.quad Lme_35

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM706=LTDIE_44_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM706
	.byte 2,141,40,11
	.asciz "V_0"

LDIFF_SYM707=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM707
	.byte 1,106,11
	.asciz "V_1"

LDIFF_SYM708=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM708
	.byte 2,141,48,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM709=Lfde53_end - Lfde53_start
	.long LDIFF_SYM709
Lfde53_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_MoveNext

LDIFF_SYM710=Lme_35 - System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_MoveNext
	.long LDIFF_SYM710
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,152,12,153,11,68,154,10
	.align 3
Lfde53_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<DescendantNodes>c__Iterator1:System.Collections.Generic.IEnumerator<System.Xml.Linq.XNode>.get_Current"
	.asciz "System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_System_Collections_Generic_IEnumerator_System_Xml_Linq_XNode_get_Current"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_System_Collections_Generic_IEnumerator_System_Xml_Linq_XNode_get_Current
	.quad Lme_36

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM711=LTDIE_44_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM711
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM712=Lfde54_end - Lfde54_start
	.long LDIFF_SYM712
Lfde54_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_System_Collections_Generic_IEnumerator_System_Xml_Linq_XNode_get_Current

LDIFF_SYM713=Lme_36 - System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_System_Collections_Generic_IEnumerator_System_Xml_Linq_XNode_get_Current
	.long LDIFF_SYM713
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde54_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<DescendantNodes>c__Iterator1:System.Collections.IEnumerator.get_Current"
	.asciz "System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_System_Collections_IEnumerator_get_Current"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_System_Collections_IEnumerator_get_Current
	.quad Lme_37

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM714=LTDIE_44_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM714
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM715=Lfde55_end - Lfde55_start
	.long LDIFF_SYM715
Lfde55_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_System_Collections_IEnumerator_get_Current

LDIFF_SYM716=Lme_37 - System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_System_Collections_IEnumerator_get_Current
	.long LDIFF_SYM716
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde55_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<DescendantNodes>c__Iterator1:Dispose"
	.asciz "System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_Dispose"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_Dispose
	.quad Lme_38

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM717=LTDIE_44_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM717
	.byte 2,141,32,11
	.asciz "V_0"

LDIFF_SYM718=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM718
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM719=Lfde56_end - Lfde56_start
	.long LDIFF_SYM719
Lfde56_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_Dispose

LDIFF_SYM720=Lme_38 - System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_Dispose
	.long LDIFF_SYM720
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8,154,7
	.align 3
Lfde56_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<DescendantNodes>c__Iterator1:Reset"
	.asciz "System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_Reset"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_Reset
	.quad Lme_39

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM721=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM721
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM722=Lfde57_end - Lfde57_start
	.long LDIFF_SYM722
Lfde57_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_Reset

LDIFF_SYM723=Lme_39 - System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_Reset
	.long LDIFF_SYM723
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde57_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<DescendantNodes>c__Iterator1:System.Collections.IEnumerable.GetEnumerator"
	.asciz "System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_System_Collections_IEnumerable_GetEnumerator"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_System_Collections_IEnumerable_GetEnumerator
	.quad Lme_3a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM724=LTDIE_44_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM724
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM725=Lfde58_end - Lfde58_start
	.long LDIFF_SYM725
Lfde58_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_System_Collections_IEnumerable_GetEnumerator

LDIFF_SYM726=Lme_3a - System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_System_Collections_IEnumerable_GetEnumerator
	.long LDIFF_SYM726
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde58_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<DescendantNodes>c__Iterator1:System.Collections.Generic.IEnumerable<System.Xml.Linq.XNode>.GetEnumerator"
	.asciz "System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_System_Collections_Generic_IEnumerable_System_Xml_Linq_XNode_GetEnumerator"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_System_Collections_Generic_IEnumerable_System_Xml_Linq_XNode_GetEnumerator
	.quad Lme_3b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM727=LTDIE_44_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM727
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM728=LTDIE_44_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM728
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM729=Lfde59_end - Lfde59_start
	.long LDIFF_SYM729
Lfde59_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_System_Collections_Generic_IEnumerable_System_Xml_Linq_XNode_GetEnumerator

LDIFF_SYM730=Lme_3b - System_Xml_Linq_XContainer__DescendantNodesc__Iterator1_System_Collections_Generic_IEnumerable_System_Xml_Linq_XNode_GetEnumerator
	.long LDIFF_SYM730
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.align 3
Lfde59_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Descendants>c__Iterator2:.ctor"
	.asciz "System_Xml_Linq_XContainer__Descendantsc__Iterator2__ctor"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Descendantsc__Iterator2__ctor
	.quad Lme_3c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM731=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM731
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM732=Lfde60_end - Lfde60_start
	.long LDIFF_SYM732
Lfde60_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Descendantsc__Iterator2__ctor

LDIFF_SYM733=Lme_3c - System_Xml_Linq_XContainer__Descendantsc__Iterator2__ctor
	.long LDIFF_SYM733
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde60_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Descendants>c__Iterator2:MoveNext"
	.asciz "System_Xml_Linq_XContainer__Descendantsc__Iterator2_MoveNext"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Descendantsc__Iterator2_MoveNext
	.quad Lme_3d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM734=LTDIE_46_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM734
	.byte 2,141,40,11
	.asciz "V_0"

LDIFF_SYM735=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM735
	.byte 1,106,11
	.asciz "V_1"

LDIFF_SYM736=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM736
	.byte 2,141,48,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM737=Lfde61_end - Lfde61_start
	.long LDIFF_SYM737
Lfde61_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Descendantsc__Iterator2_MoveNext

LDIFF_SYM738=Lme_3d - System_Xml_Linq_XContainer__Descendantsc__Iterator2_MoveNext
	.long LDIFF_SYM738
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,152,10,153,9,68,154,8
	.align 3
Lfde61_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Descendants>c__Iterator2:System.Collections.Generic.IEnumerator<System.Xml.Linq.XElement>.get_Current"
	.asciz "System_Xml_Linq_XContainer__Descendantsc__Iterator2_System_Collections_Generic_IEnumerator_System_Xml_Linq_XElement_get_Current"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Descendantsc__Iterator2_System_Collections_Generic_IEnumerator_System_Xml_Linq_XElement_get_Current
	.quad Lme_3e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM739=LTDIE_46_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM739
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM740=Lfde62_end - Lfde62_start
	.long LDIFF_SYM740
Lfde62_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Descendantsc__Iterator2_System_Collections_Generic_IEnumerator_System_Xml_Linq_XElement_get_Current

LDIFF_SYM741=Lme_3e - System_Xml_Linq_XContainer__Descendantsc__Iterator2_System_Collections_Generic_IEnumerator_System_Xml_Linq_XElement_get_Current
	.long LDIFF_SYM741
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde62_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Descendants>c__Iterator2:System.Collections.IEnumerator.get_Current"
	.asciz "System_Xml_Linq_XContainer__Descendantsc__Iterator2_System_Collections_IEnumerator_get_Current"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Descendantsc__Iterator2_System_Collections_IEnumerator_get_Current
	.quad Lme_3f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM742=LTDIE_46_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM742
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM743=Lfde63_end - Lfde63_start
	.long LDIFF_SYM743
Lfde63_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Descendantsc__Iterator2_System_Collections_IEnumerator_get_Current

LDIFF_SYM744=Lme_3f - System_Xml_Linq_XContainer__Descendantsc__Iterator2_System_Collections_IEnumerator_get_Current
	.long LDIFF_SYM744
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde63_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Descendants>c__Iterator2:Dispose"
	.asciz "System_Xml_Linq_XContainer__Descendantsc__Iterator2_Dispose"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Descendantsc__Iterator2_Dispose
	.quad Lme_40

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM745=LTDIE_46_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM745
	.byte 2,141,16,11
	.asciz "V_0"

LDIFF_SYM746=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM746
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM747=Lfde64_end - Lfde64_start
	.long LDIFF_SYM747
Lfde64_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Descendantsc__Iterator2_Dispose

LDIFF_SYM748=Lme_40 - System_Xml_Linq_XContainer__Descendantsc__Iterator2_Dispose
	.long LDIFF_SYM748
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde64_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Descendants>c__Iterator2:Reset"
	.asciz "System_Xml_Linq_XContainer__Descendantsc__Iterator2_Reset"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Descendantsc__Iterator2_Reset
	.quad Lme_41

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM749=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM749
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM750=Lfde65_end - Lfde65_start
	.long LDIFF_SYM750
Lfde65_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Descendantsc__Iterator2_Reset

LDIFF_SYM751=Lme_41 - System_Xml_Linq_XContainer__Descendantsc__Iterator2_Reset
	.long LDIFF_SYM751
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde65_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Descendants>c__Iterator2:System.Collections.IEnumerable.GetEnumerator"
	.asciz "System_Xml_Linq_XContainer__Descendantsc__Iterator2_System_Collections_IEnumerable_GetEnumerator"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Descendantsc__Iterator2_System_Collections_IEnumerable_GetEnumerator
	.quad Lme_42

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM752=LTDIE_46_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM752
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM753=Lfde66_end - Lfde66_start
	.long LDIFF_SYM753
Lfde66_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Descendantsc__Iterator2_System_Collections_IEnumerable_GetEnumerator

LDIFF_SYM754=Lme_42 - System_Xml_Linq_XContainer__Descendantsc__Iterator2_System_Collections_IEnumerable_GetEnumerator
	.long LDIFF_SYM754
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde66_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Descendants>c__Iterator2:System.Collections.Generic.IEnumerable<System.Xml.Linq.XElement>.GetEnumerator"
	.asciz "System_Xml_Linq_XContainer__Descendantsc__Iterator2_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Descendantsc__Iterator2_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator
	.quad Lme_43

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM755=LTDIE_46_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM755
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM756=LTDIE_46_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM756
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM757=Lfde67_end - Lfde67_start
	.long LDIFF_SYM757
Lfde67_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Descendantsc__Iterator2_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator

LDIFF_SYM758=Lme_43 - System_Xml_Linq_XContainer__Descendantsc__Iterator2_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator
	.long LDIFF_SYM758
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.align 3
Lfde67_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Descendants>c__Iterator3:.ctor"
	.asciz "System_Xml_Linq_XContainer__Descendantsc__Iterator3__ctor"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Descendantsc__Iterator3__ctor
	.quad Lme_44

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM759=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM759
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM760=Lfde68_end - Lfde68_start
	.long LDIFF_SYM760
Lfde68_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Descendantsc__Iterator3__ctor

LDIFF_SYM761=Lme_44 - System_Xml_Linq_XContainer__Descendantsc__Iterator3__ctor
	.long LDIFF_SYM761
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde68_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Descendants>c__Iterator3:MoveNext"
	.asciz "System_Xml_Linq_XContainer__Descendantsc__Iterator3_MoveNext"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Descendantsc__Iterator3_MoveNext
	.quad Lme_45

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM762=LTDIE_48_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM762
	.byte 2,141,32,11
	.asciz "V_0"

LDIFF_SYM763=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM763
	.byte 1,106,11
	.asciz "V_1"

LDIFF_SYM764=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM764
	.byte 2,141,40,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM765=Lfde69_end - Lfde69_start
	.long LDIFF_SYM765
Lfde69_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Descendantsc__Iterator3_MoveNext

LDIFF_SYM766=Lme_45 - System_Xml_Linq_XContainer__Descendantsc__Iterator3_MoveNext
	.long LDIFF_SYM766
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10,154,9
	.align 3
Lfde69_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Descendants>c__Iterator3:System.Collections.Generic.IEnumerator<System.Xml.Linq.XElement>.get_Current"
	.asciz "System_Xml_Linq_XContainer__Descendantsc__Iterator3_System_Collections_Generic_IEnumerator_System_Xml_Linq_XElement_get_Current"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Descendantsc__Iterator3_System_Collections_Generic_IEnumerator_System_Xml_Linq_XElement_get_Current
	.quad Lme_46

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM767=LTDIE_48_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM767
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM768=Lfde70_end - Lfde70_start
	.long LDIFF_SYM768
Lfde70_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Descendantsc__Iterator3_System_Collections_Generic_IEnumerator_System_Xml_Linq_XElement_get_Current

LDIFF_SYM769=Lme_46 - System_Xml_Linq_XContainer__Descendantsc__Iterator3_System_Collections_Generic_IEnumerator_System_Xml_Linq_XElement_get_Current
	.long LDIFF_SYM769
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde70_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Descendants>c__Iterator3:System.Collections.IEnumerator.get_Current"
	.asciz "System_Xml_Linq_XContainer__Descendantsc__Iterator3_System_Collections_IEnumerator_get_Current"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Descendantsc__Iterator3_System_Collections_IEnumerator_get_Current
	.quad Lme_47

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM770=LTDIE_48_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM770
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM771=Lfde71_end - Lfde71_start
	.long LDIFF_SYM771
Lfde71_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Descendantsc__Iterator3_System_Collections_IEnumerator_get_Current

LDIFF_SYM772=Lme_47 - System_Xml_Linq_XContainer__Descendantsc__Iterator3_System_Collections_IEnumerator_get_Current
	.long LDIFF_SYM772
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde71_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Descendants>c__Iterator3:Dispose"
	.asciz "System_Xml_Linq_XContainer__Descendantsc__Iterator3_Dispose"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Descendantsc__Iterator3_Dispose
	.quad Lme_48

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM773=LTDIE_48_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM773
	.byte 2,141,16,11
	.asciz "V_0"

LDIFF_SYM774=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM774
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM775=Lfde72_end - Lfde72_start
	.long LDIFF_SYM775
Lfde72_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Descendantsc__Iterator3_Dispose

LDIFF_SYM776=Lme_48 - System_Xml_Linq_XContainer__Descendantsc__Iterator3_Dispose
	.long LDIFF_SYM776
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde72_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Descendants>c__Iterator3:Reset"
	.asciz "System_Xml_Linq_XContainer__Descendantsc__Iterator3_Reset"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Descendantsc__Iterator3_Reset
	.quad Lme_49

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM777=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM777
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM778=Lfde73_end - Lfde73_start
	.long LDIFF_SYM778
Lfde73_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Descendantsc__Iterator3_Reset

LDIFF_SYM779=Lme_49 - System_Xml_Linq_XContainer__Descendantsc__Iterator3_Reset
	.long LDIFF_SYM779
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde73_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Descendants>c__Iterator3:System.Collections.IEnumerable.GetEnumerator"
	.asciz "System_Xml_Linq_XContainer__Descendantsc__Iterator3_System_Collections_IEnumerable_GetEnumerator"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Descendantsc__Iterator3_System_Collections_IEnumerable_GetEnumerator
	.quad Lme_4a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM780=LTDIE_48_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM780
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM781=Lfde74_end - Lfde74_start
	.long LDIFF_SYM781
Lfde74_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Descendantsc__Iterator3_System_Collections_IEnumerable_GetEnumerator

LDIFF_SYM782=Lme_4a - System_Xml_Linq_XContainer__Descendantsc__Iterator3_System_Collections_IEnumerable_GetEnumerator
	.long LDIFF_SYM782
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde74_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Descendants>c__Iterator3:System.Collections.Generic.IEnumerable<System.Xml.Linq.XElement>.GetEnumerator"
	.asciz "System_Xml_Linq_XContainer__Descendantsc__Iterator3_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Descendantsc__Iterator3_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator
	.quad Lme_4b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM783=LTDIE_48_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM783
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM784=LTDIE_48_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM784
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM785=Lfde75_end - Lfde75_start
	.long LDIFF_SYM785
Lfde75_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Descendantsc__Iterator3_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator

LDIFF_SYM786=Lme_4b - System_Xml_Linq_XContainer__Descendantsc__Iterator3_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator
	.long LDIFF_SYM786
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.align 3
Lfde75_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Elements>c__Iterator4:.ctor"
	.asciz "System_Xml_Linq_XContainer__Elementsc__Iterator4__ctor"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Elementsc__Iterator4__ctor
	.quad Lme_4c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM787=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM787
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM788=Lfde76_end - Lfde76_start
	.long LDIFF_SYM788
Lfde76_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Elementsc__Iterator4__ctor

LDIFF_SYM789=Lme_4c - System_Xml_Linq_XContainer__Elementsc__Iterator4__ctor
	.long LDIFF_SYM789
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde76_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Elements>c__Iterator4:MoveNext"
	.asciz "System_Xml_Linq_XContainer__Elementsc__Iterator4_MoveNext"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Elementsc__Iterator4_MoveNext
	.quad Lme_4d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM790=LTDIE_50_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM790
	.byte 2,141,40,11
	.asciz "V_0"

LDIFF_SYM791=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM791
	.byte 1,106,11
	.asciz "V_1"

LDIFF_SYM792=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM792
	.byte 2,141,48,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM793=Lfde77_end - Lfde77_start
	.long LDIFF_SYM793
Lfde77_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Elementsc__Iterator4_MoveNext

LDIFF_SYM794=Lme_4d - System_Xml_Linq_XContainer__Elementsc__Iterator4_MoveNext
	.long LDIFF_SYM794
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,152,10,153,9,68,154,8
	.align 3
Lfde77_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Elements>c__Iterator4:System.Collections.Generic.IEnumerator<System.Xml.Linq.XElement>.get_Current"
	.asciz "System_Xml_Linq_XContainer__Elementsc__Iterator4_System_Collections_Generic_IEnumerator_System_Xml_Linq_XElement_get_Current"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Elementsc__Iterator4_System_Collections_Generic_IEnumerator_System_Xml_Linq_XElement_get_Current
	.quad Lme_4e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM795=LTDIE_50_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM795
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM796=Lfde78_end - Lfde78_start
	.long LDIFF_SYM796
Lfde78_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Elementsc__Iterator4_System_Collections_Generic_IEnumerator_System_Xml_Linq_XElement_get_Current

LDIFF_SYM797=Lme_4e - System_Xml_Linq_XContainer__Elementsc__Iterator4_System_Collections_Generic_IEnumerator_System_Xml_Linq_XElement_get_Current
	.long LDIFF_SYM797
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde78_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Elements>c__Iterator4:System.Collections.IEnumerator.get_Current"
	.asciz "System_Xml_Linq_XContainer__Elementsc__Iterator4_System_Collections_IEnumerator_get_Current"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Elementsc__Iterator4_System_Collections_IEnumerator_get_Current
	.quad Lme_4f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM798=LTDIE_50_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM798
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM799=Lfde79_end - Lfde79_start
	.long LDIFF_SYM799
Lfde79_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Elementsc__Iterator4_System_Collections_IEnumerator_get_Current

LDIFF_SYM800=Lme_4f - System_Xml_Linq_XContainer__Elementsc__Iterator4_System_Collections_IEnumerator_get_Current
	.long LDIFF_SYM800
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde79_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Elements>c__Iterator4:Dispose"
	.asciz "System_Xml_Linq_XContainer__Elementsc__Iterator4_Dispose"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Elementsc__Iterator4_Dispose
	.quad Lme_50

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM801=LTDIE_50_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM801
	.byte 2,141,16,11
	.asciz "V_0"

LDIFF_SYM802=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM802
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM803=Lfde80_end - Lfde80_start
	.long LDIFF_SYM803
Lfde80_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Elementsc__Iterator4_Dispose

LDIFF_SYM804=Lme_50 - System_Xml_Linq_XContainer__Elementsc__Iterator4_Dispose
	.long LDIFF_SYM804
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde80_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Elements>c__Iterator4:Reset"
	.asciz "System_Xml_Linq_XContainer__Elementsc__Iterator4_Reset"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Elementsc__Iterator4_Reset
	.quad Lme_51

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM805=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM805
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM806=Lfde81_end - Lfde81_start
	.long LDIFF_SYM806
Lfde81_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Elementsc__Iterator4_Reset

LDIFF_SYM807=Lme_51 - System_Xml_Linq_XContainer__Elementsc__Iterator4_Reset
	.long LDIFF_SYM807
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde81_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Elements>c__Iterator4:System.Collections.IEnumerable.GetEnumerator"
	.asciz "System_Xml_Linq_XContainer__Elementsc__Iterator4_System_Collections_IEnumerable_GetEnumerator"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Elementsc__Iterator4_System_Collections_IEnumerable_GetEnumerator
	.quad Lme_52

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM808=LTDIE_50_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM808
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM809=Lfde82_end - Lfde82_start
	.long LDIFF_SYM809
Lfde82_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Elementsc__Iterator4_System_Collections_IEnumerable_GetEnumerator

LDIFF_SYM810=Lme_52 - System_Xml_Linq_XContainer__Elementsc__Iterator4_System_Collections_IEnumerable_GetEnumerator
	.long LDIFF_SYM810
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde82_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Elements>c__Iterator4:System.Collections.Generic.IEnumerable<System.Xml.Linq.XElement>.GetEnumerator"
	.asciz "System_Xml_Linq_XContainer__Elementsc__Iterator4_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Elementsc__Iterator4_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator
	.quad Lme_53

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM811=LTDIE_50_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM811
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM812=LTDIE_50_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM812
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM813=Lfde83_end - Lfde83_start
	.long LDIFF_SYM813
Lfde83_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Elementsc__Iterator4_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator

LDIFF_SYM814=Lme_53 - System_Xml_Linq_XContainer__Elementsc__Iterator4_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator
	.long LDIFF_SYM814
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.align 3
Lfde83_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Elements>c__Iterator5:.ctor"
	.asciz "System_Xml_Linq_XContainer__Elementsc__Iterator5__ctor"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Elementsc__Iterator5__ctor
	.quad Lme_54

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM815=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM815
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM816=Lfde84_end - Lfde84_start
	.long LDIFF_SYM816
Lfde84_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Elementsc__Iterator5__ctor

LDIFF_SYM817=Lme_54 - System_Xml_Linq_XContainer__Elementsc__Iterator5__ctor
	.long LDIFF_SYM817
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde84_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Elements>c__Iterator5:MoveNext"
	.asciz "System_Xml_Linq_XContainer__Elementsc__Iterator5_MoveNext"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Elementsc__Iterator5_MoveNext
	.quad Lme_55

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM818=LTDIE_51_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM818
	.byte 2,141,40,11
	.asciz "V_0"

LDIFF_SYM819=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM819
	.byte 1,106,11
	.asciz "V_1"

LDIFF_SYM820=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM820
	.byte 2,141,48,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM821=Lfde85_end - Lfde85_start
	.long LDIFF_SYM821
Lfde85_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Elementsc__Iterator5_MoveNext

LDIFF_SYM822=Lme_55 - System_Xml_Linq_XContainer__Elementsc__Iterator5_MoveNext
	.long LDIFF_SYM822
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,152,10,153,9,68,154,8
	.align 3
Lfde85_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Elements>c__Iterator5:System.Collections.Generic.IEnumerator<System.Xml.Linq.XElement>.get_Current"
	.asciz "System_Xml_Linq_XContainer__Elementsc__Iterator5_System_Collections_Generic_IEnumerator_System_Xml_Linq_XElement_get_Current"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Elementsc__Iterator5_System_Collections_Generic_IEnumerator_System_Xml_Linq_XElement_get_Current
	.quad Lme_56

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM823=LTDIE_51_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM823
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM824=Lfde86_end - Lfde86_start
	.long LDIFF_SYM824
Lfde86_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Elementsc__Iterator5_System_Collections_Generic_IEnumerator_System_Xml_Linq_XElement_get_Current

LDIFF_SYM825=Lme_56 - System_Xml_Linq_XContainer__Elementsc__Iterator5_System_Collections_Generic_IEnumerator_System_Xml_Linq_XElement_get_Current
	.long LDIFF_SYM825
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde86_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Elements>c__Iterator5:System.Collections.IEnumerator.get_Current"
	.asciz "System_Xml_Linq_XContainer__Elementsc__Iterator5_System_Collections_IEnumerator_get_Current"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Elementsc__Iterator5_System_Collections_IEnumerator_get_Current
	.quad Lme_57

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM826=LTDIE_51_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM826
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM827=Lfde87_end - Lfde87_start
	.long LDIFF_SYM827
Lfde87_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Elementsc__Iterator5_System_Collections_IEnumerator_get_Current

LDIFF_SYM828=Lme_57 - System_Xml_Linq_XContainer__Elementsc__Iterator5_System_Collections_IEnumerator_get_Current
	.long LDIFF_SYM828
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde87_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Elements>c__Iterator5:Dispose"
	.asciz "System_Xml_Linq_XContainer__Elementsc__Iterator5_Dispose"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Elementsc__Iterator5_Dispose
	.quad Lme_58

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM829=LTDIE_51_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM829
	.byte 2,141,16,11
	.asciz "V_0"

LDIFF_SYM830=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM830
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM831=Lfde88_end - Lfde88_start
	.long LDIFF_SYM831
Lfde88_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Elementsc__Iterator5_Dispose

LDIFF_SYM832=Lme_58 - System_Xml_Linq_XContainer__Elementsc__Iterator5_Dispose
	.long LDIFF_SYM832
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde88_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Elements>c__Iterator5:Reset"
	.asciz "System_Xml_Linq_XContainer__Elementsc__Iterator5_Reset"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Elementsc__Iterator5_Reset
	.quad Lme_59

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM833=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM833
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM834=Lfde89_end - Lfde89_start
	.long LDIFF_SYM834
Lfde89_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Elementsc__Iterator5_Reset

LDIFF_SYM835=Lme_59 - System_Xml_Linq_XContainer__Elementsc__Iterator5_Reset
	.long LDIFF_SYM835
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde89_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Elements>c__Iterator5:System.Collections.IEnumerable.GetEnumerator"
	.asciz "System_Xml_Linq_XContainer__Elementsc__Iterator5_System_Collections_IEnumerable_GetEnumerator"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Elementsc__Iterator5_System_Collections_IEnumerable_GetEnumerator
	.quad Lme_5a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM836=LTDIE_51_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM836
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM837=Lfde90_end - Lfde90_start
	.long LDIFF_SYM837
Lfde90_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Elementsc__Iterator5_System_Collections_IEnumerable_GetEnumerator

LDIFF_SYM838=Lme_5a - System_Xml_Linq_XContainer__Elementsc__Iterator5_System_Collections_IEnumerable_GetEnumerator
	.long LDIFF_SYM838
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde90_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XContainer/<Elements>c__Iterator5:System.Collections.Generic.IEnumerable<System.Xml.Linq.XElement>.GetEnumerator"
	.asciz "System_Xml_Linq_XContainer__Elementsc__Iterator5_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator"

	.byte 0,0
	.quad System_Xml_Linq_XContainer__Elementsc__Iterator5_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator
	.quad Lme_5b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM839=LTDIE_51_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM839
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM840=LTDIE_51_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM840
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM841=Lfde91_end - Lfde91_start
	.long LDIFF_SYM841
Lfde91_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XContainer__Elementsc__Iterator5_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator

LDIFF_SYM842=Lme_5b - System_Xml_Linq_XContainer__Elementsc__Iterator5_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator
	.long LDIFF_SYM842
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.align 3
Lfde91_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_73:

	.byte 5
	.asciz "System_Xml_Linq_XDeclaration"

	.byte 40,16
LDIFF_SYM843=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM843
	.byte 2,35,0,6
	.asciz "encoding"

LDIFF_SYM844=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM844
	.byte 2,35,16,6
	.asciz "standalone"

LDIFF_SYM845=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM845
	.byte 2,35,24,6
	.asciz "version"

LDIFF_SYM846=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM846
	.byte 2,35,32,0,7
	.asciz "System_Xml_Linq_XDeclaration"

LDIFF_SYM847=LTDIE_73 - Ldebug_info_start
	.long LDIFF_SYM847
LTDIE_73_POINTER:

	.byte 13
LDIFF_SYM848=LTDIE_73 - Ldebug_info_start
	.long LDIFF_SYM848
LTDIE_73_REFERENCE:

	.byte 14
LDIFF_SYM849=LTDIE_73 - Ldebug_info_start
	.long LDIFF_SYM849
	.byte 2
	.asciz "System.Xml.Linq.XDeclaration:.ctor"
	.asciz "System_Xml_Linq_XDeclaration__ctor_string_string_string"

	.byte 0,0
	.quad System_Xml_Linq_XDeclaration__ctor_string_string_string
	.quad Lme_5c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM850=LTDIE_73_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM850
	.byte 1,103,3
	.asciz "version"

LDIFF_SYM851=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM851
	.byte 2,141,24,3
	.asciz "encoding"

LDIFF_SYM852=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM852
	.byte 2,141,32,3
	.asciz "standalone"

LDIFF_SYM853=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM853
	.byte 2,141,40,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM854=Lfde92_end - Lfde92_start
	.long LDIFF_SYM854
Lfde92_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XDeclaration__ctor_string_string_string

LDIFF_SYM855=Lme_5c - System_Xml_Linq_XDeclaration__ctor_string_string_string
	.long LDIFF_SYM855
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,151,4
	.align 3
Lfde92_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XDeclaration:.ctor"
	.asciz "System_Xml_Linq_XDeclaration__ctor_System_Xml_Linq_XDeclaration"

	.byte 0,0
	.quad System_Xml_Linq_XDeclaration__ctor_System_Xml_Linq_XDeclaration
	.quad Lme_5d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM856=LTDIE_73_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM856
	.byte 1,105,3
	.asciz "other"

LDIFF_SYM857=LTDIE_73_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM857
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM858=Lfde93_end - Lfde93_start
	.long LDIFF_SYM858
Lfde93_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XDeclaration__ctor_System_Xml_Linq_XDeclaration

LDIFF_SYM859=Lme_5d - System_Xml_Linq_XDeclaration__ctor_System_Xml_Linq_XDeclaration
	.long LDIFF_SYM859
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,153,2,154,1
	.align 3
Lfde93_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XDeclaration:get_Encoding"
	.asciz "System_Xml_Linq_XDeclaration_get_Encoding"

	.byte 0,0
	.quad System_Xml_Linq_XDeclaration_get_Encoding
	.quad Lme_5e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM860=LTDIE_73_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM860
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM861=Lfde94_end - Lfde94_start
	.long LDIFF_SYM861
Lfde94_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XDeclaration_get_Encoding

LDIFF_SYM862=Lme_5e - System_Xml_Linq_XDeclaration_get_Encoding
	.long LDIFF_SYM862
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde94_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XDeclaration:set_Encoding"
	.asciz "System_Xml_Linq_XDeclaration_set_Encoding_string"

	.byte 0,0
	.quad System_Xml_Linq_XDeclaration_set_Encoding_string
	.quad Lme_5f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM863=LTDIE_73_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM863
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM864=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM864
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM865=Lfde95_end - Lfde95_start
	.long LDIFF_SYM865
Lfde95_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XDeclaration_set_Encoding_string

LDIFF_SYM866=Lme_5f - System_Xml_Linq_XDeclaration_set_Encoding_string
	.long LDIFF_SYM866
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde95_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XDeclaration:get_Standalone"
	.asciz "System_Xml_Linq_XDeclaration_get_Standalone"

	.byte 0,0
	.quad System_Xml_Linq_XDeclaration_get_Standalone
	.quad Lme_60

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM867=LTDIE_73_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM867
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM868=Lfde96_end - Lfde96_start
	.long LDIFF_SYM868
Lfde96_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XDeclaration_get_Standalone

LDIFF_SYM869=Lme_60 - System_Xml_Linq_XDeclaration_get_Standalone
	.long LDIFF_SYM869
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde96_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XDeclaration:set_Standalone"
	.asciz "System_Xml_Linq_XDeclaration_set_Standalone_string"

	.byte 0,0
	.quad System_Xml_Linq_XDeclaration_set_Standalone_string
	.quad Lme_61

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM870=LTDIE_73_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM870
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM871=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM871
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM872=Lfde97_end - Lfde97_start
	.long LDIFF_SYM872
Lfde97_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XDeclaration_set_Standalone_string

LDIFF_SYM873=Lme_61 - System_Xml_Linq_XDeclaration_set_Standalone_string
	.long LDIFF_SYM873
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde97_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XDeclaration:get_Version"
	.asciz "System_Xml_Linq_XDeclaration_get_Version"

	.byte 0,0
	.quad System_Xml_Linq_XDeclaration_get_Version
	.quad Lme_62

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM874=LTDIE_73_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM874
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM875=Lfde98_end - Lfde98_start
	.long LDIFF_SYM875
Lfde98_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XDeclaration_get_Version

LDIFF_SYM876=Lme_62 - System_Xml_Linq_XDeclaration_get_Version
	.long LDIFF_SYM876
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde98_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XDeclaration:ToString"
	.asciz "System_Xml_Linq_XDeclaration_ToString"

	.byte 0,0
	.quad System_Xml_Linq_XDeclaration_ToString
	.quad Lme_63

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM877=LTDIE_73_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM877
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM878=Lfde99_end - Lfde99_start
	.long LDIFF_SYM878
Lfde99_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XDeclaration_ToString

LDIFF_SYM879=Lme_63 - System_Xml_Linq_XDeclaration_ToString
	.long LDIFF_SYM879
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,150,8,151,7,68,152,6,153,5,68,154,4
	.align 3
Lfde99_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_74:

	.byte 5
	.asciz "System_Xml_Linq_XDocument"

	.byte 96,16
LDIFF_SYM880=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM880
	.byte 2,35,0,6
	.asciz "xmldecl"

LDIFF_SYM881=LTDIE_73_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM881
	.byte 2,35,88,0,7
	.asciz "System_Xml_Linq_XDocument"

LDIFF_SYM882=LTDIE_74 - Ldebug_info_start
	.long LDIFF_SYM882
LTDIE_74_POINTER:

	.byte 13
LDIFF_SYM883=LTDIE_74 - Ldebug_info_start
	.long LDIFF_SYM883
LTDIE_74_REFERENCE:

	.byte 14
LDIFF_SYM884=LTDIE_74 - Ldebug_info_start
	.long LDIFF_SYM884
	.byte 2
	.asciz "System.Xml.Linq.XDocument:.ctor"
	.asciz "System_Xml_Linq_XDocument__ctor"

	.byte 0,0
	.quad System_Xml_Linq_XDocument__ctor
	.quad Lme_64

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM885=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM885
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM886=Lfde100_end - Lfde100_start
	.long LDIFF_SYM886
Lfde100_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XDocument__ctor

LDIFF_SYM887=Lme_64 - System_Xml_Linq_XDocument__ctor
	.long LDIFF_SYM887
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde100_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XDocument:get_Declaration"
	.asciz "System_Xml_Linq_XDocument_get_Declaration"

	.byte 0,0
	.quad System_Xml_Linq_XDocument_get_Declaration
	.quad Lme_65

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM888=LTDIE_74_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM888
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM889=Lfde101_end - Lfde101_start
	.long LDIFF_SYM889
Lfde101_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XDocument_get_Declaration

LDIFF_SYM890=Lme_65 - System_Xml_Linq_XDocument_get_Declaration
	.long LDIFF_SYM890
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde101_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XDocument:set_Declaration"
	.asciz "System_Xml_Linq_XDocument_set_Declaration_System_Xml_Linq_XDeclaration"

	.byte 0,0
	.quad System_Xml_Linq_XDocument_set_Declaration_System_Xml_Linq_XDeclaration
	.quad Lme_66

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM891=LTDIE_74_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM891
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM892=LTDIE_73_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM892
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM893=Lfde102_end - Lfde102_start
	.long LDIFF_SYM893
Lfde102_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XDocument_set_Declaration_System_Xml_Linq_XDeclaration

LDIFF_SYM894=Lme_66 - System_Xml_Linq_XDocument_set_Declaration_System_Xml_Linq_XDeclaration
	.long LDIFF_SYM894
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde102_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_75:

	.byte 5
	.asciz "System_Xml_Linq_XDocumentType"

	.byte 104,16
LDIFF_SYM895=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM895
	.byte 2,35,0,6
	.asciz "name"

LDIFF_SYM896=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM896
	.byte 2,35,72,6
	.asciz "pubid"

LDIFF_SYM897=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM897
	.byte 2,35,80,6
	.asciz "sysid"

LDIFF_SYM898=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM898
	.byte 2,35,88,6
	.asciz "intSubset"

LDIFF_SYM899=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM899
	.byte 2,35,96,0,7
	.asciz "System_Xml_Linq_XDocumentType"

LDIFF_SYM900=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM900
LTDIE_75_POINTER:

	.byte 13
LDIFF_SYM901=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM901
LTDIE_75_REFERENCE:

	.byte 14
LDIFF_SYM902=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM902
	.byte 2
	.asciz "System.Xml.Linq.XDocument:get_DocumentType"
	.asciz "System_Xml_Linq_XDocument_get_DocumentType"

	.byte 0,0
	.quad System_Xml_Linq_XDocument_get_DocumentType
	.quad Lme_67

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM903=LTDIE_74_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM903
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM904=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM904
	.byte 1,106,11
	.asciz "V_1"

LDIFF_SYM905=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM905
	.byte 2,141,40,11
	.asciz "V_2"

LDIFF_SYM906=LTDIE_75_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM906
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM907=Lfde103_end - Lfde103_start
	.long LDIFF_SYM907
Lfde103_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XDocument_get_DocumentType

LDIFF_SYM908=Lme_67 - System_Xml_Linq_XDocument_get_DocumentType
	.long LDIFF_SYM908
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,152,8,153,7,68,154,6
	.align 3
Lfde103_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XDocument:get_NodeType"
	.asciz "System_Xml_Linq_XDocument_get_NodeType"

	.byte 0,0
	.quad System_Xml_Linq_XDocument_get_NodeType
	.quad Lme_68

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM909=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM909
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM910=Lfde104_end - Lfde104_start
	.long LDIFF_SYM910
Lfde104_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XDocument_get_NodeType

LDIFF_SYM911=Lme_68 - System_Xml_Linq_XDocument_get_NodeType
	.long LDIFF_SYM911
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde104_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XDocument:get_Root"
	.asciz "System_Xml_Linq_XDocument_get_Root"

	.byte 0,0
	.quad System_Xml_Linq_XDocument_get_Root
	.quad Lme_69

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM912=LTDIE_74_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM912
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM913=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM913
	.byte 1,106,11
	.asciz "V_1"

LDIFF_SYM914=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM914
	.byte 2,141,40,11
	.asciz "V_2"

LDIFF_SYM915=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM915
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM916=Lfde105_end - Lfde105_start
	.long LDIFF_SYM916
Lfde105_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XDocument_get_Root

LDIFF_SYM917=Lme_69 - System_Xml_Linq_XDocument_get_Root
	.long LDIFF_SYM917
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,152,8,153,7,68,154,6
	.align 3
Lfde105_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_76:

	.byte 5
	.asciz "System_IO_TextReader"

	.byte 16,16
LDIFF_SYM918=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM918
	.byte 2,35,0,0,7
	.asciz "System_IO_TextReader"

LDIFF_SYM919=LTDIE_76 - Ldebug_info_start
	.long LDIFF_SYM919
LTDIE_76_POINTER:

	.byte 13
LDIFF_SYM920=LTDIE_76 - Ldebug_info_start
	.long LDIFF_SYM920
LTDIE_76_REFERENCE:

	.byte 14
LDIFF_SYM921=LTDIE_76 - Ldebug_info_start
	.long LDIFF_SYM921
	.byte 2
	.asciz "System.Xml.Linq.XDocument:Load"
	.asciz "System_Xml_Linq_XDocument_Load_System_IO_TextReader_System_Xml_Linq_LoadOptions"

	.byte 0,0
	.quad System_Xml_Linq_XDocument_Load_System_IO_TextReader_System_Xml_Linq_LoadOptions
	.quad Lme_6a

	.byte 2,118,16,3
	.asciz "textReader"

LDIFF_SYM922=LTDIE_76_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM922
	.byte 2,141,24,3
	.asciz "options"

LDIFF_SYM923=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM923
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM924=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM924
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM925=LTDIE_52_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM925
	.byte 2,141,32,11
	.asciz "V_2"

LDIFF_SYM926=LTDIE_74_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM926
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM927=Lfde106_end - Lfde106_start
	.long LDIFF_SYM927
Lfde106_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XDocument_Load_System_IO_TextReader_System_Xml_Linq_LoadOptions

LDIFF_SYM928=Lme_6a - System_Xml_Linq_XDocument_Load_System_IO_TextReader_System_Xml_Linq_LoadOptions
	.long LDIFF_SYM928
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,154,8
	.align 3
Lfde106_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XDocument:LoadCore"
	.asciz "System_Xml_Linq_XDocument_LoadCore_System_Xml_XmlReader_System_Xml_Linq_LoadOptions"

	.byte 0,0
	.quad System_Xml_Linq_XDocument_LoadCore_System_Xml_XmlReader_System_Xml_Linq_LoadOptions
	.quad Lme_6b

	.byte 2,118,16,3
	.asciz "reader"

LDIFF_SYM929=LTDIE_52_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM929
	.byte 2,141,16,3
	.asciz "options"

LDIFF_SYM930=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM930
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM931=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM931
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM932=Lfde107_end - Lfde107_start
	.long LDIFF_SYM932
Lfde107_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XDocument_LoadCore_System_Xml_XmlReader_System_Xml_Linq_LoadOptions

LDIFF_SYM933=Lme_6b - System_Xml_Linq_XDocument_LoadCore_System_Xml_XmlReader_System_Xml_Linq_LoadOptions
	.long LDIFF_SYM933
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde107_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XDocument:ReadContent"
	.asciz "System_Xml_Linq_XDocument_ReadContent_System_Xml_XmlReader_System_Xml_Linq_LoadOptions"

	.byte 0,0
	.quad System_Xml_Linq_XDocument_ReadContent_System_Xml_XmlReader_System_Xml_Linq_LoadOptions
	.quad Lme_6c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM934=LTDIE_74_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM934
	.byte 1,104,3
	.asciz "reader"

LDIFF_SYM935=LTDIE_52_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM935
	.byte 1,105,3
	.asciz "options"

LDIFF_SYM936=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM936
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM937=Lfde108_end - Lfde108_start
	.long LDIFF_SYM937
Lfde108_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XDocument_ReadContent_System_Xml_XmlReader_System_Xml_Linq_LoadOptions

LDIFF_SYM938=Lme_6c - System_Xml_Linq_XDocument_ReadContent_System_Xml_XmlReader_System_Xml_Linq_LoadOptions
	.long LDIFF_SYM938
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,152,8,153,7
	.align 3
Lfde108_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_77:

	.byte 5
	.asciz "System_Char"

	.byte 18,16
LDIFF_SYM939=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM939
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM940=LDIE_CHAR - Ldebug_info_start
	.long LDIFF_SYM940
	.byte 2,35,16,0,7
	.asciz "System_Char"

LDIFF_SYM941=LTDIE_77 - Ldebug_info_start
	.long LDIFF_SYM941
LTDIE_77_POINTER:

	.byte 13
LDIFF_SYM942=LTDIE_77 - Ldebug_info_start
	.long LDIFF_SYM942
LTDIE_77_REFERENCE:

	.byte 14
LDIFF_SYM943=LTDIE_77 - Ldebug_info_start
	.long LDIFF_SYM943
	.byte 2
	.asciz "System.Xml.Linq.XDocument:ValidateWhitespace"
	.asciz "System_Xml_Linq_XDocument_ValidateWhitespace_string"

	.byte 0,0
	.quad System_Xml_Linq_XDocument_ValidateWhitespace_string
	.quad Lme_6d

	.byte 2,118,16,3
	.asciz "s"

LDIFF_SYM944=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM944
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM945=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM945
	.byte 1,105,11
	.asciz "V_1"

LDIFF_SYM946=LDIE_CHAR - Ldebug_info_start
	.long LDIFF_SYM946
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM947=Lfde109_end - Lfde109_start
	.long LDIFF_SYM947
Lfde109_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XDocument_ValidateWhitespace_string

LDIFF_SYM948=Lme_6d - System_Xml_Linq_XDocument_ValidateWhitespace_string
	.long LDIFF_SYM948
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,151,4,152,3,68,153,2,154,1
	.align 3
Lfde109_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XDocument:Parse"
	.asciz "System_Xml_Linq_XDocument_Parse_string"

	.byte 0,0
	.quad System_Xml_Linq_XDocument_Parse_string
	.quad Lme_6e

	.byte 2,118,16,3
	.asciz "text"

LDIFF_SYM949=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM949
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM950=Lfde110_end - Lfde110_start
	.long LDIFF_SYM950
Lfde110_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XDocument_Parse_string

LDIFF_SYM951=Lme_6e - System_Xml_Linq_XDocument_Parse_string
	.long LDIFF_SYM951
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde110_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XDocument:Parse"
	.asciz "System_Xml_Linq_XDocument_Parse_string_System_Xml_Linq_LoadOptions"

	.byte 0,0
	.quad System_Xml_Linq_XDocument_Parse_string_System_Xml_Linq_LoadOptions
	.quad Lme_6f

	.byte 2,118,16,3
	.asciz "text"

LDIFF_SYM952=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM952
	.byte 2,141,16,3
	.asciz "options"

LDIFF_SYM953=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM953
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM954=Lfde111_end - Lfde111_start
	.long LDIFF_SYM954
Lfde111_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XDocument_Parse_string_System_Xml_Linq_LoadOptions

LDIFF_SYM955=Lme_6f - System_Xml_Linq_XDocument_Parse_string_System_Xml_Linq_LoadOptions
	.long LDIFF_SYM955
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde111_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XDocument:WriteTo"
	.asciz "System_Xml_Linq_XDocument_WriteTo_System_Xml_XmlWriter"

	.byte 0,0
	.quad System_Xml_Linq_XDocument_WriteTo_System_Xml_XmlWriter
	.quad Lme_70

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM956=LTDIE_74_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM956
	.byte 1,105,3
	.asciz "writer"

LDIFF_SYM957=LTDIE_36_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM957
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM958=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM958
	.byte 1,105,11
	.asciz "V_1"

LDIFF_SYM959=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM959
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM960=Lfde112_end - Lfde112_start
	.long LDIFF_SYM960
Lfde112_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XDocument_WriteTo_System_Xml_XmlWriter

LDIFF_SYM961=Lme_70 - System_Xml_Linq_XDocument_WriteTo_System_Xml_XmlWriter
	.long LDIFF_SYM961
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6,154,5
	.align 3
Lfde112_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XDocument:OnAddingObject"
	.asciz "System_Xml_Linq_XDocument_OnAddingObject_object_bool_System_Xml_Linq_XNode_bool"

	.byte 0,0
	.quad System_Xml_Linq_XDocument_OnAddingObject_object_bool_System_Xml_Linq_XNode_bool
	.quad Lme_71

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM962=LTDIE_74_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM962
	.byte 2,141,16,3
	.asciz "obj"

LDIFF_SYM963=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM963
	.byte 2,141,24,3
	.asciz "rejectAttribute"

LDIFF_SYM964=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM964
	.byte 0,3
	.asciz "refNode"

LDIFF_SYM965=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM965
	.byte 0,3
	.asciz "addFirst"

LDIFF_SYM966=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM966
	.byte 2,141,48,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM967=Lfde113_end - Lfde113_start
	.long LDIFF_SYM967
Lfde113_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XDocument_OnAddingObject_object_bool_System_Xml_Linq_XNode_bool

LDIFF_SYM968=Lme_71 - System_Xml_Linq_XDocument_OnAddingObject_object_bool_System_Xml_Linq_XNode_bool
	.long LDIFF_SYM968
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde113_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XDocument:VerifyAddedNode"
	.asciz "System_Xml_Linq_XDocument_VerifyAddedNode_object_bool"

	.byte 0,0
	.quad System_Xml_Linq_XDocument_VerifyAddedNode_object_bool
	.quad Lme_72

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM969=LTDIE_74_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM969
	.byte 1,104,3
	.asciz "node"

LDIFF_SYM970=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM970
	.byte 1,105,3
	.asciz "addFirst"

LDIFF_SYM971=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM971
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM972=Lfde114_end - Lfde114_start
	.long LDIFF_SYM972
Lfde114_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XDocument_VerifyAddedNode_object_bool

LDIFF_SYM973=Lme_72 - System_Xml_Linq_XDocument_VerifyAddedNode_object_bool
	.long LDIFF_SYM973
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,150,6,151,5,68,152,4,153,3,68,154,2
	.align 3
Lfde114_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XDocumentType:.ctor"
	.asciz "System_Xml_Linq_XDocumentType__ctor_string_string_string_string"

	.byte 0,0
	.quad System_Xml_Linq_XDocumentType__ctor_string_string_string_string
	.quad Lme_73

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM974=LTDIE_75_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM974
	.byte 1,102,3
	.asciz "name"

LDIFF_SYM975=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM975
	.byte 2,141,24,3
	.asciz "publicId"

LDIFF_SYM976=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM976
	.byte 2,141,32,3
	.asciz "systemId"

LDIFF_SYM977=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM977
	.byte 2,141,40,3
	.asciz "internalSubset"

LDIFF_SYM978=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM978
	.byte 2,141,48,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM979=Lfde115_end - Lfde115_start
	.long LDIFF_SYM979
Lfde115_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XDocumentType__ctor_string_string_string_string

LDIFF_SYM980=Lme_73 - System_Xml_Linq_XDocumentType__ctor_string_string_string_string
	.long LDIFF_SYM980
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,150,6
	.align 3
Lfde115_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XDocumentType:.ctor"
	.asciz "System_Xml_Linq_XDocumentType__ctor_System_Xml_Linq_XDocumentType"

	.byte 0,0
	.quad System_Xml_Linq_XDocumentType__ctor_System_Xml_Linq_XDocumentType
	.quad Lme_74

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM981=LTDIE_75_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM981
	.byte 1,105,3
	.asciz "other"

LDIFF_SYM982=LTDIE_75_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM982
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM983=Lfde116_end - Lfde116_start
	.long LDIFF_SYM983
Lfde116_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XDocumentType__ctor_System_Xml_Linq_XDocumentType

LDIFF_SYM984=Lme_74 - System_Xml_Linq_XDocumentType__ctor_System_Xml_Linq_XDocumentType
	.long LDIFF_SYM984
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,153,2,154,1
	.align 3
Lfde116_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XDocumentType:get_Name"
	.asciz "System_Xml_Linq_XDocumentType_get_Name"

	.byte 0,0
	.quad System_Xml_Linq_XDocumentType_get_Name
	.quad Lme_75

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM985=LTDIE_75_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM985
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM986=Lfde117_end - Lfde117_start
	.long LDIFF_SYM986
Lfde117_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XDocumentType_get_Name

LDIFF_SYM987=Lme_75 - System_Xml_Linq_XDocumentType_get_Name
	.long LDIFF_SYM987
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde117_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XDocumentType:get_PublicId"
	.asciz "System_Xml_Linq_XDocumentType_get_PublicId"

	.byte 0,0
	.quad System_Xml_Linq_XDocumentType_get_PublicId
	.quad Lme_76

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM988=LTDIE_75_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM988
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM989=Lfde118_end - Lfde118_start
	.long LDIFF_SYM989
Lfde118_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XDocumentType_get_PublicId

LDIFF_SYM990=Lme_76 - System_Xml_Linq_XDocumentType_get_PublicId
	.long LDIFF_SYM990
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde118_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XDocumentType:get_SystemId"
	.asciz "System_Xml_Linq_XDocumentType_get_SystemId"

	.byte 0,0
	.quad System_Xml_Linq_XDocumentType_get_SystemId
	.quad Lme_77

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM991=LTDIE_75_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM991
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM992=Lfde119_end - Lfde119_start
	.long LDIFF_SYM992
Lfde119_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XDocumentType_get_SystemId

LDIFF_SYM993=Lme_77 - System_Xml_Linq_XDocumentType_get_SystemId
	.long LDIFF_SYM993
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde119_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XDocumentType:get_InternalSubset"
	.asciz "System_Xml_Linq_XDocumentType_get_InternalSubset"

	.byte 0,0
	.quad System_Xml_Linq_XDocumentType_get_InternalSubset
	.quad Lme_78

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM994=LTDIE_75_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM994
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM995=Lfde120_end - Lfde120_start
	.long LDIFF_SYM995
Lfde120_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XDocumentType_get_InternalSubset

LDIFF_SYM996=Lme_78 - System_Xml_Linq_XDocumentType_get_InternalSubset
	.long LDIFF_SYM996
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde120_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XDocumentType:get_NodeType"
	.asciz "System_Xml_Linq_XDocumentType_get_NodeType"

	.byte 0,0
	.quad System_Xml_Linq_XDocumentType_get_NodeType
	.quad Lme_79

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM997=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM997
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM998=Lfde121_end - Lfde121_start
	.long LDIFF_SYM998
Lfde121_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XDocumentType_get_NodeType

LDIFF_SYM999=Lme_79 - System_Xml_Linq_XDocumentType_get_NodeType
	.long LDIFF_SYM999
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde121_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XDocumentType:WriteTo"
	.asciz "System_Xml_Linq_XDocumentType_WriteTo_System_Xml_XmlWriter"

	.byte 0,0
	.quad System_Xml_Linq_XDocumentType_WriteTo_System_Xml_XmlWriter
	.quad Lme_7a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1000=LTDIE_75_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1000
	.byte 1,105,3
	.asciz "writer"

LDIFF_SYM1001=LTDIE_36_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1001
	.byte 2,141,32,11
	.asciz "V_0"

LDIFF_SYM1002=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1002
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM1003=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1003
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1004=Lfde122_end - Lfde122_start
	.long LDIFF_SYM1004
Lfde122_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XDocumentType_WriteTo_System_Xml_XmlWriter

LDIFF_SYM1005=Lme_7a - System_Xml_Linq_XDocumentType_WriteTo_System_Xml_XmlWriter
	.long LDIFF_SYM1005
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4,153,3
	.align 3
Lfde122_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement:.ctor"
	.asciz "System_Xml_Linq_XElement__ctor_System_Xml_Linq_XName_object"

	.byte 0,0
	.quad System_Xml_Linq_XElement__ctor_System_Xml_Linq_XName_object
	.quad Lme_7b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1006=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1006
	.byte 1,104,3
	.asciz "name"

LDIFF_SYM1007=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1007
	.byte 2,141,24,3
	.asciz "content"

LDIFF_SYM1008=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1008
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1009=Lfde123_end - Lfde123_start
	.long LDIFF_SYM1009
Lfde123_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement__ctor_System_Xml_Linq_XName_object

LDIFF_SYM1010=Lme_7b - System_Xml_Linq_XElement__ctor_System_Xml_Linq_XName_object
	.long LDIFF_SYM1010
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4
	.align 3
Lfde123_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement:.ctor"
	.asciz "System_Xml_Linq_XElement__ctor_System_Xml_Linq_XElement"

	.byte 0,0
	.quad System_Xml_Linq_XElement__ctor_System_Xml_Linq_XElement
	.quad Lme_7c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1011=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1011
	.byte 1,105,3
	.asciz "other"

LDIFF_SYM1012=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1012
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1013=Lfde124_end - Lfde124_start
	.long LDIFF_SYM1013
Lfde124_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement__ctor_System_Xml_Linq_XElement

LDIFF_SYM1014=Lme_7c - System_Xml_Linq_XElement__ctor_System_Xml_Linq_XElement
	.long LDIFF_SYM1014
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,153,2,154,1
	.align 3
Lfde124_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement:.ctor"
	.asciz "System_Xml_Linq_XElement__ctor_System_Xml_Linq_XName"

	.byte 0,0
	.quad System_Xml_Linq_XElement__ctor_System_Xml_Linq_XName
	.quad Lme_7d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1015=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1015
	.byte 2,141,16,3
	.asciz "name"

LDIFF_SYM1016=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1016
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1017=Lfde125_end - Lfde125_start
	.long LDIFF_SYM1017
Lfde125_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement__ctor_System_Xml_Linq_XName

LDIFF_SYM1018=Lme_7d - System_Xml_Linq_XElement__ctor_System_Xml_Linq_XName
	.long LDIFF_SYM1018
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde125_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_80:

	.byte 5
	.asciz "System_Xml_XmlImplementation"

	.byte 24,16
LDIFF_SYM1019=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM1019
	.byte 2,35,0,6
	.asciz "InternalNameTable"

LDIFF_SYM1020=LTDIE_56_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1020
	.byte 2,35,16,0,7
	.asciz "System_Xml_XmlImplementation"

LDIFF_SYM1021=LTDIE_80 - Ldebug_info_start
	.long LDIFF_SYM1021
LTDIE_80_POINTER:

	.byte 13
LDIFF_SYM1022=LTDIE_80 - Ldebug_info_start
	.long LDIFF_SYM1022
LTDIE_80_REFERENCE:

	.byte 14
LDIFF_SYM1023=LTDIE_80 - Ldebug_info_start
	.long LDIFF_SYM1023
LTDIE_82:

	.byte 5
	.asciz "System_Xml_XmlNameEntry"

	.byte 56,16
LDIFF_SYM1024=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM1024
	.byte 2,35,0,6
	.asciz "Prefix"

LDIFF_SYM1025=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1025
	.byte 2,35,16,6
	.asciz "LocalName"

LDIFF_SYM1026=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1026
	.byte 2,35,24,6
	.asciz "NS"

LDIFF_SYM1027=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1027
	.byte 2,35,32,6
	.asciz "Hash"

LDIFF_SYM1028=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1028
	.byte 2,35,48,6
	.asciz "prefixed_name_cache"

LDIFF_SYM1029=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1029
	.byte 2,35,40,0,7
	.asciz "System_Xml_XmlNameEntry"

LDIFF_SYM1030=LTDIE_82 - Ldebug_info_start
	.long LDIFF_SYM1030
LTDIE_82_POINTER:

	.byte 13
LDIFF_SYM1031=LTDIE_82 - Ldebug_info_start
	.long LDIFF_SYM1031
LTDIE_82_REFERENCE:

	.byte 14
LDIFF_SYM1032=LTDIE_82 - Ldebug_info_start
	.long LDIFF_SYM1032
LTDIE_81:

	.byte 5
	.asciz "System_Xml_XmlNameEntryCache"

	.byte 48,16
LDIFF_SYM1033=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM1033
	.byte 2,35,0,6
	.asciz "table"

LDIFF_SYM1034=LTDIE_66_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1034
	.byte 2,35,16,6
	.asciz "nameTable"

LDIFF_SYM1035=LTDIE_56_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1035
	.byte 2,35,24,6
	.asciz "dummy"

LDIFF_SYM1036=LTDIE_82_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1036
	.byte 2,35,32,6
	.asciz "cacheBuffer"

LDIFF_SYM1037=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1037
	.byte 2,35,40,0,7
	.asciz "System_Xml_XmlNameEntryCache"

LDIFF_SYM1038=LTDIE_81 - Ldebug_info_start
	.long LDIFF_SYM1038
LTDIE_81_POINTER:

	.byte 13
LDIFF_SYM1039=LTDIE_81 - Ldebug_info_start
	.long LDIFF_SYM1039
LTDIE_81_REFERENCE:

	.byte 14
LDIFF_SYM1040=LTDIE_81 - Ldebug_info_start
	.long LDIFF_SYM1040
LTDIE_83:

	.byte 5
	.asciz "System_Xml_XmlLinkedNode"

	.byte 48,16
LDIFF_SYM1041=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM1041
	.byte 2,35,0,6
	.asciz "nextSibling"

LDIFF_SYM1042=LTDIE_83_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1042
	.byte 2,35,40,0,7
	.asciz "System_Xml_XmlLinkedNode"

LDIFF_SYM1043=LTDIE_83 - Ldebug_info_start
	.long LDIFF_SYM1043
LTDIE_83_POINTER:

	.byte 13
LDIFF_SYM1044=LTDIE_83 - Ldebug_info_start
	.long LDIFF_SYM1044
LTDIE_83_REFERENCE:

	.byte 14
LDIFF_SYM1045=LTDIE_83 - Ldebug_info_start
	.long LDIFF_SYM1045
LTDIE_84:

	.byte 17
	.asciz "System_Xml_Schema_IXmlSchemaInfo"

	.byte 16,7
	.asciz "System_Xml_Schema_IXmlSchemaInfo"

LDIFF_SYM1046=LTDIE_84 - Ldebug_info_start
	.long LDIFF_SYM1046
LTDIE_84_POINTER:

	.byte 13
LDIFF_SYM1047=LTDIE_84 - Ldebug_info_start
	.long LDIFF_SYM1047
LTDIE_84_REFERENCE:

	.byte 14
LDIFF_SYM1048=LTDIE_84 - Ldebug_info_start
	.long LDIFF_SYM1048
LTDIE_85:

	.byte 5
	.asciz "System_Xml_XmlNodeChangedEventHandler"

	.byte 104,16
LDIFF_SYM1049=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM1049
	.byte 2,35,0,0,7
	.asciz "System_Xml_XmlNodeChangedEventHandler"

LDIFF_SYM1050=LTDIE_85 - Ldebug_info_start
	.long LDIFF_SYM1050
LTDIE_85_POINTER:

	.byte 13
LDIFF_SYM1051=LTDIE_85 - Ldebug_info_start
	.long LDIFF_SYM1051
LTDIE_85_REFERENCE:

	.byte 14
LDIFF_SYM1052=LTDIE_85 - Ldebug_info_start
	.long LDIFF_SYM1052
LTDIE_79:

	.byte 5
	.asciz "System_Xml_XmlDocument"

	.byte 160,1,16
LDIFF_SYM1053=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM1053
	.byte 2,35,0,6
	.asciz "optimal_create_element"

LDIFF_SYM1054=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1054
	.byte 3,35,152,1,6
	.asciz "optimal_create_attribute"

LDIFF_SYM1055=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1055
	.byte 3,35,153,1,6
	.asciz "nameTable"

LDIFF_SYM1056=LTDIE_56_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1056
	.byte 2,35,40,6
	.asciz "baseURI"

LDIFF_SYM1057=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1057
	.byte 2,35,48,6
	.asciz "implementation"

LDIFF_SYM1058=LTDIE_80_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1058
	.byte 2,35,56,6
	.asciz "preserveWhitespace"

LDIFF_SYM1059=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1059
	.byte 3,35,154,1,6
	.asciz "resolver"

LDIFF_SYM1060=LTDIE_58_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1060
	.byte 2,35,64,6
	.asciz "idTable"

LDIFF_SYM1061=LTDIE_66_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1061
	.byte 2,35,72,6
	.asciz "nameCache"

LDIFF_SYM1062=LTDIE_81_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1062
	.byte 2,35,80,6
	.asciz "lastLinkedChild"

LDIFF_SYM1063=LTDIE_83_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1063
	.byte 2,35,88,6
	.asciz "schemaInfo"

LDIFF_SYM1064=LTDIE_84_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1064
	.byte 2,35,96,6
	.asciz "loadMode"

LDIFF_SYM1065=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1065
	.byte 3,35,155,1,6
	.asciz "NodeChanged"

LDIFF_SYM1066=LTDIE_85_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1066
	.byte 2,35,104,6
	.asciz "NodeChanging"

LDIFF_SYM1067=LTDIE_85_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1067
	.byte 2,35,112,6
	.asciz "NodeInserted"

LDIFF_SYM1068=LTDIE_85_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1068
	.byte 2,35,120,6
	.asciz "NodeInserting"

LDIFF_SYM1069=LTDIE_85_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1069
	.byte 3,35,128,1,6
	.asciz "NodeRemoved"

LDIFF_SYM1070=LTDIE_85_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1070
	.byte 3,35,136,1,6
	.asciz "NodeRemoving"

LDIFF_SYM1071=LTDIE_85_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1071
	.byte 3,35,144,1,0,7
	.asciz "System_Xml_XmlDocument"

LDIFF_SYM1072=LTDIE_79 - Ldebug_info_start
	.long LDIFF_SYM1072
LTDIE_79_POINTER:

	.byte 13
LDIFF_SYM1073=LTDIE_79 - Ldebug_info_start
	.long LDIFF_SYM1073
LTDIE_79_REFERENCE:

	.byte 14
LDIFF_SYM1074=LTDIE_79 - Ldebug_info_start
	.long LDIFF_SYM1074
LTDIE_87:

	.byte 5
	.asciz "System_Xml_XmlNodeList"

	.byte 16,16
LDIFF_SYM1075=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM1075
	.byte 2,35,0,0,7
	.asciz "System_Xml_XmlNodeList"

LDIFF_SYM1076=LTDIE_87 - Ldebug_info_start
	.long LDIFF_SYM1076
LTDIE_87_POINTER:

	.byte 13
LDIFF_SYM1077=LTDIE_87 - Ldebug_info_start
	.long LDIFF_SYM1077
LTDIE_87_REFERENCE:

	.byte 14
LDIFF_SYM1078=LTDIE_87 - Ldebug_info_start
	.long LDIFF_SYM1078
LTDIE_88:

	.byte 17
	.asciz "System_Xml_IHasXmlChildNode"

	.byte 16,7
	.asciz "System_Xml_IHasXmlChildNode"

LDIFF_SYM1079=LTDIE_88 - Ldebug_info_start
	.long LDIFF_SYM1079
LTDIE_88_POINTER:

	.byte 13
LDIFF_SYM1080=LTDIE_88 - Ldebug_info_start
	.long LDIFF_SYM1080
LTDIE_88_REFERENCE:

	.byte 14
LDIFF_SYM1081=LTDIE_88 - Ldebug_info_start
	.long LDIFF_SYM1081
LTDIE_86:

	.byte 5
	.asciz "System_Xml_XmlNodeListChildren"

	.byte 24,16
LDIFF_SYM1082=LTDIE_87 - Ldebug_info_start
	.long LDIFF_SYM1082
	.byte 2,35,0,6
	.asciz "parent"

LDIFF_SYM1083=LTDIE_88_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1083
	.byte 2,35,16,0,7
	.asciz "System_Xml_XmlNodeListChildren"

LDIFF_SYM1084=LTDIE_86 - Ldebug_info_start
	.long LDIFF_SYM1084
LTDIE_86_POINTER:

	.byte 13
LDIFF_SYM1085=LTDIE_86 - Ldebug_info_start
	.long LDIFF_SYM1085
LTDIE_86_REFERENCE:

	.byte 14
LDIFF_SYM1086=LTDIE_86 - Ldebug_info_start
	.long LDIFF_SYM1086
LTDIE_78:

	.byte 5
	.asciz "System_Xml_XmlNode"

	.byte 40,16
LDIFF_SYM1087=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM1087
	.byte 2,35,0,6
	.asciz "ownerDocument"

LDIFF_SYM1088=LTDIE_79_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1088
	.byte 2,35,16,6
	.asciz "parentNode"

LDIFF_SYM1089=LTDIE_78_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1089
	.byte 2,35,24,6
	.asciz "childNodes"

LDIFF_SYM1090=LTDIE_86_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1090
	.byte 2,35,32,0,7
	.asciz "System_Xml_XmlNode"

LDIFF_SYM1091=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM1091
LTDIE_78_POINTER:

	.byte 13
LDIFF_SYM1092=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM1092
LTDIE_78_REFERENCE:

	.byte 14
LDIFF_SYM1093=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM1093
	.byte 2
	.asciz "System.Xml.Linq.XElement:ConvertForAssignment"
	.asciz "System_Xml_Linq_XElement_ConvertForAssignment_object"

	.byte 0,0
	.quad System_Xml_Linq_XElement_ConvertForAssignment_object
	.quad Lme_7e

	.byte 2,118,16,3
	.asciz "value"

LDIFF_SYM1094=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1094
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1095=LTDIE_78_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1095
	.byte 1,105,11
	.asciz "V_1"

LDIFF_SYM1096=LTDIE_79_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1096
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1097=Lfde126_end - Lfde126_start
	.long LDIFF_SYM1097
Lfde126_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_ConvertForAssignment_object

LDIFF_SYM1098=Lme_7e - System_Xml_Linq_XElement_ConvertForAssignment_object
	.long LDIFF_SYM1098
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6,153,5,68,154,4
	.align 3
Lfde126_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement:get_FirstAttribute"
	.asciz "System_Xml_Linq_XElement_get_FirstAttribute"

	.byte 0,0
	.quad System_Xml_Linq_XElement_get_FirstAttribute
	.quad Lme_7f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1099=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1099
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1100=Lfde127_end - Lfde127_start
	.long LDIFF_SYM1100
Lfde127_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_get_FirstAttribute

LDIFF_SYM1101=Lme_7f - System_Xml_Linq_XElement_get_FirstAttribute
	.long LDIFF_SYM1101
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde127_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement:set_FirstAttribute"
	.asciz "System_Xml_Linq_XElement_set_FirstAttribute_System_Xml_Linq_XAttribute"

	.byte 0,0
	.quad System_Xml_Linq_XElement_set_FirstAttribute_System_Xml_Linq_XAttribute
	.quad Lme_80

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1102=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1102
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM1103=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1103
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1104=Lfde128_end - Lfde128_start
	.long LDIFF_SYM1104
Lfde128_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_set_FirstAttribute_System_Xml_Linq_XAttribute

LDIFF_SYM1105=Lme_80 - System_Xml_Linq_XElement_set_FirstAttribute_System_Xml_Linq_XAttribute
	.long LDIFF_SYM1105
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde128_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement:get_LastAttribute"
	.asciz "System_Xml_Linq_XElement_get_LastAttribute"

	.byte 0,0
	.quad System_Xml_Linq_XElement_get_LastAttribute
	.quad Lme_81

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1106=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1106
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1107=Lfde129_end - Lfde129_start
	.long LDIFF_SYM1107
Lfde129_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_get_LastAttribute

LDIFF_SYM1108=Lme_81 - System_Xml_Linq_XElement_get_LastAttribute
	.long LDIFF_SYM1108
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde129_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement:set_LastAttribute"
	.asciz "System_Xml_Linq_XElement_set_LastAttribute_System_Xml_Linq_XAttribute"

	.byte 0,0
	.quad System_Xml_Linq_XElement_set_LastAttribute_System_Xml_Linq_XAttribute
	.quad Lme_82

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1109=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1109
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM1110=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1110
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1111=Lfde130_end - Lfde130_start
	.long LDIFF_SYM1111
Lfde130_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_set_LastAttribute_System_Xml_Linq_XAttribute

LDIFF_SYM1112=Lme_82 - System_Xml_Linq_XElement_set_LastAttribute_System_Xml_Linq_XAttribute
	.long LDIFF_SYM1112
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde130_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement:get_HasAttributes"
	.asciz "System_Xml_Linq_XElement_get_HasAttributes"

	.byte 0,0
	.quad System_Xml_Linq_XElement_get_HasAttributes
	.quad Lme_83

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1113=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1113
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1114=Lfde131_end - Lfde131_start
	.long LDIFF_SYM1114
Lfde131_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_get_HasAttributes

LDIFF_SYM1115=Lme_83 - System_Xml_Linq_XElement_get_HasAttributes
	.long LDIFF_SYM1115
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde131_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement:get_HasElements"
	.asciz "System_Xml_Linq_XElement_get_HasElements"

	.byte 0,0
	.quad System_Xml_Linq_XElement_get_HasElements
	.quad Lme_84

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1116=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1116
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1117=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1117
	.byte 1,106,11
	.asciz "V_1"

LDIFF_SYM1118=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1118
	.byte 2,141,32,11
	.asciz "V_2"

LDIFF_SYM1119=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1119
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1120=Lfde132_end - Lfde132_start
	.long LDIFF_SYM1120
Lfde132_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_get_HasElements

LDIFF_SYM1121=Lme_84 - System_Xml_Linq_XElement_get_HasElements
	.long LDIFF_SYM1121
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6,154,5
	.align 3
Lfde132_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement:get_IsEmpty"
	.asciz "System_Xml_Linq_XElement_get_IsEmpty"

	.byte 0,0
	.quad System_Xml_Linq_XElement_get_IsEmpty
	.quad Lme_85

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1122=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1122
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1123=Lfde133_end - Lfde133_start
	.long LDIFF_SYM1123
Lfde133_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_get_IsEmpty

LDIFF_SYM1124=Lme_85 - System_Xml_Linq_XElement_get_IsEmpty
	.long LDIFF_SYM1124
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.align 3
Lfde133_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement:get_Name"
	.asciz "System_Xml_Linq_XElement_get_Name"

	.byte 0,0
	.quad System_Xml_Linq_XElement_get_Name
	.quad Lme_86

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1125=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1125
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1126=Lfde134_end - Lfde134_start
	.long LDIFF_SYM1126
Lfde134_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_get_Name

LDIFF_SYM1127=Lme_86 - System_Xml_Linq_XElement_get_Name
	.long LDIFF_SYM1127
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde134_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement:set_Name"
	.asciz "System_Xml_Linq_XElement_set_Name_System_Xml_Linq_XName"

	.byte 0,0
	.quad System_Xml_Linq_XElement_set_Name_System_Xml_Linq_XName
	.quad Lme_87

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1128=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1128
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM1129=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1129
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1130=Lfde135_end - Lfde135_start
	.long LDIFF_SYM1130
Lfde135_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_set_Name_System_Xml_Linq_XName

LDIFF_SYM1131=Lme_87 - System_Xml_Linq_XElement_set_Name_System_Xml_Linq_XName
	.long LDIFF_SYM1131
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,153,2
	.align 3
Lfde135_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement:get_NodeType"
	.asciz "System_Xml_Linq_XElement_get_NodeType"

	.byte 0,0
	.quad System_Xml_Linq_XElement_get_NodeType
	.quad Lme_88

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1132=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1132
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1133=Lfde136_end - Lfde136_start
	.long LDIFF_SYM1133
Lfde136_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_get_NodeType

LDIFF_SYM1134=Lme_88 - System_Xml_Linq_XElement_get_NodeType
	.long LDIFF_SYM1134
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde136_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement:get_Value"
	.asciz "System_Xml_Linq_XElement_get_Value"

	.byte 0,0
	.quad System_Xml_Linq_XElement_get_Value
	.quad Lme_89

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1135=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1135
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1136=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1136
	.byte 1,105,11
	.asciz "V_1"

LDIFF_SYM1137=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1137
	.byte 1,106,11
	.asciz "V_2"

LDIFF_SYM1138=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1138
	.byte 2,141,48,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1139=Lfde137_end - Lfde137_start
	.long LDIFF_SYM1139
Lfde137_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_get_Value

LDIFF_SYM1140=Lme_89 - System_Xml_Linq_XElement_get_Value
	.long LDIFF_SYM1140
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,151,10,152,9,68,153,8,154,7
	.align 3
Lfde137_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement:set_Value"
	.asciz "System_Xml_Linq_XElement_set_Value_string"

	.byte 0,0
	.quad System_Xml_Linq_XElement_set_Value_string
	.quad Lme_8a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1141=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1141
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM1142=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1142
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1143=Lfde138_end - Lfde138_start
	.long LDIFF_SYM1143
Lfde138_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_set_Value_string

LDIFF_SYM1144=Lme_8a - System_Xml_Linq_XElement_set_Value_string
	.long LDIFF_SYM1144
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde138_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement:Attribute"
	.asciz "System_Xml_Linq_XElement_Attribute_System_Xml_Linq_XName"

	.byte 0,0
	.quad System_Xml_Linq_XElement_Attribute_System_Xml_Linq_XName
	.quad Lme_8b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1145=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1145
	.byte 2,141,32,3
	.asciz "name"

LDIFF_SYM1146=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1146
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1147=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1147
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM1148=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1148
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1149=Lfde139_end - Lfde139_start
	.long LDIFF_SYM1149
Lfde139_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_Attribute_System_Xml_Linq_XName

LDIFF_SYM1150=Lme_8b - System_Xml_Linq_XElement_Attribute_System_Xml_Linq_XName
	.long LDIFF_SYM1150
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4,68,154,3
	.align 3
Lfde139_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_89:

	.byte 5
	.asciz "_<Attributes>c__Iterator0"

	.byte 56,16
LDIFF_SYM1151=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM1151
	.byte 2,35,0,6
	.asciz "<a>__0"

LDIFF_SYM1152=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1152
	.byte 2,35,16,6
	.asciz "<next>__1"

LDIFF_SYM1153=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1153
	.byte 2,35,24,6
	.asciz "$this"

LDIFF_SYM1154=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1154
	.byte 2,35,32,6
	.asciz "$current"

LDIFF_SYM1155=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1155
	.byte 2,35,40,6
	.asciz "$disposing"

LDIFF_SYM1156=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1156
	.byte 2,35,48,6
	.asciz "$PC"

LDIFF_SYM1157=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1157
	.byte 2,35,52,0,7
	.asciz "_<Attributes>c__Iterator0"

LDIFF_SYM1158=LTDIE_89 - Ldebug_info_start
	.long LDIFF_SYM1158
LTDIE_89_POINTER:

	.byte 13
LDIFF_SYM1159=LTDIE_89 - Ldebug_info_start
	.long LDIFF_SYM1159
LTDIE_89_REFERENCE:

	.byte 14
LDIFF_SYM1160=LTDIE_89 - Ldebug_info_start
	.long LDIFF_SYM1160
	.byte 2
	.asciz "System.Xml.Linq.XElement:Attributes"
	.asciz "System_Xml_Linq_XElement_Attributes"

	.byte 0,0
	.quad System_Xml_Linq_XElement_Attributes
	.quad Lme_8c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1161=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1161
	.byte 2,141,16,11
	.asciz "V_0"

LDIFF_SYM1162=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1162
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1163=Lfde140_end - Lfde140_start
	.long LDIFF_SYM1163
Lfde140_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_Attributes

LDIFF_SYM1164=Lme_8c - System_Xml_Linq_XElement_Attributes
	.long LDIFF_SYM1164
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde140_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement:DefineDefaultSettings"
	.asciz "System_Xml_Linq_XElement_DefineDefaultSettings_System_Xml_XmlReaderSettings_System_Xml_Linq_LoadOptions"

	.byte 0,0
	.quad System_Xml_Linq_XElement_DefineDefaultSettings_System_Xml_XmlReaderSettings_System_Xml_Linq_LoadOptions
	.quad Lme_8d

	.byte 2,118,16,3
	.asciz "settings"

LDIFF_SYM1165=LTDIE_55_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1165
	.byte 1,105,3
	.asciz "options"

LDIFF_SYM1166=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM1166
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1167=Lfde141_end - Lfde141_start
	.long LDIFF_SYM1167
Lfde141_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_DefineDefaultSettings_System_Xml_XmlReaderSettings_System_Xml_Linq_LoadOptions

LDIFF_SYM1168=Lme_8d - System_Xml_Linq_XElement_DefineDefaultSettings_System_Xml_XmlReaderSettings_System_Xml_Linq_LoadOptions
	.long LDIFF_SYM1168
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,153,2
	.align 3
Lfde141_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement:CreateDefaultSettings"
	.asciz "System_Xml_Linq_XElement_CreateDefaultSettings_System_Xml_Linq_LoadOptions"

	.byte 0,0
	.quad System_Xml_Linq_XElement_CreateDefaultSettings_System_Xml_Linq_LoadOptions
	.quad Lme_8e

	.byte 2,118,16,3
	.asciz "options"

LDIFF_SYM1169=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM1169
	.byte 2,141,16,11
	.asciz "V_0"

LDIFF_SYM1170=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1170
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1171=Lfde142_end - Lfde142_start
	.long LDIFF_SYM1171
Lfde142_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_CreateDefaultSettings_System_Xml_Linq_LoadOptions

LDIFF_SYM1172=Lme_8e - System_Xml_Linq_XElement_CreateDefaultSettings_System_Xml_Linq_LoadOptions
	.long LDIFF_SYM1172
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde142_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement:Load"
	.asciz "System_Xml_Linq_XElement_Load_System_IO_TextReader_System_Xml_Linq_LoadOptions"

	.byte 0,0
	.quad System_Xml_Linq_XElement_Load_System_IO_TextReader_System_Xml_Linq_LoadOptions
	.quad Lme_8f

	.byte 2,118,16,3
	.asciz "textReader"

LDIFF_SYM1173=LTDIE_76_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1173
	.byte 2,141,24,3
	.asciz "options"

LDIFF_SYM1174=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM1174
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1175=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1175
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM1176=LTDIE_52_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1176
	.byte 2,141,32,11
	.asciz "V_2"

LDIFF_SYM1177=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1177
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1178=Lfde143_end - Lfde143_start
	.long LDIFF_SYM1178
Lfde143_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_Load_System_IO_TextReader_System_Xml_Linq_LoadOptions

LDIFF_SYM1179=Lme_8f - System_Xml_Linq_XElement_Load_System_IO_TextReader_System_Xml_Linq_LoadOptions
	.long LDIFF_SYM1179
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde143_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement:LoadCore"
	.asciz "System_Xml_Linq_XElement_LoadCore_System_Xml_XmlReader_System_Xml_Linq_LoadOptions"

	.byte 0,0
	.quad System_Xml_Linq_XElement_LoadCore_System_Xml_XmlReader_System_Xml_Linq_LoadOptions
	.quad Lme_90

	.byte 2,118,16,3
	.asciz "r"

LDIFF_SYM1180=LTDIE_52_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1180
	.byte 1,105,3
	.asciz "options"

LDIFF_SYM1181=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM1181
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1182=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1182
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM1183=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1183
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1184=Lfde144_end - Lfde144_start
	.long LDIFF_SYM1184
Lfde144_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_LoadCore_System_Xml_XmlReader_System_Xml_Linq_LoadOptions

LDIFF_SYM1185=Lme_90 - System_Xml_Linq_XElement_LoadCore_System_Xml_XmlReader_System_Xml_Linq_LoadOptions
	.long LDIFF_SYM1185
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,152,8,153,7,68,154,6
	.align 3
Lfde144_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement:Parse"
	.asciz "System_Xml_Linq_XElement_Parse_string"

	.byte 0,0
	.quad System_Xml_Linq_XElement_Parse_string
	.quad Lme_91

	.byte 2,118,16,3
	.asciz "text"

LDIFF_SYM1186=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1186
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1187=Lfde145_end - Lfde145_start
	.long LDIFF_SYM1187
Lfde145_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_Parse_string

LDIFF_SYM1188=Lme_91 - System_Xml_Linq_XElement_Parse_string
	.long LDIFF_SYM1188
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde145_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement:Parse"
	.asciz "System_Xml_Linq_XElement_Parse_string_System_Xml_Linq_LoadOptions"

	.byte 0,0
	.quad System_Xml_Linq_XElement_Parse_string_System_Xml_Linq_LoadOptions
	.quad Lme_92

	.byte 2,118,16,3
	.asciz "text"

LDIFF_SYM1189=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1189
	.byte 2,141,16,3
	.asciz "options"

LDIFF_SYM1190=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM1190
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1191=Lfde146_end - Lfde146_start
	.long LDIFF_SYM1191
Lfde146_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_Parse_string_System_Xml_Linq_LoadOptions

LDIFF_SYM1192=Lme_92 - System_Xml_Linq_XElement_Parse_string_System_Xml_Linq_LoadOptions
	.long LDIFF_SYM1192
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde146_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement:RemoveAttributes"
	.asciz "System_Xml_Linq_XElement_RemoveAttributes"

	.byte 0,0
	.quad System_Xml_Linq_XElement_RemoveAttributes
	.quad Lme_93

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1193=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1193
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1194=Lfde147_end - Lfde147_start
	.long LDIFF_SYM1194
Lfde147_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_RemoveAttributes

LDIFF_SYM1195=Lme_93 - System_Xml_Linq_XElement_RemoveAttributes
	.long LDIFF_SYM1195
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.align 3
Lfde147_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement:Save"
	.asciz "System_Xml_Linq_XElement_Save_System_Xml_XmlWriter"

	.byte 0,0
	.quad System_Xml_Linq_XElement_Save_System_Xml_XmlWriter
	.quad Lme_94

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1196=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1196
	.byte 2,141,16,3
	.asciz "writer"

LDIFF_SYM1197=LTDIE_36_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1197
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1198=Lfde148_end - Lfde148_start
	.long LDIFF_SYM1198
Lfde148_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_Save_System_Xml_XmlWriter

LDIFF_SYM1199=Lme_94 - System_Xml_Linq_XElement_Save_System_Xml_XmlWriter
	.long LDIFF_SYM1199
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde148_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_90:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM1200=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM1200
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM1201=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1201
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM1202=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1202
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM1203=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1203
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM1204=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1204
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM1205=LTDIE_90 - Ldebug_info_start
	.long LDIFF_SYM1205
LTDIE_90_POINTER:

	.byte 13
LDIFF_SYM1206=LTDIE_90 - Ldebug_info_start
	.long LDIFF_SYM1206
LTDIE_90_REFERENCE:

	.byte 14
LDIFF_SYM1207=LTDIE_90 - Ldebug_info_start
	.long LDIFF_SYM1207
	.byte 2
	.asciz "System.Xml.Linq.XElement:DescendantsAndSelf"
	.asciz "System_Xml_Linq_XElement_DescendantsAndSelf"

	.byte 0,0
	.quad System_Xml_Linq_XElement_DescendantsAndSelf
	.quad Lme_95

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1208=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1208
	.byte 2,141,16,11
	.asciz "V_0"

LDIFF_SYM1209=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1209
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1210=Lfde149_end - Lfde149_start
	.long LDIFF_SYM1210
Lfde149_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_DescendantsAndSelf

LDIFF_SYM1211=Lme_95 - System_Xml_Linq_XElement_DescendantsAndSelf
	.long LDIFF_SYM1211
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde149_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement:SetAttributeValue"
	.asciz "System_Xml_Linq_XElement_SetAttributeValue_System_Xml_Linq_XName_object"

	.byte 0,0
	.quad System_Xml_Linq_XElement_SetAttributeValue_System_Xml_Linq_XName_object
	.quad Lme_96

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1212=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1212
	.byte 2,141,24,3
	.asciz "name"

LDIFF_SYM1213=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1213
	.byte 2,141,32,3
	.asciz "value"

LDIFF_SYM1214=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1214
	.byte 2,141,40,11
	.asciz "V_0"

LDIFF_SYM1215=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1215
	.byte 1,103,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1216=Lfde150_end - Lfde150_start
	.long LDIFF_SYM1216
Lfde150_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_SetAttributeValue_System_Xml_Linq_XName_object

LDIFF_SYM1217=Lme_96 - System_Xml_Linq_XElement_SetAttributeValue_System_Xml_Linq_XName_object
	.long LDIFF_SYM1217
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,151,6
	.align 3
Lfde150_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement:SetAttributeObject"
	.asciz "System_Xml_Linq_XElement_SetAttributeObject_System_Xml_Linq_XAttribute"

	.byte 0,0
	.quad System_Xml_Linq_XElement_SetAttributeObject_System_Xml_Linq_XAttribute
	.quad Lme_97

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1218=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1218
	.byte 1,105,3
	.asciz "a"

LDIFF_SYM1219=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1219
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1220=Lfde151_end - Lfde151_start
	.long LDIFF_SYM1220
Lfde151_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_SetAttributeObject_System_Xml_Linq_XAttribute

LDIFF_SYM1221=Lme_97 - System_Xml_Linq_XElement_SetAttributeObject_System_Xml_Linq_XAttribute
	.long LDIFF_SYM1221
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4,153,3,68,154,2
	.align 3
Lfde151_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_91:

	.byte 17
	.asciz "System_Collections_Generic_IEnumerator`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEnumerator`1"

LDIFF_SYM1222=LTDIE_91 - Ldebug_info_start
	.long LDIFF_SYM1222
LTDIE_91_POINTER:

	.byte 13
LDIFF_SYM1223=LTDIE_91 - Ldebug_info_start
	.long LDIFF_SYM1223
LTDIE_91_REFERENCE:

	.byte 14
LDIFF_SYM1224=LTDIE_91 - Ldebug_info_start
	.long LDIFF_SYM1224
	.byte 2
	.asciz "System.Xml.Linq.XElement:LookupPrefix"
	.asciz "System_Xml_Linq_XElement_LookupPrefix_string_System_Xml_XmlWriter"

	.byte 0,0
	.quad System_Xml_Linq_XElement_LookupPrefix_string_System_Xml_XmlWriter
	.quad Lme_98

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1225=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1225
	.byte 1,104,3
	.asciz "ns"

LDIFF_SYM1226=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1226
	.byte 1,105,3
	.asciz "w"

LDIFF_SYM1227=LTDIE_36_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1227
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1228=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1228
	.byte 1,106,11
	.asciz "V_1"

LDIFF_SYM1229=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1229
	.byte 1,104,11
	.asciz "V_2"

LDIFF_SYM1230=LTDIE_91_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1230
	.byte 2,141,48,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1231=Lfde152_end - Lfde152_start
	.long LDIFF_SYM1231
Lfde152_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_LookupPrefix_string_System_Xml_XmlWriter

LDIFF_SYM1232=Lme_98 - System_Xml_Linq_XElement_LookupPrefix_string_System_Xml_XmlWriter
	.long LDIFF_SYM1232
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,151,10,152,9,68,153,8,154,7
	.align 3
Lfde152_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_92:

	.byte 17
	.asciz "System_Collections_Generic_IEnumerable`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEnumerable`1"

LDIFF_SYM1233=LTDIE_92 - Ldebug_info_start
	.long LDIFF_SYM1233
LTDIE_92_POINTER:

	.byte 13
LDIFF_SYM1234=LTDIE_92 - Ldebug_info_start
	.long LDIFF_SYM1234
LTDIE_92_REFERENCE:

	.byte 14
LDIFF_SYM1235=LTDIE_92 - Ldebug_info_start
	.long LDIFF_SYM1235
LTDIE_93:

	.byte 5
	.asciz "_<CreateDummyNamespace>c__AnonStorey4"

	.byte 24,16
LDIFF_SYM1236=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM1236
	.byte 2,35,0,6
	.asciz "p"

LDIFF_SYM1237=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1237
	.byte 2,35,16,0,7
	.asciz "_<CreateDummyNamespace>c__AnonStorey4"

LDIFF_SYM1238=LTDIE_93 - Ldebug_info_start
	.long LDIFF_SYM1238
LTDIE_93_POINTER:

	.byte 13
LDIFF_SYM1239=LTDIE_93 - Ldebug_info_start
	.long LDIFF_SYM1239
LTDIE_93_REFERENCE:

	.byte 14
LDIFF_SYM1240=LTDIE_93 - Ldebug_info_start
	.long LDIFF_SYM1240
	.byte 2
	.asciz "System.Xml.Linq.XElement:CreateDummyNamespace"
	.asciz "System_Xml_Linq_XElement_CreateDummyNamespace_int__System_Collections_Generic_IEnumerable_1_System_Xml_Linq_XAttribute_bool"

	.byte 0,0
	.quad System_Xml_Linq_XElement_CreateDummyNamespace_int__System_Collections_Generic_IEnumerable_1_System_Xml_Linq_XAttribute_bool
	.quad Lme_99

	.byte 2,118,16,3
	.asciz "createdNS"

LDIFF_SYM1241=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1241
	.byte 2,141,32,3
	.asciz "atts"

LDIFF_SYM1242=LTDIE_92_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1242
	.byte 2,141,40,3
	.asciz "isAttr"

LDIFF_SYM1243=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1243
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1244=LTDIE_93_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1244
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM1245=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1245
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1246=Lfde153_end - Lfde153_start
	.long LDIFF_SYM1246
Lfde153_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_CreateDummyNamespace_int__System_Collections_Generic_IEnumerable_1_System_Xml_Linq_XAttribute_bool

LDIFF_SYM1247=Lme_99 - System_Xml_Linq_XElement_CreateDummyNamespace_int__System_Collections_Generic_IEnumerable_1_System_Xml_Linq_XAttribute_bool
	.long LDIFF_SYM1247
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,151,6,68,154,5
	.align 3
Lfde153_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement:WriteTo"
	.asciz "System_Xml_Linq_XElement_WriteTo_System_Xml_XmlWriter"

	.byte 0,0
	.quad System_Xml_Linq_XElement_WriteTo_System_Xml_XmlWriter
	.quad Lme_9a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1248=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1248
	.byte 1,105,3
	.asciz "writer"

LDIFF_SYM1249=LTDIE_36_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1249
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1250=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1250
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM1251=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1251
	.byte 2,141,48,11
	.asciz "V_2"

LDIFF_SYM1252=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1252
	.byte 1,104,11
	.asciz "V_3"

LDIFF_SYM1253=LTDIE_91_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1253
	.byte 2,141,56,11
	.asciz "V_4"

LDIFF_SYM1254=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1254
	.byte 1,103,11
	.asciz "V_5"

LDIFF_SYM1255=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1255
	.byte 1,104,11
	.asciz "V_6"

LDIFF_SYM1256=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1256
	.byte 3,141,192,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1257=Lfde154_end - Lfde154_start
	.long LDIFF_SYM1257
Lfde154_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_WriteTo_System_Xml_XmlWriter

LDIFF_SYM1258=Lme_9a - System_Xml_Linq_XElement_WriteTo_System_Xml_XmlWriter
	.long LDIFF_SYM1258
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,151,16,152,15,68,153,14,154,13
	.align 3
Lfde154_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement:GetNamespaceOfPrefix"
	.asciz "System_Xml_Linq_XElement_GetNamespaceOfPrefix_string"

	.byte 0,0
	.quad System_Xml_Linq_XElement_GetNamespaceOfPrefix_string
	.quad Lme_9b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1259=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1259
	.byte 1,105,3
	.asciz "prefix"

LDIFF_SYM1260=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1260
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1261=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1261
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM1262=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1262
	.byte 1,105,11
	.asciz "V_2"

LDIFF_SYM1263=LTDIE_91_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1263
	.byte 2,141,40,11
	.asciz "V_3"

LDIFF_SYM1264=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1264
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1265=Lfde155_end - Lfde155_start
	.long LDIFF_SYM1265
Lfde155_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_GetNamespaceOfPrefix_string

LDIFF_SYM1266=Lme_9b - System_Xml_Linq_XElement_GetNamespaceOfPrefix_string
	.long LDIFF_SYM1266
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,152,8,153,7,68,154,6
	.align 3
Lfde155_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_94:

	.byte 17
	.asciz "System_Collections_Generic_IEnumerator`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEnumerator`1"

LDIFF_SYM1267=LTDIE_94 - Ldebug_info_start
	.long LDIFF_SYM1267
LTDIE_94_POINTER:

	.byte 13
LDIFF_SYM1268=LTDIE_94 - Ldebug_info_start
	.long LDIFF_SYM1268
LTDIE_94_REFERENCE:

	.byte 14
LDIFF_SYM1269=LTDIE_94 - Ldebug_info_start
	.long LDIFF_SYM1269
	.byte 2
	.asciz "System.Xml.Linq.XElement:GetPrefixOfNamespace"
	.asciz "System_Xml_Linq_XElement_GetPrefixOfNamespace_System_Xml_Linq_XNamespace"

	.byte 0,0
	.quad System_Xml_Linq_XElement_GetPrefixOfNamespace_System_Xml_Linq_XNamespace
	.quad Lme_9c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1270=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1270
	.byte 1,105,3
	.asciz "ns"

LDIFF_SYM1271=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1271
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1272=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1272
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM1273=LTDIE_94_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1273
	.byte 2,141,40,11
	.asciz "V_2"

LDIFF_SYM1274=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1274
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1275=Lfde156_end - Lfde156_start
	.long LDIFF_SYM1275
Lfde156_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_GetPrefixOfNamespace_System_Xml_Linq_XNamespace

LDIFF_SYM1276=Lme_9c - System_Xml_Linq_XElement_GetPrefixOfNamespace_System_Xml_Linq_XNamespace
	.long LDIFF_SYM1276
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,152,8,153,7,68,154,6
	.align 3
Lfde156_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_95:

	.byte 5
	.asciz "_<GetPrefixOfNamespaceCore>c__Iterator3"

	.byte 72,16
LDIFF_SYM1277=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM1277
	.byte 2,35,0,6
	.asciz "<el>__0"

LDIFF_SYM1278=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1278
	.byte 2,35,16,6
	.asciz "$locvar0"

LDIFF_SYM1279=LTDIE_91_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1279
	.byte 2,35,24,6
	.asciz "<a>__1"

LDIFF_SYM1280=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1280
	.byte 2,35,32,6
	.asciz "ns"

LDIFF_SYM1281=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1281
	.byte 2,35,40,6
	.asciz "$this"

LDIFF_SYM1282=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1282
	.byte 2,35,48,6
	.asciz "$current"

LDIFF_SYM1283=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1283
	.byte 2,35,56,6
	.asciz "$disposing"

LDIFF_SYM1284=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1284
	.byte 2,35,64,6
	.asciz "$PC"

LDIFF_SYM1285=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1285
	.byte 2,35,68,0,7
	.asciz "_<GetPrefixOfNamespaceCore>c__Iterator3"

LDIFF_SYM1286=LTDIE_95 - Ldebug_info_start
	.long LDIFF_SYM1286
LTDIE_95_POINTER:

	.byte 13
LDIFF_SYM1287=LTDIE_95 - Ldebug_info_start
	.long LDIFF_SYM1287
LTDIE_95_REFERENCE:

	.byte 14
LDIFF_SYM1288=LTDIE_95 - Ldebug_info_start
	.long LDIFF_SYM1288
	.byte 2
	.asciz "System.Xml.Linq.XElement:GetPrefixOfNamespaceCore"
	.asciz "System_Xml_Linq_XElement_GetPrefixOfNamespaceCore_System_Xml_Linq_XNamespace"

	.byte 0,0
	.quad System_Xml_Linq_XElement_GetPrefixOfNamespaceCore_System_Xml_Linq_XNamespace
	.quad Lme_9d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1289=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1289
	.byte 2,141,16,3
	.asciz "ns"

LDIFF_SYM1290=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1290
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1291=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1291
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1292=Lfde157_end - Lfde157_start
	.long LDIFF_SYM1292
Lfde157_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_GetPrefixOfNamespaceCore_System_Xml_Linq_XNamespace

LDIFF_SYM1293=Lme_9d - System_Xml_Linq_XElement_GetPrefixOfNamespaceCore_System_Xml_Linq_XNamespace
	.long LDIFF_SYM1293
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde157_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement:ReplaceAttributes"
	.asciz "System_Xml_Linq_XElement_ReplaceAttributes_object"

	.byte 0,0
	.quad System_Xml_Linq_XElement_ReplaceAttributes_object
	.quad Lme_9e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1294=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1294
	.byte 2,141,16,3
	.asciz "content"

LDIFF_SYM1295=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1295
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1296=Lfde158_end - Lfde158_start
	.long LDIFF_SYM1296
Lfde158_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_ReplaceAttributes_object

LDIFF_SYM1297=Lme_9e - System_Xml_Linq_XElement_ReplaceAttributes_object
	.long LDIFF_SYM1297
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde158_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement:ReplaceAttributes"
	.asciz "System_Xml_Linq_XElement_ReplaceAttributes_object__"

	.byte 0,0
	.quad System_Xml_Linq_XElement_ReplaceAttributes_object__
	.quad Lme_9f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1298=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1298
	.byte 2,141,16,3
	.asciz "content"

LDIFF_SYM1299=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1299
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1300=Lfde159_end - Lfde159_start
	.long LDIFF_SYM1300
Lfde159_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_ReplaceAttributes_object__

LDIFF_SYM1301=Lme_9f - System_Xml_Linq_XElement_ReplaceAttributes_object__
	.long LDIFF_SYM1301
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde159_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement:OnAddingObject"
	.asciz "System_Xml_Linq_XElement_OnAddingObject_object_bool_System_Xml_Linq_XNode_bool"

	.byte 0,0
	.quad System_Xml_Linq_XElement_OnAddingObject_object_bool_System_Xml_Linq_XNode_bool
	.quad Lme_a0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1302=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1302
	.byte 1,103,3
	.asciz "o"

LDIFF_SYM1303=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1303
	.byte 1,104,3
	.asciz "rejectAttribute"

LDIFF_SYM1304=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1304
	.byte 1,105,3
	.asciz "refNode"

LDIFF_SYM1305=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1305
	.byte 1,106,3
	.asciz "addFirst"

LDIFF_SYM1306=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1306
	.byte 0,11
	.asciz "V_0"

LDIFF_SYM1307=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1307
	.byte 1,105,11
	.asciz "V_1"

LDIFF_SYM1308=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1308
	.byte 1,106,11
	.asciz "V_2"

LDIFF_SYM1309=LTDIE_91_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1309
	.byte 3,141,200,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1310=Lfde160_end - Lfde160_start
	.long LDIFF_SYM1310
Lfde160_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_OnAddingObject_object_bool_System_Xml_Linq_XNode_bool

LDIFF_SYM1311=Lme_a0 - System_Xml_Linq_XElement_OnAddingObject_object_bool_System_Xml_Linq_XNode_bool
	.long LDIFF_SYM1311
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,149,12,150,11,68,151,10,152,9,68,153,8,154,7
	.align 3
Lfde160_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement:System.Xml.Serialization.IXmlSerializable.WriteXml"
	.asciz "System_Xml_Linq_XElement_System_Xml_Serialization_IXmlSerializable_WriteXml_System_Xml_XmlWriter"

	.byte 0,0
	.quad System_Xml_Linq_XElement_System_Xml_Serialization_IXmlSerializable_WriteXml_System_Xml_XmlWriter
	.quad Lme_a1

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1312=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1312
	.byte 2,141,16,3
	.asciz "writer"

LDIFF_SYM1313=LTDIE_36_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1313
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1314=Lfde161_end - Lfde161_start
	.long LDIFF_SYM1314
Lfde161_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_System_Xml_Serialization_IXmlSerializable_WriteXml_System_Xml_XmlWriter

LDIFF_SYM1315=Lme_a1 - System_Xml_Linq_XElement_System_Xml_Serialization_IXmlSerializable_WriteXml_System_Xml_XmlWriter
	.long LDIFF_SYM1315
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde161_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement:System.Xml.Serialization.IXmlSerializable.ReadXml"
	.asciz "System_Xml_Linq_XElement_System_Xml_Serialization_IXmlSerializable_ReadXml_System_Xml_XmlReader"

	.byte 0,0
	.quad System_Xml_Linq_XElement_System_Xml_Serialization_IXmlSerializable_ReadXml_System_Xml_XmlReader
	.quad Lme_a2

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1316=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1316
	.byte 2,141,16,3
	.asciz "reader"

LDIFF_SYM1317=LTDIE_52_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1317
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1318=Lfde162_end - Lfde162_start
	.long LDIFF_SYM1318
Lfde162_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_System_Xml_Serialization_IXmlSerializable_ReadXml_System_Xml_XmlReader

LDIFF_SYM1319=Lme_a2 - System_Xml_Linq_XElement_System_Xml_Serialization_IXmlSerializable_ReadXml_System_Xml_XmlReader
	.long LDIFF_SYM1319
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde162_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement:System.Xml.Serialization.IXmlSerializable.GetSchema"
	.asciz "System_Xml_Linq_XElement_System_Xml_Serialization_IXmlSerializable_GetSchema"

	.byte 0,0
	.quad System_Xml_Linq_XElement_System_Xml_Serialization_IXmlSerializable_GetSchema
	.quad Lme_a3

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1320=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1320
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1321=Lfde163_end - Lfde163_start
	.long LDIFF_SYM1321
Lfde163_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement_System_Xml_Serialization_IXmlSerializable_GetSchema

LDIFF_SYM1322=Lme_a3 - System_Xml_Linq_XElement_System_Xml_Serialization_IXmlSerializable_GetSchema
	.long LDIFF_SYM1322
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde163_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement:.cctor"
	.asciz "System_Xml_Linq_XElement__cctor"

	.byte 0,0
	.quad System_Xml_Linq_XElement__cctor
	.quad Lme_a4

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1323=Lfde164_end - Lfde164_start
	.long LDIFF_SYM1323
Lfde164_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement__cctor

LDIFF_SYM1324=Lme_a4 - System_Xml_Linq_XElement__cctor
	.long LDIFF_SYM1324
	.long 0
	.byte 12,31,0,68,14,16,157,2,158,1,68,13,29
	.align 3
Lfde164_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement:<CreateDummyNamespace>m__0"
	.asciz "System_Xml_Linq_XElement__CreateDummyNamespacem__0_System_Xml_Linq_XAttribute"

	.byte 0,0
	.quad System_Xml_Linq_XElement__CreateDummyNamespacem__0_System_Xml_Linq_XAttribute
	.quad Lme_a5

	.byte 2,118,16,3
	.asciz "a"

LDIFF_SYM1325=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1325
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1326=Lfde165_end - Lfde165_start
	.long LDIFF_SYM1326
Lfde165_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement__CreateDummyNamespacem__0_System_Xml_Linq_XAttribute

LDIFF_SYM1327=Lme_a5 - System_Xml_Linq_XElement__CreateDummyNamespacem__0_System_Xml_Linq_XAttribute
	.long LDIFF_SYM1327
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.align 3
Lfde165_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement/<Attributes>c__Iterator0:.ctor"
	.asciz "System_Xml_Linq_XElement__Attributesc__Iterator0__ctor"

	.byte 0,0
	.quad System_Xml_Linq_XElement__Attributesc__Iterator0__ctor
	.quad Lme_a6

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1328=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1328
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1329=Lfde166_end - Lfde166_start
	.long LDIFF_SYM1329
Lfde166_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement__Attributesc__Iterator0__ctor

LDIFF_SYM1330=Lme_a6 - System_Xml_Linq_XElement__Attributesc__Iterator0__ctor
	.long LDIFF_SYM1330
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde166_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement/<Attributes>c__Iterator0:MoveNext"
	.asciz "System_Xml_Linq_XElement__Attributesc__Iterator0_MoveNext"

	.byte 0,0
	.quad System_Xml_Linq_XElement__Attributesc__Iterator0_MoveNext
	.quad Lme_a7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1331=LTDIE_89_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1331
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1332=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1332
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1333=Lfde167_end - Lfde167_start
	.long LDIFF_SYM1333
Lfde167_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement__Attributesc__Iterator0_MoveNext

LDIFF_SYM1334=Lme_a7 - System_Xml_Linq_XElement__Attributesc__Iterator0_MoveNext
	.long LDIFF_SYM1334
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.align 3
Lfde167_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement/<Attributes>c__Iterator0:System.Collections.Generic.IEnumerator<System.Xml.Linq.XAttribute>.get_Current"
	.asciz "System_Xml_Linq_XElement__Attributesc__Iterator0_System_Collections_Generic_IEnumerator_System_Xml_Linq_XAttribute_get_Current"

	.byte 0,0
	.quad System_Xml_Linq_XElement__Attributesc__Iterator0_System_Collections_Generic_IEnumerator_System_Xml_Linq_XAttribute_get_Current
	.quad Lme_a8

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1335=LTDIE_89_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1335
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1336=Lfde168_end - Lfde168_start
	.long LDIFF_SYM1336
Lfde168_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement__Attributesc__Iterator0_System_Collections_Generic_IEnumerator_System_Xml_Linq_XAttribute_get_Current

LDIFF_SYM1337=Lme_a8 - System_Xml_Linq_XElement__Attributesc__Iterator0_System_Collections_Generic_IEnumerator_System_Xml_Linq_XAttribute_get_Current
	.long LDIFF_SYM1337
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde168_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement/<Attributes>c__Iterator0:System.Collections.IEnumerator.get_Current"
	.asciz "System_Xml_Linq_XElement__Attributesc__Iterator0_System_Collections_IEnumerator_get_Current"

	.byte 0,0
	.quad System_Xml_Linq_XElement__Attributesc__Iterator0_System_Collections_IEnumerator_get_Current
	.quad Lme_a9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1338=LTDIE_89_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1338
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1339=Lfde169_end - Lfde169_start
	.long LDIFF_SYM1339
Lfde169_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement__Attributesc__Iterator0_System_Collections_IEnumerator_get_Current

LDIFF_SYM1340=Lme_a9 - System_Xml_Linq_XElement__Attributesc__Iterator0_System_Collections_IEnumerator_get_Current
	.long LDIFF_SYM1340
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde169_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement/<Attributes>c__Iterator0:Dispose"
	.asciz "System_Xml_Linq_XElement__Attributesc__Iterator0_Dispose"

	.byte 0,0
	.quad System_Xml_Linq_XElement__Attributesc__Iterator0_Dispose
	.quad Lme_aa

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1341=LTDIE_89_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1341
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1342=Lfde170_end - Lfde170_start
	.long LDIFF_SYM1342
Lfde170_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement__Attributesc__Iterator0_Dispose

LDIFF_SYM1343=Lme_aa - System_Xml_Linq_XElement__Attributesc__Iterator0_Dispose
	.long LDIFF_SYM1343
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde170_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement/<Attributes>c__Iterator0:Reset"
	.asciz "System_Xml_Linq_XElement__Attributesc__Iterator0_Reset"

	.byte 0,0
	.quad System_Xml_Linq_XElement__Attributesc__Iterator0_Reset
	.quad Lme_ab

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1344=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1344
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1345=Lfde171_end - Lfde171_start
	.long LDIFF_SYM1345
Lfde171_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement__Attributesc__Iterator0_Reset

LDIFF_SYM1346=Lme_ab - System_Xml_Linq_XElement__Attributesc__Iterator0_Reset
	.long LDIFF_SYM1346
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde171_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement/<Attributes>c__Iterator0:System.Collections.IEnumerable.GetEnumerator"
	.asciz "System_Xml_Linq_XElement__Attributesc__Iterator0_System_Collections_IEnumerable_GetEnumerator"

	.byte 0,0
	.quad System_Xml_Linq_XElement__Attributesc__Iterator0_System_Collections_IEnumerable_GetEnumerator
	.quad Lme_ac

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1347=LTDIE_89_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1347
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1348=Lfde172_end - Lfde172_start
	.long LDIFF_SYM1348
Lfde172_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement__Attributesc__Iterator0_System_Collections_IEnumerable_GetEnumerator

LDIFF_SYM1349=Lme_ac - System_Xml_Linq_XElement__Attributesc__Iterator0_System_Collections_IEnumerable_GetEnumerator
	.long LDIFF_SYM1349
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde172_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement/<Attributes>c__Iterator0:System.Collections.Generic.IEnumerable<System.Xml.Linq.XAttribute>.GetEnumerator"
	.asciz "System_Xml_Linq_XElement__Attributesc__Iterator0_System_Collections_Generic_IEnumerable_System_Xml_Linq_XAttribute_GetEnumerator"

	.byte 0,0
	.quad System_Xml_Linq_XElement__Attributesc__Iterator0_System_Collections_Generic_IEnumerable_System_Xml_Linq_XAttribute_GetEnumerator
	.quad Lme_ad

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1350=LTDIE_89_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1350
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1351=LTDIE_89_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1351
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1352=Lfde173_end - Lfde173_start
	.long LDIFF_SYM1352
Lfde173_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement__Attributesc__Iterator0_System_Collections_Generic_IEnumerable_System_Xml_Linq_XAttribute_GetEnumerator

LDIFF_SYM1353=Lme_ad - System_Xml_Linq_XElement__Attributesc__Iterator0_System_Collections_Generic_IEnumerable_System_Xml_Linq_XAttribute_GetEnumerator
	.long LDIFF_SYM1353
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.align 3
Lfde173_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement/<CreateDummyNamespace>c__AnonStorey4:.ctor"
	.asciz "System_Xml_Linq_XElement__CreateDummyNamespacec__AnonStorey4__ctor"

	.byte 0,0
	.quad System_Xml_Linq_XElement__CreateDummyNamespacec__AnonStorey4__ctor
	.quad Lme_ae

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1354=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1354
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1355=Lfde174_end - Lfde174_start
	.long LDIFF_SYM1355
Lfde174_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement__CreateDummyNamespacec__AnonStorey4__ctor

LDIFF_SYM1356=Lme_ae - System_Xml_Linq_XElement__CreateDummyNamespacec__AnonStorey4__ctor
	.long LDIFF_SYM1356
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde174_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement/<CreateDummyNamespace>c__AnonStorey4:<>m__0"
	.asciz "System_Xml_Linq_XElement__CreateDummyNamespacec__AnonStorey4__m__0_System_Xml_Linq_XAttribute"

	.byte 0,0
	.quad System_Xml_Linq_XElement__CreateDummyNamespacec__AnonStorey4__m__0_System_Xml_Linq_XAttribute
	.quad Lme_af

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1357=LTDIE_93_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1357
	.byte 2,141,24,3
	.asciz "a"

LDIFF_SYM1358=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1358
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1359=Lfde175_end - Lfde175_start
	.long LDIFF_SYM1359
Lfde175_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement__CreateDummyNamespacec__AnonStorey4__m__0_System_Xml_Linq_XAttribute

LDIFF_SYM1360=Lme_af - System_Xml_Linq_XElement__CreateDummyNamespacec__AnonStorey4__m__0_System_Xml_Linq_XAttribute
	.long LDIFF_SYM1360
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.align 3
Lfde175_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement/<GetPrefixOfNamespaceCore>c__Iterator3:.ctor"
	.asciz "System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3__ctor"

	.byte 0,0
	.quad System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3__ctor
	.quad Lme_b0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1361=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1361
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1362=Lfde176_end - Lfde176_start
	.long LDIFF_SYM1362
Lfde176_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3__ctor

LDIFF_SYM1363=Lme_b0 - System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3__ctor
	.long LDIFF_SYM1363
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde176_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement/<GetPrefixOfNamespaceCore>c__Iterator3:MoveNext"
	.asciz "System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_MoveNext"

	.byte 0,0
	.quad System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_MoveNext
	.quad Lme_b1

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1364=LTDIE_95_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1364
	.byte 2,141,40,11
	.asciz "V_0"

LDIFF_SYM1365=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1365
	.byte 1,106,11
	.asciz "V_1"

LDIFF_SYM1366=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1366
	.byte 2,141,48,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1367=Lfde177_end - Lfde177_start
	.long LDIFF_SYM1367
Lfde177_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_MoveNext

LDIFF_SYM1368=Lme_b1 - System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_MoveNext
	.long LDIFF_SYM1368
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,152,10,153,9,68,154,8
	.align 3
Lfde177_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement/<GetPrefixOfNamespaceCore>c__Iterator3:System.Collections.Generic.IEnumerator<string>.get_Current"
	.asciz "System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_System_Collections_Generic_IEnumerator_string_get_Current"

	.byte 0,0
	.quad System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_System_Collections_Generic_IEnumerator_string_get_Current
	.quad Lme_b2

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1369=LTDIE_95_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1369
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1370=Lfde178_end - Lfde178_start
	.long LDIFF_SYM1370
Lfde178_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_System_Collections_Generic_IEnumerator_string_get_Current

LDIFF_SYM1371=Lme_b2 - System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_System_Collections_Generic_IEnumerator_string_get_Current
	.long LDIFF_SYM1371
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde178_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement/<GetPrefixOfNamespaceCore>c__Iterator3:System.Collections.IEnumerator.get_Current"
	.asciz "System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_System_Collections_IEnumerator_get_Current"

	.byte 0,0
	.quad System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_System_Collections_IEnumerator_get_Current
	.quad Lme_b3

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1372=LTDIE_95_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1372
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1373=Lfde179_end - Lfde179_start
	.long LDIFF_SYM1373
Lfde179_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_System_Collections_IEnumerator_get_Current

LDIFF_SYM1374=Lme_b3 - System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_System_Collections_IEnumerator_get_Current
	.long LDIFF_SYM1374
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde179_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement/<GetPrefixOfNamespaceCore>c__Iterator3:Dispose"
	.asciz "System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_Dispose"

	.byte 0,0
	.quad System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_Dispose
	.quad Lme_b4

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1375=LTDIE_95_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1375
	.byte 2,141,16,11
	.asciz "V_0"

LDIFF_SYM1376=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1376
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1377=Lfde180_end - Lfde180_start
	.long LDIFF_SYM1377
Lfde180_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_Dispose

LDIFF_SYM1378=Lme_b4 - System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_Dispose
	.long LDIFF_SYM1378
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde180_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement/<GetPrefixOfNamespaceCore>c__Iterator3:Reset"
	.asciz "System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_Reset"

	.byte 0,0
	.quad System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_Reset
	.quad Lme_b5

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1379=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1379
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1380=Lfde181_end - Lfde181_start
	.long LDIFF_SYM1380
Lfde181_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_Reset

LDIFF_SYM1381=Lme_b5 - System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_Reset
	.long LDIFF_SYM1381
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde181_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement/<GetPrefixOfNamespaceCore>c__Iterator3:System.Collections.IEnumerable.GetEnumerator"
	.asciz "System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_System_Collections_IEnumerable_GetEnumerator"

	.byte 0,0
	.quad System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_System_Collections_IEnumerable_GetEnumerator
	.quad Lme_b6

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1382=LTDIE_95_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1382
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1383=Lfde182_end - Lfde182_start
	.long LDIFF_SYM1383
Lfde182_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_System_Collections_IEnumerable_GetEnumerator

LDIFF_SYM1384=Lme_b6 - System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_System_Collections_IEnumerable_GetEnumerator
	.long LDIFF_SYM1384
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde182_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XElement/<GetPrefixOfNamespaceCore>c__Iterator3:System.Collections.Generic.IEnumerable<string>.GetEnumerator"
	.asciz "System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_System_Collections_Generic_IEnumerable_string_GetEnumerator"

	.byte 0,0
	.quad System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_System_Collections_Generic_IEnumerable_string_GetEnumerator
	.quad Lme_b7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1385=LTDIE_95_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1385
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1386=LTDIE_95_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1386
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1387=Lfde183_end - Lfde183_start
	.long LDIFF_SYM1387
Lfde183_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_System_Collections_Generic_IEnumerable_string_GetEnumerator

LDIFF_SYM1388=Lme_b7 - System_Xml_Linq_XElement__GetPrefixOfNamespaceCorec__Iterator3_System_Collections_Generic_IEnumerable_string_GetEnumerator
	.long LDIFF_SYM1388
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.align 3
Lfde183_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_98:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM1389=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM1389
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM1390=LTDIE_97_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1390
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM1391=LTDIE_98 - Ldebug_info_start
	.long LDIFF_SYM1391
LTDIE_98_POINTER:

	.byte 13
LDIFF_SYM1392=LTDIE_98 - Ldebug_info_start
	.long LDIFF_SYM1392
LTDIE_98_REFERENCE:

	.byte 14
LDIFF_SYM1393=LTDIE_98 - Ldebug_info_start
	.long LDIFF_SYM1393
LTDIE_99:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM1394=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM1394
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM1395=LTDIE_97_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1395
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM1396=LTDIE_99 - Ldebug_info_start
	.long LDIFF_SYM1396
LTDIE_99_POINTER:

	.byte 13
LDIFF_SYM1397=LTDIE_99 - Ldebug_info_start
	.long LDIFF_SYM1397
LTDIE_99_REFERENCE:

	.byte 14
LDIFF_SYM1398=LTDIE_99 - Ldebug_info_start
	.long LDIFF_SYM1398
LTDIE_97:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM1399=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM1399
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM1400=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1400
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM1401=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1401
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM1402=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1402
	.byte 2,35,64,6
	.asciz "version"

LDIFF_SYM1403=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1403
	.byte 2,35,68,6
	.asciz "freeList"

LDIFF_SYM1404=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1404
	.byte 2,35,72,6
	.asciz "freeCount"

LDIFF_SYM1405=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1405
	.byte 2,35,76,6
	.asciz "comparer"

LDIFF_SYM1406=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1406
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM1407=LTDIE_98_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1407
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM1408=LTDIE_99_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1408
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM1409=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1409
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM1410=LTDIE_97 - Ldebug_info_start
	.long LDIFF_SYM1410
LTDIE_97_POINTER:

	.byte 13
LDIFF_SYM1411=LTDIE_97 - Ldebug_info_start
	.long LDIFF_SYM1411
LTDIE_97_REFERENCE:

	.byte 14
LDIFF_SYM1412=LTDIE_97 - Ldebug_info_start
	.long LDIFF_SYM1412
LTDIE_100:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM1413=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM1413
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM1414=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1414
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM1415=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1415
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM1416=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1416
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM1417=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1417
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM1418=LTDIE_100 - Ldebug_info_start
	.long LDIFF_SYM1418
LTDIE_100_POINTER:

	.byte 13
LDIFF_SYM1419=LTDIE_100 - Ldebug_info_start
	.long LDIFF_SYM1419
LTDIE_100_REFERENCE:

	.byte 14
LDIFF_SYM1420=LTDIE_100 - Ldebug_info_start
	.long LDIFF_SYM1420
LTDIE_101:

	.byte 17
	.asciz "System_Runtime_Serialization_IFormatterConverter"

	.byte 16,7
	.asciz "System_Runtime_Serialization_IFormatterConverter"

LDIFF_SYM1421=LTDIE_101 - Ldebug_info_start
	.long LDIFF_SYM1421
LTDIE_101_POINTER:

	.byte 13
LDIFF_SYM1422=LTDIE_101 - Ldebug_info_start
	.long LDIFF_SYM1422
LTDIE_101_REFERENCE:

	.byte 14
LDIFF_SYM1423=LTDIE_101 - Ldebug_info_start
	.long LDIFF_SYM1423
LTDIE_96:

	.byte 5
	.asciz "System_Runtime_Serialization_SerializationInfo"

	.byte 64,16
LDIFF_SYM1424=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM1424
	.byte 2,35,0,6
	.asciz "serialized"

LDIFF_SYM1425=LTDIE_97_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1425
	.byte 2,35,16,6
	.asciz "values"

LDIFF_SYM1426=LTDIE_100_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1426
	.byte 2,35,24,6
	.asciz "assemblyName"

LDIFF_SYM1427=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1427
	.byte 2,35,32,6
	.asciz "fullTypeName"

LDIFF_SYM1428=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1428
	.byte 2,35,40,6
	.asciz "objectType"

LDIFF_SYM1429=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1429
	.byte 2,35,48,6
	.asciz "converter"

LDIFF_SYM1430=LTDIE_101_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1430
	.byte 2,35,56,0,7
	.asciz "System_Runtime_Serialization_SerializationInfo"

LDIFF_SYM1431=LTDIE_96 - Ldebug_info_start
	.long LDIFF_SYM1431
LTDIE_96_POINTER:

	.byte 13
LDIFF_SYM1432=LTDIE_96 - Ldebug_info_start
	.long LDIFF_SYM1432
LTDIE_96_REFERENCE:

	.byte 14
LDIFF_SYM1433=LTDIE_96 - Ldebug_info_start
	.long LDIFF_SYM1433
	.byte 2
	.asciz "System.Xml.Linq.XName:.ctor"
	.asciz "System_Xml_Linq_XName__ctor_System_Runtime_Serialization_SerializationInfo_System_Runtime_Serialization_StreamingContext"

	.byte 0,0
	.quad System_Xml_Linq_XName__ctor_System_Runtime_Serialization_SerializationInfo_System_Runtime_Serialization_StreamingContext
	.quad Lme_b8

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1434=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1434
	.byte 1,105,3
	.asciz "info"

LDIFF_SYM1435=LTDIE_96_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1435
	.byte 2,141,24,3
	.asciz "context"

LDIFF_SYM1436=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1436
	.byte 0,11
	.asciz "V_0"

LDIFF_SYM1437=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1437
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM1438=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1438
	.byte 2,141,48,11
	.asciz "V_2"

LDIFF_SYM1439=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1439
	.byte 2,141,56,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1440=Lfde184_end - Lfde184_start
	.long LDIFF_SYM1440
Lfde184_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XName__ctor_System_Runtime_Serialization_SerializationInfo_System_Runtime_Serialization_StreamingContext

LDIFF_SYM1441=Lme_b8 - System_Xml_Linq_XName__ctor_System_Runtime_Serialization_SerializationInfo_System_Runtime_Serialization_StreamingContext
	.long LDIFF_SYM1441
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6
	.align 3
Lfde184_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XName:.ctor"
	.asciz "System_Xml_Linq_XName__ctor_string_System_Xml_Linq_XNamespace"

	.byte 0,0
	.quad System_Xml_Linq_XName__ctor_string_System_Xml_Linq_XNamespace
	.quad Lme_b9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1442=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1442
	.byte 1,104,3
	.asciz "local"

LDIFF_SYM1443=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1443
	.byte 2,141,24,3
	.asciz "ns"

LDIFF_SYM1444=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1444
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1445=Lfde185_end - Lfde185_start
	.long LDIFF_SYM1445
Lfde185_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XName__ctor_string_System_Xml_Linq_XNamespace

LDIFF_SYM1446=Lme_b9 - System_Xml_Linq_XName__ctor_string_System_Xml_Linq_XNamespace
	.long LDIFF_SYM1446
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4
	.align 3
Lfde185_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XName:ErrorInvalidExpandedName"
	.asciz "System_Xml_Linq_XName_ErrorInvalidExpandedName"

	.byte 0,0
	.quad System_Xml_Linq_XName_ErrorInvalidExpandedName
	.quad Lme_ba

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1447=Lfde186_end - Lfde186_start
	.long LDIFF_SYM1447
Lfde186_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XName_ErrorInvalidExpandedName

LDIFF_SYM1448=Lme_ba - System_Xml_Linq_XName_ErrorInvalidExpandedName
	.long LDIFF_SYM1448
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde186_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XName:get_LocalName"
	.asciz "System_Xml_Linq_XName_get_LocalName"

	.byte 0,0
	.quad System_Xml_Linq_XName_get_LocalName
	.quad Lme_bb

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1449=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1449
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1450=Lfde187_end - Lfde187_start
	.long LDIFF_SYM1450
Lfde187_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XName_get_LocalName

LDIFF_SYM1451=Lme_bb - System_Xml_Linq_XName_get_LocalName
	.long LDIFF_SYM1451
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde187_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XName:get_Namespace"
	.asciz "System_Xml_Linq_XName_get_Namespace"

	.byte 0,0
	.quad System_Xml_Linq_XName_get_Namespace
	.quad Lme_bc

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1452=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1452
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1453=Lfde188_end - Lfde188_start
	.long LDIFF_SYM1453
Lfde188_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XName_get_Namespace

LDIFF_SYM1454=Lme_bc - System_Xml_Linq_XName_get_Namespace
	.long LDIFF_SYM1454
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde188_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XName:get_NamespaceName"
	.asciz "System_Xml_Linq_XName_get_NamespaceName"

	.byte 0,0
	.quad System_Xml_Linq_XName_get_NamespaceName
	.quad Lme_bd

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1455=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1455
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1456=Lfde189_end - Lfde189_start
	.long LDIFF_SYM1456
Lfde189_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XName_get_NamespaceName

LDIFF_SYM1457=Lme_bd - System_Xml_Linq_XName_get_NamespaceName
	.long LDIFF_SYM1457
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde189_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XName:Equals"
	.asciz "System_Xml_Linq_XName_Equals_object"

	.byte 0,0
	.quad System_Xml_Linq_XName_Equals_object
	.quad Lme_be

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1458=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1458
	.byte 2,141,32,3
	.asciz "obj"

LDIFF_SYM1459=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1459
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1460=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1460
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1461=Lfde190_end - Lfde190_start
	.long LDIFF_SYM1461
Lfde190_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XName_Equals_object

LDIFF_SYM1462=Lme_be - System_Xml_Linq_XName_Equals_object
	.long LDIFF_SYM1462
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,151,4,68,154,3
	.align 3
Lfde190_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XName:System.IEquatable<System.Xml.Linq.XName>.Equals"
	.asciz "System_Xml_Linq_XName_System_IEquatable_System_Xml_Linq_XName_Equals_System_Xml_Linq_XName"

	.byte 0,0
	.quad System_Xml_Linq_XName_System_IEquatable_System_Xml_Linq_XName_Equals_System_Xml_Linq_XName
	.quad Lme_bf

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1463=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1463
	.byte 2,141,16,3
	.asciz "other"

LDIFF_SYM1464=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1464
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1465=Lfde191_end - Lfde191_start
	.long LDIFF_SYM1465
Lfde191_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XName_System_IEquatable_System_Xml_Linq_XName_Equals_System_Xml_Linq_XName

LDIFF_SYM1466=Lme_bf - System_Xml_Linq_XName_System_IEquatable_System_Xml_Linq_XName_Equals_System_Xml_Linq_XName
	.long LDIFF_SYM1466
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde191_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XName:Get"
	.asciz "System_Xml_Linq_XName_Get_string"

	.byte 0,0
	.quad System_Xml_Linq_XName_Get_string
	.quad Lme_c0

	.byte 2,118,16,3
	.asciz "expandedName"

LDIFF_SYM1467=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1467
	.byte 2,141,16,11
	.asciz "V_0"

LDIFF_SYM1468=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1468
	.byte 2,141,24,11
	.asciz "V_1"

LDIFF_SYM1469=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1469
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1470=Lfde192_end - Lfde192_start
	.long LDIFF_SYM1470
Lfde192_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XName_Get_string

LDIFF_SYM1471=Lme_c0 - System_Xml_Linq_XName_Get_string
	.long LDIFF_SYM1471
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde192_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XName:ExpandName"
	.asciz "System_Xml_Linq_XName_ExpandName_string_string__string_"

	.byte 0,0
	.quad System_Xml_Linq_XName_ExpandName_string_string__string_
	.quad Lme_c1

	.byte 2,118,16,3
	.asciz "expandedName"

LDIFF_SYM1472=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1472
	.byte 1,104,3
	.asciz "local"

LDIFF_SYM1473=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1473
	.byte 1,105,3
	.asciz "ns"

LDIFF_SYM1474=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1474
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1475=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1475
	.byte 1,103,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1476=Lfde193_end - Lfde193_start
	.long LDIFF_SYM1476
Lfde193_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XName_ExpandName_string_string__string_

LDIFF_SYM1477=Lme_c1 - System_Xml_Linq_XName_ExpandName_string_string__string_
	.long LDIFF_SYM1477
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,151,4,152,3,68,153,2,154,1
	.align 3
Lfde193_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XName:Get"
	.asciz "System_Xml_Linq_XName_Get_string_string"

	.byte 0,0
	.quad System_Xml_Linq_XName_Get_string_string
	.quad Lme_c2

	.byte 2,118,16,3
	.asciz "localName"

LDIFF_SYM1478=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1478
	.byte 2,141,16,3
	.asciz "namespaceName"

LDIFF_SYM1479=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1479
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1480=Lfde194_end - Lfde194_start
	.long LDIFF_SYM1480
Lfde194_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XName_Get_string_string

LDIFF_SYM1481=Lme_c2 - System_Xml_Linq_XName_Get_string_string
	.long LDIFF_SYM1481
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde194_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XName:GetHashCode"
	.asciz "System_Xml_Linq_XName_GetHashCode"

	.byte 0,0
	.quad System_Xml_Linq_XName_GetHashCode
	.quad Lme_c3

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1482=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1482
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1483=Lfde195_end - Lfde195_start
	.long LDIFF_SYM1483
Lfde195_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XName_GetHashCode

LDIFF_SYM1484=Lme_c3 - System_Xml_Linq_XName_GetHashCode
	.long LDIFF_SYM1484
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde195_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XName:op_Equality"
	.asciz "System_Xml_Linq_XName_op_Equality_System_Xml_Linq_XName_System_Xml_Linq_XName"

	.byte 0,0
	.quad System_Xml_Linq_XName_op_Equality_System_Xml_Linq_XName_System_Xml_Linq_XName
	.quad Lme_c4

	.byte 2,118,16,3
	.asciz "left"

LDIFF_SYM1485=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1485
	.byte 1,105,3
	.asciz "right"

LDIFF_SYM1486=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1486
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1487=Lfde196_end - Lfde196_start
	.long LDIFF_SYM1487
Lfde196_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XName_op_Equality_System_Xml_Linq_XName_System_Xml_Linq_XName

LDIFF_SYM1488=Lme_c4 - System_Xml_Linq_XName_op_Equality_System_Xml_Linq_XName_System_Xml_Linq_XName
	.long LDIFF_SYM1488
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,153,2,154,1
	.align 3
Lfde196_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XName:op_Implicit"
	.asciz "System_Xml_Linq_XName_op_Implicit_string"

	.byte 0,0
	.quad System_Xml_Linq_XName_op_Implicit_string
	.quad Lme_c5

	.byte 2,118,16,3
	.asciz "expandedName"

LDIFF_SYM1489=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1489
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1490=Lfde197_end - Lfde197_start
	.long LDIFF_SYM1490
Lfde197_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XName_op_Implicit_string

LDIFF_SYM1491=Lme_c5 - System_Xml_Linq_XName_op_Implicit_string
	.long LDIFF_SYM1491
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.align 3
Lfde197_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XName:op_Inequality"
	.asciz "System_Xml_Linq_XName_op_Inequality_System_Xml_Linq_XName_System_Xml_Linq_XName"

	.byte 0,0
	.quad System_Xml_Linq_XName_op_Inequality_System_Xml_Linq_XName_System_Xml_Linq_XName
	.quad Lme_c6

	.byte 2,118,16,3
	.asciz "left"

LDIFF_SYM1492=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1492
	.byte 2,141,16,3
	.asciz "right"

LDIFF_SYM1493=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1493
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1494=Lfde198_end - Lfde198_start
	.long LDIFF_SYM1494
Lfde198_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XName_op_Inequality_System_Xml_Linq_XName_System_Xml_Linq_XName

LDIFF_SYM1495=Lme_c6 - System_Xml_Linq_XName_op_Inequality_System_Xml_Linq_XName_System_Xml_Linq_XName
	.long LDIFF_SYM1495
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde198_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XName:ToString"
	.asciz "System_Xml_Linq_XName_ToString"

	.byte 0,0
	.quad System_Xml_Linq_XName_ToString
	.quad Lme_c7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1496=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1496
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1497=Lfde199_end - Lfde199_start
	.long LDIFF_SYM1497
Lfde199_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XName_ToString

LDIFF_SYM1498=Lme_c7 - System_Xml_Linq_XName_ToString
	.long LDIFF_SYM1498
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.align 3
Lfde199_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNamespace:.cctor"
	.asciz "System_Xml_Linq_XNamespace__cctor"

	.byte 0,0
	.quad System_Xml_Linq_XNamespace__cctor
	.quad Lme_c8

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1499=Lfde200_end - Lfde200_start
	.long LDIFF_SYM1499
Lfde200_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNamespace__cctor

LDIFF_SYM1500=Lme_c8 - System_Xml_Linq_XNamespace__cctor
	.long LDIFF_SYM1500
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde200_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNamespace:.ctor"
	.asciz "System_Xml_Linq_XNamespace__ctor_string"

	.byte 0,0
	.quad System_Xml_Linq_XNamespace__ctor_string
	.quad Lme_c9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1501=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1501
	.byte 2,141,16,3
	.asciz "namespaceName"

LDIFF_SYM1502=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1502
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1503=Lfde201_end - Lfde201_start
	.long LDIFF_SYM1503
Lfde201_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNamespace__ctor_string

LDIFF_SYM1504=Lme_c9 - System_Xml_Linq_XNamespace__ctor_string
	.long LDIFF_SYM1504
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde201_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNamespace:get_None"
	.asciz "System_Xml_Linq_XNamespace_get_None"

	.byte 0,0
	.quad System_Xml_Linq_XNamespace_get_None
	.quad Lme_ca

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1505=Lfde202_end - Lfde202_start
	.long LDIFF_SYM1505
Lfde202_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNamespace_get_None

LDIFF_SYM1506=Lme_ca - System_Xml_Linq_XNamespace_get_None
	.long LDIFF_SYM1506
	.long 0
	.byte 12,31,0,68,14,16,157,2,158,1,68,13,29
	.align 3
Lfde202_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNamespace:get_Xml"
	.asciz "System_Xml_Linq_XNamespace_get_Xml"

	.byte 0,0
	.quad System_Xml_Linq_XNamespace_get_Xml
	.quad Lme_cb

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1507=Lfde203_end - Lfde203_start
	.long LDIFF_SYM1507
Lfde203_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNamespace_get_Xml

LDIFF_SYM1508=Lme_cb - System_Xml_Linq_XNamespace_get_Xml
	.long LDIFF_SYM1508
	.long 0
	.byte 12,31,0,68,14,16,157,2,158,1,68,13,29
	.align 3
Lfde203_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNamespace:get_Xmlns"
	.asciz "System_Xml_Linq_XNamespace_get_Xmlns"

	.byte 0,0
	.quad System_Xml_Linq_XNamespace_get_Xmlns
	.quad Lme_cc

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1509=Lfde204_end - Lfde204_start
	.long LDIFF_SYM1509
Lfde204_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNamespace_get_Xmlns

LDIFF_SYM1510=Lme_cc - System_Xml_Linq_XNamespace_get_Xmlns
	.long LDIFF_SYM1510
	.long 0
	.byte 12,31,0,68,14,16,157,2,158,1,68,13,29
	.align 3
Lfde204_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNamespace:Get"
	.asciz "System_Xml_Linq_XNamespace_Get_string"

	.byte 0,0
	.quad System_Xml_Linq_XNamespace_Get_string
	.quad Lme_cd

	.byte 2,118,16,3
	.asciz "namespaceName"

LDIFF_SYM1511=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1511
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1512=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1512
	.byte 2,141,24,11
	.asciz "V_1"

LDIFF_SYM1513=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1513
	.byte 2,141,32,11
	.asciz "V_2"

LDIFF_SYM1514=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1514
	.byte 2,141,40,11
	.asciz "V_3"

LDIFF_SYM1515=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1515
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1516=Lfde205_end - Lfde205_start
	.long LDIFF_SYM1516
Lfde205_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNamespace_Get_string

LDIFF_SYM1517=Lme_cd - System_Xml_Linq_XNamespace_Get_string
	.long LDIFF_SYM1517
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,154,10
	.align 3
Lfde205_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNamespace:GetName"
	.asciz "System_Xml_Linq_XNamespace_GetName_string"

	.byte 0,0
	.quad System_Xml_Linq_XNamespace_GetName_string
	.quad Lme_ce

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1518=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1518
	.byte 1,105,3
	.asciz "localName"

LDIFF_SYM1519=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1519
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1520=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1520
	.byte 2,141,32,11
	.asciz "V_1"

LDIFF_SYM1521=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1521
	.byte 2,141,40,11
	.asciz "V_2"

LDIFF_SYM1522=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1522
	.byte 2,141,48,11
	.asciz "V_3"

LDIFF_SYM1523=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1523
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1524=Lfde206_end - Lfde206_start
	.long LDIFF_SYM1524
Lfde206_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNamespace_GetName_string

LDIFF_SYM1525=Lme_ce - System_Xml_Linq_XNamespace_GetName_string
	.long LDIFF_SYM1525
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10,154,9
	.align 3
Lfde206_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNamespace:get_NamespaceName"
	.asciz "System_Xml_Linq_XNamespace_get_NamespaceName"

	.byte 0,0
	.quad System_Xml_Linq_XNamespace_get_NamespaceName
	.quad Lme_cf

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1526=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1526
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1527=Lfde207_end - Lfde207_start
	.long LDIFF_SYM1527
Lfde207_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNamespace_get_NamespaceName

LDIFF_SYM1528=Lme_cf - System_Xml_Linq_XNamespace_get_NamespaceName
	.long LDIFF_SYM1528
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde207_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNamespace:Equals"
	.asciz "System_Xml_Linq_XNamespace_Equals_object"

	.byte 0,0
	.quad System_Xml_Linq_XNamespace_Equals_object
	.quad Lme_d0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1529=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1529
	.byte 2,141,32,3
	.asciz "obj"

LDIFF_SYM1530=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1530
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1531=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1531
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1532=Lfde208_end - Lfde208_start
	.long LDIFF_SYM1532
Lfde208_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNamespace_Equals_object

LDIFF_SYM1533=Lme_d0 - System_Xml_Linq_XNamespace_Equals_object
	.long LDIFF_SYM1533
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,151,4,68,154,3
	.align 3
Lfde208_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNamespace:op_Equality"
	.asciz "System_Xml_Linq_XNamespace_op_Equality_System_Xml_Linq_XNamespace_System_Xml_Linq_XNamespace"

	.byte 0,0
	.quad System_Xml_Linq_XNamespace_op_Equality_System_Xml_Linq_XNamespace_System_Xml_Linq_XNamespace
	.quad Lme_d1

	.byte 2,118,16,3
	.asciz "left"

LDIFF_SYM1534=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1534
	.byte 2,141,24,3
	.asciz "right"

LDIFF_SYM1535=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1535
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1536=Lfde209_end - Lfde209_start
	.long LDIFF_SYM1536
Lfde209_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNamespace_op_Equality_System_Xml_Linq_XNamespace_System_Xml_Linq_XNamespace

LDIFF_SYM1537=Lme_d1 - System_Xml_Linq_XNamespace_op_Equality_System_Xml_Linq_XNamespace_System_Xml_Linq_XNamespace
	.long LDIFF_SYM1537
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.align 3
Lfde209_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNamespace:op_Inequality"
	.asciz "System_Xml_Linq_XNamespace_op_Inequality_System_Xml_Linq_XNamespace_System_Xml_Linq_XNamespace"

	.byte 0,0
	.quad System_Xml_Linq_XNamespace_op_Inequality_System_Xml_Linq_XNamespace_System_Xml_Linq_XNamespace
	.quad Lme_d2

	.byte 2,118,16,3
	.asciz "left"

LDIFF_SYM1538=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1538
	.byte 2,141,16,3
	.asciz "right"

LDIFF_SYM1539=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1539
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1540=Lfde210_end - Lfde210_start
	.long LDIFF_SYM1540
Lfde210_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNamespace_op_Inequality_System_Xml_Linq_XNamespace_System_Xml_Linq_XNamespace

LDIFF_SYM1541=Lme_d2 - System_Xml_Linq_XNamespace_op_Inequality_System_Xml_Linq_XNamespace_System_Xml_Linq_XNamespace
	.long LDIFF_SYM1541
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde210_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNamespace:op_Implicit"
	.asciz "System_Xml_Linq_XNamespace_op_Implicit_string"

	.byte 0,0
	.quad System_Xml_Linq_XNamespace_op_Implicit_string
	.quad Lme_d3

	.byte 2,118,16,3
	.asciz "namespaceName"

LDIFF_SYM1542=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1542
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1543=Lfde211_end - Lfde211_start
	.long LDIFF_SYM1543
Lfde211_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNamespace_op_Implicit_string

LDIFF_SYM1544=Lme_d3 - System_Xml_Linq_XNamespace_op_Implicit_string
	.long LDIFF_SYM1544
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.align 3
Lfde211_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNamespace:GetHashCode"
	.asciz "System_Xml_Linq_XNamespace_GetHashCode"

	.byte 0,0
	.quad System_Xml_Linq_XNamespace_GetHashCode
	.quad Lme_d4

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1545=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1545
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1546=Lfde212_end - Lfde212_start
	.long LDIFF_SYM1546
Lfde212_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNamespace_GetHashCode

LDIFF_SYM1547=Lme_d4 - System_Xml_Linq_XNamespace_GetHashCode
	.long LDIFF_SYM1547
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde212_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNamespace:ToString"
	.asciz "System_Xml_Linq_XNamespace_ToString"

	.byte 0,0
	.quad System_Xml_Linq_XNamespace_ToString
	.quad Lme_d5

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1548=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1548
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1549=Lfde213_end - Lfde213_start
	.long LDIFF_SYM1549
Lfde213_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNamespace_ToString

LDIFF_SYM1550=Lme_d5 - System_Xml_Linq_XNamespace_ToString
	.long LDIFF_SYM1550
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde213_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNode:.ctor"
	.asciz "System_Xml_Linq_XNode__ctor"

	.byte 0,0
	.quad System_Xml_Linq_XNode__ctor
	.quad Lme_d6

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1551=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1551
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1552=Lfde214_end - Lfde214_start
	.long LDIFF_SYM1552
Lfde214_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNode__ctor

LDIFF_SYM1553=Lme_d6 - System_Xml_Linq_XNode__ctor
	.long LDIFF_SYM1553
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde214_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNode:set_PreviousNode"
	.asciz "System_Xml_Linq_XNode_set_PreviousNode_System_Xml_Linq_XNode"

	.byte 0,0
	.quad System_Xml_Linq_XNode_set_PreviousNode_System_Xml_Linq_XNode
	.quad Lme_d7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1554=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1554
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM1555=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1555
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1556=Lfde215_end - Lfde215_start
	.long LDIFF_SYM1556
Lfde215_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNode_set_PreviousNode_System_Xml_Linq_XNode

LDIFF_SYM1557=Lme_d7 - System_Xml_Linq_XNode_set_PreviousNode_System_Xml_Linq_XNode
	.long LDIFF_SYM1557
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde215_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNode:get_NextNode"
	.asciz "System_Xml_Linq_XNode_get_NextNode"

	.byte 0,0
	.quad System_Xml_Linq_XNode_get_NextNode
	.quad Lme_d8

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1558=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1558
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1559=Lfde216_end - Lfde216_start
	.long LDIFF_SYM1559
Lfde216_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNode_get_NextNode

LDIFF_SYM1560=Lme_d8 - System_Xml_Linq_XNode_get_NextNode
	.long LDIFF_SYM1560
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde216_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNode:set_NextNode"
	.asciz "System_Xml_Linq_XNode_set_NextNode_System_Xml_Linq_XNode"

	.byte 0,0
	.quad System_Xml_Linq_XNode_set_NextNode_System_Xml_Linq_XNode
	.quad Lme_d9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1561=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1561
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM1562=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1562
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1563=Lfde217_end - Lfde217_start
	.long LDIFF_SYM1563
Lfde217_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNode_set_NextNode_System_Xml_Linq_XNode

LDIFF_SYM1564=Lme_d9 - System_Xml_Linq_XNode_set_NextNode_System_Xml_Linq_XNode
	.long LDIFF_SYM1564
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde217_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_102:

	.byte 8
	.asciz "System_Xml_Linq_SaveOptions"

	.byte 4
LDIFF_SYM1565=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1565
	.byte 9
	.asciz "None"

	.byte 0,9
	.asciz "DisableFormatting"

	.byte 1,9
	.asciz "OmitDuplicateNamespaces"

	.byte 2,0,7
	.asciz "System_Xml_Linq_SaveOptions"

LDIFF_SYM1566=LTDIE_102 - Ldebug_info_start
	.long LDIFF_SYM1566
LTDIE_102_POINTER:

	.byte 13
LDIFF_SYM1567=LTDIE_102 - Ldebug_info_start
	.long LDIFF_SYM1567
LTDIE_102_REFERENCE:

	.byte 14
LDIFF_SYM1568=LTDIE_102 - Ldebug_info_start
	.long LDIFF_SYM1568
	.byte 2
	.asciz "System.Xml.Linq.XNode:ToString"
	.asciz "System_Xml_Linq_XNode_ToString_System_Xml_Linq_SaveOptions"

	.byte 0,0
	.quad System_Xml_Linq_XNode_ToString_System_Xml_Linq_SaveOptions
	.quad Lme_da

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1569=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1569
	.byte 2,141,16,3
	.asciz "options"

LDIFF_SYM1570=LTDIE_102 - Ldebug_info_start
	.long LDIFF_SYM1570
	.byte 2,141,24,11
	.asciz "V_0"

LDIFF_SYM1571=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1571
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM1572=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1572
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM1573=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1573
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM1574=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1574
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1575=Lfde218_end - Lfde218_start
	.long LDIFF_SYM1575
Lfde218_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNode_ToString_System_Xml_Linq_SaveOptions

LDIFF_SYM1576=Lme_da - System_Xml_Linq_XNode_ToString_System_Xml_Linq_SaveOptions
	.long LDIFF_SYM1576
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde218_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_103:

	.byte 8
	.asciz "System_Xml_XmlNodeType"

	.byte 4
LDIFF_SYM1577=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1577
	.byte 9
	.asciz "None"

	.byte 0,9
	.asciz "Element"

	.byte 1,9
	.asciz "Attribute"

	.byte 2,9
	.asciz "Text"

	.byte 3,9
	.asciz "CDATA"

	.byte 4,9
	.asciz "EntityReference"

	.byte 5,9
	.asciz "Entity"

	.byte 6,9
	.asciz "ProcessingInstruction"

	.byte 7,9
	.asciz "Comment"

	.byte 8,9
	.asciz "Document"

	.byte 9,9
	.asciz "DocumentType"

	.byte 10,9
	.asciz "DocumentFragment"

	.byte 11,9
	.asciz "Notation"

	.byte 12,9
	.asciz "Whitespace"

	.byte 13,9
	.asciz "SignificantWhitespace"

	.byte 14,9
	.asciz "EndElement"

	.byte 15,9
	.asciz "EndEntity"

	.byte 16,9
	.asciz "XmlDeclaration"

	.byte 17,0,7
	.asciz "System_Xml_XmlNodeType"

LDIFF_SYM1578=LTDIE_103 - Ldebug_info_start
	.long LDIFF_SYM1578
LTDIE_103_POINTER:

	.byte 13
LDIFF_SYM1579=LTDIE_103 - Ldebug_info_start
	.long LDIFF_SYM1579
LTDIE_103_REFERENCE:

	.byte 14
LDIFF_SYM1580=LTDIE_103 - Ldebug_info_start
	.long LDIFF_SYM1580
LTDIE_104:

	.byte 5
	.asciz "System_Xml_Linq_XProcessingInstruction"

	.byte 88,16
LDIFF_SYM1581=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM1581
	.byte 2,35,0,6
	.asciz "name"

LDIFF_SYM1582=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1582
	.byte 2,35,72,6
	.asciz "data"

LDIFF_SYM1583=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1583
	.byte 2,35,80,0,7
	.asciz "System_Xml_Linq_XProcessingInstruction"

LDIFF_SYM1584=LTDIE_104 - Ldebug_info_start
	.long LDIFF_SYM1584
LTDIE_104_POINTER:

	.byte 13
LDIFF_SYM1585=LTDIE_104 - Ldebug_info_start
	.long LDIFF_SYM1585
LTDIE_104_REFERENCE:

	.byte 14
LDIFF_SYM1586=LTDIE_104 - Ldebug_info_start
	.long LDIFF_SYM1586
	.byte 2
	.asciz "System.Xml.Linq.XNode:ReadFrom"
	.asciz "System_Xml_Linq_XNode_ReadFrom_System_Xml_XmlReader_System_Xml_Linq_LoadOptions"

	.byte 0,0
	.quad System_Xml_Linq_XNode_ReadFrom_System_Xml_XmlReader_System_Xml_Linq_LoadOptions
	.quad Lme_db

	.byte 2,118,16,3
	.asciz "r"

LDIFF_SYM1587=LTDIE_52_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1587
	.byte 1,105,3
	.asciz "options"

LDIFF_SYM1588=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM1588
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1589=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1589
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM1590=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1590
	.byte 1,104,11
	.asciz "V_2"

LDIFF_SYM1591=LTDIE_37_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1591
	.byte 1,104,11
	.asciz "V_3"

LDIFF_SYM1592=LTDIE_104_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1592
	.byte 1,104,11
	.asciz "V_4"

LDIFF_SYM1593=LTDIE_39_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1593
	.byte 1,104,11
	.asciz "V_5"

LDIFF_SYM1594=LTDIE_75_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1594
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1595=Lfde219_end - Lfde219_start
	.long LDIFF_SYM1595
Lfde219_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNode_ReadFrom_System_Xml_XmlReader_System_Xml_Linq_LoadOptions

LDIFF_SYM1596=Lme_db - System_Xml_Linq_XNode_ReadFrom_System_Xml_XmlReader_System_Xml_Linq_LoadOptions
	.long LDIFF_SYM1596
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,152,10,153,9,68,154,8
	.align 3
Lfde219_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNode:Remove"
	.asciz "System_Xml_Linq_XNode_Remove"

	.byte 0,0
	.quad System_Xml_Linq_XNode_Remove
	.quad Lme_dc

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1597=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1597
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1598=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1598
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1599=Lfde220_end - Lfde220_start
	.long LDIFF_SYM1599
Lfde220_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNode_Remove

LDIFF_SYM1600=Lme_dc - System_Xml_Linq_XNode_Remove
	.long LDIFF_SYM1600
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,153,2,154,1
	.align 3
Lfde220_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNode:ToString"
	.asciz "System_Xml_Linq_XNode_ToString"

	.byte 0,0
	.quad System_Xml_Linq_XNode_ToString
	.quad Lme_dd

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1601=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1601
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1602=Lfde221_end - Lfde221_start
	.long LDIFF_SYM1602
Lfde221_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNode_ToString

LDIFF_SYM1603=Lme_dd - System_Xml_Linq_XNode_ToString
	.long LDIFF_SYM1603
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde221_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_105:

	.byte 5
	.asciz "_<Ancestors>c__Iterator0"

	.byte 48,16
LDIFF_SYM1604=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM1604
	.byte 2,35,0,6
	.asciz "<el>__0"

LDIFF_SYM1605=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1605
	.byte 2,35,16,6
	.asciz "$this"

LDIFF_SYM1606=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1606
	.byte 2,35,24,6
	.asciz "$current"

LDIFF_SYM1607=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1607
	.byte 2,35,32,6
	.asciz "$disposing"

LDIFF_SYM1608=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1608
	.byte 2,35,40,6
	.asciz "$PC"

LDIFF_SYM1609=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1609
	.byte 2,35,44,0,7
	.asciz "_<Ancestors>c__Iterator0"

LDIFF_SYM1610=LTDIE_105 - Ldebug_info_start
	.long LDIFF_SYM1610
LTDIE_105_POINTER:

	.byte 13
LDIFF_SYM1611=LTDIE_105 - Ldebug_info_start
	.long LDIFF_SYM1611
LTDIE_105_REFERENCE:

	.byte 14
LDIFF_SYM1612=LTDIE_105 - Ldebug_info_start
	.long LDIFF_SYM1612
	.byte 2
	.asciz "System.Xml.Linq.XNode:Ancestors"
	.asciz "System_Xml_Linq_XNode_Ancestors"

	.byte 0,0
	.quad System_Xml_Linq_XNode_Ancestors
	.quad Lme_df

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1613=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1613
	.byte 2,141,16,11
	.asciz "V_0"

LDIFF_SYM1614=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1614
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1615=Lfde222_end - Lfde222_start
	.long LDIFF_SYM1615
Lfde222_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNode_Ancestors

LDIFF_SYM1616=Lme_df - System_Xml_Linq_XNode_Ancestors
	.long LDIFF_SYM1616
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde222_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNode:.cctor"
	.asciz "System_Xml_Linq_XNode__cctor"

	.byte 0,0
	.quad System_Xml_Linq_XNode__cctor
	.quad Lme_e0

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1617=Lfde223_end - Lfde223_start
	.long LDIFF_SYM1617
Lfde223_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNode__cctor

LDIFF_SYM1618=Lme_e0 - System_Xml_Linq_XNode__cctor
	.long LDIFF_SYM1618
	.long 0
	.byte 12,31,0,68,14,16,157,2,158,1,68,13,29
	.align 3
Lfde223_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNode/<Ancestors>c__Iterator0:.ctor"
	.asciz "System_Xml_Linq_XNode__Ancestorsc__Iterator0__ctor"

	.byte 0,0
	.quad System_Xml_Linq_XNode__Ancestorsc__Iterator0__ctor
	.quad Lme_e1

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1619=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1619
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1620=Lfde224_end - Lfde224_start
	.long LDIFF_SYM1620
Lfde224_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNode__Ancestorsc__Iterator0__ctor

LDIFF_SYM1621=Lme_e1 - System_Xml_Linq_XNode__Ancestorsc__Iterator0__ctor
	.long LDIFF_SYM1621
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde224_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNode/<Ancestors>c__Iterator0:MoveNext"
	.asciz "System_Xml_Linq_XNode__Ancestorsc__Iterator0_MoveNext"

	.byte 0,0
	.quad System_Xml_Linq_XNode__Ancestorsc__Iterator0_MoveNext
	.quad Lme_e2

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1622=LTDIE_105_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1622
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1623=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1623
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1624=Lfde225_end - Lfde225_start
	.long LDIFF_SYM1624
Lfde225_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNode__Ancestorsc__Iterator0_MoveNext

LDIFF_SYM1625=Lme_e2 - System_Xml_Linq_XNode__Ancestorsc__Iterator0_MoveNext
	.long LDIFF_SYM1625
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,151,4,152,3,68,153,2,154,1
	.align 3
Lfde225_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNode/<Ancestors>c__Iterator0:System.Collections.Generic.IEnumerator<System.Xml.Linq.XElement>.get_Current"
	.asciz "System_Xml_Linq_XNode__Ancestorsc__Iterator0_System_Collections_Generic_IEnumerator_System_Xml_Linq_XElement_get_Current"

	.byte 0,0
	.quad System_Xml_Linq_XNode__Ancestorsc__Iterator0_System_Collections_Generic_IEnumerator_System_Xml_Linq_XElement_get_Current
	.quad Lme_e3

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1626=LTDIE_105_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1626
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1627=Lfde226_end - Lfde226_start
	.long LDIFF_SYM1627
Lfde226_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNode__Ancestorsc__Iterator0_System_Collections_Generic_IEnumerator_System_Xml_Linq_XElement_get_Current

LDIFF_SYM1628=Lme_e3 - System_Xml_Linq_XNode__Ancestorsc__Iterator0_System_Collections_Generic_IEnumerator_System_Xml_Linq_XElement_get_Current
	.long LDIFF_SYM1628
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde226_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNode/<Ancestors>c__Iterator0:System.Collections.IEnumerator.get_Current"
	.asciz "System_Xml_Linq_XNode__Ancestorsc__Iterator0_System_Collections_IEnumerator_get_Current"

	.byte 0,0
	.quad System_Xml_Linq_XNode__Ancestorsc__Iterator0_System_Collections_IEnumerator_get_Current
	.quad Lme_e4

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1629=LTDIE_105_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1629
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1630=Lfde227_end - Lfde227_start
	.long LDIFF_SYM1630
Lfde227_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNode__Ancestorsc__Iterator0_System_Collections_IEnumerator_get_Current

LDIFF_SYM1631=Lme_e4 - System_Xml_Linq_XNode__Ancestorsc__Iterator0_System_Collections_IEnumerator_get_Current
	.long LDIFF_SYM1631
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde227_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNode/<Ancestors>c__Iterator0:Dispose"
	.asciz "System_Xml_Linq_XNode__Ancestorsc__Iterator0_Dispose"

	.byte 0,0
	.quad System_Xml_Linq_XNode__Ancestorsc__Iterator0_Dispose
	.quad Lme_e5

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1632=LTDIE_105_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1632
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1633=Lfde228_end - Lfde228_start
	.long LDIFF_SYM1633
Lfde228_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNode__Ancestorsc__Iterator0_Dispose

LDIFF_SYM1634=Lme_e5 - System_Xml_Linq_XNode__Ancestorsc__Iterator0_Dispose
	.long LDIFF_SYM1634
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde228_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNode/<Ancestors>c__Iterator0:Reset"
	.asciz "System_Xml_Linq_XNode__Ancestorsc__Iterator0_Reset"

	.byte 0,0
	.quad System_Xml_Linq_XNode__Ancestorsc__Iterator0_Reset
	.quad Lme_e6

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1635=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1635
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1636=Lfde229_end - Lfde229_start
	.long LDIFF_SYM1636
Lfde229_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNode__Ancestorsc__Iterator0_Reset

LDIFF_SYM1637=Lme_e6 - System_Xml_Linq_XNode__Ancestorsc__Iterator0_Reset
	.long LDIFF_SYM1637
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde229_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNode/<Ancestors>c__Iterator0:System.Collections.IEnumerable.GetEnumerator"
	.asciz "System_Xml_Linq_XNode__Ancestorsc__Iterator0_System_Collections_IEnumerable_GetEnumerator"

	.byte 0,0
	.quad System_Xml_Linq_XNode__Ancestorsc__Iterator0_System_Collections_IEnumerable_GetEnumerator
	.quad Lme_e7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1638=LTDIE_105_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1638
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1639=Lfde230_end - Lfde230_start
	.long LDIFF_SYM1639
Lfde230_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNode__Ancestorsc__Iterator0_System_Collections_IEnumerable_GetEnumerator

LDIFF_SYM1640=Lme_e7 - System_Xml_Linq_XNode__Ancestorsc__Iterator0_System_Collections_IEnumerable_GetEnumerator
	.long LDIFF_SYM1640
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde230_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNode/<Ancestors>c__Iterator0:System.Collections.Generic.IEnumerable<System.Xml.Linq.XElement>.GetEnumerator"
	.asciz "System_Xml_Linq_XNode__Ancestorsc__Iterator0_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator"

	.byte 0,0
	.quad System_Xml_Linq_XNode__Ancestorsc__Iterator0_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator
	.quad Lme_e8

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1641=LTDIE_105_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1641
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1642=LTDIE_105_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1642
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1643=Lfde231_end - Lfde231_start
	.long LDIFF_SYM1643
Lfde231_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNode__Ancestorsc__Iterator0_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator

LDIFF_SYM1644=Lme_e8 - System_Xml_Linq_XNode__Ancestorsc__Iterator0_System_Collections_Generic_IEnumerable_System_Xml_Linq_XElement_GetEnumerator
	.long LDIFF_SYM1644
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.align 3
Lfde231_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_106:

	.byte 5
	.asciz "System_Xml_Linq_XNodeDocumentOrderComparer"

	.byte 16,16
LDIFF_SYM1645=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM1645
	.byte 2,35,0,0,7
	.asciz "System_Xml_Linq_XNodeDocumentOrderComparer"

LDIFF_SYM1646=LTDIE_106 - Ldebug_info_start
	.long LDIFF_SYM1646
LTDIE_106_POINTER:

	.byte 13
LDIFF_SYM1647=LTDIE_106 - Ldebug_info_start
	.long LDIFF_SYM1647
LTDIE_106_REFERENCE:

	.byte 14
LDIFF_SYM1648=LTDIE_106 - Ldebug_info_start
	.long LDIFF_SYM1648
	.byte 2
	.asciz "System.Xml.Linq.XNodeDocumentOrderComparer:.ctor"
	.asciz "System_Xml_Linq_XNodeDocumentOrderComparer__ctor"

	.byte 0,0
	.quad System_Xml_Linq_XNodeDocumentOrderComparer__ctor
	.quad Lme_e9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1649=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1649
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1650=Lfde232_end - Lfde232_start
	.long LDIFF_SYM1650
Lfde232_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNodeDocumentOrderComparer__ctor

LDIFF_SYM1651=Lme_e9 - System_Xml_Linq_XNodeDocumentOrderComparer__ctor
	.long LDIFF_SYM1651
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde232_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_107:

	.byte 8
	.asciz "_CompareResult"

	.byte 4
LDIFF_SYM1652=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1652
	.byte 9
	.asciz "Same"

	.byte 0,9
	.asciz "Random"

	.byte 1,9
	.asciz "Parent"

	.byte 2,9
	.asciz "Child"

	.byte 3,9
	.asciz "Ancestor"

	.byte 4,9
	.asciz "Descendant"

	.byte 5,9
	.asciz "Preceding"

	.byte 6,9
	.asciz "Following"

	.byte 7,0,7
	.asciz "_CompareResult"

LDIFF_SYM1653=LTDIE_107 - Ldebug_info_start
	.long LDIFF_SYM1653
LTDIE_107_POINTER:

	.byte 13
LDIFF_SYM1654=LTDIE_107 - Ldebug_info_start
	.long LDIFF_SYM1654
LTDIE_107_REFERENCE:

	.byte 14
LDIFF_SYM1655=LTDIE_107 - Ldebug_info_start
	.long LDIFF_SYM1655
	.byte 2
	.asciz "System.Xml.Linq.XNodeDocumentOrderComparer:Compare"
	.asciz "System_Xml_Linq_XNodeDocumentOrderComparer_Compare_System_Xml_Linq_XNode_System_Xml_Linq_XNode"

	.byte 0,0
	.quad System_Xml_Linq_XNodeDocumentOrderComparer_Compare_System_Xml_Linq_XNode_System_Xml_Linq_XNode
	.quad Lme_ea

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1656=LTDIE_106_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1656
	.byte 2,141,24,3
	.asciz "x"

LDIFF_SYM1657=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1657
	.byte 2,141,32,3
	.asciz "y"

LDIFF_SYM1658=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1658
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1659=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1659
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM1660=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1660
	.byte 2,141,40,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1661=Lfde233_end - Lfde233_start
	.long LDIFF_SYM1661
Lfde233_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNodeDocumentOrderComparer_Compare_System_Xml_Linq_XNode_System_Xml_Linq_XNode

LDIFF_SYM1662=Lme_ea - System_Xml_Linq_XNodeDocumentOrderComparer_Compare_System_Xml_Linq_XNode_System_Xml_Linq_XNode
	.long LDIFF_SYM1662
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde233_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNodeDocumentOrderComparer:CompareCore"
	.asciz "System_Xml_Linq_XNodeDocumentOrderComparer_CompareCore_System_Xml_Linq_XNode_System_Xml_Linq_XNode"

	.byte 0,0
	.quad System_Xml_Linq_XNodeDocumentOrderComparer_CompareCore_System_Xml_Linq_XNode_System_Xml_Linq_XNode
	.quad Lme_eb

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1663=LTDIE_106_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1663
	.byte 1,104,3
	.asciz "n1"

LDIFF_SYM1664=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1664
	.byte 1,105,3
	.asciz "n2"

LDIFF_SYM1665=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1665
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1666=LTDIE_107 - Ldebug_info_start
	.long LDIFF_SYM1666
	.byte 1,106,11
	.asciz "V_1"

LDIFF_SYM1667=LTDIE_107 - Ldebug_info_start
	.long LDIFF_SYM1667
	.byte 1,103,11
	.asciz "V_2"

LDIFF_SYM1668=LTDIE_107 - Ldebug_info_start
	.long LDIFF_SYM1668
	.byte 1,103,11
	.asciz "V_3"

LDIFF_SYM1669=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1669
	.byte 1,103,11
	.asciz "V_4"

LDIFF_SYM1670=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1670
	.byte 1,103,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1671=Lfde234_end - Lfde234_start
	.long LDIFF_SYM1671
Lfde234_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNodeDocumentOrderComparer_CompareCore_System_Xml_Linq_XNode_System_Xml_Linq_XNode

LDIFF_SYM1672=Lme_eb - System_Xml_Linq_XNodeDocumentOrderComparer_CompareCore_System_Xml_Linq_XNode_System_Xml_Linq_XNode
	.long LDIFF_SYM1672
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,150,6,151,5,68,152,4,153,3,68,154,2
	.align 3
Lfde234_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNodeDocumentOrderComparer:CompareSibling"
	.asciz "System_Xml_Linq_XNodeDocumentOrderComparer_CompareSibling_System_Xml_Linq_XNode_System_Xml_Linq_XNode_System_Xml_Linq_XNodeDocumentOrderComparer_CompareResult"

	.byte 0,0
	.quad System_Xml_Linq_XNodeDocumentOrderComparer_CompareSibling_System_Xml_Linq_XNode_System_Xml_Linq_XNode_System_Xml_Linq_XNodeDocumentOrderComparer_CompareResult
	.quad Lme_ec

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1673=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1673
	.byte 0,3
	.asciz "n1"

LDIFF_SYM1674=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1674
	.byte 1,104,3
	.asciz "n2"

LDIFF_SYM1675=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1675
	.byte 1,105,3
	.asciz "forSameValue"

LDIFF_SYM1676=LTDIE_107 - Ldebug_info_start
	.long LDIFF_SYM1676
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1677=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1677
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1678=Lfde235_end - Lfde235_start
	.long LDIFF_SYM1678
Lfde235_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNodeDocumentOrderComparer_CompareSibling_System_Xml_Linq_XNode_System_Xml_Linq_XNode_System_Xml_Linq_XNodeDocumentOrderComparer_CompareResult

LDIFF_SYM1679=Lme_ec - System_Xml_Linq_XNodeDocumentOrderComparer_CompareSibling_System_Xml_Linq_XNode_System_Xml_Linq_XNode_System_Xml_Linq_XNodeDocumentOrderComparer_CompareResult
	.long LDIFF_SYM1679
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4,153,3,68,154,2
	.align 3
Lfde235_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNodeDocumentOrderComparer:System.Collections.IComparer.Compare"
	.asciz "System_Xml_Linq_XNodeDocumentOrderComparer_System_Collections_IComparer_Compare_object_object"

	.byte 0,0
	.quad System_Xml_Linq_XNodeDocumentOrderComparer_System_Collections_IComparer_Compare_object_object
	.quad Lme_ed

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1680=LTDIE_106_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1680
	.byte 1,104,3
	.asciz "n1"

LDIFF_SYM1681=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1681
	.byte 1,105,3
	.asciz "n2"

LDIFF_SYM1682=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1682
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1683=Lfde236_end - Lfde236_start
	.long LDIFF_SYM1683
Lfde236_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNodeDocumentOrderComparer_System_Collections_IComparer_Compare_object_object

LDIFF_SYM1684=Lme_ed - System_Xml_Linq_XNodeDocumentOrderComparer_System_Collections_IComparer_Compare_object_object
	.long LDIFF_SYM1684
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4,153,3
	.align 3
Lfde236_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_108:

	.byte 5
	.asciz "System_Xml_Linq_XNodeEqualityComparer"

	.byte 16,16
LDIFF_SYM1685=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM1685
	.byte 2,35,0,0,7
	.asciz "System_Xml_Linq_XNodeEqualityComparer"

LDIFF_SYM1686=LTDIE_108 - Ldebug_info_start
	.long LDIFF_SYM1686
LTDIE_108_POINTER:

	.byte 13
LDIFF_SYM1687=LTDIE_108 - Ldebug_info_start
	.long LDIFF_SYM1687
LTDIE_108_REFERENCE:

	.byte 14
LDIFF_SYM1688=LTDIE_108 - Ldebug_info_start
	.long LDIFF_SYM1688
	.byte 2
	.asciz "System.Xml.Linq.XNodeEqualityComparer:.ctor"
	.asciz "System_Xml_Linq_XNodeEqualityComparer__ctor"

	.byte 0,0
	.quad System_Xml_Linq_XNodeEqualityComparer__ctor
	.quad Lme_ee

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1689=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1689
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1690=Lfde237_end - Lfde237_start
	.long LDIFF_SYM1690
Lfde237_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNodeEqualityComparer__ctor

LDIFF_SYM1691=Lme_ee - System_Xml_Linq_XNodeEqualityComparer__ctor
	.long LDIFF_SYM1691
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde237_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNodeEqualityComparer:Equals"
	.asciz "System_Xml_Linq_XNodeEqualityComparer_Equals_System_Xml_Linq_XNode_System_Xml_Linq_XNode"

	.byte 0,0
	.quad System_Xml_Linq_XNodeEqualityComparer_Equals_System_Xml_Linq_XNode_System_Xml_Linq_XNode
	.quad Lme_ef

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1692=LTDIE_108_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1692
	.byte 1,104,3
	.asciz "x"

LDIFF_SYM1693=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1693
	.byte 1,105,3
	.asciz "y"

LDIFF_SYM1694=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1694
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1695=LTDIE_103 - Ldebug_info_start
	.long LDIFF_SYM1695
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM1696=LTDIE_74_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1696
	.byte 1,105,11
	.asciz "V_2"

LDIFF_SYM1697=LTDIE_74_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1697
	.byte 1,106,11
	.asciz "V_3"

LDIFF_SYM1698=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1698
	.byte 1,106,11
	.asciz "V_4"

LDIFF_SYM1699=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1699
	.byte 1,105,11
	.asciz "V_5"

LDIFF_SYM1700=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1700
	.byte 2,141,56,11
	.asciz "V_6"

LDIFF_SYM1701=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1701
	.byte 1,106,11
	.asciz "V_7"

LDIFF_SYM1702=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1702
	.byte 1,105,11
	.asciz "V_8"

LDIFF_SYM1703=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1703
	.byte 1,106,11
	.asciz "V_9"

LDIFF_SYM1704=LTDIE_91_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1704
	.byte 1,103,11
	.asciz "V_10"

LDIFF_SYM1705=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1705
	.byte 1,102,11
	.asciz "V_11"

LDIFF_SYM1706=LTDIE_91_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1706
	.byte 3,141,192,0,11
	.asciz "V_12"

LDIFF_SYM1707=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1707
	.byte 1,106,11
	.asciz "V_13"

LDIFF_SYM1708=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1708
	.byte 1,105,11
	.asciz "V_14"

LDIFF_SYM1709=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1709
	.byte 3,141,200,0,11
	.asciz "V_15"

LDIFF_SYM1710=LTDIE_39_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1710
	.byte 1,105,11
	.asciz "V_16"

LDIFF_SYM1711=LTDIE_39_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1711
	.byte 1,106,11
	.asciz "V_17"

LDIFF_SYM1712=LTDIE_104_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1712
	.byte 1,105,11
	.asciz "V_18"

LDIFF_SYM1713=LTDIE_104_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1713
	.byte 1,106,11
	.asciz "V_19"

LDIFF_SYM1714=LTDIE_75_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1714
	.byte 1,105,11
	.asciz "V_20"

LDIFF_SYM1715=LTDIE_75_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1715
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1716=Lfde238_end - Lfde238_start
	.long LDIFF_SYM1716
Lfde238_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNodeEqualityComparer_Equals_System_Xml_Linq_XNode_System_Xml_Linq_XNode

LDIFF_SYM1717=Lme_ef - System_Xml_Linq_XNodeEqualityComparer_Equals_System_Xml_Linq_XNode_System_Xml_Linq_XNode
	.long LDIFF_SYM1717
	.long 0
	.byte 12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,150,18,151,17,68,152,16,153,15,68,154,14
	.align 3
Lfde238_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNodeEqualityComparer:Equals"
	.asciz "System_Xml_Linq_XNodeEqualityComparer_Equals_System_Xml_Linq_XAttribute_System_Xml_Linq_XAttribute"

	.byte 0,0
	.quad System_Xml_Linq_XNodeEqualityComparer_Equals_System_Xml_Linq_XAttribute_System_Xml_Linq_XAttribute
	.quad Lme_f0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1718=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1718
	.byte 0,3
	.asciz "a1"

LDIFF_SYM1719=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1719
	.byte 1,105,3
	.asciz "a2"

LDIFF_SYM1720=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1720
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1721=Lfde239_end - Lfde239_start
	.long LDIFF_SYM1721
Lfde239_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNodeEqualityComparer_Equals_System_Xml_Linq_XAttribute_System_Xml_Linq_XAttribute

LDIFF_SYM1722=Lme_f0 - System_Xml_Linq_XNodeEqualityComparer_Equals_System_Xml_Linq_XAttribute_System_Xml_Linq_XAttribute
	.long LDIFF_SYM1722
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6,154,5
	.align 3
Lfde239_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNodeEqualityComparer:Equals"
	.asciz "System_Xml_Linq_XNodeEqualityComparer_Equals_System_Xml_Linq_XDeclaration_System_Xml_Linq_XDeclaration"

	.byte 0,0
	.quad System_Xml_Linq_XNodeEqualityComparer_Equals_System_Xml_Linq_XDeclaration_System_Xml_Linq_XDeclaration
	.quad Lme_f1

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1723=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1723
	.byte 0,3
	.asciz "d1"

LDIFF_SYM1724=LTDIE_73_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1724
	.byte 1,105,3
	.asciz "d2"

LDIFF_SYM1725=LTDIE_73_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1725
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1726=Lfde240_end - Lfde240_start
	.long LDIFF_SYM1726
Lfde240_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNodeEqualityComparer_Equals_System_Xml_Linq_XDeclaration_System_Xml_Linq_XDeclaration

LDIFF_SYM1727=Lme_f1 - System_Xml_Linq_XNodeEqualityComparer_Equals_System_Xml_Linq_XDeclaration_System_Xml_Linq_XDeclaration
	.long LDIFF_SYM1727
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,153,4,154,3
	.align 3
Lfde240_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNodeEqualityComparer:System.Collections.IEqualityComparer.Equals"
	.asciz "System_Xml_Linq_XNodeEqualityComparer_System_Collections_IEqualityComparer_Equals_object_object"

	.byte 0,0
	.quad System_Xml_Linq_XNodeEqualityComparer_System_Collections_IEqualityComparer_Equals_object_object
	.quad Lme_f2

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1728=LTDIE_108_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1728
	.byte 1,104,3
	.asciz "n1"

LDIFF_SYM1729=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1729
	.byte 1,105,3
	.asciz "n2"

LDIFF_SYM1730=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1730
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1731=Lfde241_end - Lfde241_start
	.long LDIFF_SYM1731
Lfde241_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNodeEqualityComparer_System_Collections_IEqualityComparer_Equals_object_object

LDIFF_SYM1732=Lme_f2 - System_Xml_Linq_XNodeEqualityComparer_System_Collections_IEqualityComparer_Equals_object_object
	.long LDIFF_SYM1732
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4,153,3
	.align 3
Lfde241_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNodeEqualityComparer:GetHashCode"
	.asciz "System_Xml_Linq_XNodeEqualityComparer_GetHashCode_System_Xml_Linq_XDeclaration"

	.byte 0,0
	.quad System_Xml_Linq_XNodeEqualityComparer_GetHashCode_System_Xml_Linq_XDeclaration
	.quad Lme_f3

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1733=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1733
	.byte 0,3
	.asciz "d"

LDIFF_SYM1734=LTDIE_73_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1734
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1735=Lfde242_end - Lfde242_start
	.long LDIFF_SYM1735
Lfde242_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNodeEqualityComparer_GetHashCode_System_Xml_Linq_XDeclaration

LDIFF_SYM1736=Lme_f3 - System_Xml_Linq_XNodeEqualityComparer_GetHashCode_System_Xml_Linq_XDeclaration
	.long LDIFF_SYM1736
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.align 3
Lfde242_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNodeEqualityComparer:GetHashCode"
	.asciz "System_Xml_Linq_XNodeEqualityComparer_GetHashCode_System_Xml_Linq_XNode"

	.byte 0,0
	.quad System_Xml_Linq_XNodeEqualityComparer_GetHashCode_System_Xml_Linq_XNode
	.quad Lme_f4

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1737=LTDIE_108_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1737
	.byte 1,105,3
	.asciz "obj"

LDIFF_SYM1738=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1738
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1739=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1739
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM1740=LTDIE_103 - Ldebug_info_start
	.long LDIFF_SYM1740
	.byte 1,103,11
	.asciz "V_2"

LDIFF_SYM1741=LTDIE_74_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1741
	.byte 1,106,11
	.asciz "V_3"

LDIFF_SYM1742=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1742
	.byte 1,106,11
	.asciz "V_4"

LDIFF_SYM1743=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1743
	.byte 2,141,56,11
	.asciz "V_5"

LDIFF_SYM1744=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1744
	.byte 1,106,11
	.asciz "V_6"

LDIFF_SYM1745=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1745
	.byte 1,105,11
	.asciz "V_7"

LDIFF_SYM1746=LTDIE_91_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1746
	.byte 3,141,192,0,11
	.asciz "V_8"

LDIFF_SYM1747=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1747
	.byte 1,106,11
	.asciz "V_9"

LDIFF_SYM1748=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1748
	.byte 3,141,200,0,11
	.asciz "V_10"

LDIFF_SYM1749=LTDIE_104_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1749
	.byte 1,106,11
	.asciz "V_11"

LDIFF_SYM1750=LTDIE_75_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1750
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1751=Lfde243_end - Lfde243_start
	.long LDIFF_SYM1751
Lfde243_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNodeEqualityComparer_GetHashCode_System_Xml_Linq_XNode

LDIFF_SYM1752=Lme_f4 - System_Xml_Linq_XNodeEqualityComparer_GetHashCode_System_Xml_Linq_XNode
	.long LDIFF_SYM1752
	.long 0
	.byte 12,31,0,68,14,176,1,157,22,158,21,68,13,29,68,150,20,151,19,68,152,18,153,17,68,154,16
	.align 3
Lfde243_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XNodeEqualityComparer:System.Collections.IEqualityComparer.GetHashCode"
	.asciz "System_Xml_Linq_XNodeEqualityComparer_System_Collections_IEqualityComparer_GetHashCode_object"

	.byte 0,0
	.quad System_Xml_Linq_XNodeEqualityComparer_System_Collections_IEqualityComparer_GetHashCode_object
	.quad Lme_f5

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1753=LTDIE_108_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1753
	.byte 1,105,3
	.asciz "obj"

LDIFF_SYM1754=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1754
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1755=Lfde244_end - Lfde244_start
	.long LDIFF_SYM1755
Lfde244_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XNodeEqualityComparer_System_Collections_IEqualityComparer_GetHashCode_object

LDIFF_SYM1756=Lme_f5 - System_Xml_Linq_XNodeEqualityComparer_System_Collections_IEqualityComparer_GetHashCode_object
	.long LDIFF_SYM1756
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,153,4
	.align 3
Lfde244_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XObject:.ctor"
	.asciz "System_Xml_Linq_XObject__ctor"

	.byte 0,0
	.quad System_Xml_Linq_XObject__ctor
	.quad Lme_f6

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1757=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1757
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1758=Lfde245_end - Lfde245_start
	.long LDIFF_SYM1758
Lfde245_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XObject__ctor

LDIFF_SYM1759=Lme_f6 - System_Xml_Linq_XObject__ctor
	.long LDIFF_SYM1759
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde245_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XObject:set_BaseUri"
	.asciz "System_Xml_Linq_XObject_set_BaseUri_string"

	.byte 0,0
	.quad System_Xml_Linq_XObject_set_BaseUri_string
	.quad Lme_f7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1760=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1760
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM1761=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1761
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1762=Lfde246_end - Lfde246_start
	.long LDIFF_SYM1762
Lfde246_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XObject_set_BaseUri_string

LDIFF_SYM1763=Lme_f7 - System_Xml_Linq_XObject_set_BaseUri_string
	.long LDIFF_SYM1763
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde246_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XObject:get_Document"
	.asciz "System_Xml_Linq_XObject_get_Document"

	.byte 0,0
	.quad System_Xml_Linq_XObject_get_Document
	.quad Lme_f8

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1764=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1764
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1765=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1765
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1766=Lfde247_end - Lfde247_start
	.long LDIFF_SYM1766
Lfde247_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XObject_get_Document

LDIFF_SYM1767=Lme_f8 - System_Xml_Linq_XObject_get_Document
	.long LDIFF_SYM1767
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4,153,3,68,154,2
	.align 3
Lfde247_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XObject:get_Parent"
	.asciz "System_Xml_Linq_XObject_get_Parent"

	.byte 0,0
	.quad System_Xml_Linq_XObject_get_Parent
	.quad Lme_fa

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1768=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1768
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1769=Lfde248_end - Lfde248_start
	.long LDIFF_SYM1769
Lfde248_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XObject_get_Parent

LDIFF_SYM1770=Lme_fa - System_Xml_Linq_XObject_get_Parent
	.long LDIFF_SYM1770
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,153,2,154,1
	.align 3
Lfde248_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XObject:get_Owner"
	.asciz "System_Xml_Linq_XObject_get_Owner"

	.byte 0,0
	.quad System_Xml_Linq_XObject_get_Owner
	.quad Lme_fb

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1771=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1771
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1772=Lfde249_end - Lfde249_start
	.long LDIFF_SYM1772
Lfde249_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XObject_get_Owner

LDIFF_SYM1773=Lme_fb - System_Xml_Linq_XObject_get_Owner
	.long LDIFF_SYM1773
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde249_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XObject:SetOwner"
	.asciz "System_Xml_Linq_XObject_SetOwner_System_Xml_Linq_XContainer"

	.byte 0,0
	.quad System_Xml_Linq_XObject_SetOwner_System_Xml_Linq_XContainer
	.quad Lme_fc

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1774=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1774
	.byte 2,141,16,3
	.asciz "node"

LDIFF_SYM1775=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1775
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1776=Lfde250_end - Lfde250_start
	.long LDIFF_SYM1776
Lfde250_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XObject_SetOwner_System_Xml_Linq_XContainer

LDIFF_SYM1777=Lme_fc - System_Xml_Linq_XObject_SetOwner_System_Xml_Linq_XContainer
	.long LDIFF_SYM1777
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde250_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XObject:get_LineNumber"
	.asciz "System_Xml_Linq_XObject_get_LineNumber"

	.byte 0,0
	.quad System_Xml_Linq_XObject_get_LineNumber
	.quad Lme_fd

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1778=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1778
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1779=Lfde251_end - Lfde251_start
	.long LDIFF_SYM1779
Lfde251_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XObject_get_LineNumber

LDIFF_SYM1780=Lme_fd - System_Xml_Linq_XObject_get_LineNumber
	.long LDIFF_SYM1780
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde251_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XObject:set_LineNumber"
	.asciz "System_Xml_Linq_XObject_set_LineNumber_int"

	.byte 0,0
	.quad System_Xml_Linq_XObject_set_LineNumber_int
	.quad Lme_fe

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1781=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1781
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM1782=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1782
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1783=Lfde252_end - Lfde252_start
	.long LDIFF_SYM1783
Lfde252_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XObject_set_LineNumber_int

LDIFF_SYM1784=Lme_fe - System_Xml_Linq_XObject_set_LineNumber_int
	.long LDIFF_SYM1784
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde252_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XObject:get_LinePosition"
	.asciz "System_Xml_Linq_XObject_get_LinePosition"

	.byte 0,0
	.quad System_Xml_Linq_XObject_get_LinePosition
	.quad Lme_ff

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1785=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1785
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1786=Lfde253_end - Lfde253_start
	.long LDIFF_SYM1786
Lfde253_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XObject_get_LinePosition

LDIFF_SYM1787=Lme_ff - System_Xml_Linq_XObject_get_LinePosition
	.long LDIFF_SYM1787
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde253_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XObject:set_LinePosition"
	.asciz "System_Xml_Linq_XObject_set_LinePosition_int"

	.byte 0,0
	.quad System_Xml_Linq_XObject_set_LinePosition_int
	.quad Lme_100

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1788=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1788
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM1789=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1789
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1790=Lfde254_end - Lfde254_start
	.long LDIFF_SYM1790
Lfde254_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XObject_set_LinePosition_int

LDIFF_SYM1791=Lme_100 - System_Xml_Linq_XObject_set_LinePosition_int
	.long LDIFF_SYM1791
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde254_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XObject:System.Xml.IXmlLineInfo.get_LineNumber"
	.asciz "System_Xml_Linq_XObject_System_Xml_IXmlLineInfo_get_LineNumber"

	.byte 0,0
	.quad System_Xml_Linq_XObject_System_Xml_IXmlLineInfo_get_LineNumber
	.quad Lme_101

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1792=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1792
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1793=Lfde255_end - Lfde255_start
	.long LDIFF_SYM1793
Lfde255_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XObject_System_Xml_IXmlLineInfo_get_LineNumber

LDIFF_SYM1794=Lme_101 - System_Xml_Linq_XObject_System_Xml_IXmlLineInfo_get_LineNumber
	.long LDIFF_SYM1794
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde255_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XObject:System.Xml.IXmlLineInfo.get_LinePosition"
	.asciz "System_Xml_Linq_XObject_System_Xml_IXmlLineInfo_get_LinePosition"

	.byte 0,0
	.quad System_Xml_Linq_XObject_System_Xml_IXmlLineInfo_get_LinePosition
	.quad Lme_102

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1795=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1795
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1796=Lfde256_end - Lfde256_start
	.long LDIFF_SYM1796
Lfde256_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XObject_System_Xml_IXmlLineInfo_get_LinePosition

LDIFF_SYM1797=Lme_102 - System_Xml_Linq_XObject_System_Xml_IXmlLineInfo_get_LinePosition
	.long LDIFF_SYM1797
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde256_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XObject:System.Xml.IXmlLineInfo.HasLineInfo"
	.asciz "System_Xml_Linq_XObject_System_Xml_IXmlLineInfo_HasLineInfo"

	.byte 0,0
	.quad System_Xml_Linq_XObject_System_Xml_IXmlLineInfo_HasLineInfo
	.quad Lme_103

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1798=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1798
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1799=Lfde257_end - Lfde257_start
	.long LDIFF_SYM1799
Lfde257_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XObject_System_Xml_IXmlLineInfo_HasLineInfo

LDIFF_SYM1800=Lme_103 - System_Xml_Linq_XObject_System_Xml_IXmlLineInfo_HasLineInfo
	.long LDIFF_SYM1800
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde257_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_109:

	.byte 17
	.asciz "System_Xml_IXmlLineInfo"

	.byte 16,7
	.asciz "System_Xml_IXmlLineInfo"

LDIFF_SYM1801=LTDIE_109 - Ldebug_info_start
	.long LDIFF_SYM1801
LTDIE_109_POINTER:

	.byte 13
LDIFF_SYM1802=LTDIE_109 - Ldebug_info_start
	.long LDIFF_SYM1802
LTDIE_109_REFERENCE:

	.byte 14
LDIFF_SYM1803=LTDIE_109 - Ldebug_info_start
	.long LDIFF_SYM1803
	.byte 2
	.asciz "System.Xml.Linq.XObject:FillLineInfoAndBaseUri"
	.asciz "System_Xml_Linq_XObject_FillLineInfoAndBaseUri_System_Xml_XmlReader_System_Xml_Linq_LoadOptions"

	.byte 0,0
	.quad System_Xml_Linq_XObject_FillLineInfoAndBaseUri_System_Xml_XmlReader_System_Xml_Linq_LoadOptions
	.quad Lme_104

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1804=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1804
	.byte 1,104,3
	.asciz "r"

LDIFF_SYM1805=LTDIE_52_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1805
	.byte 2,141,48,3
	.asciz "options"

LDIFF_SYM1806=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM1806
	.byte 2,141,56,11
	.asciz "V_0"

LDIFF_SYM1807=LTDIE_109_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1807
	.byte 1,103,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1808=Lfde258_end - Lfde258_start
	.long LDIFF_SYM1808
Lfde258_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XObject_FillLineInfoAndBaseUri_System_Xml_XmlReader_System_Xml_Linq_LoadOptions

LDIFF_SYM1809=Lme_104 - System_Xml_Linq_XObject_FillLineInfoAndBaseUri_System_Xml_XmlReader_System_Xml_Linq_LoadOptions
	.long LDIFF_SYM1809
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,149,6,150,5,68,151,4,152,3
	.align 3
Lfde258_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XObject:OnAddingObject"
	.asciz "System_Xml_Linq_XObject_OnAddingObject_object"

	.byte 0,0
	.quad System_Xml_Linq_XObject_OnAddingObject_object
	.quad Lme_105

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1810=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1810
	.byte 2,141,16,3
	.asciz "addedObject"

LDIFF_SYM1811=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1811
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1812=Lfde259_end - Lfde259_start
	.long LDIFF_SYM1812
Lfde259_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XObject_OnAddingObject_object

LDIFF_SYM1813=Lme_105 - System_Xml_Linq_XObject_OnAddingObject_object
	.long LDIFF_SYM1813
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde259_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XObject:OnAddedObject"
	.asciz "System_Xml_Linq_XObject_OnAddedObject_object"

	.byte 0,0
	.quad System_Xml_Linq_XObject_OnAddedObject_object
	.quad Lme_106

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1814=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1814
	.byte 2,141,16,3
	.asciz "addedObject"

LDIFF_SYM1815=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1815
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1816=Lfde260_end - Lfde260_start
	.long LDIFF_SYM1816
Lfde260_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XObject_OnAddedObject_object

LDIFF_SYM1817=Lme_106 - System_Xml_Linq_XObject_OnAddedObject_object
	.long LDIFF_SYM1817
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde260_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XObject:OnNameChanging"
	.asciz "System_Xml_Linq_XObject_OnNameChanging_object"

	.byte 0,0
	.quad System_Xml_Linq_XObject_OnNameChanging_object
	.quad Lme_107

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1818=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1818
	.byte 2,141,16,3
	.asciz "renamedObject"

LDIFF_SYM1819=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1819
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1820=Lfde261_end - Lfde261_start
	.long LDIFF_SYM1820
Lfde261_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XObject_OnNameChanging_object

LDIFF_SYM1821=Lme_107 - System_Xml_Linq_XObject_OnNameChanging_object
	.long LDIFF_SYM1821
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde261_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XObject:OnNameChanged"
	.asciz "System_Xml_Linq_XObject_OnNameChanged_object"

	.byte 0,0
	.quad System_Xml_Linq_XObject_OnNameChanged_object
	.quad Lme_108

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1822=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1822
	.byte 2,141,16,3
	.asciz "renamedObject"

LDIFF_SYM1823=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1823
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1824=Lfde262_end - Lfde262_start
	.long LDIFF_SYM1824
Lfde262_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XObject_OnNameChanged_object

LDIFF_SYM1825=Lme_108 - System_Xml_Linq_XObject_OnNameChanged_object
	.long LDIFF_SYM1825
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde262_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XObject:OnRemovingObject"
	.asciz "System_Xml_Linq_XObject_OnRemovingObject_object"

	.byte 0,0
	.quad System_Xml_Linq_XObject_OnRemovingObject_object
	.quad Lme_109

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1826=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1826
	.byte 2,141,16,3
	.asciz "removedObject"

LDIFF_SYM1827=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1827
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1828=Lfde263_end - Lfde263_start
	.long LDIFF_SYM1828
Lfde263_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XObject_OnRemovingObject_object

LDIFF_SYM1829=Lme_109 - System_Xml_Linq_XObject_OnRemovingObject_object
	.long LDIFF_SYM1829
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde263_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XObject:OnRemovedObject"
	.asciz "System_Xml_Linq_XObject_OnRemovedObject_object"

	.byte 0,0
	.quad System_Xml_Linq_XObject_OnRemovedObject_object
	.quad Lme_10a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1830=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1830
	.byte 2,141,16,3
	.asciz "removedObject"

LDIFF_SYM1831=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1831
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1832=Lfde264_end - Lfde264_start
	.long LDIFF_SYM1832
Lfde264_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XObject_OnRemovedObject_object

LDIFF_SYM1833=Lme_10a - System_Xml_Linq_XObject_OnRemovedObject_object
	.long LDIFF_SYM1833
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde264_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XObject:OnValueChanging"
	.asciz "System_Xml_Linq_XObject_OnValueChanging_object"

	.byte 0,0
	.quad System_Xml_Linq_XObject_OnValueChanging_object
	.quad Lme_10b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1834=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1834
	.byte 2,141,16,3
	.asciz "changedObject"

LDIFF_SYM1835=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1835
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1836=Lfde265_end - Lfde265_start
	.long LDIFF_SYM1836
Lfde265_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XObject_OnValueChanging_object

LDIFF_SYM1837=Lme_10b - System_Xml_Linq_XObject_OnValueChanging_object
	.long LDIFF_SYM1837
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde265_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XObject:OnValueChanged"
	.asciz "System_Xml_Linq_XObject_OnValueChanged_object"

	.byte 0,0
	.quad System_Xml_Linq_XObject_OnValueChanged_object
	.quad Lme_10c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1838=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1838
	.byte 2,141,16,3
	.asciz "changedObject"

LDIFF_SYM1839=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1839
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1840=Lfde266_end - Lfde266_start
	.long LDIFF_SYM1840
Lfde266_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XObject_OnValueChanged_object

LDIFF_SYM1841=Lme_10c - System_Xml_Linq_XObject_OnValueChanged_object
	.long LDIFF_SYM1841
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde266_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_111:

	.byte 5
	.asciz "System_EventArgs"

	.byte 16,16
LDIFF_SYM1842=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM1842
	.byte 2,35,0,0,7
	.asciz "System_EventArgs"

LDIFF_SYM1843=LTDIE_111 - Ldebug_info_start
	.long LDIFF_SYM1843
LTDIE_111_POINTER:

	.byte 13
LDIFF_SYM1844=LTDIE_111 - Ldebug_info_start
	.long LDIFF_SYM1844
LTDIE_111_REFERENCE:

	.byte 14
LDIFF_SYM1845=LTDIE_111 - Ldebug_info_start
	.long LDIFF_SYM1845
LTDIE_112:

	.byte 8
	.asciz "System_Xml_Linq_XObjectChange"

	.byte 4
LDIFF_SYM1846=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1846
	.byte 9
	.asciz "Add"

	.byte 0,9
	.asciz "Remove"

	.byte 1,9
	.asciz "Name"

	.byte 2,9
	.asciz "Value"

	.byte 3,0,7
	.asciz "System_Xml_Linq_XObjectChange"

LDIFF_SYM1847=LTDIE_112 - Ldebug_info_start
	.long LDIFF_SYM1847
LTDIE_112_POINTER:

	.byte 13
LDIFF_SYM1848=LTDIE_112 - Ldebug_info_start
	.long LDIFF_SYM1848
LTDIE_112_REFERENCE:

	.byte 14
LDIFF_SYM1849=LTDIE_112 - Ldebug_info_start
	.long LDIFF_SYM1849
LTDIE_110:

	.byte 5
	.asciz "System_Xml_Linq_XObjectChangeEventArgs"

	.byte 20,16
LDIFF_SYM1850=LTDIE_111 - Ldebug_info_start
	.long LDIFF_SYM1850
	.byte 2,35,0,6
	.asciz "type"

LDIFF_SYM1851=LTDIE_112 - Ldebug_info_start
	.long LDIFF_SYM1851
	.byte 2,35,16,0,7
	.asciz "System_Xml_Linq_XObjectChangeEventArgs"

LDIFF_SYM1852=LTDIE_110 - Ldebug_info_start
	.long LDIFF_SYM1852
LTDIE_110_POINTER:

	.byte 13
LDIFF_SYM1853=LTDIE_110 - Ldebug_info_start
	.long LDIFF_SYM1853
LTDIE_110_REFERENCE:

	.byte 14
LDIFF_SYM1854=LTDIE_110 - Ldebug_info_start
	.long LDIFF_SYM1854
	.byte 2
	.asciz "System.Xml.Linq.XObject:OnChanging"
	.asciz "System_Xml_Linq_XObject_OnChanging_object_System_Xml_Linq_XObjectChangeEventArgs"

	.byte 0,0
	.quad System_Xml_Linq_XObject_OnChanging_object_System_Xml_Linq_XObjectChangeEventArgs
	.quad Lme_10d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1855=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1855
	.byte 1,104,3
	.asciz "sender"

LDIFF_SYM1856=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1856
	.byte 2,141,24,3
	.asciz "args"

LDIFF_SYM1857=LTDIE_110_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1857
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1858=Lfde267_end - Lfde267_start
	.long LDIFF_SYM1858
Lfde267_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XObject_OnChanging_object_System_Xml_Linq_XObjectChangeEventArgs

LDIFF_SYM1859=Lme_10d - System_Xml_Linq_XObject_OnChanging_object_System_Xml_Linq_XObjectChangeEventArgs
	.long LDIFF_SYM1859
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6
	.align 3
Lfde267_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XObject:OnChanged"
	.asciz "System_Xml_Linq_XObject_OnChanged_object_System_Xml_Linq_XObjectChangeEventArgs"

	.byte 0,0
	.quad System_Xml_Linq_XObject_OnChanged_object_System_Xml_Linq_XObjectChangeEventArgs
	.quad Lme_10e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1860=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1860
	.byte 1,104,3
	.asciz "sender"

LDIFF_SYM1861=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1861
	.byte 2,141,24,3
	.asciz "args"

LDIFF_SYM1862=LTDIE_110_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1862
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1863=Lfde268_end - Lfde268_start
	.long LDIFF_SYM1863
Lfde268_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XObject_OnChanged_object_System_Xml_Linq_XObjectChangeEventArgs

LDIFF_SYM1864=Lme_10e - System_Xml_Linq_XObject_OnChanged_object_System_Xml_Linq_XObjectChangeEventArgs
	.long LDIFF_SYM1864
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6
	.align 3
Lfde268_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XObjectChangeEventArgs:.ctor"
	.asciz "System_Xml_Linq_XObjectChangeEventArgs__ctor_System_Xml_Linq_XObjectChange"

	.byte 0,0
	.quad System_Xml_Linq_XObjectChangeEventArgs__ctor_System_Xml_Linq_XObjectChange
	.quad Lme_10f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1865=LTDIE_110_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1865
	.byte 2,141,16,3
	.asciz "objectChange"

LDIFF_SYM1866=LTDIE_112 - Ldebug_info_start
	.long LDIFF_SYM1866
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1867=Lfde269_end - Lfde269_start
	.long LDIFF_SYM1867
Lfde269_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XObjectChangeEventArgs__ctor_System_Xml_Linq_XObjectChange

LDIFF_SYM1868=Lme_10f - System_Xml_Linq_XObjectChangeEventArgs__ctor_System_Xml_Linq_XObjectChange
	.long LDIFF_SYM1868
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde269_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XObjectChangeEventArgs:.cctor"
	.asciz "System_Xml_Linq_XObjectChangeEventArgs__cctor"

	.byte 0,0
	.quad System_Xml_Linq_XObjectChangeEventArgs__cctor
	.quad Lme_110

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1869=Lfde270_end - Lfde270_start
	.long LDIFF_SYM1869
Lfde270_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XObjectChangeEventArgs__cctor

LDIFF_SYM1870=Lme_110 - System_Xml_Linq_XObjectChangeEventArgs__cctor
	.long LDIFF_SYM1870
	.long 0
	.byte 12,31,0,68,14,16,157,2,158,1,68,13,29
	.align 3
Lfde270_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XProcessingInstruction:.ctor"
	.asciz "System_Xml_Linq_XProcessingInstruction__ctor_string_string"

	.byte 0,0
	.quad System_Xml_Linq_XProcessingInstruction__ctor_string_string
	.quad Lme_111

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1871=LTDIE_104_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1871
	.byte 1,104,3
	.asciz "target"

LDIFF_SYM1872=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1872
	.byte 2,141,24,3
	.asciz "data"

LDIFF_SYM1873=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1873
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1874=Lfde271_end - Lfde271_start
	.long LDIFF_SYM1874
Lfde271_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XProcessingInstruction__ctor_string_string

LDIFF_SYM1875=Lme_111 - System_Xml_Linq_XProcessingInstruction__ctor_string_string
	.long LDIFF_SYM1875
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4
	.align 3
Lfde271_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XProcessingInstruction:.ctor"
	.asciz "System_Xml_Linq_XProcessingInstruction__ctor_System_Xml_Linq_XProcessingInstruction"

	.byte 0,0
	.quad System_Xml_Linq_XProcessingInstruction__ctor_System_Xml_Linq_XProcessingInstruction
	.quad Lme_112

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1876=LTDIE_104_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1876
	.byte 1,105,3
	.asciz "other"

LDIFF_SYM1877=LTDIE_104_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1877
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1878=Lfde272_end - Lfde272_start
	.long LDIFF_SYM1878
Lfde272_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XProcessingInstruction__ctor_System_Xml_Linq_XProcessingInstruction

LDIFF_SYM1879=Lme_112 - System_Xml_Linq_XProcessingInstruction__ctor_System_Xml_Linq_XProcessingInstruction
	.long LDIFF_SYM1879
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,153,2
	.align 3
Lfde272_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XProcessingInstruction:get_Data"
	.asciz "System_Xml_Linq_XProcessingInstruction_get_Data"

	.byte 0,0
	.quad System_Xml_Linq_XProcessingInstruction_get_Data
	.quad Lme_113

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1880=LTDIE_104_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1880
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1881=Lfde273_end - Lfde273_start
	.long LDIFF_SYM1881
Lfde273_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XProcessingInstruction_get_Data

LDIFF_SYM1882=Lme_113 - System_Xml_Linq_XProcessingInstruction_get_Data
	.long LDIFF_SYM1882
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde273_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XProcessingInstruction:set_Data"
	.asciz "System_Xml_Linq_XProcessingInstruction_set_Data_string"

	.byte 0,0
	.quad System_Xml_Linq_XProcessingInstruction_set_Data_string
	.quad Lme_114

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1883=LTDIE_104_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1883
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM1884=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1884
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1885=Lfde274_end - Lfde274_start
	.long LDIFF_SYM1885
Lfde274_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XProcessingInstruction_set_Data_string

LDIFF_SYM1886=Lme_114 - System_Xml_Linq_XProcessingInstruction_set_Data_string
	.long LDIFF_SYM1886
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde274_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XProcessingInstruction:get_NodeType"
	.asciz "System_Xml_Linq_XProcessingInstruction_get_NodeType"

	.byte 0,0
	.quad System_Xml_Linq_XProcessingInstruction_get_NodeType
	.quad Lme_115

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1887=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1887
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1888=Lfde275_end - Lfde275_start
	.long LDIFF_SYM1888
Lfde275_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XProcessingInstruction_get_NodeType

LDIFF_SYM1889=Lme_115 - System_Xml_Linq_XProcessingInstruction_get_NodeType
	.long LDIFF_SYM1889
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde275_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XProcessingInstruction:get_Target"
	.asciz "System_Xml_Linq_XProcessingInstruction_get_Target"

	.byte 0,0
	.quad System_Xml_Linq_XProcessingInstruction_get_Target
	.quad Lme_116

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1890=LTDIE_104_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1890
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1891=Lfde276_end - Lfde276_start
	.long LDIFF_SYM1891
Lfde276_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XProcessingInstruction_get_Target

LDIFF_SYM1892=Lme_116 - System_Xml_Linq_XProcessingInstruction_get_Target
	.long LDIFF_SYM1892
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde276_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XProcessingInstruction:WriteTo"
	.asciz "System_Xml_Linq_XProcessingInstruction_WriteTo_System_Xml_XmlWriter"

	.byte 0,0
	.quad System_Xml_Linq_XProcessingInstruction_WriteTo_System_Xml_XmlWriter
	.quad Lme_117

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1893=LTDIE_104_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1893
	.byte 2,141,16,3
	.asciz "writer"

LDIFF_SYM1894=LTDIE_36_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1894
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1895=Lfde277_end - Lfde277_start
	.long LDIFF_SYM1895
Lfde277_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XProcessingInstruction_WriteTo_System_Xml_XmlWriter

LDIFF_SYM1896=Lme_117 - System_Xml_Linq_XProcessingInstruction_WriteTo_System_Xml_XmlWriter
	.long LDIFF_SYM1896
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde277_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XText:.ctor"
	.asciz "System_Xml_Linq_XText__ctor_string"

	.byte 0,0
	.quad System_Xml_Linq_XText__ctor_string
	.quad Lme_118

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1897=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1897
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM1898=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1898
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1899=Lfde278_end - Lfde278_start
	.long LDIFF_SYM1899
Lfde278_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XText__ctor_string

LDIFF_SYM1900=Lme_118 - System_Xml_Linq_XText__ctor_string
	.long LDIFF_SYM1900
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde278_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XText:.ctor"
	.asciz "System_Xml_Linq_XText__ctor_System_Xml_Linq_XText"

	.byte 0,0
	.quad System_Xml_Linq_XText__ctor_System_Xml_Linq_XText
	.quad Lme_119

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1901=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1901
	.byte 2,141,16,3
	.asciz "other"

LDIFF_SYM1902=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1902
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1903=Lfde279_end - Lfde279_start
	.long LDIFF_SYM1903
Lfde279_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XText__ctor_System_Xml_Linq_XText

LDIFF_SYM1904=Lme_119 - System_Xml_Linq_XText__ctor_System_Xml_Linq_XText
	.long LDIFF_SYM1904
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde279_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XText:get_NodeType"
	.asciz "System_Xml_Linq_XText_get_NodeType"

	.byte 0,0
	.quad System_Xml_Linq_XText_get_NodeType
	.quad Lme_11a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1905=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1905
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1906=Lfde280_end - Lfde280_start
	.long LDIFF_SYM1906
Lfde280_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XText_get_NodeType

LDIFF_SYM1907=Lme_11a - System_Xml_Linq_XText_get_NodeType
	.long LDIFF_SYM1907
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde280_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XText:get_Value"
	.asciz "System_Xml_Linq_XText_get_Value"

	.byte 0,0
	.quad System_Xml_Linq_XText_get_Value
	.quad Lme_11b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1908=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1908
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1909=Lfde281_end - Lfde281_start
	.long LDIFF_SYM1909
Lfde281_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XText_get_Value

LDIFF_SYM1910=Lme_11b - System_Xml_Linq_XText_get_Value
	.long LDIFF_SYM1910
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde281_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XText:set_Value"
	.asciz "System_Xml_Linq_XText_set_Value_string"

	.byte 0,0
	.quad System_Xml_Linq_XText_set_Value_string
	.quad Lme_11c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1911=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1911
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM1912=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1912
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1913=Lfde282_end - Lfde282_start
	.long LDIFF_SYM1913
Lfde282_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XText_set_Value_string

LDIFF_SYM1914=Lme_11c - System_Xml_Linq_XText_set_Value_string
	.long LDIFF_SYM1914
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde282_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XText:WriteTo"
	.asciz "System_Xml_Linq_XText_WriteTo_System_Xml_XmlWriter"

	.byte 0,0
	.quad System_Xml_Linq_XText_WriteTo_System_Xml_XmlWriter
	.quad Lme_11d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1915=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1915
	.byte 1,105,3
	.asciz "writer"

LDIFF_SYM1916=LTDIE_36_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1916
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1917=Lfde283_end - Lfde283_start
	.long LDIFF_SYM1917
Lfde283_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XText_WriteTo_System_Xml_XmlWriter

LDIFF_SYM1918=Lme_11d - System_Xml_Linq_XText_WriteTo_System_Xml_XmlWriter
	.long LDIFF_SYM1918
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,153,4,154,3
	.align 3
Lfde283_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XText:<WriteTo>m__0"
	.asciz "System_Xml_Linq_XText__WriteTom__0_char"

	.byte 0,0
	.quad System_Xml_Linq_XText__WriteTom__0_char
	.quad Lme_11e

	.byte 2,118,16,3
	.asciz "c"

LDIFF_SYM1919=LDIE_CHAR - Ldebug_info_start
	.long LDIFF_SYM1919
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1920=Lfde284_end - Lfde284_start
	.long LDIFF_SYM1920
Lfde284_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XText__WriteTom__0_char

LDIFF_SYM1921=Lme_11e - System_Xml_Linq_XText__WriteTom__0_char
	.long LDIFF_SYM1921
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.align 3
Lfde284_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_113:

	.byte 8
	.asciz "System_TypeCode"

	.byte 4
LDIFF_SYM1922=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1922
	.byte 9
	.asciz "Empty"

	.byte 0,9
	.asciz "Object"

	.byte 1,9
	.asciz "DBNull"

	.byte 2,9
	.asciz "Boolean"

	.byte 3,9
	.asciz "Char"

	.byte 4,9
	.asciz "SByte"

	.byte 5,9
	.asciz "Byte"

	.byte 6,9
	.asciz "Int16"

	.byte 7,9
	.asciz "UInt16"

	.byte 8,9
	.asciz "Int32"

	.byte 9,9
	.asciz "UInt32"

	.byte 10,9
	.asciz "Int64"

	.byte 11,9
	.asciz "UInt64"

	.byte 12,9
	.asciz "Single"

	.byte 13,9
	.asciz "Double"

	.byte 14,9
	.asciz "Decimal"

	.byte 15,9
	.asciz "DateTime"

	.byte 16,9
	.asciz "String"

	.byte 18,0,7
	.asciz "System_TypeCode"

LDIFF_SYM1923=LTDIE_113 - Ldebug_info_start
	.long LDIFF_SYM1923
LTDIE_113_POINTER:

	.byte 13
LDIFF_SYM1924=LTDIE_113 - Ldebug_info_start
	.long LDIFF_SYM1924
LTDIE_113_REFERENCE:

	.byte 14
LDIFF_SYM1925=LTDIE_113 - Ldebug_info_start
	.long LDIFF_SYM1925
LTDIE_114:

	.byte 5
	.asciz "System_Double"

	.byte 24,16
LDIFF_SYM1926=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM1926
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM1927=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM1927
	.byte 2,35,16,0,7
	.asciz "System_Double"

LDIFF_SYM1928=LTDIE_114 - Ldebug_info_start
	.long LDIFF_SYM1928
LTDIE_114_POINTER:

	.byte 13
LDIFF_SYM1929=LTDIE_114 - Ldebug_info_start
	.long LDIFF_SYM1929
LTDIE_114_REFERENCE:

	.byte 14
LDIFF_SYM1930=LTDIE_114 - Ldebug_info_start
	.long LDIFF_SYM1930
	.byte 2
	.asciz "System.Xml.Linq.XUtil:ToString"
	.asciz "System_Xml_Linq_XUtil_ToString_object"

	.byte 0,0
	.quad System_Xml_Linq_XUtil_ToString_object
	.quad Lme_11f

	.byte 2,118,16,3
	.asciz "o"

LDIFF_SYM1931=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1931
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1932=LTDIE_113 - Ldebug_info_start
	.long LDIFF_SYM1932
	.byte 1,105,11
	.asciz "V_1"

LDIFF_SYM1933=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1933
	.byte 3,141,200,0,11
	.asciz "V_2"

LDIFF_SYM1934=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM1934
	.byte 3,141,216,0,11
	.asciz "V_3"

LDIFF_SYM1935=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM1935
	.byte 3,141,224,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1936=Lfde285_end - Lfde285_start
	.long LDIFF_SYM1936
Lfde285_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XUtil_ToString_object

LDIFF_SYM1937=Lme_11f - System_Xml_Linq_XUtil_ToString_object
	.long LDIFF_SYM1937
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,152,16,153,15,68,154,14
	.align 3
Lfde285_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_115:

	.byte 5
	.asciz "_<ExpandArray>c__Iterator0"

	.byte 88,16
LDIFF_SYM1938=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM1938
	.byte 2,35,0,6
	.asciz "o"

LDIFF_SYM1939=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1939
	.byte 2,35,16,6
	.asciz "<n>__0"

LDIFF_SYM1940=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1940
	.byte 2,35,24,6
	.asciz "$locvar0"

LDIFF_SYM1941=LTDIE_40_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1941
	.byte 2,35,32,6
	.asciz "<obj>__1"

LDIFF_SYM1942=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1942
	.byte 2,35,40,6
	.asciz "$locvar1"

LDIFF_SYM1943=LTDIE_41_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1943
	.byte 2,35,48,6
	.asciz "$locvar2"

LDIFF_SYM1944=LTDIE_42_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1944
	.byte 2,35,56,6
	.asciz "<oo>__2"

LDIFF_SYM1945=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1945
	.byte 2,35,64,6
	.asciz "$current"

LDIFF_SYM1946=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1946
	.byte 2,35,72,6
	.asciz "$disposing"

LDIFF_SYM1947=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1947
	.byte 2,35,80,6
	.asciz "$PC"

LDIFF_SYM1948=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1948
	.byte 2,35,84,0,7
	.asciz "_<ExpandArray>c__Iterator0"

LDIFF_SYM1949=LTDIE_115 - Ldebug_info_start
	.long LDIFF_SYM1949
LTDIE_115_POINTER:

	.byte 13
LDIFF_SYM1950=LTDIE_115 - Ldebug_info_start
	.long LDIFF_SYM1950
LTDIE_115_REFERENCE:

	.byte 14
LDIFF_SYM1951=LTDIE_115 - Ldebug_info_start
	.long LDIFF_SYM1951
	.byte 2
	.asciz "System.Xml.Linq.XUtil:ExpandArray"
	.asciz "System_Xml_Linq_XUtil_ExpandArray_object"

	.byte 0,0
	.quad System_Xml_Linq_XUtil_ExpandArray_object
	.quad Lme_120

	.byte 2,118,16,3
	.asciz "o"

LDIFF_SYM1952=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1952
	.byte 2,141,16,11
	.asciz "V_0"

LDIFF_SYM1953=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1953
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1954=Lfde286_end - Lfde286_start
	.long LDIFF_SYM1954
Lfde286_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XUtil_ExpandArray_object

LDIFF_SYM1955=Lme_120 - System_Xml_Linq_XUtil_ExpandArray_object
	.long LDIFF_SYM1955
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde286_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XUtil:ToNode"
	.asciz "System_Xml_Linq_XUtil_ToNode_object"

	.byte 0,0
	.quad System_Xml_Linq_XUtil_ToNode_object
	.quad Lme_121

	.byte 2,118,16,3
	.asciz "o"

LDIFF_SYM1956=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1956
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1957=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1957
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1958=Lfde287_end - Lfde287_start
	.long LDIFF_SYM1958
Lfde287_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XUtil_ToNode_object

LDIFF_SYM1959=Lme_121 - System_Xml_Linq_XUtil_ToNode_object
	.long LDIFF_SYM1959
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6,153,5,68,154,4
	.align 3
Lfde287_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XUtil:GetDetachedObject"
	.asciz "System_Xml_Linq_XUtil_GetDetachedObject_System_Xml_Linq_XObject"

	.byte 0,0
	.quad System_Xml_Linq_XUtil_GetDetachedObject_System_Xml_Linq_XObject
	.quad Lme_122

	.byte 2,118,16,3
	.asciz "child"

LDIFF_SYM1960=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1960
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1961=Lfde288_end - Lfde288_start
	.long LDIFF_SYM1961
Lfde288_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XUtil_GetDetachedObject_System_Xml_Linq_XObject

LDIFF_SYM1962=Lme_122 - System_Xml_Linq_XUtil_GetDetachedObject_System_Xml_Linq_XObject
	.long LDIFF_SYM1962
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,153,2,154,1
	.align 3
Lfde288_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XUtil:Clone"
	.asciz "System_Xml_Linq_XUtil_Clone_object"

	.byte 0,0
	.quad System_Xml_Linq_XUtil_Clone_object
	.quad Lme_123

	.byte 2,118,16,3
	.asciz "o"

LDIFF_SYM1963=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1963
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1964=Lfde289_end - Lfde289_start
	.long LDIFF_SYM1964
Lfde289_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XUtil_Clone_object

LDIFF_SYM1965=Lme_123 - System_Xml_Linq_XUtil_Clone_object
	.long LDIFF_SYM1965
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6,153,5,68,154,4
	.align 3
Lfde289_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XUtil/<ExpandArray>c__Iterator0:.ctor"
	.asciz "System_Xml_Linq_XUtil__ExpandArrayc__Iterator0__ctor"

	.byte 0,0
	.quad System_Xml_Linq_XUtil__ExpandArrayc__Iterator0__ctor
	.quad Lme_124

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1966=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1966
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1967=Lfde290_end - Lfde290_start
	.long LDIFF_SYM1967
Lfde290_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XUtil__ExpandArrayc__Iterator0__ctor

LDIFF_SYM1968=Lme_124 - System_Xml_Linq_XUtil__ExpandArrayc__Iterator0__ctor
	.long LDIFF_SYM1968
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde290_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XUtil/<ExpandArray>c__Iterator0:MoveNext"
	.asciz "System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_MoveNext"

	.byte 0,0
	.quad System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_MoveNext
	.quad Lme_125

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1969=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1969
	.byte 2,141,40,11
	.asciz "V_0"

LDIFF_SYM1970=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM1970
	.byte 1,106,11
	.asciz "V_1"

LDIFF_SYM1971=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1971
	.byte 2,141,48,11
	.asciz "V_2"

LDIFF_SYM1972=LTDIE_41_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1972
	.byte 2,141,56,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1973=Lfde291_end - Lfde291_start
	.long LDIFF_SYM1973
Lfde291_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_MoveNext

LDIFF_SYM1974=Lme_125 - System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_MoveNext
	.long LDIFF_SYM1974
	.long 0
	.byte 12,31,0,68,14,192,1,157,24,158,23,68,13,29,68,152,22,153,21,68,154,20
	.align 3
Lfde291_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XUtil/<ExpandArray>c__Iterator0:System.Collections.Generic.IEnumerator<object>.get_Current"
	.asciz "System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_System_Collections_Generic_IEnumerator_object_get_Current"

	.byte 0,0
	.quad System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_System_Collections_Generic_IEnumerator_object_get_Current
	.quad Lme_126

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1975=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1975
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1976=Lfde292_end - Lfde292_start
	.long LDIFF_SYM1976
Lfde292_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_System_Collections_Generic_IEnumerator_object_get_Current

LDIFF_SYM1977=Lme_126 - System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_System_Collections_Generic_IEnumerator_object_get_Current
	.long LDIFF_SYM1977
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde292_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XUtil/<ExpandArray>c__Iterator0:System.Collections.IEnumerator.get_Current"
	.asciz "System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_System_Collections_IEnumerator_get_Current"

	.byte 0,0
	.quad System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_System_Collections_IEnumerator_get_Current
	.quad Lme_127

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1978=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1978
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1979=Lfde293_end - Lfde293_start
	.long LDIFF_SYM1979
Lfde293_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_System_Collections_IEnumerator_get_Current

LDIFF_SYM1980=Lme_127 - System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_System_Collections_IEnumerator_get_Current
	.long LDIFF_SYM1980
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde293_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XUtil/<ExpandArray>c__Iterator0:Dispose"
	.asciz "System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_Dispose"

	.byte 0,0
	.quad System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_Dispose
	.quad Lme_128

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1981=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1981
	.byte 2,141,16,11
	.asciz "V_0"

LDIFF_SYM1982=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1982
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM1983=LTDIE_41_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1983
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1984=Lfde294_end - Lfde294_start
	.long LDIFF_SYM1984
Lfde294_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_Dispose

LDIFF_SYM1985=Lme_128 - System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_Dispose
	.long LDIFF_SYM1985
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29
	.align 3
Lfde294_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XUtil/<ExpandArray>c__Iterator0:Reset"
	.asciz "System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_Reset"

	.byte 0,0
	.quad System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_Reset
	.quad Lme_129

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1986=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1986
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1987=Lfde295_end - Lfde295_start
	.long LDIFF_SYM1987
Lfde295_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_Reset

LDIFF_SYM1988=Lme_129 - System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_Reset
	.long LDIFF_SYM1988
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde295_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XUtil/<ExpandArray>c__Iterator0:System.Collections.IEnumerable.GetEnumerator"
	.asciz "System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_System_Collections_IEnumerable_GetEnumerator"

	.byte 0,0
	.quad System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_System_Collections_IEnumerable_GetEnumerator
	.quad Lme_12a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1989=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1989
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1990=Lfde296_end - Lfde296_start
	.long LDIFF_SYM1990
Lfde296_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_System_Collections_IEnumerable_GetEnumerator

LDIFF_SYM1991=Lme_12a - System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_System_Collections_IEnumerable_GetEnumerator
	.long LDIFF_SYM1991
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde296_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Xml.Linq.XUtil/<ExpandArray>c__Iterator0:System.Collections.Generic.IEnumerable<object>.GetEnumerator"
	.asciz "System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_System_Collections_Generic_IEnumerable_object_GetEnumerator"

	.byte 0,0
	.quad System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_System_Collections_Generic_IEnumerable_object_GetEnumerator
	.quad Lme_12b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM1992=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1992
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM1993=LTDIE_115_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1993
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM1994=Lfde297_end - Lfde297_start
	.long LDIFF_SYM1994
Lfde297_start:

	.long 0
	.align 3
	.quad System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_System_Collections_Generic_IEnumerable_object_GetEnumerator

LDIFF_SYM1995=Lme_12b - System_Xml_Linq_XUtil__ExpandArrayc__Iterator0_System_Collections_Generic_IEnumerable_object_GetEnumerator
	.long LDIFF_SYM1995
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.align 3
Lfde297_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_116:

	.byte 5
	.asciz "System_Array"

	.byte 16,16
LDIFF_SYM1996=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM1996
	.byte 2,35,0,0,7
	.asciz "System_Array"

LDIFF_SYM1997=LTDIE_116 - Ldebug_info_start
	.long LDIFF_SYM1997
LTDIE_116_POINTER:

	.byte 13
LDIFF_SYM1998=LTDIE_116 - Ldebug_info_start
	.long LDIFF_SYM1998
LTDIE_116_REFERENCE:

	.byte 14
LDIFF_SYM1999=LTDIE_116 - Ldebug_info_start
	.long LDIFF_SYM1999
	.byte 2
	.asciz "System.Array:InternalArray__IEnumerable_GetEnumerator<T>"
	.asciz "System_Array_InternalArray__IEnumerable_GetEnumerator_T"

	.byte 0,0
	.quad System_Array_InternalArray__IEnumerable_GetEnumerator_T
	.quad Lme_12d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2000=LTDIE_116_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2000
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2001=Lfde298_end - Lfde298_start
	.long LDIFF_SYM2001
Lfde298_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__IEnumerable_GetEnumerator_T

LDIFF_SYM2002=Lme_12d - System_Array_InternalArray__IEnumerable_GetEnumerator_T
	.long LDIFF_SYM2002
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29
	.align 3
Lfde298_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_get_Count"
	.asciz "System_Array_InternalArray__ICollection_get_Count"

	.byte 0,0
	.quad System_Array_InternalArray__ICollection_get_Count
	.quad Lme_12e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2003=LTDIE_116_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2003
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2004=Lfde299_end - Lfde299_start
	.long LDIFF_SYM2004
Lfde299_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_get_Count

LDIFF_SYM2005=Lme_12e - System_Array_InternalArray__ICollection_get_Count
	.long LDIFF_SYM2005
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde299_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_get_IsReadOnly"
	.asciz "System_Array_InternalArray__ICollection_get_IsReadOnly"

	.byte 0,0
	.quad System_Array_InternalArray__ICollection_get_IsReadOnly
	.quad Lme_12f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2006=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2006
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2007=Lfde300_end - Lfde300_start
	.long LDIFF_SYM2007
Lfde300_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_get_IsReadOnly

LDIFF_SYM2008=Lme_12f - System_Array_InternalArray__ICollection_get_IsReadOnly
	.long LDIFF_SYM2008
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde300_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_Clear"
	.asciz "System_Array_InternalArray__ICollection_Clear"

	.byte 0,0
	.quad System_Array_InternalArray__ICollection_Clear
	.quad Lme_130

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2009=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2009
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2010=Lfde301_end - Lfde301_start
	.long LDIFF_SYM2010
Lfde301_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_Clear

LDIFF_SYM2011=Lme_130 - System_Array_InternalArray__ICollection_Clear
	.long LDIFF_SYM2011
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde301_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_Add<T>"
	.asciz "System_Array_InternalArray__ICollection_Add_T_T"

	.byte 0,0
	.quad System_Array_InternalArray__ICollection_Add_T_T
	.quad Lme_131

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2012=LTDIE_116_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2012
	.byte 2,141,16,3
	.asciz "item"

LDIFF_SYM2013=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2013
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2014=Lfde302_end - Lfde302_start
	.long LDIFF_SYM2014
Lfde302_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_Add_T_T

LDIFF_SYM2015=Lme_131 - System_Array_InternalArray__ICollection_Add_T_T
	.long LDIFF_SYM2015
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde302_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_Remove<T>"
	.asciz "System_Array_InternalArray__ICollection_Remove_T_T"

	.byte 0,0
	.quad System_Array_InternalArray__ICollection_Remove_T_T
	.quad Lme_132

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2016=LTDIE_116_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2016
	.byte 2,141,16,3
	.asciz "item"

LDIFF_SYM2017=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2017
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2018=Lfde303_end - Lfde303_start
	.long LDIFF_SYM2018
Lfde303_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_Remove_T_T

LDIFF_SYM2019=Lme_132 - System_Array_InternalArray__ICollection_Remove_T_T
	.long LDIFF_SYM2019
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde303_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_Contains<T>"
	.asciz "System_Array_InternalArray__ICollection_Contains_T_T"

	.byte 0,0
	.quad System_Array_InternalArray__ICollection_Contains_T_T
	.quad Lme_133

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2020=LTDIE_116_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2020
	.byte 1,106,3
	.asciz "item"

LDIFF_SYM2021=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2021
	.byte 2,141,40,11
	.asciz "V_0"

LDIFF_SYM2022=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2022
	.byte 1,105,11
	.asciz "V_1"

LDIFF_SYM2023=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2023
	.byte 1,104,11
	.asciz "V_2"

LDIFF_SYM2024=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2024
	.byte 3,141,192,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2025=Lfde304_end - Lfde304_start
	.long LDIFF_SYM2025
Lfde304_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_Contains_T_T

LDIFF_SYM2026=Lme_133 - System_Array_InternalArray__ICollection_Contains_T_T
	.long LDIFF_SYM2026
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,152,10,153,9,68,154,8
	.align 3
Lfde304_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_CopyTo<T>"
	.asciz "System_Array_InternalArray__ICollection_CopyTo_T_T___int"

	.byte 0,0
	.quad System_Array_InternalArray__ICollection_CopyTo_T_T___int
	.quad Lme_134

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2027=LTDIE_116_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2027
	.byte 1,104,3
	.asciz "array"

LDIFF_SYM2028=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM2028
	.byte 1,105,3
	.asciz "index"

LDIFF_SYM2029=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2029
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2030=Lfde305_end - Lfde305_start
	.long LDIFF_SYM2030
Lfde305_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_CopyTo_T_T___int

LDIFF_SYM2031=Lme_134 - System_Array_InternalArray__ICollection_CopyTo_T_T___int
	.long LDIFF_SYM2031
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,148,12,149,11,68,150,10,151,9,68,152,8,153,7,68,154,6
	.align 3
Lfde305_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_117:

	.byte 5
	.asciz "System_Predicate`1"

	.byte 104,16
LDIFF_SYM2032=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM2032
	.byte 2,35,0,0,7
	.asciz "System_Predicate`1"

LDIFF_SYM2033=LTDIE_117 - Ldebug_info_start
	.long LDIFF_SYM2033
LTDIE_117_POINTER:

	.byte 13
LDIFF_SYM2034=LTDIE_117 - Ldebug_info_start
	.long LDIFF_SYM2034
LTDIE_117_REFERENCE:

	.byte 14
LDIFF_SYM2035=LTDIE_117 - Ldebug_info_start
	.long LDIFF_SYM2035
	.byte 2
	.asciz "(wrapper delegate-invoke) System.Predicate`1<System.Xml.Linq.XElement>:invoke_bool_T"
	.asciz "wrapper_delegate_invoke_System_Predicate_1_System_Xml_Linq_XElement_invoke_bool_T_System_Xml_Linq_XElement"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Predicate_1_System_Xml_Linq_XElement_invoke_bool_T_System_Xml_Linq_XElement
	.quad Lme_135

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2036=LTDIE_117_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2036
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM2037=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2037
	.byte 2,141,32,11
	.asciz "V_0"

LDIFF_SYM2038=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2038
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM2039=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2039
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2040=Lfde306_end - Lfde306_start
	.long LDIFF_SYM2040
Lfde306_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Predicate_1_System_Xml_Linq_XElement_invoke_bool_T_System_Xml_Linq_XElement

LDIFF_SYM2041=Lme_135 - wrapper_delegate_invoke_System_Predicate_1_System_Xml_Linq_XElement_invoke_bool_T_System_Xml_Linq_XElement
	.long LDIFF_SYM2041
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4,153,3
	.align 3
Lfde306_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_118:

	.byte 5
	.asciz "System_Comparison`1"

	.byte 104,16
LDIFF_SYM2042=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM2042
	.byte 2,35,0,0,7
	.asciz "System_Comparison`1"

LDIFF_SYM2043=LTDIE_118 - Ldebug_info_start
	.long LDIFF_SYM2043
LTDIE_118_POINTER:

	.byte 13
LDIFF_SYM2044=LTDIE_118 - Ldebug_info_start
	.long LDIFF_SYM2044
LTDIE_118_REFERENCE:

	.byte 14
LDIFF_SYM2045=LTDIE_118 - Ldebug_info_start
	.long LDIFF_SYM2045
	.byte 2
	.asciz "(wrapper delegate-invoke) System.Comparison`1<System.Xml.Linq.XElement>:invoke_int_T_T"
	.asciz "wrapper_delegate_invoke_System_Comparison_1_System_Xml_Linq_XElement_invoke_int_T_T_System_Xml_Linq_XElement_System_Xml_Linq_XElement"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Comparison_1_System_Xml_Linq_XElement_invoke_int_T_T_System_Xml_Linq_XElement_System_Xml_Linq_XElement
	.quad Lme_136

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2046=LTDIE_118_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2046
	.byte 1,104,3
	.asciz "param0"

LDIFF_SYM2047=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2047
	.byte 2,141,32,3
	.asciz "param1"

LDIFF_SYM2048=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2048
	.byte 2,141,40,11
	.asciz "V_0"

LDIFF_SYM2049=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2049
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM2050=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2050
	.byte 1,103,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2051=Lfde307_end - Lfde307_start
	.long LDIFF_SYM2051
Lfde307_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Comparison_1_System_Xml_Linq_XElement_invoke_int_T_T_System_Xml_Linq_XElement_System_Xml_Linq_XElement

LDIFF_SYM2052=Lme_136 - wrapper_delegate_invoke_System_Comparison_1_System_Xml_Linq_XElement_invoke_int_T_T_System_Xml_Linq_XElement_System_Xml_Linq_XElement
	.long LDIFF_SYM2052
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,151,4,152,3
	.align 3
Lfde307_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_119:

	.byte 5
	.asciz "System_Func`2"

	.byte 104,16
LDIFF_SYM2053=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM2053
	.byte 2,35,0,0,7
	.asciz "System_Func`2"

LDIFF_SYM2054=LTDIE_119 - Ldebug_info_start
	.long LDIFF_SYM2054
LTDIE_119_POINTER:

	.byte 13
LDIFF_SYM2055=LTDIE_119 - Ldebug_info_start
	.long LDIFF_SYM2055
LTDIE_119_REFERENCE:

	.byte 14
LDIFF_SYM2056=LTDIE_119 - Ldebug_info_start
	.long LDIFF_SYM2056
	.byte 2
	.asciz "(wrapper delegate-invoke) System.Func`2<System.Xml.Linq.XAttribute, bool>:invoke_TResult_T"
	.asciz "wrapper_delegate_invoke_System_Func_2_System_Xml_Linq_XAttribute_bool_invoke_TResult_T_System_Xml_Linq_XAttribute"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Func_2_System_Xml_Linq_XAttribute_bool_invoke_TResult_T_System_Xml_Linq_XAttribute
	.quad Lme_13b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2057=LTDIE_119_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2057
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM2058=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2058
	.byte 2,141,32,11
	.asciz "V_0"

LDIFF_SYM2059=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2059
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM2060=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2060
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2061=Lfde308_end - Lfde308_start
	.long LDIFF_SYM2061
Lfde308_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Func_2_System_Xml_Linq_XAttribute_bool_invoke_TResult_T_System_Xml_Linq_XAttribute

LDIFF_SYM2062=Lme_13b - wrapper_delegate_invoke_System_Func_2_System_Xml_Linq_XAttribute_bool_invoke_TResult_T_System_Xml_Linq_XAttribute
	.long LDIFF_SYM2062
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4,153,3
	.align 3
Lfde308_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_120:

	.byte 5
	.asciz "_InternalEnumerator`1"

	.byte 32,16
LDIFF_SYM2063=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM2063
	.byte 2,35,0,6
	.asciz "array"

LDIFF_SYM2064=LTDIE_116_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2064
	.byte 2,35,16,6
	.asciz "idx"

LDIFF_SYM2065=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2065
	.byte 2,35,24,0,7
	.asciz "_InternalEnumerator`1"

LDIFF_SYM2066=LTDIE_120 - Ldebug_info_start
	.long LDIFF_SYM2066
LTDIE_120_POINTER:

	.byte 13
LDIFF_SYM2067=LTDIE_120 - Ldebug_info_start
	.long LDIFF_SYM2067
LTDIE_120_REFERENCE:

	.byte 14
LDIFF_SYM2068=LTDIE_120 - Ldebug_info_start
	.long LDIFF_SYM2068
	.byte 2
	.asciz "System.Array/InternalEnumerator`1<System.Collections.Generic.KeyValuePair`2<string, System.Xml.Linq.XNamespace>>:.ctor"
	.asciz "System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace__ctor_System_Array"

	.byte 0,0
	.quad System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace__ctor_System_Array
	.quad Lme_13d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2069=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2069
	.byte 2,141,16,3
	.asciz "array"

LDIFF_SYM2070=LTDIE_116_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2070
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2071=Lfde309_end - Lfde309_start
	.long LDIFF_SYM2071
Lfde309_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace__ctor_System_Array

LDIFF_SYM2072=Lme_13d - System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace__ctor_System_Array
	.long LDIFF_SYM2072
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde309_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array/InternalEnumerator`1<System.Collections.Generic.KeyValuePair`2<string, System.Xml.Linq.XNamespace>>:Dispose"
	.asciz "System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_Dispose"

	.byte 0,0
	.quad System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_Dispose
	.quad Lme_13e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2073=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2073
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2074=Lfde310_end - Lfde310_start
	.long LDIFF_SYM2074
Lfde310_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_Dispose

LDIFF_SYM2075=Lme_13e - System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_Dispose
	.long LDIFF_SYM2075
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde310_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array/InternalEnumerator`1<System.Collections.Generic.KeyValuePair`2<string, System.Xml.Linq.XNamespace>>:MoveNext"
	.asciz "System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_MoveNext"

	.byte 0,0
	.quad System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_MoveNext
	.quad Lme_13f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2076=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2076
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM2077=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2077
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2078=Lfde311_end - Lfde311_start
	.long LDIFF_SYM2078
Lfde311_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_MoveNext

LDIFF_SYM2079=Lme_13f - System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_MoveNext
	.long LDIFF_SYM2079
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.align 3
Lfde311_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array/InternalEnumerator`1<System.Collections.Generic.KeyValuePair`2<string, System.Xml.Linq.XNamespace>>:get_Current"
	.asciz "System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_get_Current"

	.byte 0,0
	.quad System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_get_Current
	.quad Lme_140

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2080=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2080
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2081=Lfde312_end - Lfde312_start
	.long LDIFF_SYM2081
Lfde312_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_get_Current

LDIFF_SYM2082=Lme_140 - System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_get_Current
	.long LDIFF_SYM2082
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.align 3
Lfde312_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array/InternalEnumerator`1<System.Collections.Generic.KeyValuePair`2<string, System.Xml.Linq.XNamespace>>:System.Collections.IEnumerator.Reset"
	.asciz "System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_System_Collections_IEnumerator_Reset"

	.byte 0,0
	.quad System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_System_Collections_IEnumerator_Reset
	.quad Lme_141

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2083=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2083
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2084=Lfde313_end - Lfde313_start
	.long LDIFF_SYM2084
Lfde313_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_System_Collections_IEnumerator_Reset

LDIFF_SYM2085=Lme_141 - System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_System_Collections_IEnumerator_Reset
	.long LDIFF_SYM2085
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde313_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array/InternalEnumerator`1<System.Collections.Generic.KeyValuePair`2<string, System.Xml.Linq.XNamespace>>:System.Collections.IEnumerator.get_Current"
	.asciz "System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_System_Collections_IEnumerator_get_Current"

	.byte 0,0
	.quad System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_System_Collections_IEnumerator_get_Current
	.quad Lme_142

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2086=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2086
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2087=Lfde314_end - Lfde314_start
	.long LDIFF_SYM2087
Lfde314_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_System_Collections_IEnumerator_get_Current

LDIFF_SYM2088=Lme_142 - System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_System_Collections_IEnumerator_get_Current
	.long LDIFF_SYM2088
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde314_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__IEnumerable_GetEnumerator<System.Collections.Generic.KeyValuePair`2<string, System.Xml.Linq.XNamespace>>"
	.asciz "System_Array_InternalArray__IEnumerable_GetEnumerator_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace"

	.byte 0,0
	.quad System_Array_InternalArray__IEnumerable_GetEnumerator_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace
	.quad Lme_143

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2089=LTDIE_116_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2089
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2090=Lfde315_end - Lfde315_start
	.long LDIFF_SYM2090
Lfde315_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__IEnumerable_GetEnumerator_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace

LDIFF_SYM2091=Lme_143 - System_Array_InternalArray__IEnumerable_GetEnumerator_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace
	.long LDIFF_SYM2091
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde315_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_121:

	.byte 5
	.asciz "_InternalEnumerator`1"

	.byte 32,16
LDIFF_SYM2092=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM2092
	.byte 2,35,0,6
	.asciz "array"

LDIFF_SYM2093=LTDIE_116_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2093
	.byte 2,35,16,6
	.asciz "idx"

LDIFF_SYM2094=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2094
	.byte 2,35,24,0,7
	.asciz "_InternalEnumerator`1"

LDIFF_SYM2095=LTDIE_121 - Ldebug_info_start
	.long LDIFF_SYM2095
LTDIE_121_POINTER:

	.byte 13
LDIFF_SYM2096=LTDIE_121 - Ldebug_info_start
	.long LDIFF_SYM2096
LTDIE_121_REFERENCE:

	.byte 14
LDIFF_SYM2097=LTDIE_121 - Ldebug_info_start
	.long LDIFF_SYM2097
	.byte 2
	.asciz "System.Array/InternalEnumerator`1<System.Collections.Generic.KeyValuePair`2<string, System.Xml.Linq.XName>>:.ctor"
	.asciz "System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName__ctor_System_Array"

	.byte 0,0
	.quad System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName__ctor_System_Array
	.quad Lme_145

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2098=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2098
	.byte 2,141,16,3
	.asciz "array"

LDIFF_SYM2099=LTDIE_116_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2099
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2100=Lfde316_end - Lfde316_start
	.long LDIFF_SYM2100
Lfde316_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName__ctor_System_Array

LDIFF_SYM2101=Lme_145 - System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName__ctor_System_Array
	.long LDIFF_SYM2101
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde316_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array/InternalEnumerator`1<System.Collections.Generic.KeyValuePair`2<string, System.Xml.Linq.XName>>:Dispose"
	.asciz "System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_Dispose"

	.byte 0,0
	.quad System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_Dispose
	.quad Lme_146

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2102=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2102
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2103=Lfde317_end - Lfde317_start
	.long LDIFF_SYM2103
Lfde317_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_Dispose

LDIFF_SYM2104=Lme_146 - System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_Dispose
	.long LDIFF_SYM2104
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde317_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array/InternalEnumerator`1<System.Collections.Generic.KeyValuePair`2<string, System.Xml.Linq.XName>>:MoveNext"
	.asciz "System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_MoveNext"

	.byte 0,0
	.quad System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_MoveNext
	.quad Lme_147

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2105=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2105
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM2106=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2106
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2107=Lfde318_end - Lfde318_start
	.long LDIFF_SYM2107
Lfde318_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_MoveNext

LDIFF_SYM2108=Lme_147 - System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_MoveNext
	.long LDIFF_SYM2108
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.align 3
Lfde318_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array/InternalEnumerator`1<System.Collections.Generic.KeyValuePair`2<string, System.Xml.Linq.XName>>:get_Current"
	.asciz "System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_get_Current"

	.byte 0,0
	.quad System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_get_Current
	.quad Lme_148

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2109=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2109
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2110=Lfde319_end - Lfde319_start
	.long LDIFF_SYM2110
Lfde319_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_get_Current

LDIFF_SYM2111=Lme_148 - System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_get_Current
	.long LDIFF_SYM2111
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.align 3
Lfde319_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array/InternalEnumerator`1<System.Collections.Generic.KeyValuePair`2<string, System.Xml.Linq.XName>>:System.Collections.IEnumerator.Reset"
	.asciz "System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_System_Collections_IEnumerator_Reset"

	.byte 0,0
	.quad System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_System_Collections_IEnumerator_Reset
	.quad Lme_149

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2112=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2112
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2113=Lfde320_end - Lfde320_start
	.long LDIFF_SYM2113
Lfde320_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_System_Collections_IEnumerator_Reset

LDIFF_SYM2114=Lme_149 - System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_System_Collections_IEnumerator_Reset
	.long LDIFF_SYM2114
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde320_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array/InternalEnumerator`1<System.Collections.Generic.KeyValuePair`2<string, System.Xml.Linq.XName>>:System.Collections.IEnumerator.get_Current"
	.asciz "System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_System_Collections_IEnumerator_get_Current"

	.byte 0,0
	.quad System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_System_Collections_IEnumerator_get_Current
	.quad Lme_14a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2115=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2115
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2116=Lfde321_end - Lfde321_start
	.long LDIFF_SYM2116
Lfde321_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_System_Collections_IEnumerator_get_Current

LDIFF_SYM2117=Lme_14a - System_Array_InternalEnumerator_1_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_System_Collections_IEnumerator_get_Current
	.long LDIFF_SYM2117
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde321_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__IEnumerable_GetEnumerator<System.Collections.Generic.KeyValuePair`2<string, System.Xml.Linq.XName>>"
	.asciz "System_Array_InternalArray__IEnumerable_GetEnumerator_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName"

	.byte 0,0
	.quad System_Array_InternalArray__IEnumerable_GetEnumerator_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName
	.quad Lme_14b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2118=LTDIE_116_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2118
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2119=Lfde322_end - Lfde322_start
	.long LDIFF_SYM2119
Lfde322_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__IEnumerable_GetEnumerator_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName

LDIFF_SYM2120=Lme_14b - System_Array_InternalArray__IEnumerable_GetEnumerator_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName
	.long LDIFF_SYM2120
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde322_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper delegate-invoke) System.EventHandler`1<System.Xml.Linq.XObjectChangeEventArgs>:invoke_void_object_TEventArgs"
	.asciz "wrapper_delegate_invoke_System_EventHandler_1_System_Xml_Linq_XObjectChangeEventArgs_invoke_void_object_TEventArgs_object_System_Xml_Linq_XObjectChangeEventArgs"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_EventHandler_1_System_Xml_Linq_XObjectChangeEventArgs_invoke_void_object_TEventArgs_object_System_Xml_Linq_XObjectChangeEventArgs
	.quad Lme_14c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2121=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2121
	.byte 1,104,3
	.asciz "param0"

LDIFF_SYM2122=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2122
	.byte 2,141,32,3
	.asciz "param1"

LDIFF_SYM2123=LTDIE_110_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2123
	.byte 2,141,40,11
	.asciz "V_0"

LDIFF_SYM2124=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2124
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM2125=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2125
	.byte 1,103,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2126=Lfde323_end - Lfde323_start
	.long LDIFF_SYM2126
Lfde323_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_EventHandler_1_System_Xml_Linq_XObjectChangeEventArgs_invoke_void_object_TEventArgs_object_System_Xml_Linq_XObjectChangeEventArgs

LDIFF_SYM2127=Lme_14c - wrapper_delegate_invoke_System_EventHandler_1_System_Xml_Linq_XObjectChangeEventArgs_invoke_void_object_TEventArgs_object_System_Xml_Linq_XObjectChangeEventArgs
	.long LDIFF_SYM2127
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,151,4,152,3
	.align 3
Lfde323_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_122:

	.byte 5
	.asciz "System_Func`2"

	.byte 104,16
LDIFF_SYM2128=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM2128
	.byte 2,35,0,0,7
	.asciz "System_Func`2"

LDIFF_SYM2129=LTDIE_122 - Ldebug_info_start
	.long LDIFF_SYM2129
LTDIE_122_POINTER:

	.byte 13
LDIFF_SYM2130=LTDIE_122 - Ldebug_info_start
	.long LDIFF_SYM2130
LTDIE_122_REFERENCE:

	.byte 14
LDIFF_SYM2131=LTDIE_122 - Ldebug_info_start
	.long LDIFF_SYM2131
	.byte 2
	.asciz "(wrapper delegate-invoke) System.Func`2<char, bool>:invoke_TResult_T"
	.asciz "wrapper_delegate_invoke_System_Func_2_char_bool_invoke_TResult_T_char"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Func_2_char_bool_invoke_TResult_T_char
	.quad Lme_151

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2132=LTDIE_122_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2132
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM2133=LDIE_CHAR - Ldebug_info_start
	.long LDIFF_SYM2133
	.byte 2,141,32,11
	.asciz "V_0"

LDIFF_SYM2134=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2134
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM2135=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2135
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2136=Lfde324_end - Lfde324_start
	.long LDIFF_SYM2136
Lfde324_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Func_2_char_bool_invoke_TResult_T_char

LDIFF_SYM2137=Lme_151 - wrapper_delegate_invoke_System_Func_2_char_bool_invoke_TResult_T_char
	.long LDIFF_SYM2137
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4,153,3
	.align 3
Lfde324_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_123:

	.byte 17
	.asciz "System_Collections_Generic_IEnumerable`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEnumerable`1"

LDIFF_SYM2138=LTDIE_123 - Ldebug_info_start
	.long LDIFF_SYM2138
LTDIE_123_POINTER:

	.byte 13
LDIFF_SYM2139=LTDIE_123 - Ldebug_info_start
	.long LDIFF_SYM2139
LTDIE_123_REFERENCE:

	.byte 14
LDIFF_SYM2140=LTDIE_123 - Ldebug_info_start
	.long LDIFF_SYM2140
LTDIE_124:

	.byte 17
	.asciz "System_Collections_Generic_IList`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IList`1"

LDIFF_SYM2141=LTDIE_124 - Ldebug_info_start
	.long LDIFF_SYM2141
LTDIE_124_POINTER:

	.byte 13
LDIFF_SYM2142=LTDIE_124 - Ldebug_info_start
	.long LDIFF_SYM2142
LTDIE_124_REFERENCE:

	.byte 14
LDIFF_SYM2143=LTDIE_124 - Ldebug_info_start
	.long LDIFF_SYM2143
LTDIE_125:

	.byte 17
	.asciz "System_Collections_Generic_IEnumerator`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEnumerator`1"

LDIFF_SYM2144=LTDIE_125 - Ldebug_info_start
	.long LDIFF_SYM2144
LTDIE_125_POINTER:

	.byte 13
LDIFF_SYM2145=LTDIE_125 - Ldebug_info_start
	.long LDIFF_SYM2145
LTDIE_125_REFERENCE:

	.byte 14
LDIFF_SYM2146=LTDIE_125 - Ldebug_info_start
	.long LDIFF_SYM2146
	.byte 2
	.asciz "System.Linq.Enumerable:LastOrDefault<char>"
	.asciz "System_Linq_Enumerable_LastOrDefault_char_System_Collections_Generic_IEnumerable_1_char"

	.byte 0,0
	.quad System_Linq_Enumerable_LastOrDefault_char_System_Collections_Generic_IEnumerable_1_char
	.quad Lme_152

	.byte 2,118,16,3
	.asciz "source"

LDIFF_SYM2147=LTDIE_123_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2147
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM2148=LTDIE_124_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2148
	.byte 1,105,11
	.asciz "V_1"

LDIFF_SYM2149=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2149
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM2150=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM2150
	.byte 1,105,11
	.asciz "V_3"

LDIFF_SYM2151=LDIE_CHAR - Ldebug_info_start
	.long LDIFF_SYM2151
	.byte 1,104,11
	.asciz "V_4"

LDIFF_SYM2152=LDIE_CHAR - Ldebug_info_start
	.long LDIFF_SYM2152
	.byte 1,106,11
	.asciz "V_5"

LDIFF_SYM2153=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2153
	.byte 2,141,48,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2154=Lfde325_end - Lfde325_start
	.long LDIFF_SYM2154
Lfde325_start:

	.long 0
	.align 3
	.quad System_Linq_Enumerable_LastOrDefault_char_System_Collections_Generic_IEnumerable_1_char

LDIFF_SYM2155=Lme_152 - System_Linq_Enumerable_LastOrDefault_char_System_Collections_Generic_IEnumerable_1_char
	.long LDIFF_SYM2155
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,151,8,152,7,68,153,6,154,5
	.align 3
Lfde325_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_126:

	.byte 5
	.asciz "_InternalEnumerator`1"

	.byte 32,16
LDIFF_SYM2156=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM2156
	.byte 2,35,0,6
	.asciz "array"

LDIFF_SYM2157=LTDIE_116_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2157
	.byte 2,35,16,6
	.asciz "idx"

LDIFF_SYM2158=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2158
	.byte 2,35,24,0,7
	.asciz "_InternalEnumerator`1"

LDIFF_SYM2159=LTDIE_126 - Ldebug_info_start
	.long LDIFF_SYM2159
LTDIE_126_POINTER:

	.byte 13
LDIFF_SYM2160=LTDIE_126 - Ldebug_info_start
	.long LDIFF_SYM2160
LTDIE_126_REFERENCE:

	.byte 14
LDIFF_SYM2161=LTDIE_126 - Ldebug_info_start
	.long LDIFF_SYM2161
	.byte 2
	.asciz "System.Array/InternalEnumerator`1<char>:.ctor"
	.asciz "System_Array_InternalEnumerator_1_char__ctor_System_Array"

	.byte 0,0
	.quad System_Array_InternalEnumerator_1_char__ctor_System_Array
	.quad Lme_154

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2162=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2162
	.byte 2,141,16,3
	.asciz "array"

LDIFF_SYM2163=LTDIE_116_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2163
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2164=Lfde326_end - Lfde326_start
	.long LDIFF_SYM2164
Lfde326_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_char__ctor_System_Array

LDIFF_SYM2165=Lme_154 - System_Array_InternalEnumerator_1_char__ctor_System_Array
	.long LDIFF_SYM2165
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde326_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array/InternalEnumerator`1<char>:Dispose"
	.asciz "System_Array_InternalEnumerator_1_char_Dispose"

	.byte 0,0
	.quad System_Array_InternalEnumerator_1_char_Dispose
	.quad Lme_155

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2166=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2166
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2167=Lfde327_end - Lfde327_start
	.long LDIFF_SYM2167
Lfde327_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_char_Dispose

LDIFF_SYM2168=Lme_155 - System_Array_InternalEnumerator_1_char_Dispose
	.long LDIFF_SYM2168
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde327_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array/InternalEnumerator`1<char>:MoveNext"
	.asciz "System_Array_InternalEnumerator_1_char_MoveNext"

	.byte 0,0
	.quad System_Array_InternalEnumerator_1_char_MoveNext
	.quad Lme_156

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2169=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2169
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM2170=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2170
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2171=Lfde328_end - Lfde328_start
	.long LDIFF_SYM2171
Lfde328_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_char_MoveNext

LDIFF_SYM2172=Lme_156 - System_Array_InternalEnumerator_1_char_MoveNext
	.long LDIFF_SYM2172
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.align 3
Lfde328_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array/InternalEnumerator`1<char>:get_Current"
	.asciz "System_Array_InternalEnumerator_1_char_get_Current"

	.byte 0,0
	.quad System_Array_InternalEnumerator_1_char_get_Current
	.quad Lme_157

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2173=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2173
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2174=Lfde329_end - Lfde329_start
	.long LDIFF_SYM2174
Lfde329_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_char_get_Current

LDIFF_SYM2175=Lme_157 - System_Array_InternalEnumerator_1_char_get_Current
	.long LDIFF_SYM2175
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.align 3
Lfde329_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array/InternalEnumerator`1<char>:System.Collections.IEnumerator.Reset"
	.asciz "System_Array_InternalEnumerator_1_char_System_Collections_IEnumerator_Reset"

	.byte 0,0
	.quad System_Array_InternalEnumerator_1_char_System_Collections_IEnumerator_Reset
	.quad Lme_158

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2176=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2176
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2177=Lfde330_end - Lfde330_start
	.long LDIFF_SYM2177
Lfde330_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_char_System_Collections_IEnumerator_Reset

LDIFF_SYM2178=Lme_158 - System_Array_InternalEnumerator_1_char_System_Collections_IEnumerator_Reset
	.long LDIFF_SYM2178
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde330_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array/InternalEnumerator`1<char>:System.Collections.IEnumerator.get_Current"
	.asciz "System_Array_InternalEnumerator_1_char_System_Collections_IEnumerator_get_Current"

	.byte 0,0
	.quad System_Array_InternalEnumerator_1_char_System_Collections_IEnumerator_get_Current
	.quad Lme_159

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2179=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2179
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2180=Lfde331_end - Lfde331_start
	.long LDIFF_SYM2180
Lfde331_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_char_System_Collections_IEnumerator_get_Current

LDIFF_SYM2181=Lme_159 - System_Array_InternalEnumerator_1_char_System_Collections_IEnumerator_get_Current
	.long LDIFF_SYM2181
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde331_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__IEnumerable_GetEnumerator<char>"
	.asciz "System_Array_InternalArray__IEnumerable_GetEnumerator_char"

	.byte 0,0
	.quad System_Array_InternalArray__IEnumerable_GetEnumerator_char
	.quad Lme_15a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2182=LTDIE_116_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2182
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2183=Lfde332_end - Lfde332_start
	.long LDIFF_SYM2183
Lfde332_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__IEnumerable_GetEnumerator_char

LDIFF_SYM2184=Lme_15a - System_Array_InternalArray__IEnumerable_GetEnumerator_char
	.long LDIFF_SYM2184
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde332_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__Insert<char>"
	.asciz "System_Array_InternalArray__Insert_char_int_char"

	.byte 0,0
	.quad System_Array_InternalArray__Insert_char_int_char
	.quad Lme_160

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2185=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2185
	.byte 0,3
	.asciz "index"

LDIFF_SYM2186=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2186
	.byte 0,3
	.asciz "item"

LDIFF_SYM2187=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2187
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2188=Lfde333_end - Lfde333_start
	.long LDIFF_SYM2188
Lfde333_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__Insert_char_int_char

LDIFF_SYM2189=Lme_160 - System_Array_InternalArray__Insert_char_int_char
	.long LDIFF_SYM2189
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde333_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__RemoveAt"
	.asciz "System_Array_InternalArray__RemoveAt_int"

	.byte 0,0
	.quad System_Array_InternalArray__RemoveAt_int
	.quad Lme_161

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2190=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2190
	.byte 0,3
	.asciz "index"

LDIFF_SYM2191=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2191
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2192=Lfde334_end - Lfde334_start
	.long LDIFF_SYM2192
Lfde334_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__RemoveAt_int

LDIFF_SYM2193=Lme_161 - System_Array_InternalArray__RemoveAt_int
	.long LDIFF_SYM2193
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde334_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__IndexOf<char>"
	.asciz "System_Array_InternalArray__IndexOf_char_char"

	.byte 0,0
	.quad System_Array_InternalArray__IndexOf_char_char
	.quad Lme_162

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2194=LTDIE_116_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2194
	.byte 1,105,3
	.asciz "item"

LDIFF_SYM2195=LDIE_CHAR - Ldebug_info_start
	.long LDIFF_SYM2195
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM2196=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2196
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM2197=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2197
	.byte 1,103,11
	.asciz "V_2"

LDIFF_SYM2198=LDIE_CHAR - Ldebug_info_start
	.long LDIFF_SYM2198
	.byte 2,141,48,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2199=Lfde335_end - Lfde335_start
	.long LDIFF_SYM2199
Lfde335_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__IndexOf_char_char

LDIFF_SYM2200=Lme_162 - System_Array_InternalArray__IndexOf_char_char
	.long LDIFF_SYM2200
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,151,8,152,7,68,153,6,154,5
	.align 3
Lfde335_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__get_Item<char>"
	.asciz "System_Array_InternalArray__get_Item_char_int"

	.byte 0,0
	.quad System_Array_InternalArray__get_Item_char_int
	.quad Lme_163

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2201=LTDIE_116_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2201
	.byte 2,141,24,3
	.asciz "index"

LDIFF_SYM2202=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2202
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM2203=LDIE_CHAR - Ldebug_info_start
	.long LDIFF_SYM2203
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2204=Lfde336_end - Lfde336_start
	.long LDIFF_SYM2204
Lfde336_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__get_Item_char_int

LDIFF_SYM2205=Lme_163 - System_Array_InternalArray__get_Item_char_int
	.long LDIFF_SYM2205
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.align 3
Lfde336_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__set_Item<char>"
	.asciz "System_Array_InternalArray__set_Item_char_int_char"

	.byte 0,0
	.quad System_Array_InternalArray__set_Item_char_int_char
	.quad Lme_164

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2206=LTDIE_116_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2206
	.byte 1,104,3
	.asciz "index"

LDIFF_SYM2207=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2207
	.byte 2,141,48,3
	.asciz "item"

LDIFF_SYM2208=LDIE_CHAR - Ldebug_info_start
	.long LDIFF_SYM2208
	.byte 2,141,56,11
	.asciz "V_0"

LDIFF_SYM2209=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM2209
	.byte 1,103,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2210=Lfde337_end - Lfde337_start
	.long LDIFF_SYM2210
Lfde337_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__set_Item_char_int_char

LDIFF_SYM2211=Lme_164 - System_Array_InternalArray__set_Item_char_int_char
	.long LDIFF_SYM2211
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,149,8,150,7,68,151,6,152,5
	.align 3
Lfde337_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Linq.Enumerable:All<char>"
	.asciz "System_Linq_Enumerable_All_char_System_Collections_Generic_IEnumerable_1_char_System_Func_2_char_bool"

	.byte 0,0
	.quad System_Linq_Enumerable_All_char_System_Collections_Generic_IEnumerable_1_char_System_Func_2_char_bool
	.quad Lme_166

	.byte 2,118,16,3
	.asciz "source"

LDIFF_SYM2212=LTDIE_123_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2212
	.byte 1,105,3
	.asciz "predicate"

LDIFF_SYM2213=LTDIE_122_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2213
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM2214=LDIE_CHAR - Ldebug_info_start
	.long LDIFF_SYM2214
	.byte 1,105,11
	.asciz "V_1"

LDIFF_SYM2215=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2215
	.byte 2,141,32,11
	.asciz "V_2"

LDIFF_SYM2216=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM2216
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2217=Lfde338_end - Lfde338_start
	.long LDIFF_SYM2217
Lfde338_start:

	.long 0
	.align 3
	.quad System_Linq_Enumerable_All_char_System_Collections_Generic_IEnumerable_1_char_System_Func_2_char_bool

LDIFF_SYM2218=Lme_166 - System_Linq_Enumerable_All_char_System_Collections_Generic_IEnumerable_1_char_System_Func_2_char_bool
	.long LDIFF_SYM2218
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6,154,5
	.align 3
Lfde338_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__get_Item<System.Collections.Generic.KeyValuePair`2<string, System.Xml.Linq.XNamespace>>"
	.asciz "System_Array_InternalArray__get_Item_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_int"

	.byte 0,0
	.quad System_Array_InternalArray__get_Item_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_int
	.quad Lme_167

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2219=LTDIE_116_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2219
	.byte 2,141,32,3
	.asciz "index"

LDIFF_SYM2220=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2220
	.byte 2,141,40,11
	.asciz "V_0"

LDIFF_SYM2221=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2221
	.byte 2,141,48,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2222=Lfde339_end - Lfde339_start
	.long LDIFF_SYM2222
Lfde339_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__get_Item_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_int

LDIFF_SYM2223=Lme_167 - System_Array_InternalArray__get_Item_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XNamespace_int
	.long LDIFF_SYM2223
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde339_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__get_Item<System.Collections.Generic.KeyValuePair`2<string, System.Xml.Linq.XName>>"
	.asciz "System_Array_InternalArray__get_Item_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_int"

	.byte 0,0
	.quad System_Array_InternalArray__get_Item_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_int
	.quad Lme_168

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2224=LTDIE_116_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2224
	.byte 2,141,32,3
	.asciz "index"

LDIFF_SYM2225=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2225
	.byte 2,141,40,11
	.asciz "V_0"

LDIFF_SYM2226=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2226
	.byte 2,141,48,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2227=Lfde340_end - Lfde340_start
	.long LDIFF_SYM2227
Lfde340_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__get_Item_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_int

LDIFF_SYM2228=Lme_168 - System_Array_InternalArray__get_Item_System_Collections_Generic_KeyValuePair_2_string_System_Xml_Linq_XName_int
	.long LDIFF_SYM2228
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde340_end:

.section __DWARF, __debug_info,regular,debug

	.byte 0
Ldebug_info_end:
.section __DWARF, __debug_line,regular,debug
Ldebug_line_section_start:
Ldebug_line_start:

	.long Ldebug_line_end - . -4
	.short 2
	.long Ldebug_line_header_end - . -4
	.byte 1,1,251,14,13,0,1,1,1,1,0,0,0,1,0,0,1
.section __DWARF, __debug_line,regular,debug

	.byte 0
	.asciz "<unknown>"

	.byte 0,0,0,0
Ldebug_line_header_end:

	.byte 0,1,1
Ldebug_line_end:
.text
	.align 3
mem_end:
