.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024133C_C3281C
/* C3281C 8024133C 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* C32820 80241340 AFB3001C */  sw        $s3, 0x1c($sp)
/* C32824 80241344 0080982D */  daddu     $s3, $a0, $zero
/* C32828 80241348 AFBF0020 */  sw        $ra, 0x20($sp)
/* C3282C 8024134C AFB20018 */  sw        $s2, 0x18($sp)
/* C32830 80241350 AFB10014 */  sw        $s1, 0x14($sp)
/* C32834 80241354 AFB00010 */  sw        $s0, 0x10($sp)
/* C32838 80241358 F7B40028 */  sdc1      $f20, 0x28($sp)
/* C3283C 8024135C 8E710148 */  lw        $s1, 0x148($s3)
/* C32840 80241360 86240008 */  lh        $a0, 8($s1)
/* C32844 80241364 0C00EABB */  jal       get_npc_unsafe
/* C32848 80241368 00A0802D */   daddu    $s0, $a1, $zero
/* C3284C 8024136C 8E040020 */  lw        $a0, 0x20($s0)
/* C32850 80241370 0040902D */  daddu     $s2, $v0, $zero
/* C32854 80241374 00041FC2 */  srl       $v1, $a0, 0x1f
/* C32858 80241378 00832021 */  addu      $a0, $a0, $v1
/* C3285C 8024137C 00042043 */  sra       $a0, $a0, 1
/* C32860 80241380 0C00A67F */  jal       rand_int
/* C32864 80241384 24840001 */   addiu    $a0, $a0, 1
/* C32868 80241388 8E030020 */  lw        $v1, 0x20($s0)
/* C3286C 8024138C C64C0038 */  lwc1      $f12, 0x38($s2)
/* C32870 80241390 000327C2 */  srl       $a0, $v1, 0x1f
/* C32874 80241394 00641821 */  addu      $v1, $v1, $a0
/* C32878 80241398 00031843 */  sra       $v1, $v1, 1
/* C3287C 8024139C 00621821 */  addu      $v1, $v1, $v0
/* C32880 802413A0 A643008E */  sh        $v1, 0x8e($s2)
/* C32884 802413A4 8E2200CC */  lw        $v0, 0xcc($s1)
/* C32888 802413A8 C64E0040 */  lwc1      $f14, 0x40($s2)
/* C3288C 802413AC 8C42000C */  lw        $v0, 0xc($v0)
/* C32890 802413B0 AE420028 */  sw        $v0, 0x28($s2)
/* C32894 802413B4 C6000018 */  lwc1      $f0, 0x18($s0)
/* C32898 802413B8 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* C3289C 802413BC 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* C328A0 802413C0 E6400018 */  swc1      $f0, 0x18($s2)
/* C328A4 802413C4 8C460028 */  lw        $a2, 0x28($v0)
/* C328A8 802413C8 0C00A720 */  jal       atan2
/* C328AC 802413CC 8C470030 */   lw       $a3, 0x30($v0)
/* C328B0 802413D0 46000506 */  mov.s     $f20, $f0
/* C328B4 802413D4 C64C000C */  lwc1      $f12, 0xc($s2)
/* C328B8 802413D8 0C00A70A */  jal       get_clamped_angle_diff
/* C328BC 802413DC 4600A386 */   mov.s    $f14, $f20
/* C328C0 802413E0 46000086 */  mov.s     $f2, $f0
/* C328C4 802413E4 8E02001C */  lw        $v0, 0x1c($s0)
/* C328C8 802413E8 46001005 */  abs.s     $f0, $f2
/* C328CC 802413EC 44822000 */  mtc1      $v0, $f4
/* C328D0 802413F0 00000000 */  nop       
/* C328D4 802413F4 46802120 */  cvt.s.w   $f4, $f4
/* C328D8 802413F8 4600203C */  c.lt.s    $f4, $f0
/* C328DC 802413FC 00000000 */  nop       
/* C328E0 80241400 4500000D */  bc1f      .L80241438
/* C328E4 80241404 00000000 */   nop      
/* C328E8 80241408 44800000 */  mtc1      $zero, $f0
/* C328EC 8024140C C654000C */  lwc1      $f20, 0xc($s2)
/* C328F0 80241410 4600103C */  c.lt.s    $f2, $f0
/* C328F4 80241414 00000000 */  nop       
/* C328F8 80241418 45000006 */  bc1f      .L80241434
/* C328FC 8024141C 00021023 */   negu     $v0, $v0
/* C32900 80241420 44820000 */  mtc1      $v0, $f0
/* C32904 80241424 00000000 */  nop       
/* C32908 80241428 46800020 */  cvt.s.w   $f0, $f0
/* C3290C 8024142C 0809050E */  j         .L80241438
/* C32910 80241430 4600A500 */   add.s    $f20, $f20, $f0
.L80241434:
/* C32914 80241434 4604A500 */  add.s     $f20, $f20, $f4
.L80241438:
/* C32918 80241438 0C00A6C9 */  jal       clamp_angle
/* C3291C 8024143C 4600A306 */   mov.s    $f12, $f20
/* C32920 80241440 2402000D */  addiu     $v0, $zero, 0xd
/* C32924 80241444 E640000C */  swc1      $f0, 0xc($s2)
/* C32928 80241448 AE620070 */  sw        $v0, 0x70($s3)
/* C3292C 8024144C 8FBF0020 */  lw        $ra, 0x20($sp)
/* C32930 80241450 8FB3001C */  lw        $s3, 0x1c($sp)
/* C32934 80241454 8FB20018 */  lw        $s2, 0x18($sp)
/* C32938 80241458 8FB10014 */  lw        $s1, 0x14($sp)
/* C3293C 8024145C 8FB00010 */  lw        $s0, 0x10($sp)
/* C32940 80241460 D7B40028 */  ldc1      $f20, 0x28($sp)
/* C32944 80241464 03E00008 */  jr        $ra
/* C32948 80241468 27BD0030 */   addiu    $sp, $sp, 0x30
