.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80B95830
 .word 0x01100600, 0x04000010, 0x00030000, 0x0000019C
.word func_80B94D8C
.word func_80B94E10
.word func_80B957D4
.word func_80B957F8
glabel D_80B95850
 .word 0x0A090939, 0x20010000, 0x00000000, 0x00000002, 0x00010000, 0x4FC00748, 0x00000000, 0x01010100, 0x000C001B, 0x00000000, 0x00000000
glabel D_80B9587C
 .word 0x0000000C, 0x003CFE00
glabel D_80B95884
 .word 0xC8500064, 0xB0F403E8, 0xB0F8003C, 0x30FC03E8, 0x00000000, 0x00000000, 0x00000000
