.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809F0560
 .word 0xA5C7A5AF, 0xA4CEBCC2, 0xC7E4A4EA, 0x20202020, 0x20202020, 0x20202020, 0x00000000
glabel D_809F057C
 .word 0xA5C7A5AF, 0xA4CECBC0, 0xC7E4A4EA, 0x20202020, 0x20202020, 0x20202020, 0x00000000
glabel D_809F0598
 .word 0xA5CFA1BC, 0xA5C8A4CE, 0xB7E7CAD2, 0xC7E4A4EA, 0x20202020, 0x20202020, 0x00000000
glabel D_809F05B4
 .word 0xA5C7A5AF, 0xA4CEBCEF, 0xC7E4A4EA, 0x20202020, 0x20202020, 0x20202020, 0x00000000
glabel D_809F05D0
 .word 0xA5C7A5AF, 0xA4CEBDE2, 0xC7E4A4EA, 0x20202020, 0x20202020, 0x20202020, 0x00000000
glabel D_809F05EC
 .word 0xA5D0A5AF, 0xA5C0A5F3, 0xC7E4A4EA, 0x20202020, 0x20202020, 0x20202020, 0x00000000
glabel D_809F0608
 .word 0xCCF0C7E4, 0xA4EA2020, 0x20202020, 0x20202020, 0x20202020, 0x20202020, 0x00000000
glabel D_809F0624
 .word 0xC0D6A4CE, 0xA4AFA4B9, 0xA4EAC7E4, 0xA4EA2020, 0x20202020, 0x20202020, 0x00000000
glabel D_809F0640
 .word 0xCED0A4CE, 0xA4AFA4B9, 0xA4EAC7E4, 0xA4EA2020, 0x20202020, 0x20202020, 0x00000000
glabel D_809F065C
 .word 0xA5C7A5AF, 0xA4CECBC0, 0xBBFDA4C6, 0xA4EBBFF4, 0xA4F2C1FD, 0xA4E4A4B9, 0x00000000
glabel D_809F0678
 .word 0xA5C7A5AF, 0xA4CEBCC2, 0xBBFDA4C6, 0xA4EBBFF4, 0xA4F2C1FD, 0xA4E4A4B9, 0x00000000
glabel D_809F0694
    .asciz "[31m引数エラー（売りナッツ）[ arg_data = %d ][m\n"
    .balign 4

glabel D_809F06C8
    .asciz "[32m◆◆◆ 売りナッツ『%s』 ◆◆◆[m\n"
    .balign 4

glabel jtbl_809F06F0
.word L809EFD38
.word L809EFD54
.word L809EFD8C
.word L809EFD70
.word L809EFD8C
.word 0x00000000, 0x00000000, 0x00000000

