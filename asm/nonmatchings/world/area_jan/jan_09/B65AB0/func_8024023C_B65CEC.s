.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024023C_B65CEC
/* B65CEC 8024023C 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* B65CF0 80240240 AFB00018 */  sw        $s0, 0x18($sp)
/* B65CF4 80240244 0080802D */  daddu     $s0, $a0, $zero
/* B65CF8 80240248 AFBF001C */  sw        $ra, 0x1c($sp)
/* B65CFC 8024024C F7B40020 */  sdc1      $f20, 0x20($sp)
/* B65D00 80240250 8E02000C */  lw        $v0, 0xc($s0)
/* B65D04 80240254 0C0B210B */  jal       get_float_variable
/* B65D08 80240258 8C450000 */   lw       $a1, ($v0)
/* B65D0C 8024025C 27A40010 */  addiu     $a0, $sp, 0x10
/* B65D10 80240260 3C028011 */  lui       $v0, %hi(gPlayerStatus)
/* B65D14 80240264 2442EFC8 */  addiu     $v0, $v0, %lo(gPlayerStatus)
/* B65D18 80240268 44060000 */  mfc1      $a2, $f0
/* B65D1C 8024026C C4400028 */  lwc1      $f0, 0x28($v0)
/* B65D20 80240270 C4420030 */  lwc1      $f2, 0x30($v0)
/* B65D24 80240274 E7A00010 */  swc1      $f0, 0x10($sp)
/* B65D28 80240278 E7A20014 */  swc1      $f2, 0x14($sp)
/* B65D2C 8024027C 8C470080 */  lw        $a3, 0x80($v0)
/* B65D30 80240280 C454002C */  lwc1      $f20, 0x2c($v0)
/* B65D34 80240284 0C00A7E7 */  jal       add_vec2D_polar
/* B65D38 80240288 27A50014 */   addiu    $a1, $sp, 0x14
/* B65D3C 8024028C 0200202D */  daddu     $a0, $s0, $zero
/* B65D40 80240290 3C05FE36 */  lui       $a1, 0xfe36
/* B65D44 80240294 8FA60010 */  lw        $a2, 0x10($sp)
/* B65D48 80240298 0C0B2190 */  jal       set_float_variable
/* B65D4C 8024029C 34A53C80 */   ori      $a1, $a1, 0x3c80
/* B65D50 802402A0 0200202D */  daddu     $a0, $s0, $zero
/* B65D54 802402A4 3C05FE36 */  lui       $a1, 0xfe36
/* B65D58 802402A8 4406A000 */  mfc1      $a2, $f20
/* B65D5C 802402AC 0C0B2190 */  jal       set_float_variable
/* B65D60 802402B0 34A53C81 */   ori      $a1, $a1, 0x3c81
/* B65D64 802402B4 0200202D */  daddu     $a0, $s0, $zero
/* B65D68 802402B8 3C05FE36 */  lui       $a1, 0xfe36
/* B65D6C 802402BC 8FA60014 */  lw        $a2, 0x14($sp)
/* B65D70 802402C0 0C0B2190 */  jal       set_float_variable
/* B65D74 802402C4 34A53C82 */   ori      $a1, $a1, 0x3c82
/* B65D78 802402C8 8FBF001C */  lw        $ra, 0x1c($sp)
/* B65D7C 802402CC 8FB00018 */  lw        $s0, 0x18($sp)
/* B65D80 802402D0 D7B40020 */  ldc1      $f20, 0x20($sp)
/* B65D84 802402D4 24020002 */  addiu     $v0, $zero, 2
/* B65D88 802402D8 03E00008 */  jr        $ra
/* B65D8C 802402DC 27BD0028 */   addiu    $sp, $sp, 0x28
