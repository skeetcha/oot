glabel func_808802D8
/* 00638 808802D8 27BDFF60 */  addiu   $sp, $sp, 0xFF60           ## $sp = FFFFFF60
/* 0063C 808802DC AFBF007C */  sw      $ra, 0x007C($sp)           
/* 00640 808802E0 AFB50078 */  sw      $s5, 0x0078($sp)           
/* 00644 808802E4 AFB40074 */  sw      $s4, 0x0074($sp)           
/* 00648 808802E8 AFB30070 */  sw      $s3, 0x0070($sp)           
/* 0064C 808802EC AFB2006C */  sw      $s2, 0x006C($sp)           
/* 00650 808802F0 AFB10068 */  sw      $s1, 0x0068($sp)           
/* 00654 808802F4 AFB00064 */  sw      $s0, 0x0064($sp)           
/* 00658 808802F8 F7BA0058 */  sdc1    $f26, 0x0058($sp)          
/* 0065C 808802FC F7B80050 */  sdc1    $f24, 0x0050($sp)          
/* 00660 80880300 F7B60048 */  sdc1    $f22, 0x0048($sp)          
/* 00664 80880304 F7B40040 */  sdc1    $f20, 0x0040($sp)          
/* 00668 80880308 90820168 */  lbu     $v0, 0x0168($a0)           ## 00000168
/* 0066C 8088030C 00A0A825 */  or      $s5, $a1, $zero            ## $s5 = 00000000
/* 00670 80880310 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 00674 80880314 10400003 */  beq     $v0, $zero, .L80880324     
/* 00678 80880318 2405205B */  addiu   $a1, $zero, 0x205B         ## $a1 = 0000205B
/* 0067C 8088031C 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00680 80880320 A08E0168 */  sb      $t6, 0x0168($a0)           ## 00000168
.L80880324:
/* 00684 80880324 0C00BE5D */  jal     func_8002F974              
/* 00688 80880328 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0068C 8088032C 3C0143A0 */  lui     $at, 0x43A0                ## $at = 43A00000
/* 00690 80880330 4481D000 */  mtc1    $at, $f26                  ## $f26 = 320.00
/* 00694 80880334 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00698 80880338 4481C000 */  mtc1    $at, $f24                  ## $f24 = 10.00
/* 0069C 8088033C 3C01C1F0 */  lui     $at, 0xC1F0                ## $at = C1F00000
/* 006A0 80880340 4481B000 */  mtc1    $at, $f22                  ## $f22 = -30.00
/* 006A4 80880344 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 006A8 80880348 3C138088 */  lui     $s3, %hi(D_8088101C)       ## $s3 = 80880000
/* 006AC 8088034C 4481A000 */  mtc1    $at, $f20                  ## $f20 = 30.00
/* 006B0 80880350 2673101C */  addiu   $s3, $s3, %lo(D_8088101C)  ## $s3 = 8088101C
/* 006B4 80880354 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 006B8 80880358 27B40094 */  addiu   $s4, $sp, 0x0094           ## $s4 = FFFFFFF4
/* 006BC 8088035C 24120002 */  addiu   $s2, $zero, 0x0002         ## $s2 = 00000002
.L80880360:
/* 006C0 80880360 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 006C4 80880364 00000000 */  nop
/* 006C8 80880368 862F001C */  lh      $t7, 0x001C($s1)           ## 0000001C
/* 006CC 8088036C 46000086 */  mov.s   $f2, $f0                   
/* 006D0 80880370 564F0004 */  bnel    $s2, $t7, .L80880384       
/* 006D4 80880374 4600A006 */  mov.s   $f0, $f20                  
/* 006D8 80880378 10000002 */  beq     $zero, $zero, .L80880384   
/* 006DC 8088037C 4600B006 */  mov.s   $f0, $f22                  
/* 006E0 80880380 4600A006 */  mov.s   $f0, $f20                  
.L80880384:
/* 006E4 80880384 46020102 */  mul.s   $f4, $f0, $f2              
/* 006E8 80880388 C6260024 */  lwc1    $f6, 0x0024($s1)           ## 00000024
/* 006EC 8088038C 46062200 */  add.s   $f8, $f4, $f6              
/* 006F0 80880390 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 006F4 80880394 E7A80094 */  swc1    $f8, 0x0094($sp)           
/* 006F8 80880398 46180282 */  mul.s   $f10, $f0, $f24            
/* 006FC 8088039C C6300028 */  lwc1    $f16, 0x0028($s1)          ## 00000028
/* 00700 808803A0 4600D306 */  mov.s   $f12, $f26                 
/* 00704 808803A4 46105480 */  add.s   $f18, $f10, $f16           
/* 00708 808803A8 46149100 */  add.s   $f4, $f18, $f20            
/* 0070C 808803AC 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00710 808803B0 E7A40098 */  swc1    $f4, 0x0098($sp)           
/* 00714 808803B4 C626002C */  lwc1    $f6, 0x002C($s1)           ## 0000002C
/* 00718 808803B8 24180082 */  addiu   $t8, $zero, 0x0082         ## $t8 = 00000082
/* 0071C 808803BC 24190014 */  addiu   $t9, $zero, 0x0014         ## $t9 = 00000014
/* 00720 808803C0 46060200 */  add.s   $f8, $f0, $f6              
/* 00724 808803C4 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 00728 808803C8 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 0072C 808803CC 240A0096 */  addiu   $t2, $zero, 0x0096         ## $t2 = 00000096
/* 00730 808803D0 240B00AA */  addiu   $t3, $zero, 0x00AA         ## $t3 = 000000AA
/* 00734 808803D4 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 00738 808803D8 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 0073C 808803DC 240E0009 */  addiu   $t6, $zero, 0x0009         ## $t6 = 00000009
/* 00740 808803E0 E7A8009C */  swc1    $f8, 0x009C($sp)           
/* 00744 808803E4 AFAE0038 */  sw      $t6, 0x0038($sp)           
/* 00748 808803E8 AFAD0034 */  sw      $t5, 0x0034($sp)           
/* 0074C 808803EC AFAC0028 */  sw      $t4, 0x0028($sp)           
/* 00750 808803F0 AFAB0024 */  sw      $t3, 0x0024($sp)           
/* 00754 808803F4 AFAA0020 */  sw      $t2, 0x0020($sp)           
/* 00758 808803F8 AFA9001C */  sw      $t1, 0x001C($sp)           
/* 0075C 808803FC AFA80018 */  sw      $t0, 0x0018($sp)           
/* 00760 80880400 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 00764 80880404 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 00768 80880408 AFA0003C */  sw      $zero, 0x003C($sp)         
/* 0076C 8088040C AFA00030 */  sw      $zero, 0x0030($sp)         
/* 00770 80880410 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 00774 80880414 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 00778 80880418 02802825 */  or      $a1, $s4, $zero            ## $a1 = FFFFFFF4
/* 0077C 8088041C 02603025 */  or      $a2, $s3, $zero            ## $a2 = 8088101C
/* 00780 80880420 0C00A9AE */  jal     func_8002A6B8              
/* 00784 80880424 02603825 */  or      $a3, $s3, $zero            ## $a3 = 8088101C
/* 00788 80880428 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 0078C 8088042C 1612FFCC */  bne     $s0, $s2, .L80880360       
/* 00790 80880430 00000000 */  nop
/* 00794 80880434 922F0168 */  lbu     $t7, 0x0168($s1)           ## 00000168
/* 00798 80880438 3C018088 */  lui     $at, %hi(D_80880F30)       ## $at = 80880000
/* 0079C 8088043C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 007A0 80880440 55E00004 */  bnel    $t7, $zero, .L80880454     
/* 007A4 80880444 8FBF007C */  lw      $ra, 0x007C($sp)           
/* 007A8 80880448 0C00B55C */  jal     Actor_Kill
              
