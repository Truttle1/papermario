.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802402E0_9D7300
/* 9D7300 802402E0 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 9D7304 802402E4 AFB00010 */  sw        $s0, 0x10($sp)
/* 9D7308 802402E8 3C108024 */  lui       $s0, 0x8024
/* 9D730C 802402EC 261053D0 */  addiu     $s0, $s0, 0x53d0
/* 9D7310 802402F0 AFBF0018 */  sw        $ra, 0x18($sp)
/* 9D7314 802402F4 AFB10014 */  sw        $s1, 0x14($sp)
/* 9D7318 802402F8 8E020000 */  lw        $v0, ($s0)
/* 9D731C 802402FC 14400010 */  bnez      $v0, .L80240340
/* 9D7320 80240300 0080882D */   daddu    $s1, $a0, $zero
/* 9D7324 80240304 0C00AB39 */  jal       heap_malloc
/* 9D7328 80240308 24040040 */   addiu    $a0, $zero, 0x40
/* 9D732C 8024030C AE020000 */  sw        $v0, ($s0)
/* 9D7330 80240310 0000182D */  daddu     $v1, $zero, $zero
/* 9D7334 80240314 0040282D */  daddu     $a1, $v0, $zero
/* 9D7338 80240318 0220202D */  daddu     $a0, $s1, $zero
.L8024031C:
/* 9D733C 8024031C 8C820084 */  lw        $v0, 0x84($a0)
/* 9D7340 80240320 24840004 */  addiu     $a0, $a0, 4
/* 9D7344 80240324 24630001 */  addiu     $v1, $v1, 1
/* 9D7348 80240328 ACA20000 */  sw        $v0, ($a1)
/* 9D734C 8024032C 28620010 */  slti      $v0, $v1, 0x10
/* 9D7350 80240330 1440FFFA */  bnez      $v0, .L8024031C
/* 9D7354 80240334 24A50004 */   addiu    $a1, $a1, 4
/* 9D7358 80240338 080900DF */  j         .L8024037C
/* 9D735C 8024033C 00000000 */   nop      
.L80240340:
/* 9D7360 80240340 0000182D */  daddu     $v1, $zero, $zero
/* 9D7364 80240344 0040282D */  daddu     $a1, $v0, $zero
/* 9D7368 80240348 0220202D */  daddu     $a0, $s1, $zero
.L8024034C:
/* 9D736C 8024034C 8CA20000 */  lw        $v0, ($a1)
/* 9D7370 80240350 24A50004 */  addiu     $a1, $a1, 4
/* 9D7374 80240354 24630001 */  addiu     $v1, $v1, 1
/* 9D7378 80240358 AC820084 */  sw        $v0, 0x84($a0)
/* 9D737C 8024035C 28620010 */  slti      $v0, $v1, 0x10
/* 9D7380 80240360 1440FFFA */  bnez      $v0, .L8024034C
/* 9D7384 80240364 24840004 */   addiu    $a0, $a0, 4
/* 9D7388 80240368 3C108024 */  lui       $s0, 0x8024
/* 9D738C 8024036C 261053D0 */  addiu     $s0, $s0, 0x53d0
/* 9D7390 80240370 0C00AB4B */  jal       heap_free
/* 9D7394 80240374 8E040000 */   lw       $a0, ($s0)
/* 9D7398 80240378 AE000000 */  sw        $zero, ($s0)
.L8024037C:
/* 9D739C 8024037C 8FBF0018 */  lw        $ra, 0x18($sp)
/* 9D73A0 80240380 8FB10014 */  lw        $s1, 0x14($sp)
/* 9D73A4 80240384 8FB00010 */  lw        $s0, 0x10($sp)
/* 9D73A8 80240388 24020002 */  addiu     $v0, $zero, 2
/* 9D73AC 8024038C 03E00008 */  jr        $ra
/* 9D73B0 80240390 27BD0020 */   addiu    $sp, $sp, 0x20
