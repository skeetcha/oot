glabel func_80B862EC
/* 001BC 80B862EC 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 001C0 80B862F0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 001C4 80B862F4 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 001C8 80B862F8 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 001CC 80B862FC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 001D0 80B86300 0C00B5FB */  jal     func_8002D7EC              
/* 001D4 80B86304 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 001D8 80B86308 86020150 */  lh      $v0, 0x0150($s0)           ## 00000150
/* 001DC 80B8630C C6000070 */  lwc1    $f0, 0x0070($s0)           ## 00000070
/* 001E0 80B86310 C6020060 */  lwc1    $f2, 0x0060($s0)           ## 00000060
/* 001E4 80B86314 860E00B4 */  lh      $t6, 0x00B4($s0)           ## 000000B4
/* 001E8 80B86318 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
/* 001EC 80B8631C 4602003C */  c.lt.s  $f0, $f2                   
/* 001F0 80B86320 00024080 */  sll     $t0, $v0,  2               
/* 001F4 80B86324 00027840 */  sll     $t7, $v0,  1               
/* 001F8 80B86328 01024023 */  subu    $t0, $t0, $v0              
/* 001FC 80B8632C 01CFC021 */  addu    $t8, $t6, $t7              
/* 00200 80B86330 03284821 */  addu    $t1, $t9, $t0              
/* 00204 80B86334 A61800B4 */  sh      $t8, 0x00B4($s0)           ## 000000B4
/* 00208 80B86338 4500000A */  bc1f    .L80B86364                 
/* 0020C 80B8633C A60900B6 */  sh      $t1, 0x00B6($s0)           ## 000000B6
/* 00210 80B86340 C604006C */  lwc1    $f4, 0x006C($s0)           ## 0000006C
/* 00214 80B86344 46041180 */  add.s   $f6, $f2, $f4              
/* 00218 80B86348 E6060060 */  swc1    $f6, 0x0060($s0)           ## 00000060
/* 0021C 80B8634C C6080060 */  lwc1    $f8, 0x0060($s0)           ## 00000060
/* 00220 80B86350 4600403C */  c.lt.s  $f8, $f0                   
/* 00224 80B86354 00000000 */  nop
/* 00228 80B86358 45020003 */  bc1fl   .L80B86368                 
/* 0022C 80B8635C 96221D74 */  lhu     $v0, 0x1D74($s1)           ## 00001D74
/* 00230 80B86360 E6000060 */  swc1    $f0, 0x0060($s0)           ## 00000060
.L80B86364:
/* 00234 80B86364 96221D74 */  lhu     $v0, 0x1D74($s1)           ## 00001D74
.L80B86368:
/* 00238 80B86368 24010371 */  addiu   $at, $zero, 0x0371         ## $at = 00000371
/* 0023C 80B8636C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00240 80B86370 14410014 */  bne     $v0, $at, .L80B863C4       
/* 00244 80B86374 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00248 80B86378 3C01437A */  lui     $at, 0x437A                ## $at = 437A0000
/* 0024C 80B8637C 44815000 */  mtc1    $at, $f10                  ## $f10 = 250.00
/* 00250 80B86380 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 00254 80B86384 44818000 */  mtc1    $at, $f16                  ## $f16 = 60.00
/* 00258 80B86388 3C0180B8 */  lui     $at, %hi(D_80B86830)       ## $at = 80B80000
/* 0025C 80B8638C E60A0024 */  swc1    $f10, 0x0024($s0)          ## 00000024
/* 00260 80B86390 E6100028 */  swc1    $f16, 0x0028($s0)          ## 00000028
/* 00264 80B86394 C4326830 */  lwc1    $f18, %lo(D_80B86830)($at) 
/* 00268 80B86398 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0026C 80B8639C 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 00270 80B863A0 3C01C0A0 */  lui     $at, 0xC0A0                ## $at = C0A00000
/* 00274 80B863A4 44813000 */  mtc1    $at, $f6                   ## $f6 = -5.00
/* 00278 80B863A8 3C01C0E0 */  lui     $at, 0xC0E0                ## $at = C0E00000
/* 0027C 80B863AC 44814000 */  mtc1    $at, $f8                   ## $f8 = -7.00
/* 00280 80B863B0 E612002C */  swc1    $f18, 0x002C($s0)          ## 0000002C
/* 00284 80B863B4 E604005C */  swc1    $f4, 0x005C($s0)           ## 0000005C
/* 00288 80B863B8 E6060060 */  swc1    $f6, 0x0060($s0)           ## 00000060
/* 0028C 80B863BC E6080064 */  swc1    $f8, 0x0064($s0)           ## 00000064
/* 00290 80B863C0 96221D74 */  lhu     $v0, 0x1D74($s1)           ## 00001D74
.L80B863C4:
/* 00294 80B863C4 24010381 */  addiu   $at, $zero, 0x0381         ## $at = 00000381
/* 00298 80B863C8 1441001C */  bne     $v0, $at, .L80B8643C       
/* 0029C 80B863CC 24060064 */  addiu   $a2, $zero, 0x0064         ## $a2 = 00000064
/* 002A0 80B863D0 240701F4 */  addiu   $a3, $zero, 0x01F4         ## $a3 = 000001F4
/* 002A4 80B863D4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 002A8 80B863D8 0C00A511 */  jal     func_80029444              
/* 002AC 80B863DC AFA50030 */  sw      $a1, 0x0030($sp)           
/* 002B0 80B863E0 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 002B4 80B863E4 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 002B8 80B863E8 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 002BC 80B863EC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 002C0 80B863F0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 002C4 80B863F4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 002C8 80B863F8 0C00A527 */  jal     func_8002949C              
/* 002CC 80B863FC AFA00014 */  sw      $zero, 0x0014($sp)         
/* 002D0 80B86400 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 002D4 80B86404 3C0180B8 */  lui     $at, %hi(D_80B86834)       ## $at = 80B80000
/* 002D8 80B86408 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002DC 80B8640C E600005C */  swc1    $f0, 0x005C($s0)           ## 0000005C
/* 002E0 80B86410 E6000060 */  swc1    $f0, 0x0060($s0)           ## 00000060
/* 002E4 80B86414 E6000064 */  swc1    $f0, 0x0064($s0)           ## 00000064
/* 002E8 80B86418 C42A6834 */  lwc1    $f10, %lo(D_80B86834)($at) 
/* 002EC 80B8641C 3C01BF00 */  lui     $at, 0xBF00                ## $at = BF000000
/* 002F0 80B86420 44818000 */  mtc1    $at, $f16                  ## $f16 = -0.50
/* 002F4 80B86424 A6000150 */  sh      $zero, 0x0150($s0)         ## 00000150
/* 002F8 80B86428 24052817 */  addiu   $a1, $zero, 0x2817         ## $a1 = 00002817
/* 002FC 80B8642C E60A006C */  swc1    $f10, 0x006C($s0)          ## 0000006C
/* 00300 80B86430 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00304 80B86434 E6100070 */  swc1    $f16, 0x0070($s0)          ## 00000070
/* 00308 80B86438 96221D74 */  lhu     $v0, 0x1D74($s1)           ## 00001D74
.L80B8643C:
/* 0030C 80B8643C 2401038A */  addiu   $at, $zero, 0x038A         ## $at = 0000038A
/* 00310 80B86440 1441000F */  bne     $v0, $at, .L80B86480       
/* 00314 80B86444 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00318 80B86448 3C014389 */  lui     $at, 0x4389                ## $at = 43890000
/* 0031C 80B8644C 44819000 */  mtc1    $at, $f18                  ## $f18 = 274.00
/* 00320 80B86450 3C01C270 */  lui     $at, 0xC270                ## $at = C2700000
/* 00324 80B86454 44812000 */  mtc1    $at, $f4                   ## $f4 = -60.00
/* 00328 80B86458 3C0180B8 */  lui     $at, %hi(D_80B86838)       ## $at = 80B80000
/* 0032C 80B8645C C4266838 */  lwc1    $f6, %lo(D_80B86838)($at)  
/* 00330 80B86460 27A50034 */  addiu   $a1, $sp, 0x0034           ## $a1 = FFFFFFF4
/* 00334 80B86464 24060064 */  addiu   $a2, $zero, 0x0064         ## $a2 = 00000064
/* 00338 80B86468 240701F4 */  addiu   $a3, $zero, 0x01F4         ## $a3 = 000001F4
/* 0033C 80B8646C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00340 80B86470 E7B20034 */  swc1    $f18, 0x0034($sp)          
/* 00344 80B86474 E7A40038 */  swc1    $f4, 0x0038($sp)           
/* 00348 80B86478 0C00A511 */  jal     func_80029444              
/* 0034C 80B8647C E7A6003C */  swc1    $f6, 0x003C($sp)           
.L80B86480:
/* 00350 80B86480 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00354 80B86484 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00358 80B86488 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 0035C 80B8648C 03E00008 */  jr      $ra                        
/* 00360 80B86490 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000