/* 007AC 8088044C AC200F30 */  sw      $zero, %lo(D_80880F30)($at) 
/* 007B0 80880450 8FBF007C */  lw      $ra, 0x007C($sp)           
.L80880454:
/* 007B4 80880454 D7B40040 */  ldc1    $f20, 0x0040($sp)          
/* 007B8 80880458 D7B60048 */  ldc1    $f22, 0x0048($sp)          
/* 007BC 8088045C D7B80050 */  ldc1    $f24, 0x0050($sp)          
/* 007C0 80880460 D7BA0058 */  ldc1    $f26, 0x0058($sp)          
/* 007C4 80880464 8FB00064 */  lw      $s0, 0x0064($sp)           
/* 007C8 80880468 8FB10068 */  lw      $s1, 0x0068($sp)           
/* 007CC 8088046C 8FB2006C */  lw      $s2, 0x006C($sp)           
/* 007D0 80880470 8FB30070 */  lw      $s3, 0x0070($sp)           
/* 007D4 80880474 8FB40074 */  lw      $s4, 0x0074($sp)           
/* 007D8 80880478 8FB50078 */  lw      $s5, 0x0078($sp)           
/* 007DC 8088047C 03E00008 */  jr      $ra                        
/* 007E0 80880480 27BD00A0 */  addiu   $sp, $sp, 0x00A0           ## $sp = 00000000


