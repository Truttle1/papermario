.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80242CF4_9123A4
/* 9123A4 80242CF4 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 9123A8 80242CF8 AFB30024 */  sw        $s3, 0x24($sp)
/* 9123AC 80242CFC 0080982D */  daddu     $s3, $a0, $zero
/* 9123B0 80242D00 AFBF0028 */  sw        $ra, 0x28($sp)
/* 9123B4 80242D04 AFB20020 */  sw        $s2, 0x20($sp)
/* 9123B8 80242D08 AFB1001C */  sw        $s1, 0x1c($sp)
/* 9123BC 80242D0C AFB00018 */  sw        $s0, 0x18($sp)
/* 9123C0 80242D10 8E720148 */  lw        $s2, 0x148($s3)
/* 9123C4 80242D14 00A0882D */  daddu     $s1, $a1, $zero
/* 9123C8 80242D18 86440008 */  lh        $a0, 8($s2)
/* 9123CC 80242D1C 0C00EABB */  jal       get_npc_unsafe
/* 9123D0 80242D20 00C0802D */   daddu    $s0, $a2, $zero
/* 9123D4 80242D24 0200202D */  daddu     $a0, $s0, $zero
/* 9123D8 80242D28 0240282D */  daddu     $a1, $s2, $zero
/* 9123DC 80242D2C AFA00010 */  sw        $zero, 0x10($sp)
/* 9123E0 80242D30 8E260024 */  lw        $a2, 0x24($s1)
/* 9123E4 80242D34 8E270028 */  lw        $a3, 0x28($s1)
/* 9123E8 80242D38 0C01242D */  jal       func_800490B4
/* 9123EC 80242D3C 0040802D */   daddu    $s0, $v0, $zero
/* 9123F0 80242D40 1040000C */  beqz      $v0, .L80242D74
/* 9123F4 80242D44 00000000 */   nop      
/* 9123F8 80242D48 C60C0038 */  lwc1      $f12, 0x38($s0)
/* 9123FC 80242D4C 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* 912400 80242D50 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* 912404 80242D54 C60E0040 */  lwc1      $f14, 0x40($s0)
/* 912408 80242D58 8C460028 */  lw        $a2, 0x28($v0)
/* 91240C 80242D5C 0C00A720 */  jal       atan2
/* 912410 80242D60 8C470030 */   lw       $a3, 0x30($v0)
/* 912414 80242D64 2402000C */  addiu     $v0, $zero, 0xc
/* 912418 80242D68 E600000C */  swc1      $f0, 0xc($s0)
/* 91241C 80242D6C 08090B84 */  j         .L80242E10
/* 912420 80242D70 AE620070 */   sw       $v0, 0x70($s3)
.L80242D74:
/* 912424 80242D74 C60C0038 */  lwc1      $f12, 0x38($s0)
/* 912428 80242D78 8E4200D0 */  lw        $v0, 0xd0($s2)
/* 91242C 80242D7C C60E0040 */  lwc1      $f14, 0x40($s0)
/* 912430 80242D80 C4440000 */  lwc1      $f4, ($v0)
/* 912434 80242D84 46802120 */  cvt.s.w   $f4, $f4
/* 912438 80242D88 44062000 */  mfc1      $a2, $f4
/* 91243C 80242D8C C4440008 */  lwc1      $f4, 8($v0)
/* 912440 80242D90 46802120 */  cvt.s.w   $f4, $f4
/* 912444 80242D94 44072000 */  mfc1      $a3, $f4
/* 912448 80242D98 0C00A7B5 */  jal       dist2D
/* 91244C 80242D9C 00000000 */   nop      
/* 912450 80242DA0 C6020018 */  lwc1      $f2, 0x18($s0)
/* 912454 80242DA4 4602003E */  c.le.s    $f0, $f2
/* 912458 80242DA8 00000000 */  nop       
/* 91245C 80242DAC 45000005 */  bc1f      .L80242DC4
/* 912460 80242DB0 2402000A */   addiu    $v0, $zero, 0xa
/* 912464 80242DB4 A602008E */  sh        $v0, 0x8e($s0)
/* 912468 80242DB8 24020032 */  addiu     $v0, $zero, 0x32
/* 91246C 80242DBC 08090B84 */  j         .L80242E10
/* 912470 80242DC0 AE620070 */   sw       $v0, 0x70($s3)
.L80242DC4:
/* 912474 80242DC4 8602008C */  lh        $v0, 0x8c($s0)
/* 912478 80242DC8 14400011 */  bnez      $v0, .L80242E10
/* 91247C 80242DCC 00000000 */   nop      
/* 912480 80242DD0 C60C0038 */  lwc1      $f12, 0x38($s0)
/* 912484 80242DD4 8E4200D0 */  lw        $v0, 0xd0($s2)
/* 912488 80242DD8 C60E0040 */  lwc1      $f14, 0x40($s0)
/* 91248C 80242DDC C4440000 */  lwc1      $f4, ($v0)
/* 912490 80242DE0 46802120 */  cvt.s.w   $f4, $f4
/* 912494 80242DE4 44062000 */  mfc1      $a2, $f4
/* 912498 80242DE8 C4440008 */  lwc1      $f4, 8($v0)
/* 91249C 80242DEC 46802120 */  cvt.s.w   $f4, $f4
/* 9124A0 80242DF0 44072000 */  mfc1      $a3, $f4
/* 9124A4 80242DF4 0C00A720 */  jal       atan2
/* 9124A8 80242DF8 00000000 */   nop      
/* 9124AC 80242DFC 8E050018 */  lw        $a1, 0x18($s0)
/* 9124B0 80242E00 44060000 */  mfc1      $a2, $f0
/* 9124B4 80242E04 0200202D */  daddu     $a0, $s0, $zero
/* 9124B8 80242E08 0C00EA95 */  jal       npc_move_heading
/* 9124BC 80242E0C AC86000C */   sw       $a2, 0xc($a0)
.L80242E10:
/* 9124C0 80242E10 8FBF0028 */  lw        $ra, 0x28($sp)
/* 9124C4 80242E14 8FB30024 */  lw        $s3, 0x24($sp)
/* 9124C8 80242E18 8FB20020 */  lw        $s2, 0x20($sp)
/* 9124CC 80242E1C 8FB1001C */  lw        $s1, 0x1c($sp)
/* 9124D0 80242E20 8FB00018 */  lw        $s0, 0x18($sp)
/* 9124D4 80242E24 03E00008 */  jr        $ra
/* 9124D8 80242E28 27BD0030 */   addiu    $sp, $sp, 0x30
