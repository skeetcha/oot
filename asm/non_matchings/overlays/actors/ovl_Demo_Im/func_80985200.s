glabel func_80985200
/* 00620 80985200 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00624 80985204 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00628 80985208 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0062C 8098520C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00630 80985210 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00634 80985214 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 00638 80985218 0C261428 */  jal     func_809850A0              
/* 0063C 8098521C AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00640 80985220 10400013 */  beq     $v0, $zero, .L80985270     
/* 00644 80985224 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00648 80985228 8C4E000C */  lw      $t6, 0x000C($v0)           ## 0000000C
/* 0064C 8098522C 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 00650 80985230 00000000 */  nop
/* 00654 80985234 468021A0 */  cvt.s.w $f6, $f4                   
/* 00658 80985238 E4E60024 */  swc1    $f6, 0x0024($a3)           ## 00000024
/* 0065C 8098523C 8C4F0010 */  lw      $t7, 0x0010($v0)           ## 00000010
/* 00660 80985240 448F4000 */  mtc1    $t7, $f8                   ## $f8 = 0.00
/* 00664 80985244 00000000 */  nop
/* 00668 80985248 468042A0 */  cvt.s.w $f10, $f8                  
/* 0066C 8098524C E4EA0028 */  swc1    $f10, 0x0028($a3)          ## 00000028
/* 00670 80985250 8C580014 */  lw      $t8, 0x0014($v0)           ## 00000014
/* 00674 80985254 44988000 */  mtc1    $t8, $f16                  ## $f16 = 0.00
/* 00678 80985258 00000000 */  nop
/* 0067C 8098525C 468084A0 */  cvt.s.w $f18, $f16                 
/* 00680 80985260 E4F2002C */  swc1    $f18, 0x002C($a3)          ## 0000002C
/* 00684 80985264 84430008 */  lh      $v1, 0x0008($v0)           ## 00000008
/* 00688 80985268 A4E300B6 */  sh      $v1, 0x00B6($a3)           ## 000000B6
/* 0068C 8098526C A4E30032 */  sh      $v1, 0x0032($a3)           ## 00000032
.L80985270:
/* 00690 80985270 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00694 80985274 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00698 80985278 03E00008 */  jr      $ra                        
/* 0069C 8098527C 00000000 */  nop

