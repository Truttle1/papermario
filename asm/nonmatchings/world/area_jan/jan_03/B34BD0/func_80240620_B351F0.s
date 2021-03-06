.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240620_B351F0
/* B351F0 80240620 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* B351F4 80240624 AFB50024 */  sw        $s5, 0x24($sp)
/* B351F8 80240628 0080A82D */  daddu     $s5, $a0, $zero
/* B351FC 8024062C AFBF002C */  sw        $ra, 0x2c($sp)
/* B35200 80240630 AFB60028 */  sw        $s6, 0x28($sp)
/* B35204 80240634 AFB40020 */  sw        $s4, 0x20($sp)
/* B35208 80240638 AFB3001C */  sw        $s3, 0x1c($sp)
/* B3520C 8024063C AFB20018 */  sw        $s2, 0x18($sp)
/* B35210 80240640 AFB10014 */  sw        $s1, 0x14($sp)
/* B35214 80240644 AFB00010 */  sw        $s0, 0x10($sp)
/* B35218 80240648 F7B80040 */  sdc1      $f24, 0x40($sp)
/* B3521C 8024064C F7B60038 */  sdc1      $f22, 0x38($sp)
/* B35220 80240650 F7B40030 */  sdc1      $f20, 0x30($sp)
/* B35224 80240654 8EB30148 */  lw        $s3, 0x148($s5)
/* B35228 80240658 86640008 */  lh        $a0, 8($s3)
/* B3522C 8024065C 0C00EABB */  jal       get_npc_unsafe
/* B35230 80240660 00A0B02D */   daddu    $s6, $a1, $zero
/* B35234 80240664 0040A02D */  daddu     $s4, $v0, $zero
/* B35238 80240668 AEA00074 */  sw        $zero, 0x74($s5)
/* B3523C 8024066C C6980038 */  lwc1      $f24, 0x38($s4)
/* B35240 80240670 C6960040 */  lwc1      $f22, 0x40($s4)
/* B35244 80240674 0000902D */  daddu     $s2, $zero, $zero
/* B35248 80240678 AEA00078 */  sw        $zero, 0x78($s5)
/* B3524C 8024067C 8E6300D0 */  lw        $v1, 0xd0($s3)
/* B35250 80240680 8C620000 */  lw        $v0, ($v1)
/* B35254 80240684 3C0146FF */  lui       $at, 0x46ff
/* B35258 80240688 3421FE00 */  ori       $at, $at, 0xfe00
/* B3525C 8024068C 4481A000 */  mtc1      $at, $f20
/* B35260 80240690 18400018 */  blez      $v0, .L802406F4
/* B35264 80240694 0240802D */   daddu    $s0, $s2, $zero
/* B35268 80240698 0240882D */  daddu     $s1, $s2, $zero
.L8024069C:
/* B3526C 8024069C 02231021 */  addu      $v0, $s1, $v1
/* B35270 802406A0 4600C306 */  mov.s     $f12, $f24
/* B35274 802406A4 C4440004 */  lwc1      $f4, 4($v0)
/* B35278 802406A8 46802120 */  cvt.s.w   $f4, $f4
/* B3527C 802406AC 44062000 */  mfc1      $a2, $f4
/* B35280 802406B0 C444000C */  lwc1      $f4, 0xc($v0)
/* B35284 802406B4 46802120 */  cvt.s.w   $f4, $f4
/* B35288 802406B8 44072000 */  mfc1      $a3, $f4
/* B3528C 802406BC 0C00A7B5 */  jal       dist2D
/* B35290 802406C0 4600B386 */   mov.s    $f14, $f22
/* B35294 802406C4 4614003C */  c.lt.s    $f0, $f20
/* B35298 802406C8 00000000 */  nop       
/* B3529C 802406CC 45000003 */  bc1f      .L802406DC
/* B352A0 802406D0 2631000C */   addiu    $s1, $s1, 0xc
/* B352A4 802406D4 46000506 */  mov.s     $f20, $f0
/* B352A8 802406D8 AEB20078 */  sw        $s2, 0x78($s5)
.L802406DC:
/* B352AC 802406DC 8E6300D0 */  lw        $v1, 0xd0($s3)
/* B352B0 802406E0 26100001 */  addiu     $s0, $s0, 1
/* B352B4 802406E4 8C620000 */  lw        $v0, ($v1)
/* B352B8 802406E8 0202102A */  slt       $v0, $s0, $v0
/* B352BC 802406EC 1440FFEB */  bnez      $v0, .L8024069C
/* B352C0 802406F0 26520001 */   addiu    $s2, $s2, 1
.L802406F4:
/* B352C4 802406F4 8E6200CC */  lw        $v0, 0xcc($s3)
/* B352C8 802406F8 8C420004 */  lw        $v0, 4($v0)
/* B352CC 802406FC AE820028 */  sw        $v0, 0x28($s4)
/* B352D0 80240700 8E6200D0 */  lw        $v0, 0xd0($s3)
/* B352D4 80240704 8C42007C */  lw        $v0, 0x7c($v0)
/* B352D8 80240708 04410004 */  bgez      $v0, .L8024071C
/* B352DC 8024070C 00000000 */   nop      
/* B352E0 80240710 C6C00000 */  lwc1      $f0, ($s6)
/* B352E4 80240714 080901CF */  j         .L8024073C
/* B352E8 80240718 E6800018 */   swc1     $f0, 0x18($s4)
.L8024071C:
/* B352EC 8024071C 3C018025 */  lui       $at, 0x8025
/* B352F0 80240720 D422F9F0 */  ldc1      $f2, -0x610($at)
/* B352F4 80240724 44820000 */  mtc1      $v0, $f0
/* B352F8 80240728 00000000 */  nop       
/* B352FC 8024072C 46800021 */  cvt.d.w   $f0, $f0
/* B35300 80240730 46220003 */  div.d     $f0, $f0, $f2
/* B35304 80240734 46200020 */  cvt.s.d   $f0, $f0
/* B35308 80240738 E6800018 */  swc1      $f0, 0x18($s4)
.L8024073C:
/* B3530C 8024073C 24020001 */  addiu     $v0, $zero, 1
/* B35310 80240740 AEA20070 */  sw        $v0, 0x70($s5)
/* B35314 80240744 8FBF002C */  lw        $ra, 0x2c($sp)
/* B35318 80240748 8FB60028 */  lw        $s6, 0x28($sp)
/* B3531C 8024074C 8FB50024 */  lw        $s5, 0x24($sp)
/* B35320 80240750 8FB40020 */  lw        $s4, 0x20($sp)
/* B35324 80240754 8FB3001C */  lw        $s3, 0x1c($sp)
/* B35328 80240758 8FB20018 */  lw        $s2, 0x18($sp)
/* B3532C 8024075C 8FB10014 */  lw        $s1, 0x14($sp)
/* B35330 80240760 8FB00010 */  lw        $s0, 0x10($sp)
/* B35334 80240764 D7B80040 */  ldc1      $f24, 0x40($sp)
/* B35338 80240768 D7B60038 */  ldc1      $f22, 0x38($sp)
/* B3533C 8024076C D7B40030 */  ldc1      $f20, 0x30($sp)
/* B35340 80240770 03E00008 */  jr        $ra
/* B35344 80240774 27BD0048 */   addiu    $sp, $sp, 0x48
