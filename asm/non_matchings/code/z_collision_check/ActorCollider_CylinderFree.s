glabel ActorCollider_FreeCylinder
/* AD354C 8005C3AC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD3550 8005C3B0 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD3554 8005C3B4 AFA40018 */  sw    $a0, 0x18($sp)
/* AD3558 8005C3B8 0C016DA8 */  jal   func_8005B6A0
/* AD355C 8005C3BC AFA5001C */   sw    $a1, 0x1c($sp)
/* AD3560 8005C3C0 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD3564 8005C3C4 8FA40018 */  lw    $a0, 0x18($sp)
/* AD3568 8005C3C8 0C016E41 */  jal   func_8005B904
/* AD356C 8005C3CC 24A50018 */   addiu $a1, $a1, 0x18
/* AD3570 8005C3D0 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD3574 8005C3D4 8FA40018 */  lw    $a0, 0x18($sp)
/* AD3578 8005C3D8 0C0170C6 */  jal   func_8005C318
/* AD357C 8005C3DC 24A50040 */   addiu $a1, $a1, 0x40
/* AD3580 8005C3E0 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD3584 8005C3E4 27BD0018 */  addiu $sp, $sp, 0x18
/* AD3588 8005C3E8 24020001 */  li    $v0, 1
/* AD358C 8005C3EC 03E00008 */  jr    $ra
/* AD3590 8005C3F0 00000000 */   nop   

