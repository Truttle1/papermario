.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802E37E4
/* 105064 802E37E4 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 105068 802E37E8 AFB10014 */  sw        $s1, 0x14($sp)
/* 10506C 802E37EC 0080882D */  daddu     $s1, $a0, $zero
/* 105070 802E37F0 AFBF0018 */  sw        $ra, 0x18($sp)
/* 105074 802E37F4 AFB00010 */  sw        $s0, 0x10($sp)
/* 105078 802E37F8 F7B60028 */  sdc1      $f22, 0x28($sp)
/* 10507C 802E37FC F7B40020 */  sdc1      $f20, 0x20($sp)
/* 105080 802E3800 0C0B8E80 */  jal       func_802E3A00
/* 105084 802E3804 8E300040 */   lw       $s0, 0x40($s1)
/* 105088 802E3808 3C0140C9 */  lui       $at, 0x40c9
/* 10508C 802E380C 34210FD0 */  ori       $at, $at, 0xfd0
/* 105090 802E3810 44810000 */  mtc1      $at, $f0
/* 105094 802E3814 C60C0018 */  lwc1      $f12, 0x18($s0)
/* 105098 802E3818 46006302 */  mul.s     $f12, $f12, $f0
/* 10509C 802E381C 00000000 */  nop       
/* 1050A0 802E3820 C634004C */  lwc1      $f20, 0x4c($s1)
/* 1050A4 802E3824 3C0143B4 */  lui       $at, 0x43b4
/* 1050A8 802E3828 4481B000 */  mtc1      $at, $f22
/* 1050AC 802E382C 4600A521 */  cvt.d.s   $f20, $f20
/* 1050B0 802E3830 0C00A85B */  jal       sin_rad
/* 1050B4 802E3834 46166303 */   div.s    $f12, $f12, $f22
/* 1050B8 802E3838 46000021 */  cvt.d.s   $f0, $f0
/* 1050BC 802E383C 4620A500 */  add.d     $f20, $f20, $f0
/* 1050C0 802E3840 3C014270 */  lui       $at, 0x4270
/* 1050C4 802E3844 44811000 */  mtc1      $at, $f2
/* 1050C8 802E3848 4620A520 */  cvt.s.d   $f20, $f20
/* 1050CC 802E384C E634004C */  swc1      $f20, 0x4c($s1)
/* 1050D0 802E3850 C6000018 */  lwc1      $f0, 0x18($s0)
/* 1050D4 802E3854 46020000 */  add.s     $f0, $f0, $f2
/* 1050D8 802E3858 4600B03E */  c.le.s    $f22, $f0
/* 1050DC 802E385C 00000000 */  nop       
/* 1050E0 802E3860 45000006 */  bc1f      .L802E387C
/* 1050E4 802E3864 E6000018 */   swc1     $f0, 0x18($s0)
/* 1050E8 802E3868 C6000014 */  lwc1      $f0, 0x14($s0)
/* 1050EC 802E386C 0220202D */  daddu     $a0, $s1, $zero
/* 1050F0 802E3870 AE000018 */  sw        $zero, 0x18($s0)
/* 1050F4 802E3874 0C043F5A */  jal       func_8010FD68
/* 1050F8 802E3878 E480004C */   swc1     $f0, 0x4c($a0)
.L802E387C:
/* 1050FC 802E387C 8FBF0018 */  lw        $ra, 0x18($sp)
/* 105100 802E3880 8FB10014 */  lw        $s1, 0x14($sp)
/* 105104 802E3884 8FB00010 */  lw        $s0, 0x10($sp)
/* 105108 802E3888 D7B60028 */  ldc1      $f22, 0x28($sp)
/* 10510C 802E388C D7B40020 */  ldc1      $f20, 0x20($sp)
/* 105110 802E3890 03E00008 */  jr        $ra
/* 105114 802E3894 27BD0030 */   addiu    $sp, $sp, 0x30
