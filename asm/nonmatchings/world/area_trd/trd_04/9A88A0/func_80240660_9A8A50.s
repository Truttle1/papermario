.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240660_9A8A50
/* 9A8A50 80240660 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 9A8A54 80240664 AFB3003C */  sw        $s3, 0x3c($sp)
/* 9A8A58 80240668 0080982D */  daddu     $s3, $a0, $zero
/* 9A8A5C 8024066C AFBF0040 */  sw        $ra, 0x40($sp)
/* 9A8A60 80240670 AFB20038 */  sw        $s2, 0x38($sp)
/* 9A8A64 80240674 AFB10034 */  sw        $s1, 0x34($sp)
/* 9A8A68 80240678 AFB00030 */  sw        $s0, 0x30($sp)
/* 9A8A6C 8024067C 8E710148 */  lw        $s1, 0x148($s3)
/* 9A8A70 80240680 0C00EABB */  jal       get_npc_unsafe
/* 9A8A74 80240684 86240008 */   lh       $a0, 8($s1)
/* 9A8A78 80240688 0040802D */  daddu     $s0, $v0, $zero
/* 9A8A7C 8024068C 8E22007C */  lw        $v0, 0x7c($s1)
/* 9A8A80 80240690 8603008E */  lh        $v1, 0x8e($s0)
/* 9A8A84 80240694 2442FFFF */  addiu     $v0, $v0, -1
/* 9A8A88 80240698 14620012 */  bne       $v1, $v0, .L802406E4
/* 9A8A8C 8024069C 00000000 */   nop      
/* 9A8A90 802406A0 C6000038 */  lwc1      $f0, 0x38($s0)
/* 9A8A94 802406A4 4600020D */  trunc.w.s $f8, $f0
/* 9A8A98 802406A8 44024000 */  mfc1      $v0, $f8
/* 9A8A9C 802406AC 00000000 */  nop       
/* 9A8AA0 802406B0 A6220010 */  sh        $v0, 0x10($s1)
/* 9A8AA4 802406B4 C600003C */  lwc1      $f0, 0x3c($s0)
/* 9A8AA8 802406B8 4600020D */  trunc.w.s $f8, $f0
/* 9A8AAC 802406BC 44024000 */  mfc1      $v0, $f8
/* 9A8AB0 802406C0 00000000 */  nop       
/* 9A8AB4 802406C4 A6220012 */  sh        $v0, 0x12($s1)
/* 9A8AB8 802406C8 C6000040 */  lwc1      $f0, 0x40($s0)
/* 9A8ABC 802406CC 24020001 */  addiu     $v0, $zero, 1
/* 9A8AC0 802406D0 A2220007 */  sb        $v0, 7($s1)
/* 9A8AC4 802406D4 4600020D */  trunc.w.s $f8, $f0
/* 9A8AC8 802406D8 44024000 */  mfc1      $v0, $f8
/* 9A8ACC 802406DC 00000000 */  nop       
/* 9A8AD0 802406E0 A6220014 */  sh        $v0, 0x14($s1)
.L802406E4:
/* 9A8AD4 802406E4 C6000038 */  lwc1      $f0, 0x38($s0)
/* 9A8AD8 802406E8 C602003C */  lwc1      $f2, 0x3c($s0)
/* 9A8ADC 802406EC C6040040 */  lwc1      $f4, 0x40($s0)
/* 9A8AE0 802406F0 C6060018 */  lwc1      $f6, 0x18($s0)
/* 9A8AE4 802406F4 E7A00020 */  swc1      $f0, 0x20($sp)
/* 9A8AE8 802406F8 E7A20024 */  swc1      $f2, 0x24($sp)
/* 9A8AEC 802406FC E7A40028 */  swc1      $f4, 0x28($sp)
/* 9A8AF0 80240700 E7A60010 */  swc1      $f6, 0x10($sp)
/* 9A8AF4 80240704 C600000C */  lwc1      $f0, 0xc($s0)
/* 9A8AF8 80240708 E7A00014 */  swc1      $f0, 0x14($sp)
/* 9A8AFC 8024070C 860200A8 */  lh        $v0, 0xa8($s0)
/* 9A8B00 80240710 27A50020 */  addiu     $a1, $sp, 0x20
/* 9A8B04 80240714 44820000 */  mtc1      $v0, $f0
/* 9A8B08 80240718 00000000 */  nop       
/* 9A8B0C 8024071C 46800020 */  cvt.s.w   $f0, $f0
/* 9A8B10 80240720 E7A00018 */  swc1      $f0, 0x18($sp)
/* 9A8B14 80240724 860200A6 */  lh        $v0, 0xa6($s0)
/* 9A8B18 80240728 27A60024 */  addiu     $a2, $sp, 0x24
/* 9A8B1C 8024072C 44820000 */  mtc1      $v0, $f0
/* 9A8B20 80240730 00000000 */  nop       
/* 9A8B24 80240734 46800020 */  cvt.s.w   $f0, $f0
/* 9A8B28 80240738 E7A0001C */  swc1      $f0, 0x1c($sp)
/* 9A8B2C 8024073C 8E040080 */  lw        $a0, 0x80($s0)
/* 9A8B30 80240740 0C037711 */  jal       func_800DDC44
/* 9A8B34 80240744 27A70028 */   addiu    $a3, $sp, 0x28
/* 9A8B38 80240748 0040902D */  daddu     $s2, $v0, $zero
/* 9A8B3C 8024074C 16400005 */  bnez      $s2, .L80240764
/* 9A8B40 80240750 00000000 */   nop      
/* 9A8B44 80240754 8E050018 */  lw        $a1, 0x18($s0)
/* 9A8B48 80240758 8E06000C */  lw        $a2, 0xc($s0)
/* 9A8B4C 8024075C 0C00EA95 */  jal       npc_move_heading
/* 9A8B50 80240760 0200202D */   daddu    $a0, $s0, $zero
.L80240764:
/* 9A8B54 80240764 8602008E */  lh        $v0, 0x8e($s0)
/* 9A8B58 80240768 9603008E */  lhu       $v1, 0x8e($s0)
/* 9A8B5C 8024076C 18400007 */  blez      $v0, .L8024078C
/* 9A8B60 80240770 2462FFFF */   addiu    $v0, $v1, -1
/* 9A8B64 80240774 A602008E */  sh        $v0, 0x8e($s0)
/* 9A8B68 80240778 00021400 */  sll       $v0, $v0, 0x10
/* 9A8B6C 8024077C 18400003 */  blez      $v0, .L8024078C
/* 9A8B70 80240780 00000000 */   nop      
/* 9A8B74 80240784 12400008 */  beqz      $s2, .L802407A8
/* 9A8B78 80240788 00000000 */   nop      
.L8024078C:
/* 9A8B7C 8024078C 8E2200CC */  lw        $v0, 0xcc($s1)
/* 9A8B80 80240790 A2200007 */  sb        $zero, 7($s1)
/* 9A8B84 80240794 8C420028 */  lw        $v0, 0x28($v0)
/* 9A8B88 80240798 A600008E */  sh        $zero, 0x8e($s0)
/* 9A8B8C 8024079C AE020028 */  sw        $v0, 0x28($s0)
/* 9A8B90 802407A0 2402000F */  addiu     $v0, $zero, 0xf
/* 9A8B94 802407A4 AE620070 */  sw        $v0, 0x70($s3)
.L802407A8:
/* 9A8B98 802407A8 8FBF0040 */  lw        $ra, 0x40($sp)
/* 9A8B9C 802407AC 8FB3003C */  lw        $s3, 0x3c($sp)
/* 9A8BA0 802407B0 8FB20038 */  lw        $s2, 0x38($sp)
/* 9A8BA4 802407B4 8FB10034 */  lw        $s1, 0x34($sp)
/* 9A8BA8 802407B8 8FB00030 */  lw        $s0, 0x30($sp)
/* 9A8BAC 802407BC 03E00008 */  jr        $ra
/* 9A8BB0 802407C0 27BD0048 */   addiu    $sp, $sp, 0x48
