glabel func_80A712C0
/* 01D10 80A712C0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01D14 80A712C4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01D18 80A712C8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01D1C 80A712CC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01D20 80A712D0 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 01D24 80A712D4 44812000 */  mtc1    $at, $f4                   ## $f4 = 100.00
/* 01D28 80A712D8 C4860090 */  lwc1    $f6, 0x0090($a0)           ## 00000090
/* 01D2C 80A712DC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01D30 80A712E0 4604303E */  c.le.s  $f6, $f4                   
/* 01D34 80A712E4 00000000 */  nop
/* 01D38 80A712E8 4502000F */  bc1fl   .L80A71328                 
/* 01D3C 80A712EC 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 01D40 80A712F0 8C8E0210 */  lw      $t6, 0x0210($a0)           ## 00000210
/* 01D44 80A712F4 3C0580A7 */  lui     $a1, %hi(D_80A72050)       ## $a1 = 80A70000
/* 01D48 80A712F8 24A52050 */  addiu   $a1, $a1, %lo(D_80A72050)  ## $a1 = 80A72050
/* 01D4C 80A712FC 11C00009 */  beq     $t6, $zero, .L80A71324     
/* 01D50 80A71300 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01D54 80A71304 0C00D3B0 */  jal     func_80034EC0              
/* 01D58 80A71308 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 01D5C 80A7130C 3C0180A7 */  lui     $at, %hi(D_80A72A88)       ## $at = 80A70000
/* 01D60 80A71310 C4282A88 */  lwc1    $f8, %lo(D_80A72A88)($at)  
/* 01D64 80A71314 3C0F80A7 */  lui     $t7, %hi(func_80A7134C)    ## $t7 = 80A70000
/* 01D68 80A71318 25EF134C */  addiu   $t7, $t7, %lo(func_80A7134C) ## $t7 = 80A7134C
/* 01D6C 80A7131C AE0F0190 */  sw      $t7, 0x0190($s0)           ## 00000190
/* 01D70 80A71320 E6080068 */  swc1    $f8, 0x0068($s0)           ## 00000068
.L80A71324:
/* 01D74 80A71324 8FA40024 */  lw      $a0, 0x0024($sp)           
.L80A71328:
/* 01D78 80A71328 2605021C */  addiu   $a1, $s0, 0x021C           ## $a1 = 0000021C
/* 01D7C 80A7132C 2606023C */  addiu   $a2, $s0, 0x023C           ## $a2 = 0000023C
/* 01D80 80A71330 0C00D3D5 */  jal     func_80034F54              
/* 01D84 80A71334 24070010 */  addiu   $a3, $zero, 0x0010         ## $a3 = 00000010
/* 01D88 80A71338 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01D8C 80A7133C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01D90 80A71340 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01D94 80A71344 03E00008 */  jr      $ra                        
/* 01D98 80A71348 00000000 */  nop


