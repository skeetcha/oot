glabel func_80B87098
/* 00778 80B87098 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 0077C 80B8709C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00780 80B870A0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00784 80B870A4 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 00788 80B870A8 848E019C */  lh      $t6, 0x019C($a0)           ## 0000019C
/* 0078C 80B870AC 3C0680B8 */  lui     $a2, %hi(D_80B87298)       ## $a2 = 80B80000
/* 00790 80B870B0 24C67298 */  addiu   $a2, $a2, %lo(D_80B87298)  ## $a2 = 80B87298
/* 00794 80B870B4 31CF0002 */  andi    $t7, $t6, 0x0002           ## $t7 = 00000000
/* 00798 80B870B8 15E00032 */  bne     $t7, $zero, .L80B87184     
/* 0079C 80B870BC 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE8
/* 007A0 80B870C0 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 007A4 80B870C4 240701C9 */  addiu   $a3, $zero, 0x01C9         ## $a3 = 000001C9
/* 007A8 80B870C8 0C031AB1 */  jal     func_800C6AC4              
/* 007AC 80B870CC 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 007B0 80B870D0 8FB9004C */  lw      $t9, 0x004C($sp)           
/* 007B4 80B870D4 0C024F46 */  jal     func_80093D18              
/* 007B8 80B870D8 8F240000 */  lw      $a0, 0x0000($t9)           ## 00000000
/* 007BC 80B870DC 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 007C0 80B870E0 3C09DA38 */  lui     $t1, 0xDA38                ## $t1 = DA380000
/* 007C4 80B870E4 35290003 */  ori     $t1, $t1, 0x0003           ## $t1 = DA380003
/* 007C8 80B870E8 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 007CC 80B870EC AE0802C0 */  sw      $t0, 0x02C0($s0)           ## 000002C0
/* 007D0 80B870F0 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 007D4 80B870F4 8FAA004C */  lw      $t2, 0x004C($sp)           
/* 007D8 80B870F8 3C0580B8 */  lui     $a1, %hi(D_80B872AC)       ## $a1 = 80B80000
/* 007DC 80B870FC 24A572AC */  addiu   $a1, $a1, %lo(D_80B872AC)  ## $a1 = 80B872AC
/* 007E0 80B87100 8D440000 */  lw      $a0, 0x0000($t2)           ## 00000000
/* 007E4 80B87104 240601CC */  addiu   $a2, $zero, 0x01CC         ## $a2 = 000001CC
/* 007E8 80B87108 0C0346A2 */  jal     func_800D1A88              
/* 007EC 80B8710C AFA2002C */  sw      $v0, 0x002C($sp)           
/* 007F0 80B87110 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 007F4 80B87114 3C040602 */  lui     $a0, 0x0602                ## $a0 = 06020000
/* 007F8 80B87118 248424F8 */  addiu   $a0, $a0, 0x24F8           ## $a0 = 060224F8
/* 007FC 80B8711C AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00800 80B87120 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00804 80B87124 00046900 */  sll     $t5, $a0,  4               
/* 00808 80B87128 000D7702 */  srl     $t6, $t5, 28               
/* 0080C 80B8712C 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 00810 80B87130 AE0B02C0 */  sw      $t3, 0x02C0($s0)           ## 000002C0
/* 00814 80B87134 000E7880 */  sll     $t7, $t6,  2               
/* 00818 80B87138 3C0CDE00 */  lui     $t4, 0xDE00                ## $t4 = DE000000
/* 0081C 80B8713C 3C188016 */  lui     $t8, 0x8016                ## $t8 = 80160000
/* 00820 80B87140 030FC021 */  addu    $t8, $t8, $t7              
/* 00824 80B87144 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00828 80B87148 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 0082C 80B8714C 8F186FA8 */  lw      $t8, 0x6FA8($t8)           ## 80166FA8
/* 00830 80B87150 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00834 80B87154 0081C824 */  and     $t9, $a0, $at              
/* 00838 80B87158 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 0083C 80B8715C 03194021 */  addu    $t0, $t8, $t9              
/* 00840 80B87160 01014821 */  addu    $t1, $t0, $at              
/* 00844 80B87164 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 00848 80B87168 8FAA004C */  lw      $t2, 0x004C($sp)           
/* 0084C 80B8716C 3C0680B8 */  lui     $a2, %hi(D_80B872C0)       ## $a2 = 80B80000
/* 00850 80B87170 24C672C0 */  addiu   $a2, $a2, %lo(D_80B872C0)  ## $a2 = 80B872C0
/* 00854 80B87174 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE8
/* 00858 80B87178 240701D1 */  addiu   $a3, $zero, 0x01D1         ## $a3 = 000001D1
/* 0085C 80B8717C 0C031AD5 */  jal     func_800C6B54              
/* 00860 80B87180 8D450000 */  lw      $a1, 0x0000($t2)           ## 00000000
.L80B87184:
/* 00864 80B87184 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00868 80B87188 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0086C 80B8718C 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 00870 80B87190 03E00008 */  jr      $ra                        
/* 00874 80B87194 00000000 */  nop
/* 00878 80B87198 00000000 */  nop
/* 0087C 80B8719C 00000000 */  nop
