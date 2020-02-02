glabel func_80B18CC4
/* 00244 80B18CC4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00248 80B18CC8 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 0024C 80B18CCC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00250 80B18CD0 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00254 80B18CD4 F7B40020 */  sdc1    $f20, 0x0020($sp)          
/* 00258 80B18CD8 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 0025C 80B18CDC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00260 80B18CE0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00264 80B18CE4 4480A000 */  mtc1    $zero, $f20                ## $f20 = 0.00
/* 00268 80B18CE8 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 0026C 80B18CEC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00270 80B18CF0 4405A000 */  mfc1    $a1, $f20                  
/* 00274 80B18CF4 3C073F00 */  lui     $a3, 0x3F00                ## $a3 = 3F000000
/* 00278 80B18CF8 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 0027C 80B18CFC E7B40010 */  swc1    $f20, 0x0010($sp)          
/* 00280 80B18D00 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00284 80B18D04 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00288 80B18D08 55C1001C */  bnel    $t6, $at, .L80B18D7C       
/* 0028C 80B18D0C 96190088 */  lhu     $t9, 0x0088($s0)           ## 00000088
/* 00290 80B18D10 960F0088 */  lhu     $t7, 0x0088($s0)           ## 00000088
/* 00294 80B18D14 26040060 */  addiu   $a0, $s0, 0x0060           ## $a0 = 00000060
/* 00298 80B18D18 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0029C 80B18D1C 31F80020 */  andi    $t8, $t7, 0x0020           ## $t8 = 00000000
/* 002A0 80B18D20 13000012 */  beq     $t8, $zero, .L80B18D6C     
/* 002A4 80B18D24 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 002A8 80B18D28 E614006C */  swc1    $f20, 0x006C($s0)          ## 0000006C
/* 002AC 80B18D2C 4405A000 */  mfc1    $a1, $f20                  
/* 002B0 80B18D30 E7B40010 */  swc1    $f20, 0x0010($sp)          
/* 002B4 80B18D34 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 002B8 80B18D38 3C074000 */  lui     $a3, 0x4000                ## $a3 = 40000000
/* 002BC 80B18D3C C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 002C0 80B18D40 C6060084 */  lwc1    $f6, 0x0084($s0)           ## 00000084
/* 002C4 80B18D44 E7B40010 */  swc1    $f20, 0x0010($sp)          
/* 002C8 80B18D48 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 002CC 80B18D4C 46062200 */  add.s   $f8, $f4, $f6              
/* 002D0 80B18D50 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 002D4 80B18D54 3C074000 */  lui     $a3, 0x4000                ## $a3 = 40000000
/* 002D8 80B18D58 44054000 */  mfc1    $a1, $f8                   
/* 002DC 80B18D5C 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 002E0 80B18D60 00000000 */  nop
/* 002E4 80B18D64 10000005 */  beq     $zero, $zero, .L80B18D7C   
/* 002E8 80B18D68 96190088 */  lhu     $t9, 0x0088($s0)           ## 00000088
.L80B18D6C:
/* 002EC 80B18D6C 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.00
/* 002F0 80B18D70 00000000 */  nop
/* 002F4 80B18D74 E60A006C */  swc1    $f10, 0x006C($s0)          ## 0000006C
/* 002F8 80B18D78 96190088 */  lhu     $t9, 0x0088($s0)           ## 00000088
.L80B18D7C:
/* 002FC 80B18D7C 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 00300 80B18D80 33280003 */  andi    $t0, $t9, 0x0003           ## $t0 = 00000000
/* 00304 80B18D84 51000008 */  beql    $t0, $zero, .L80B18DA8     
/* 00308 80B18D88 860202E0 */  lh      $v0, 0x02E0($s0)           ## 000002E0
/* 0030C 80B18D8C C6100060 */  lwc1    $f16, 0x0060($s0)          ## 00000060
/* 00310 80B18D90 4614803E */  c.le.s  $f16, $f20                 
/* 00314 80B18D94 00000000 */  nop
/* 00318 80B18D98 45020003 */  bc1fl   .L80B18DA8                 
/* 0031C 80B18D9C 860202E0 */  lh      $v0, 0x02E0($s0)           ## 000002E0
/* 00320 80B18DA0 E6140060 */  swc1    $f20, 0x0060($s0)          ## 00000060
/* 00324 80B18DA4 860202E0 */  lh      $v0, 0x02E0($s0)           ## 000002E0
.L80B18DA8:
/* 00328 80B18DA8 18400003 */  blez    $v0, .L80B18DB8            
/* 0032C 80B18DAC 2449FFFF */  addiu   $t1, $v0, 0xFFFF           ## $t1 = FFFFFFFF
/* 00330 80B18DB0 10000010 */  beq     $zero, $zero, .L80B18DF4   
/* 00334 80B18DB4 A60902E0 */  sh      $t1, 0x02E0($s0)           ## 000002E0
.L80B18DB8:
/* 00338 80B18DB8 C6120090 */  lwc1    $f18, 0x0090($s0)          ## 00000090
/* 0033C 80B18DBC 44812000 */  mtc1    $at, $f4                   ## $f4 = 300.00
/* 00340 80B18DC0 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 00344 80B18DC4 4604903C */  c.lt.s  $f18, $f4                  
/* 00348 80B18DC8 00000000 */  nop
/* 0034C 80B18DCC 4502000A */  bc1fl   .L80B18DF8                 
/* 00350 80B18DD0 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00354 80B18DD4 44813000 */  mtc1    $at, $f6                   ## $f6 = 80.00
/* 00358 80B18DD8 C6080094 */  lwc1    $f8, 0x0094($s0)           ## 00000094
/* 0035C 80B18DDC 4606403E */  c.le.s  $f8, $f6                   
/* 00360 80B18DE0 00000000 */  nop
/* 00364 80B18DE4 45020004 */  bc1fl   .L80B18DF8                 
/* 00368 80B18DE8 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 0036C 80B18DEC 0C2C6549 */  jal     func_80B19524              
/* 00370 80B18DF0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B18DF4:
/* 00374 80B18DF4 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80B18DF8:
/* 00378 80B18DF8 D7B40020 */  ldc1    $f20, 0x0020($sp)          
/* 0037C 80B18DFC 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00380 80B18E00 03E00008 */  jr      $ra                        
/* 00384 80B18E04 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000

