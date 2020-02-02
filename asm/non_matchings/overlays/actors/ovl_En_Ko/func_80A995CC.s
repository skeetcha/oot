glabel func_80A995CC
/* 0281C 80A995CC 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 02820 80A995D0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02824 80A995D4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02828 80A995D8 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 0282C 80A995DC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02830 80A995E0 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000008
/* 02834 80A995E4 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 02838 80A995E8 24450024 */  addiu   $a1, $v0, 0x0024           ## $a1 = 00000024
/* 0283C 80A995EC A7A20022 */  sh      $v0, 0x0022($sp)           
/* 02840 80A995F0 C6040008 */  lwc1    $f4, 0x0008($s0)           ## 00000008
/* 02844 80A995F4 00022400 */  sll     $a0, $v0, 16               
/* 02848 80A995F8 00042403 */  sra     $a0, $a0, 16               
/* 0284C 80A995FC 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 02850 80A99600 E6040024 */  swc1    $f4, 0x0024($s0)           ## 00000024
/* 02854 80A99604 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 02858 80A99608 44814000 */  mtc1    $at, $f8                   ## $f8 = 80.00
/* 0285C 80A9960C C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 02860 80A99610 C6120010 */  lwc1    $f18, 0x0010($s0)          ## 00000010
/* 02864 80A99614 46004282 */  mul.s   $f10, $f8, $f0             
/* 02868 80A99618 E612002C */  swc1    $f18, 0x002C($s0)          ## 0000002C
/* 0286C 80A9961C 460A3400 */  add.s   $f16, $f6, $f10            
/* 02870 80A99620 E6100024 */  swc1    $f16, 0x0024($s0)          ## 00000024
/* 02874 80A99624 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 02878 80A99628 87A40022 */  lh      $a0, 0x0022($sp)           
/* 0287C 80A9962C 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 02880 80A99630 44814000 */  mtc1    $at, $f8                   ## $f8 = 80.00
/* 02884 80A99634 C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 02888 80A99638 8603008A */  lh      $v1, 0x008A($s0)           ## 0000008A
/* 0288C 80A9963C 46004182 */  mul.s   $f6, $f8, $f0              
/* 02890 80A99640 860E01E8 */  lh      $t6, 0x01E8($s0)           ## 000001E8
/* 02894 80A99644 A6030032 */  sh      $v1, 0x0032($s0)           ## 00000032
/* 02898 80A99648 A60300B6 */  sh      $v1, 0x00B6($s0)           ## 000000B6
/* 0289C 80A9964C 46062280 */  add.s   $f10, $f4, $f6             
/* 028A0 80A99650 11C00005 */  beq     $t6, $zero, .L80A99668     
/* 028A4 80A99654 E60A002C */  swc1    $f10, 0x002C($s0)          ## 0000002C
/* 028A8 80A99658 920F010C */  lbu     $t7, 0x010C($s0)           ## 0000010C
/* 028AC 80A9965C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 028B0 80A99660 55E00021 */  bnel    $t7, $zero, .L80A996E8     
/* 028B4 80A99664 44817000 */  mtc1    $at, $f14                  ## $f14 = 1.00
.L80A99668:
/* 028B8 80A99668 87B80022 */  lh      $t8, 0x0022($sp)           
/* 028BC 80A9966C 44838000 */  mtc1    $v1, $f16                  ## $f16 = 0.00
/* 028C0 80A99670 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 028C4 80A99674 44984000 */  mtc1    $t8, $f8                   ## $f8 = 0.00
/* 028C8 80A99678 468084A0 */  cvt.s.w $f18, $f16                 
/* 028CC 80A9967C 44816000 */  mtc1    $at, $f12                  ## $f12 = 3.00
/* 028D0 80A99680 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 028D4 80A99684 44817000 */  mtc1    $at, $f14                  ## $f14 = 1.00
/* 028D8 80A99688 3C0180AA */  lui     $at, %hi(D_80A9A9C0)       ## $at = 80AA0000
/* 028DC 80A9968C 46804120 */  cvt.s.w $f4, $f8                   
/* 028E0 80A99690 C426A9C0 */  lwc1    $f6, %lo(D_80A9A9C0)($at)  
/* 028E4 80A99694 46049001 */  sub.s   $f0, $f18, $f4             
/* 028E8 80A99698 46000005 */  abs.s   $f0, $f0                   
/* 028EC 80A9969C 46060282 */  mul.s   $f10, $f0, $f6             
/* 028F0 80A996A0 00000000 */  nop
/* 028F4 80A996A4 460C5082 */  mul.s   $f2, $f10, $f12            
/* 028F8 80A996A8 460E103C */  c.lt.s  $f2, $f14                  
/* 028FC 80A996AC 00000000 */  nop
/* 02900 80A996B0 45000003 */  bc1f    .L80A996C0                 
/* 02904 80A996B4 00000000 */  nop
/* 02908 80A996B8 1000000D */  beq     $zero, $zero, .L80A996F0   
/* 0290C 80A996BC E60E0168 */  swc1    $f14, 0x0168($s0)          ## 00000168
.L80A996C0:
/* 02910 80A996C0 4602603C */  c.lt.s  $f12, $f2                  
/* 02914 80A996C4 00000000 */  nop
/* 02918 80A996C8 45020004 */  bc1fl   .L80A996DC                 
/* 0291C 80A996CC 46001006 */  mov.s   $f0, $f2                   
/* 02920 80A996D0 10000002 */  beq     $zero, $zero, .L80A996DC   
/* 02924 80A996D4 46006006 */  mov.s   $f0, $f12                  
/* 02928 80A996D8 46001006 */  mov.s   $f0, $f2                   
.L80A996DC:
/* 0292C 80A996DC 10000004 */  beq     $zero, $zero, .L80A996F0   
/* 02930 80A996E0 E6000168 */  swc1    $f0, 0x0168($s0)           ## 00000168
/* 02934 80A996E4 44817000 */  mtc1    $at, $f14                  ## $f14 = -0.00
.L80A996E8:
/* 02938 80A996E8 00000000 */  nop
/* 0293C 80A996EC E60E0168 */  swc1    $f14, 0x0168($s0)          ## 00000168
.L80A996F0:
/* 02940 80A996F0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02944 80A996F4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02948 80A996F8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0294C 80A996FC 03E00008 */  jr      $ra                        
/* 02950 80A99700 00000000 */  nop

