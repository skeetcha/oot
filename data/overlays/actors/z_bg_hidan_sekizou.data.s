.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8088E160
 .word 0x00450100, 0x00000000, 0x002C0000, 0x00000314
.word func_8088D27C
.word func_8088D3EC
.word func_8088D8B8
.word func_8088DEE8
glabel D_8088E180
 .word 0x00000000, 0x20000000, 0x01040000, 0x00000000, 0x00000000, 0x19000100, 0x01000000, 0x001E0028, 0x00170064, 0x00000000, 0x20000000, 0x01040000, 0x00000000, 0x00000000, 0x19000100, 0x01000000, 0x00200057, 0x001E0064, 0x00000000, 0x20000000, 0x01040000, 0x00000000, 0x00000000, 0x19000100, 0x01000000, 0x00230096, 0x00280064, 0x00000000, 0x20000000, 0x01040000, 0x00000000, 0x00000000, 0x19000100, 0x01000000, 0x001E0028, 0x00170064, 0x00000000, 0x20000000, 0x01040000, 0x00000000, 0x00000000, 0x19000100, 0x01000000, 0x00200057, 0x001E0064, 0x00000000, 0x20000000, 0x01040000, 0x00000000, 0x00000000, 0x19000100, 0x01000000, 0x00230096, 0x00280064
glabel D_8088E258
 .word 0x0A110009, 0x20000000, 0x00000006
.word D_8088E180
glabel D_8088E268
 .word 0x01000028, 0x00F0FF00
glabel D_8088E270
 .word 0xC8500064, 0xB0F80190, 0x30F405DC
glabel D_8088E27C
 .word 0x06015D20, 0x06016120, 0x06016520, 0x06016920, 0x06016D20, 0x06017120, 0x06017520, 0x06017920, 0x00000000
