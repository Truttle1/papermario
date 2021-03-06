.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024129C_9D82BC
/* 9D82BC 8024129C 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 9D82C0 802412A0 AFB3001C */  sw        $s3, 0x1c($sp)
/* 9D82C4 802412A4 0080982D */  daddu     $s3, $a0, $zero
/* 9D82C8 802412A8 AFBF0020 */  sw        $ra, 0x20($sp)
/* 9D82CC 802412AC AFB20018 */  sw        $s2, 0x18($sp)
/* 9D82D0 802412B0 AFB10014 */  sw        $s1, 0x14($sp)
/* 9D82D4 802412B4 AFB00010 */  sw        $s0, 0x10($sp)
/* 9D82D8 802412B8 F7B40028 */  sdc1      $f20, 0x28($sp)
/* 9D82DC 802412BC 8E710148 */  lw        $s1, 0x148($s3)
/* 9D82E0 802412C0 86240008 */  lh        $a0, 8($s1)
/* 9D82E4 802412C4 0C00EABB */  jal       get_npc_unsafe
/* 9D82E8 802412C8 00A0802D */   daddu    $s0, $a1, $zero
/* 9D82EC 802412CC 8E040020 */  lw        $a0, 0x20($s0)
/* 9D82F0 802412D0 0040902D */  daddu     $s2, $v0, $zero
/* 9D82F4 802412D4 00041FC2 */  srl       $v1, $a0, 0x1f
/* 9D82F8 802412D8 00832021 */  addu      $a0, $a0, $v1
/* 9D82FC 802412DC 00042043 */  sra       $a0, $a0, 1
/* 9D8300 802412E0 0C00A67F */  jal       rand_int
/* 9D8304 802412E4 24840001 */   addiu    $a0, $a0, 1
/* 9D8308 802412E8 8E030020 */  lw        $v1, 0x20($s0)
/* 9D830C 802412EC C64C0038 */  lwc1      $f12, 0x38($s2)
/* 9D8310 802412F0 000327C2 */  srl       $a0, $v1, 0x1f
/* 9D8314 802412F4 00641821 */  addu      $v1, $v1, $a0
/* 9D8318 802412F8 00031843 */  sra       $v1, $v1, 1
/* 9D831C 802412FC 00621821 */  addu      $v1, $v1, $v0
/* 9D8320 80241300 A643008E */  sh        $v1, 0x8e($s2)
/* 9D8324 80241304 8E2200CC */  lw        $v0, 0xcc($s1)
/* 9D8328 80241308 C64E0040 */  lwc1      $f14, 0x40($s2)
/* 9D832C 8024130C 8C42000C */  lw        $v0, 0xc($v0)
/* 9D8330 80241310 AE420028 */  sw        $v0, 0x28($s2)
/* 9D8334 80241314 C6000018 */  lwc1      $f0, 0x18($s0)
/* 9D8338 80241318 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* 9D833C 8024131C 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* 9D8340 80241320 E6400018 */  swc1      $f0, 0x18($s2)
/* 9D8344 80241324 8C460028 */  lw        $a2, 0x28($v0)
/* 9D8348 80241328 0C00A720 */  jal       atan2
/* 9D834C 8024132C 8C470030 */   lw       $a3, 0x30($v0)
/* 9D8350 80241330 46000506 */  mov.s     $f20, $f0
/* 9D8354 80241334 C64C000C */  lwc1      $f12, 0xc($s2)
/* 9D8358 80241338 0C00A70A */  jal       get_clamped_angle_diff
/* 9D835C 8024133C 4600A386 */   mov.s    $f14, $f20
/* 9D8360 80241340 46000086 */  mov.s     $f2, $f0
/* 9D8364 80241344 8E02001C */  lw        $v0, 0x1c($s0)
/* 9D8368 80241348 46001005 */  abs.s     $f0, $f2
/* 9D836C 8024134C 44822000 */  mtc1      $v0, $f4
/* 9D8370 80241350 00000000 */  nop       
/* 9D8374 80241354 46802120 */  cvt.s.w   $f4, $f4
/* 9D8378 80241358 4600203C */  c.lt.s    $f4, $f0
/* 9D837C 8024135C 00000000 */  nop       
/* 9D8380 80241360 4500000D */  bc1f      .L80241398
/* 9D8384 80241364 00000000 */   nop      
/* 9D8388 80241368 44800000 */  mtc1      $zero, $f0
/* 9D838C 8024136C C654000C */  lwc1      $f20, 0xc($s2)
/* 9D8390 80241370 4600103C */  c.lt.s    $f2, $f0
/* 9D8394 80241374 00000000 */  nop       
/* 9D8398 80241378 45000006 */  bc1f      .L80241394
/* 9D839C 8024137C 00021023 */   negu     $v0, $v0
/* 9D83A0 80241380 44820000 */  mtc1      $v0, $f0
/* 9D83A4 80241384 00000000 */  nop       
/* 9D83A8 80241388 46800020 */  cvt.s.w   $f0, $f0
/* 9D83AC 8024138C 080904E6 */  j         .L80241398
/* 9D83B0 80241390 4600A500 */   add.s    $f20, $f20, $f0
.L80241394:
/* 9D83B4 80241394 4604A500 */  add.s     $f20, $f20, $f4
.L80241398:
/* 9D83B8 80241398 0C00A6C9 */  jal       clamp_angle
/* 9D83BC 8024139C 4600A306 */   mov.s    $f12, $f20
/* 9D83C0 802413A0 2402000D */  addiu     $v0, $zero, 0xd
/* 9D83C4 802413A4 E640000C */  swc1      $f0, 0xc($s2)
/* 9D83C8 802413A8 AE620070 */  sw        $v0, 0x70($s3)
/* 9D83CC 802413AC 8FBF0020 */  lw        $ra, 0x20($sp)
/* 9D83D0 802413B0 8FB3001C */  lw        $s3, 0x1c($sp)
/* 9D83D4 802413B4 8FB20018 */  lw        $s2, 0x18($sp)
/* 9D83D8 802413B8 8FB10014 */  lw        $s1, 0x14($sp)
/* 9D83DC 802413BC 8FB00010 */  lw        $s0, 0x10($sp)
/* 9D83E0 802413C0 D7B40028 */  ldc1      $f20, 0x28($sp)
/* 9D83E4 802413C4 03E00008 */  jr        $ra
/* 9D83E8 802413C8 27BD0030 */   addiu    $sp, $sp, 0x30
