.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240430_B2C8A0
/* B2C8A0 80240430 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* B2C8A4 80240434 AFB50024 */  sw        $s5, 0x24($sp)
/* B2C8A8 80240438 0080A82D */  daddu     $s5, $a0, $zero
/* B2C8AC 8024043C AFBF002C */  sw        $ra, 0x2c($sp)
/* B2C8B0 80240440 AFB60028 */  sw        $s6, 0x28($sp)
/* B2C8B4 80240444 AFB40020 */  sw        $s4, 0x20($sp)
/* B2C8B8 80240448 AFB3001C */  sw        $s3, 0x1c($sp)
/* B2C8BC 8024044C AFB20018 */  sw        $s2, 0x18($sp)
/* B2C8C0 80240450 AFB10014 */  sw        $s1, 0x14($sp)
/* B2C8C4 80240454 AFB00010 */  sw        $s0, 0x10($sp)
/* B2C8C8 80240458 F7B80040 */  sdc1      $f24, 0x40($sp)
/* B2C8CC 8024045C F7B60038 */  sdc1      $f22, 0x38($sp)
/* B2C8D0 80240460 F7B40030 */  sdc1      $f20, 0x30($sp)
/* B2C8D4 80240464 8EB30148 */  lw        $s3, 0x148($s5)
/* B2C8D8 80240468 86640008 */  lh        $a0, 8($s3)
/* B2C8DC 8024046C 0C00EABB */  jal       get_npc_unsafe
/* B2C8E0 80240470 00A0B02D */   daddu    $s6, $a1, $zero
/* B2C8E4 80240474 0040A02D */  daddu     $s4, $v0, $zero
/* B2C8E8 80240478 AEA00074 */  sw        $zero, 0x74($s5)
/* B2C8EC 8024047C C6980038 */  lwc1      $f24, 0x38($s4)
/* B2C8F0 80240480 C6960040 */  lwc1      $f22, 0x40($s4)
/* B2C8F4 80240484 0000902D */  daddu     $s2, $zero, $zero
/* B2C8F8 80240488 AEA00078 */  sw        $zero, 0x78($s5)
/* B2C8FC 8024048C 8E6300D0 */  lw        $v1, 0xd0($s3)
/* B2C900 80240490 8C620000 */  lw        $v0, ($v1)
/* B2C904 80240494 3C0146FF */  lui       $at, 0x46ff
/* B2C908 80240498 3421FE00 */  ori       $at, $at, 0xfe00
/* B2C90C 8024049C 4481A000 */  mtc1      $at, $f20
/* B2C910 802404A0 18400018 */  blez      $v0, .L80240504
/* B2C914 802404A4 0240802D */   daddu    $s0, $s2, $zero
/* B2C918 802404A8 0240882D */  daddu     $s1, $s2, $zero
.L802404AC:
/* B2C91C 802404AC 02231021 */  addu      $v0, $s1, $v1
/* B2C920 802404B0 4600C306 */  mov.s     $f12, $f24
/* B2C924 802404B4 C4440004 */  lwc1      $f4, 4($v0)
/* B2C928 802404B8 46802120 */  cvt.s.w   $f4, $f4
/* B2C92C 802404BC 44062000 */  mfc1      $a2, $f4
/* B2C930 802404C0 C444000C */  lwc1      $f4, 0xc($v0)
/* B2C934 802404C4 46802120 */  cvt.s.w   $f4, $f4
/* B2C938 802404C8 44072000 */  mfc1      $a3, $f4
/* B2C93C 802404CC 0C00A7B5 */  jal       dist2D
/* B2C940 802404D0 4600B386 */   mov.s    $f14, $f22
/* B2C944 802404D4 4614003C */  c.lt.s    $f0, $f20
/* B2C948 802404D8 00000000 */  nop       
/* B2C94C 802404DC 45000003 */  bc1f      .L802404EC
/* B2C950 802404E0 2631000C */   addiu    $s1, $s1, 0xc
/* B2C954 802404E4 46000506 */  mov.s     $f20, $f0
/* B2C958 802404E8 AEB20078 */  sw        $s2, 0x78($s5)
.L802404EC:
/* B2C95C 802404EC 8E6300D0 */  lw        $v1, 0xd0($s3)
/* B2C960 802404F0 26100001 */  addiu     $s0, $s0, 1
/* B2C964 802404F4 8C620000 */  lw        $v0, ($v1)
/* B2C968 802404F8 0202102A */  slt       $v0, $s0, $v0
/* B2C96C 802404FC 1440FFEB */  bnez      $v0, .L802404AC
/* B2C970 80240500 26520001 */   addiu    $s2, $s2, 1
.L80240504:
/* B2C974 80240504 8E6200CC */  lw        $v0, 0xcc($s3)
/* B2C978 80240508 8C420004 */  lw        $v0, 4($v0)
/* B2C97C 8024050C AE820028 */  sw        $v0, 0x28($s4)
/* B2C980 80240510 8E6200D0 */  lw        $v0, 0xd0($s3)
/* B2C984 80240514 8C42007C */  lw        $v0, 0x7c($v0)
/* B2C988 80240518 04410004 */  bgez      $v0, .L8024052C
/* B2C98C 8024051C 00000000 */   nop      
/* B2C990 80240520 C6C00000 */  lwc1      $f0, ($s6)
/* B2C994 80240524 08090153 */  j         .L8024054C
/* B2C998 80240528 E6800018 */   swc1     $f0, 0x18($s4)
.L8024052C:
/* B2C99C 8024052C 3C018025 */  lui       $at, 0x8025
/* B2C9A0 80240530 D42285C0 */  ldc1      $f2, -0x7a40($at)
/* B2C9A4 80240534 44820000 */  mtc1      $v0, $f0
/* B2C9A8 80240538 00000000 */  nop       
/* B2C9AC 8024053C 46800021 */  cvt.d.w   $f0, $f0
/* B2C9B0 80240540 46220003 */  div.d     $f0, $f0, $f2
/* B2C9B4 80240544 46200020 */  cvt.s.d   $f0, $f0
/* B2C9B8 80240548 E6800018 */  swc1      $f0, 0x18($s4)
.L8024054C:
/* B2C9BC 8024054C 24020001 */  addiu     $v0, $zero, 1
/* B2C9C0 80240550 AEA20070 */  sw        $v0, 0x70($s5)
/* B2C9C4 80240554 8FBF002C */  lw        $ra, 0x2c($sp)
/* B2C9C8 80240558 8FB60028 */  lw        $s6, 0x28($sp)
/* B2C9CC 8024055C 8FB50024 */  lw        $s5, 0x24($sp)
/* B2C9D0 80240560 8FB40020 */  lw        $s4, 0x20($sp)
/* B2C9D4 80240564 8FB3001C */  lw        $s3, 0x1c($sp)
/* B2C9D8 80240568 8FB20018 */  lw        $s2, 0x18($sp)
/* B2C9DC 8024056C 8FB10014 */  lw        $s1, 0x14($sp)
/* B2C9E0 80240570 8FB00010 */  lw        $s0, 0x10($sp)
/* B2C9E4 80240574 D7B80040 */  ldc1      $f24, 0x40($sp)
/* B2C9E8 80240578 D7B60038 */  ldc1      $f22, 0x38($sp)
/* B2C9EC 8024057C D7B40030 */  ldc1      $f20, 0x30($sp)
/* B2C9F0 80240580 03E00008 */  jr        $ra
/* B2C9F4 80240584 27BD0048 */   addiu    $sp, $sp, 0x48
