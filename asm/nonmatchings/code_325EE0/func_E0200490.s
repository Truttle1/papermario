.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_E0200490
/* 325F60 E0200490 3C01E020 */  lui       $at, 0xe020
/* 325F64 E0200494 8C2106B4 */  lw        $at, 0x6b4($at)
/* 325F68 E0200498 00200008 */  jr        $at
/* 325F6C E020049C 00000000 */   nop      
