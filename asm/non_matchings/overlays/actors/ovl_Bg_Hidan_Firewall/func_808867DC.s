glabel func_808867DC
/* 0017C 808867DC AFA50004 */  sw      $a1, 0x0004($sp)           
/* 00180 808867E0 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 00184 808867E4 3C0F8088 */  lui     $t7, %hi(func_80886810)    ## $t7 = 80880000
/* 00188 808867E8 25EF6810 */  addiu   $t7, $t7, %lo(func_80886810) ## $t7 = 80886810
/* 0018C 808867EC 10400003 */  beq     $v0, $zero, .L808867FC     
/* 00190 808867F0 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00194 808867F4 A48E001C */  sh      $t6, 0x001C($a0)           ## 0000001C
/* 00198 808867F8 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
.L808867FC:
/* 0019C 808867FC 14400002 */  bne     $v0, $zero, .L80886808     
/* 001A0 80886800 00000000 */  nop
/* 001A4 80886804 AC8F014C */  sw      $t7, 0x014C($a0)           ## 0000014C
.L80886808:
/* 001A8 80886808 03E00008 */  jr      $ra                        
/* 001AC 8088680C 00000000 */  nop


