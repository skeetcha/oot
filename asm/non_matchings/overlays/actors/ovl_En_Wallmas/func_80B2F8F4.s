glabel func_80B2F8F4
/* 003D4 80B2F8F4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003D8 80B2F8F8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003DC 80B2F8FC 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 003E0 80B2F900 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 003E4 80B2F904 24A59244 */  addiu   $a1, $a1, 0x9244           ## $a1 = 06009244
/* 003E8 80B2F908 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 003EC 80B2F90C 0C02947A */  jal     func_800A51E8              
/* 003F0 80B2F910 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 003F4 80B2F914 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 003F8 80B2F918 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 003FC 80B2F91C 3C0E80B3 */  lui     $t6, %hi(func_80B30054)    ## $t6 = 80B30000
/* 00400 80B2F920 25CE0054 */  addiu   $t6, $t6, %lo(func_80B30054) ## $t6 = 80B30054
/* 00404 80B2F924 ACCE0190 */  sw      $t6, 0x0190($a2)           ## 00000190
/* 00408 80B2F928 E4C40068 */  swc1    $f4, 0x0068($a2)           ## 00000068
/* 0040C 80B2F92C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00410 80B2F930 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00414 80B2F934 03E00008 */  jr      $ra                        
/* 00418 80B2F938 00000000 */  nop

