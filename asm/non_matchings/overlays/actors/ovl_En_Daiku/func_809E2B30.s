glabel func_809E2B30
/* 00000 809E2B30 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00004 809E2B34 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00008 809E2B38 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 0000C 809E2B3C AFA60040 */  sw      $a2, 0x0040($sp)           
/* 00010 809E2B40 8CC20000 */  lw      $v0, 0x0000($a2)           ## 00000000
/* 00014 809E2B44 3C18809E */  lui     $t8, %hi(D_809E40B8)       ## $t8 = 809E0000
/* 00018 809E2B48 271840B8 */  addiu   $t8, $t8, %lo(D_809E40B8)  ## $t8 = 809E40B8
/* 0001C 809E2B4C 04400003 */  bltz    $v0, .L809E2B5C            
/* 00020 809E2B50 00057900 */  sll     $t7, $a1,  4               
/* 00024 809E2B54 14A20004 */  bne     $a1, $v0, .L809E2B68       
/* 00028 809E2B58 0005C900 */  sll     $t9, $a1,  4               
.L809E2B5C:
/* 0002C 809E2B5C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00030 809E2B60 10000005 */  beq     $zero, $zero, .L809E2B78   
/* 00034 809E2B64 01F81821 */  addu    $v1, $t7, $t8              
.L809E2B68:
/* 00038 809E2B68 3C08809E */  lui     $t0, %hi(D_809E40B8)       ## $t0 = 809E0000
/* 0003C 809E2B6C 250840B8 */  addiu   $t0, $t0, %lo(D_809E40B8)  ## $t0 = 809E40B8
/* 00040 809E2B70 03281821 */  addu    $v1, $t9, $t0              
/* 00044 809E2B74 C460000C */  lwc1    $f0, 0x000C($v1)           ## 0000000C
.L809E2B78:
/* 00048 809E2B78 8C640000 */  lw      $a0, 0x0000($v1)           ## 00000000
/* 0004C 809E2B7C AFA3002C */  sw      $v1, 0x002C($sp)           
/* 00050 809E2B80 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00054 809E2B84 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00058 809E2B88 E7A00034 */  swc1    $f0, 0x0034($sp)           
/* 0005C 809E2B8C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00060 809E2B90 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 00064 809E2B94 C7A00034 */  lwc1    $f0, 0x0034($sp)           
/* 00068 809E2B98 468021A0 */  cvt.s.w $f6, $f4                   
/* 0006C 809E2B9C 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 00070 809E2BA0 90690008 */  lbu     $t1, 0x0008($v1)           ## 00000008
/* 00074 809E2BA4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00078 809E2BA8 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 0007C 809E2BAC 8C650000 */  lw      $a1, 0x0000($v1)           ## 00000000
/* 00080 809E2BB0 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00084 809E2BB4 E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 00088 809E2BB8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0008C 809E2BBC 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 00090 809E2BC0 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 00094 809E2BC4 8FAA003C */  lw      $t2, 0x003C($sp)           
/* 00098 809E2BC8 8FAB0040 */  lw      $t3, 0x0040($sp)           
/* 0009C 809E2BCC AD6A0000 */  sw      $t2, 0x0000($t3)           ## 00000000
/* 000A0 809E2BD0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 000A4 809E2BD4 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 000A8 809E2BD8 03E00008 */  jr      $ra                        
/* 000AC 809E2BDC 00000000 */  nop

