glabel func_80A74BA4
/* 00894 80A74BA4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00898 80A74BA8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0089C 80A74BAC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 008A0 80A74BB0 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 008A4 80A74BB4 908E02FB */  lbu     $t6, 0x02FB($a0)           ## 000002FB
/* 008A8 80A74BB8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 008AC 80A74BBC 24083FFC */  addiu   $t0, $zero, 0x3FFC         ## $t0 = 00003FFC
/* 008B0 80A74BC0 15C00007 */  bne     $t6, $zero, .L80A74BE0     
/* 008B4 80A74BC4 240704B0 */  addiu   $a3, $zero, 0x04B0         ## $a3 = 000004B0
/* 008B8 80A74BC8 240F0010 */  addiu   $t7, $zero, 0x0010         ## $t7 = 00000010
/* 008BC 80A74BCC 24080AAA */  addiu   $t0, $zero, 0x0AAA         ## $t0 = 00000AAA
/* 008C0 80A74BD0 24070320 */  addiu   $a3, $zero, 0x0320         ## $a3 = 00000320
/* 008C4 80A74BD4 A7A00030 */  sh      $zero, 0x0030($sp)         
/* 008C8 80A74BD8 10000005 */  beq     $zero, $zero, .L80A74BF0   
/* 008CC 80A74BDC A7AF002E */  sh      $t7, 0x002E($sp)           
.L80A74BE0:
/* 008D0 80A74BE0 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 008D4 80A74BE4 24190009 */  addiu   $t9, $zero, 0x0009         ## $t9 = 00000009
/* 008D8 80A74BE8 A7B80030 */  sh      $t8, 0x0030($sp)           
/* 008DC 80A74BEC A7B9002E */  sh      $t9, 0x002E($sp)           
.L80A74BF0:
/* 008E0 80A74BF0 8603007E */  lh      $v1, 0x007E($s0)           ## 0000007E
/* 008E4 80A74BF4 860900B6 */  lh      $t1, 0x00B6($s0)           ## 000000B6
/* 008E8 80A74BF8 960A0088 */  lhu     $t2, 0x0088($s0)           ## 00000088
/* 008EC 80A74BFC 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 008F0 80A74C00 00692823 */  subu    $a1, $v1, $t1              
/* 008F4 80A74C04 00052C00 */  sll     $a1, $a1, 16               
/* 008F8 80A74C08 314B0008 */  andi    $t3, $t2, 0x0008           ## $t3 = 00000000
/* 008FC 80A74C0C 11600017 */  beq     $t3, $zero, .L80A74C6C     
/* 00900 80A74C10 00052C03 */  sra     $a1, $a1, 16               
/* 00904 80A74C14 04A00003 */  bltz    $a1, .L80A74C24            
/* 00908 80A74C18 00051023 */  subu    $v0, $zero, $a1            
/* 0090C 80A74C1C 10000001 */  beq     $zero, $zero, .L80A74C24   
/* 00910 80A74C20 00A01025 */  or      $v0, $a1, $zero            ## $v0 = 00000000
.L80A74C24:
/* 00914 80A74C24 28414000 */  slti    $at, $v0, 0x4000           
/* 00918 80A74C28 14200010 */  bne     $at, $zero, .L80A74C6C     
/* 0091C 80A74C2C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00920 80A74C30 860C008A */  lh      $t4, 0x008A($s0)           ## 0000008A
/* 00924 80A74C34 24654000 */  addiu   $a1, $v1, 0x4000           ## $a1 = 00004000
/* 00928 80A74C38 00052C00 */  sll     $a1, $a1, 16               
/* 0092C 80A74C3C 19800005 */  blez    $t4, .L80A74C54            
/* 00930 80A74C40 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 00934 80A74C44 2465C000 */  addiu   $a1, $v1, 0xC000           ## $a1 = FFFFC000
/* 00938 80A74C48 00052C00 */  sll     $a1, $a1, 16               
/* 0093C 80A74C4C 10000002 */  beq     $zero, $zero, .L80A74C58   
/* 00940 80A74C50 00052C03 */  sra     $a1, $a1, 16               
.L80A74C54:
/* 00944 80A74C54 00052C03 */  sra     $a1, $a1, 16               
.L80A74C58:
/* 00948 80A74C58 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0094C 80A74C5C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00950 80A74C60 A7A80036 */  sh      $t0, 0x0036($sp)           
/* 00954 80A74C64 10000007 */  beq     $zero, $zero, .L80A74C84   
/* 00958 80A74C68 87A80036 */  lh      $t0, 0x0036($sp)           
.L80A74C6C:
/* 0095C 80A74C6C 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00960 80A74C70 A7A80036 */  sh      $t0, 0x0036($sp)           
/* 00964 80A74C74 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00968 80A74C78 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 0096C 80A74C7C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00970 80A74C80 87A80036 */  lh      $t0, 0x0036($sp)           
.L80A74C84:
/* 00974 80A74C84 860D0032 */  lh      $t5, 0x0032($s0)           ## 00000032
/* 00978 80A74C88 860E008A */  lh      $t6, 0x008A($s0)           ## 0000008A
/* 0097C 80A74C8C A60D00B6 */  sh      $t5, 0x00B6($s0)           ## 000000B6
/* 00980 80A74C90 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 00984 80A74C94 01CF1823 */  subu    $v1, $t6, $t7              
/* 00988 80A74C98 00031C00 */  sll     $v1, $v1, 16               
/* 0098C 80A74C9C 00031C03 */  sra     $v1, $v1, 16               
/* 00990 80A74CA0 04600003 */  bltz    $v1, .L80A74CB0            
/* 00994 80A74CA4 00031023 */  subu    $v0, $zero, $v1            
/* 00998 80A74CA8 10000001 */  beq     $zero, $zero, .L80A74CB0   
/* 0099C 80A74CAC 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80A74CB0:
/* 009A0 80A74CB0 0102082A */  slt     $at, $t0, $v0              
/* 009A4 80A74CB4 14200022 */  bne     $at, $zero, .L80A74D40     
/* 009A8 80A74CB8 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 009AC 80A74CBC 44813000 */  mtc1    $at, $f6                   ## $f6 = 100.00
/* 009B0 80A74CC0 C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
/* 009B4 80A74CC4 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 009B8 80A74CC8 4606203C */  c.lt.s  $f4, $f6                   
/* 009BC 80A74CCC 00000000 */  nop
/* 009C0 80A74CD0 4502001C */  bc1fl   .L80A74D44                 
/* 009C4 80A74CD4 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 009C8 80A74CD8 C6000094 */  lwc1    $f0, 0x0094($s0)           ## 00000094
/* 009CC 80A74CDC 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 009D0 80A74CE0 8FB8003C */  lw      $t8, 0x003C($sp)           
/* 009D4 80A74CE4 44815000 */  mtc1    $at, $f10                  ## $f10 = 150.00
/* 009D8 80A74CE8 4600403E */  c.le.s  $f8, $f0                   
/* 009DC 80A74CEC 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 009E0 80A74CF0 0338C821 */  addu    $t9, $t9, $t8              
/* 009E4 80A74CF4 45020004 */  bc1fl   .L80A74D08                 
/* 009E8 80A74CF8 46000087 */  neg.s   $f2, $f0                   
/* 009EC 80A74CFC 10000002 */  beq     $zero, $zero, .L80A74D08   
/* 009F0 80A74D00 46000086 */  mov.s   $f2, $f0                   
/* 009F4 80A74D04 46000087 */  neg.s   $f2, $f0                   
.L80A74D08:
/* 009F8 80A74D08 460A103C */  c.lt.s  $f2, $f10                  
/* 009FC 80A74D0C 00000000 */  nop
/* 00A00 80A74D10 4502000C */  bc1fl   .L80A74D44                 
/* 00A04 80A74D14 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00A08 80A74D18 8F391DE4 */  lw      $t9, 0x1DE4($t9)           ## 00011DE4
/* 00A0C 80A74D1C 33290001 */  andi    $t1, $t9, 0x0001           ## $t1 = 00000000
/* 00A10 80A74D20 11200005 */  beq     $t1, $zero, .L80A74D38     
/* 00A14 80A74D24 00000000 */  nop
/* 00A18 80A74D28 0C29D38B */  jal     func_80A74E2C              
/* 00A1C 80A74D2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A20 80A74D30 10000004 */  beq     $zero, $zero, .L80A74D44   
/* 00A24 80A74D34 8FA4003C */  lw      $a0, 0x003C($sp)           
.L80A74D38:
/* 00A28 80A74D38 0C29D472 */  jal     func_80A751C8              
/* 00A2C 80A74D3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A74D40:
/* 00A30 80A74D40 8FA4003C */  lw      $a0, 0x003C($sp)           
.L80A74D44:
/* 00A34 80A74D44 0C29D19D */  jal     func_80A74674              
/* 00A38 80A74D48 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00A3C 80A74D4C 50400007 */  beql    $v0, $zero, .L80A74D6C     
/* 00A40 80A74D50 860B008A */  lh      $t3, 0x008A($s0)           ## 0000008A
/* 00A44 80A74D54 0C29D472 */  jal     func_80A751C8              
/* 00A48 80A74D58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A4C 80A74D5C 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00A50 80A74D60 10000019 */  beq     $zero, $zero, .L80A74DC8   
/* 00A54 80A74D64 A20A02FC */  sb      $t2, 0x02FC($s0)           ## 000002FC
/* 00A58 80A74D68 860B008A */  lh      $t3, 0x008A($s0)           ## 0000008A
.L80A74D6C:
/* 00A5C 80A74D6C 860C00B6 */  lh      $t4, 0x00B6($s0)           ## 000000B6
/* 00A60 80A74D70 24180028 */  addiu   $t8, $zero, 0x0028         ## $t8 = 00000028
/* 00A64 80A74D74 016C4023 */  subu    $t0, $t3, $t4              
/* 00A68 80A74D78 00084400 */  sll     $t0, $t0, 16               
/* 00A6C 80A74D7C 00084403 */  sra     $t0, $t0, 16               
/* 00A70 80A74D80 05000003 */  bltz    $t0, .L80A74D90            
/* 00A74 80A74D84 00081023 */  subu    $v0, $zero, $t0            
/* 00A78 80A74D88 10000001 */  beq     $zero, $zero, .L80A74D90   
/* 00A7C 80A74D8C 01001025 */  or      $v0, $t0, $zero            ## $v0 = 00000000
.L80A74D90:
/* 00A80 80A74D90 28414001 */  slti    $at, $v0, 0x4001           
/* 00A84 80A74D94 5420000C */  bnel    $at, $zero, .L80A74DC8     
/* 00A88 80A74D98 A6180300 */  sh      $t8, 0x0300($s0)           ## 00000300
/* 00A8C 80A74D9C 860D0300 */  lh      $t5, 0x0300($s0)           ## 00000300
/* 00A90 80A74DA0 25AEFFFF */  addiu   $t6, $t5, 0xFFFF           ## $t6 = FFFFFFFF
/* 00A94 80A74DA4 A60E0300 */  sh      $t6, 0x0300($s0)           ## 00000300
/* 00A98 80A74DA8 860F0300 */  lh      $t7, 0x0300($s0)           ## 00000300
/* 00A9C 80A74DAC 55E00007 */  bnel    $t7, $zero, .L80A74DCC     
/* 00AA0 80A74DB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AA4 80A74DB4 0C29D528 */  jal     func_80A754A0              
/* 00AA8 80A74DB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AAC 80A74DBC 10000003 */  beq     $zero, $zero, .L80A74DCC   
/* 00AB0 80A74DC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AB4 80A74DC4 A6180300 */  sh      $t8, 0x0300($s0)           ## 00000300
.L80A74DC8:
/* 00AB8 80A74DC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A74DCC:
/* 00ABC 80A74DCC 0C29D179 */  jal     func_80A745E4              
/* 00AC0 80A74DD0 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 00AC4 80A74DD4 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00AC8 80A74DD8 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00ACC 80A74DDC C6100164 */  lwc1    $f16, 0x0164($s0)          ## 00000164
/* 00AD0 80A74DE0 87A90030 */  lh      $t1, 0x0030($sp)           
/* 00AD4 80A74DE4 87AA002E */  lh      $t2, 0x002E($sp)           
/* 00AD8 80A74DE8 4600848D */  trunc.w.s $f18, $f16                 
/* 00ADC 80A74DEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AE0 80A74DF0 44039000 */  mfc1    $v1, $f18                  
/* 00AE4 80A74DF4 00000000 */  nop
/* 00AE8 80A74DF8 00031C00 */  sll     $v1, $v1, 16               
/* 00AEC 80A74DFC 00031C03 */  sra     $v1, $v1, 16               
/* 00AF0 80A74E00 11230003 */  beq     $t1, $v1, .L80A74E10       
/* 00AF4 80A74E04 00000000 */  nop
/* 00AF8 80A74E08 55430004 */  bnel    $t2, $v1, .L80A74E1C       
/* 00AFC 80A74E0C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A74E10:
/* 00B00 80A74E10 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00B04 80A74E14 24053928 */  addiu   $a1, $zero, 0x3928         ## $a1 = 00003928
/* 00B08 80A74E18 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A74E1C:
/* 00B0C 80A74E1C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00B10 80A74E20 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00B14 80A74E24 03E00008 */  jr      $ra                        
/* 00B18 80A74E28 00000000 */  nop


