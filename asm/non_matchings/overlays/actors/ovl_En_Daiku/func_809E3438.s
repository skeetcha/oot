glabel func_809E3438
/* 00908 809E3438 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0090C 809E343C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00910 809E3440 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00914 809E3444 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00918 809E3448 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 0091C 809E344C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00920 809E3450 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00924 809E3454 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00928 809E3458 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0092C 809E345C 84C5001C */  lh      $a1, 0x001C($a2)           ## 0000001C
/* 00930 809E3460 00052A03 */  sra     $a1, $a1,  8               
/* 00934 809E3464 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00938 809E3468 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 0093C 809E346C 10400007 */  beq     $v0, $zero, .L809E348C     
/* 00940 809E3470 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00944 809E3474 8CCE0004 */  lw      $t6, 0x0004($a2)           ## 00000004
/* 00948 809E3478 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 0094C 809E347C 35CF0009 */  ori     $t7, $t6, 0x0009           ## $t7 = 00000009
/* 00950 809E3480 ACCF0004 */  sw      $t7, 0x0004($a2)           ## 00000004
/* 00954 809E3484 0C278C1A */  jal     func_809E3068              
/* 00958 809E3488 8FA5001C */  lw      $a1, 0x001C($sp)           
.L809E348C:
/* 0095C 809E348C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00960 809E3490 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00964 809E3494 03E00008 */  jr      $ra                        
/* 00968 809E3498 00000000 */  nop

