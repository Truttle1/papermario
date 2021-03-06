.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802408A0_D7BB40
/* D7BB40 802408A0 27BDFE80 */  addiu     $sp, $sp, -0x180
/* D7BB44 802408A4 F7B60158 */  sdc1      $f22, 0x158($sp)
/* D7BB48 802408A8 4480B000 */  mtc1      $zero, $f22
/* D7BB4C 802408AC AFB10134 */  sw        $s1, 0x134($sp)
/* D7BB50 802408B0 0080882D */  daddu     $s1, $a0, $zero
/* D7BB54 802408B4 AFB3013C */  sw        $s3, 0x13c($sp)
/* D7BB58 802408B8 0000982D */  daddu     $s3, $zero, $zero
/* D7BB5C 802408BC AFB60148 */  sw        $s6, 0x148($sp)
/* D7BB60 802408C0 3C16800B */  lui       $s6, %hi(gCameras)
/* D7BB64 802408C4 26D61D80 */  addiu     $s6, $s6, %lo(gCameras)
/* D7BB68 802408C8 AFB50144 */  sw        $s5, 0x144($sp)
/* D7BB6C 802408CC 241500FF */  addiu     $s5, $zero, 0xff
/* D7BB70 802408D0 AFB00130 */  sw        $s0, 0x130($sp)
/* D7BB74 802408D4 27B000A0 */  addiu     $s0, $sp, 0xa0
/* D7BB78 802408D8 AFB20138 */  sw        $s2, 0x138($sp)
/* D7BB7C 802408DC 27B20060 */  addiu     $s2, $sp, 0x60
/* D7BB80 802408E0 AFB40140 */  sw        $s4, 0x140($sp)
/* D7BB84 802408E4 27B400E0 */  addiu     $s4, $sp, 0xe0
/* D7BB88 802408E8 AFBF014C */  sw        $ra, 0x14c($sp)
/* D7BB8C 802408EC F7BE0178 */  sdc1      $f30, 0x178($sp)
/* D7BB90 802408F0 F7BC0170 */  sdc1      $f28, 0x170($sp)
/* D7BB94 802408F4 F7BA0168 */  sdc1      $f26, 0x168($sp)
/* D7BB98 802408F8 F7B80160 */  sdc1      $f24, 0x160($sp)
/* D7BB9C 802408FC F7B40150 */  sdc1      $f20, 0x150($sp)
.L80240900:
/* D7BBA0 80240900 3C03800A */  lui       $v1, 0x800a
/* D7BBA4 80240904 8463A634 */  lh        $v1, -0x59cc($v1)
/* D7BBA8 80240908 00031080 */  sll       $v0, $v1, 2
/* D7BBAC 8024090C 00431021 */  addu      $v0, $v0, $v1
/* D7BBB0 80240910 00021080 */  sll       $v0, $v0, 2
/* D7BBB4 80240914 00431023 */  subu      $v0, $v0, $v1
/* D7BBB8 80240918 000218C0 */  sll       $v1, $v0, 3
/* D7BBBC 8024091C 00431021 */  addu      $v0, $v0, $v1
/* D7BBC0 80240920 000210C0 */  sll       $v0, $v0, 3
/* D7BBC4 80240924 00561021 */  addu      $v0, $v0, $s6
/* D7BBC8 80240928 C440006C */  lwc1      $f0, 0x6c($v0)
/* D7BBCC 8024092C 16600065 */  bnez      $s3, .L80240AC4
/* D7BBD0 80240930 46000507 */   neg.s    $f20, $f0
/* D7BBD4 80240934 C62200A8 */  lwc1      $f2, 0xa8($s1)
/* D7BBD8 80240938 3C0142B4 */  lui       $at, 0x42b4
/* D7BBDC 8024093C 44810000 */  mtc1      $at, $f0
/* D7BBE0 80240940 00000000 */  nop       
/* D7BBE4 80240944 4602003C */  c.lt.s    $f0, $f2
/* D7BBE8 80240948 00000000 */  nop       
/* D7BBEC 8024094C 4500000A */  bc1f      .L80240978
/* D7BBF0 80240950 00000000 */   nop      
/* D7BBF4 80240954 3C014334 */  lui       $at, 0x4334
/* D7BBF8 80240958 44812000 */  mtc1      $at, $f4
/* D7BBFC 8024095C 00000000 */  nop       
/* D7BC00 80240960 4604103E */  c.le.s    $f2, $f4
/* D7BC04 80240964 00000000 */  nop       
/* D7BC08 80240968 45000003 */  bc1f      .L80240978
/* D7BC0C 8024096C 00000000 */   nop      
/* D7BC10 80240970 08090282 */  j         .L80240A08
/* D7BC14 80240974 46022501 */   sub.s    $f20, $f4, $f2
.L80240978:
/* D7BC18 80240978 C62000A8 */  lwc1      $f0, 0xa8($s1)
/* D7BC1C 8024097C 3C014334 */  lui       $at, 0x4334
/* D7BC20 80240980 44812000 */  mtc1      $at, $f4
/* D7BC24 80240984 00000000 */  nop       
/* D7BC28 80240988 4600203C */  c.lt.s    $f4, $f0
/* D7BC2C 8024098C 00000000 */  nop       
/* D7BC30 80240990 4500000C */  bc1f      .L802409C4
/* D7BC34 80240994 00000000 */   nop      
/* D7BC38 80240998 3C014387 */  lui       $at, 0x4387
/* D7BC3C 8024099C 44812000 */  mtc1      $at, $f4
/* D7BC40 802409A0 00000000 */  nop       
/* D7BC44 802409A4 4604003E */  c.le.s    $f0, $f4
/* D7BC48 802409A8 00000000 */  nop       
/* D7BC4C 802409AC 45000008 */  bc1f      .L802409D0
/* D7BC50 802409B0 00000000 */   nop      
/* D7BC54 802409B4 3C014334 */  lui       $at, 0x4334
/* D7BC58 802409B8 44812000 */  mtc1      $at, $f4
/* D7BC5C 802409BC 08090282 */  j         .L80240A08
/* D7BC60 802409C0 46040501 */   sub.s    $f20, $f0, $f4
.L802409C4:
/* D7BC64 802409C4 3C014387 */  lui       $at, 0x4387
/* D7BC68 802409C8 44812000 */  mtc1      $at, $f4
/* D7BC6C 802409CC 00000000 */  nop       
.L802409D0:
/* D7BC70 802409D0 4600203C */  c.lt.s    $f4, $f0
/* D7BC74 802409D4 00000000 */  nop       
/* D7BC78 802409D8 4500000A */  bc1f      .L80240A04
/* D7BC7C 802409DC 00000000 */   nop      
/* D7BC80 802409E0 3C0143B4 */  lui       $at, 0x43b4
/* D7BC84 802409E4 44811000 */  mtc1      $at, $f2
/* D7BC88 802409E8 00000000 */  nop       
/* D7BC8C 802409EC 4602003E */  c.le.s    $f0, $f2
/* D7BC90 802409F0 00000000 */  nop       
/* D7BC94 802409F4 45000003 */  bc1f      .L80240A04
/* D7BC98 802409F8 00000000 */   nop      
/* D7BC9C 802409FC 08090282 */  j         .L80240A08
/* D7BCA0 80240A00 46001501 */   sub.s    $f20, $f2, $f0
.L80240A04:
/* D7BCA4 80240A04 C63400A8 */  lwc1      $f20, 0xa8($s1)
.L80240A08:
/* D7BCA8 80240A08 3C0141C8 */  lui       $at, 0x41c8
/* D7BCAC 80240A0C 44810000 */  mtc1      $at, $f0
/* D7BCB0 80240A10 00000000 */  nop       
/* D7BCB4 80240A14 4600A003 */  div.s     $f0, $f20, $f0
/* D7BCB8 80240A18 4600010D */  trunc.w.s $f4, $f0
/* D7BCBC 80240A1C 44072000 */  mfc1      $a3, $f4
/* D7BCC0 80240A20 00000000 */  nop       
/* D7BCC4 80240A24 00071100 */  sll       $v0, $a3, 4
/* D7BCC8 80240A28 00471023 */  subu      $v0, $v0, $a3
/* D7BCCC 80240A2C 00021080 */  sll       $v0, $v0, 2
/* D7BCD0 80240A30 02A23823 */  subu      $a3, $s5, $v0
/* D7BCD4 80240A34 28E20064 */  slti      $v0, $a3, 0x64
/* D7BCD8 80240A38 54400001 */  bnel      $v0, $zero, .L80240A40
/* D7BCDC 80240A3C 24070064 */   addiu    $a3, $zero, 0x64
.L80240A40:
/* D7BCE0 80240A40 24040001 */  addiu     $a0, $zero, 1
/* D7BCE4 80240A44 2405FFFF */  addiu     $a1, $zero, -1
/* D7BCE8 80240A48 24060006 */  addiu     $a2, $zero, 6
/* D7BCEC 80240A4C AFA70010 */  sw        $a3, 0x10($sp)
/* D7BCF0 80240A50 AFA70014 */  sw        $a3, 0x14($sp)
/* D7BCF4 80240A54 AFB50018 */  sw        $s5, 0x18($sp)
/* D7BCF8 80240A58 0C0B77B9 */  jal       func_802DDEE4
/* D7BCFC 80240A5C AFA0001C */   sw       $zero, 0x1c($sp)
/* D7BD00 80240A60 4405A000 */  mfc1      $a1, $f20
/* D7BD04 80240A64 4406B000 */  mfc1      $a2, $f22
/* D7BD08 80240A68 3C07BF80 */  lui       $a3, 0xbf80
/* D7BD0C 80240A6C 0200202D */  daddu     $a0, $s0, $zero
/* D7BD10 80240A70 0C019EC8 */  jal       guRotateF
/* D7BD14 80240A74 E7B60010 */   swc1     $f22, 0x10($sp)
/* D7BD18 80240A78 C62C008C */  lwc1      $f12, 0x8c($s1)
/* D7BD1C 80240A7C 0C00A6C9 */  jal       clamp_angle
/* D7BD20 80240A80 00000000 */   nop      
/* D7BD24 80240A84 44050000 */  mfc1      $a1, $f0
/* D7BD28 80240A88 4406B000 */  mfc1      $a2, $f22
/* D7BD2C 80240A8C 4407B000 */  mfc1      $a3, $f22
/* D7BD30 80240A90 3C013F80 */  lui       $at, 0x3f80
/* D7BD34 80240A94 44812000 */  mtc1      $at, $f4
/* D7BD38 80240A98 27A40020 */  addiu     $a0, $sp, 0x20
/* D7BD3C 80240A9C 0C019EC8 */  jal       guRotateF
/* D7BD40 80240AA0 E7A40010 */   swc1     $f4, 0x10($sp)
/* D7BD44 80240AA4 0200202D */  daddu     $a0, $s0, $zero
/* D7BD48 80240AA8 27A50020 */  addiu     $a1, $sp, 0x20
/* D7BD4C 80240AAC 0C019D80 */  jal       guMtxCatF
/* D7BD50 80240AB0 00A0302D */   daddu    $a2, $a1, $zero
/* D7BD54 80240AB4 C63E0028 */  lwc1      $f30, 0x28($s1)
/* D7BD58 80240AB8 C63A002C */  lwc1      $f26, 0x2c($s1)
/* D7BD5C 80240ABC 080902E2 */  j         .L80240B88
/* D7BD60 80240AC0 C63C0030 */   lwc1     $f28, 0x30($s1)
.L80240AC4:
/* D7BD64 80240AC4 0260202D */  daddu     $a0, $s3, $zero
/* D7BD68 80240AC8 27A50120 */  addiu     $a1, $sp, 0x120
/* D7BD6C 80240ACC 27A60124 */  addiu     $a2, $sp, 0x124
/* D7BD70 80240AD0 0C03964E */  jal       func_800E5938
/* D7BD74 80240AD4 27A70128 */   addiu    $a3, $sp, 0x128
/* D7BD78 80240AD8 8FA60124 */  lw        $a2, 0x124($sp)
/* D7BD7C 80240ADC 3C028000 */  lui       $v0, 0x8000
/* D7BD80 80240AE0 14C20004 */  bne       $a2, $v0, .L80240AF4
/* D7BD84 80240AE4 46000606 */   mov.s    $f24, $f0
/* D7BD88 80240AE8 C63A002C */  lwc1      $f26, 0x2c($s1)
/* D7BD8C 80240AEC 080902C1 */  j         .L80240B04
/* D7BD90 80240AF0 24040001 */   addiu    $a0, $zero, 1
.L80240AF4:
/* D7BD94 80240AF4 4486D000 */  mtc1      $a2, $f26
/* D7BD98 80240AF8 00000000 */  nop       
/* D7BD9C 80240AFC 4680D6A0 */  cvt.s.w   $f26, $f26
/* D7BDA0 80240B00 24040001 */  addiu     $a0, $zero, 1
.L80240B04:
/* D7BDA4 80240B04 2405FFFF */  addiu     $a1, $zero, -1
/* D7BDA8 80240B08 24060007 */  addiu     $a2, $zero, 7
/* D7BDAC 80240B0C 0000382D */  daddu     $a3, $zero, $zero
/* D7BDB0 80240B10 C63E0028 */  lwc1      $f30, 0x28($s1)
/* D7BDB4 80240B14 C63C0030 */  lwc1      $f28, 0x30($s1)
/* D7BDB8 80240B18 24020040 */  addiu     $v0, $zero, 0x40
/* D7BDBC 80240B1C AFA00010 */  sw        $zero, 0x10($sp)
/* D7BDC0 80240B20 AFA00014 */  sw        $zero, 0x14($sp)
/* D7BDC4 80240B24 AFA20018 */  sw        $v0, 0x18($sp)
/* D7BDC8 80240B28 0C0B77B9 */  jal       func_802DDEE4
/* D7BDCC 80240B2C AFA0001C */   sw       $zero, 0x1c($sp)
/* D7BDD0 80240B30 4405A000 */  mfc1      $a1, $f20
/* D7BDD4 80240B34 4406B000 */  mfc1      $a2, $f22
/* D7BDD8 80240B38 3C07BF80 */  lui       $a3, 0xbf80
/* D7BDDC 80240B3C 27A40020 */  addiu     $a0, $sp, 0x20
/* D7BDE0 80240B40 0C019EC8 */  jal       guRotateF
/* D7BDE4 80240B44 E7B60010 */   swc1     $f22, 0x10($sp)
/* D7BDE8 80240B48 4405A000 */  mfc1      $a1, $f20
/* D7BDEC 80240B4C 4406B000 */  mfc1      $a2, $f22
/* D7BDF0 80240B50 3C07BF80 */  lui       $a3, 0xbf80
/* D7BDF4 80240B54 0200202D */  daddu     $a0, $s0, $zero
/* D7BDF8 80240B58 0C019EC8 */  jal       guRotateF
/* D7BDFC 80240B5C E7B60010 */   swc1     $f22, 0x10($sp)
/* D7BE00 80240B60 4405C000 */  mfc1      $a1, $f24
/* D7BE04 80240B64 4406B000 */  mfc1      $a2, $f22
/* D7BE08 80240B68 3C073F80 */  lui       $a3, 0x3f80
/* D7BE0C 80240B6C 27A40020 */  addiu     $a0, $sp, 0x20
/* D7BE10 80240B70 0C019EC8 */  jal       guRotateF
/* D7BE14 80240B74 E7B60010 */   swc1     $f22, 0x10($sp)
/* D7BE18 80240B78 0200202D */  daddu     $a0, $s0, $zero
/* D7BE1C 80240B7C 27A50020 */  addiu     $a1, $sp, 0x20
/* D7BE20 80240B80 0C019D80 */  jal       guMtxCatF
/* D7BE24 80240B84 00A0302D */   daddu    $a2, $a1, $zero
.L80240B88:
/* D7BE28 80240B88 862200B0 */  lh        $v0, 0xb0($s1)
/* D7BE2C 80240B8C 3C013F00 */  lui       $at, 0x3f00
/* D7BE30 80240B90 44812000 */  mtc1      $at, $f4
/* D7BE34 80240B94 00021023 */  negu      $v0, $v0
/* D7BE38 80240B98 44820000 */  mtc1      $v0, $f0
/* D7BE3C 80240B9C 00000000 */  nop       
/* D7BE40 80240BA0 46800020 */  cvt.s.w   $f0, $f0
/* D7BE44 80240BA4 46040102 */  mul.s     $f4, $f0, $f4
/* D7BE48 80240BA8 00000000 */  nop       
/* D7BE4C 80240BAC 4405B000 */  mfc1      $a1, $f22
/* D7BE50 80240BB0 4407B000 */  mfc1      $a3, $f22
/* D7BE54 80240BB4 44062000 */  mfc1      $a2, $f4
/* D7BE58 80240BB8 0C019E40 */  jal       guTranslateF
/* D7BE5C 80240BBC 0240202D */   daddu    $a0, $s2, $zero
/* D7BE60 80240BC0 0240202D */  daddu     $a0, $s2, $zero
/* D7BE64 80240BC4 27A50020 */  addiu     $a1, $sp, 0x20
/* D7BE68 80240BC8 0C019D80 */  jal       guMtxCatF
/* D7BE6C 80240BCC 00A0302D */   daddu    $a2, $a1, $zero
/* D7BE70 80240BD0 4405A000 */  mfc1      $a1, $f20
/* D7BE74 80240BD4 4406B000 */  mfc1      $a2, $f22
/* D7BE78 80240BD8 3C073F80 */  lui       $a3, 0x3f80
/* D7BE7C 80240BDC 0200202D */  daddu     $a0, $s0, $zero
/* D7BE80 80240BE0 0C019EC8 */  jal       guRotateF
/* D7BE84 80240BE4 E7B60010 */   swc1     $f22, 0x10($sp)
/* D7BE88 80240BE8 27A40020 */  addiu     $a0, $sp, 0x20
/* D7BE8C 80240BEC 0200282D */  daddu     $a1, $s0, $zero
/* D7BE90 80240BF0 0C019D80 */  jal       guMtxCatF
/* D7BE94 80240BF4 0080302D */   daddu    $a2, $a0, $zero
/* D7BE98 80240BF8 E7B60010 */  swc1      $f22, 0x10($sp)
/* D7BE9C 80240BFC 8E2500A8 */  lw        $a1, 0xa8($s1)
/* D7BEA0 80240C00 4406B000 */  mfc1      $a2, $f22
/* D7BEA4 80240C04 3C073F80 */  lui       $a3, 0x3f80
/* D7BEA8 80240C08 0C019EC8 */  jal       guRotateF
/* D7BEAC 80240C0C 0200202D */   daddu    $a0, $s0, $zero
/* D7BEB0 80240C10 27A40020 */  addiu     $a0, $sp, 0x20
/* D7BEB4 80240C14 0200282D */  daddu     $a1, $s0, $zero
/* D7BEB8 80240C18 0C019D80 */  jal       guMtxCatF
/* D7BEBC 80240C1C 0080302D */   daddu    $a2, $a0, $zero
/* D7BEC0 80240C20 862200B0 */  lh        $v0, 0xb0($s1)
/* D7BEC4 80240C24 3C013F00 */  lui       $at, 0x3f00
/* D7BEC8 80240C28 44812000 */  mtc1      $at, $f4
/* D7BECC 80240C2C 44820000 */  mtc1      $v0, $f0
/* D7BED0 80240C30 00000000 */  nop       
/* D7BED4 80240C34 46800020 */  cvt.s.w   $f0, $f0
/* D7BED8 80240C38 46040102 */  mul.s     $f4, $f0, $f4
/* D7BEDC 80240C3C 00000000 */  nop       
/* D7BEE0 80240C40 4405B000 */  mfc1      $a1, $f22
/* D7BEE4 80240C44 4407B000 */  mfc1      $a3, $f22
/* D7BEE8 80240C48 44062000 */  mfc1      $a2, $f4
/* D7BEEC 80240C4C 0C019E40 */  jal       guTranslateF
/* D7BEF0 80240C50 0240202D */   daddu    $a0, $s2, $zero
/* D7BEF4 80240C54 27A40020 */  addiu     $a0, $sp, 0x20
/* D7BEF8 80240C58 0240282D */  daddu     $a1, $s2, $zero
/* D7BEFC 80240C5C 0C019D80 */  jal       guMtxCatF
/* D7BF00 80240C60 0080302D */   daddu    $a2, $a0, $zero
/* D7BF04 80240C64 3C013F36 */  lui       $at, 0x3f36
/* D7BF08 80240C68 3421DB6E */  ori       $at, $at, 0xdb6e
/* D7BF0C 80240C6C 44810000 */  mtc1      $at, $f0
/* D7BF10 80240C70 0280202D */  daddu     $a0, $s4, $zero
/* D7BF14 80240C74 44050000 */  mfc1      $a1, $f0
/* D7BF18 80240C78 3C06BF36 */  lui       $a2, 0xbf36
/* D7BF1C 80240C7C 34C6DB6E */  ori       $a2, $a2, 0xdb6e
/* D7BF20 80240C80 0C019DF0 */  jal       guScaleF
/* D7BF24 80240C84 00A0382D */   daddu    $a3, $a1, $zero
/* D7BF28 80240C88 27A40020 */  addiu     $a0, $sp, 0x20
/* D7BF2C 80240C8C 0280282D */  daddu     $a1, $s4, $zero
/* D7BF30 80240C90 0C019D80 */  jal       guMtxCatF
/* D7BF34 80240C94 0080302D */   daddu    $a2, $a0, $zero
/* D7BF38 80240C98 4600D687 */  neg.s     $f26, $f26
/* D7BF3C 80240C9C 4405F000 */  mfc1      $a1, $f30
/* D7BF40 80240CA0 4407E000 */  mfc1      $a3, $f28
/* D7BF44 80240CA4 4406D000 */  mfc1      $a2, $f26
/* D7BF48 80240CA8 0C019E40 */  jal       guTranslateF
/* D7BF4C 80240CAC 0240202D */   daddu    $a0, $s2, $zero
/* D7BF50 80240CB0 27A40020 */  addiu     $a0, $sp, 0x20
/* D7BF54 80240CB4 0240282D */  daddu     $a1, $s2, $zero
/* D7BF58 80240CB8 0C019D80 */  jal       guMtxCatF
/* D7BF5C 80240CBC 0080302D */   daddu    $a2, $a0, $zero
/* D7BF60 80240CC0 C62200A8 */  lwc1      $f2, 0xa8($s1)
/* D7BF64 80240CC4 3C0142B4 */  lui       $at, 0x42b4
/* D7BF68 80240CC8 44810000 */  mtc1      $at, $f0
/* D7BF6C 80240CCC 00000000 */  nop       
/* D7BF70 80240CD0 4602003E */  c.le.s    $f0, $f2
/* D7BF74 80240CD4 00000000 */  nop       
/* D7BF78 80240CD8 4500000A */  bc1f      .L80240D04
/* D7BF7C 80240CDC 24040001 */   addiu    $a0, $zero, 1
/* D7BF80 80240CE0 3C014387 */  lui       $at, 0x4387
/* D7BF84 80240CE4 44812000 */  mtc1      $at, $f4
/* D7BF88 80240CE8 00000000 */  nop       
/* D7BF8C 80240CEC 4604103C */  c.lt.s    $f2, $f4
/* D7BF90 80240CF0 00000000 */  nop       
/* D7BF94 80240CF4 45000004 */  bc1f      .L80240D08
/* D7BF98 80240CF8 27A20020 */   addiu    $v0, $sp, 0x20
/* D7BF9C 80240CFC 3C041000 */  lui       $a0, 0x1000
/* D7BFA0 80240D00 34840001 */  ori       $a0, $a0, 1
.L80240D04:
/* D7BFA4 80240D04 27A20020 */  addiu     $v0, $sp, 0x20
.L80240D08:
/* D7BFA8 80240D08 AFA20010 */  sw        $v0, 0x10($sp)
/* D7BFAC 80240D0C 0000282D */  daddu     $a1, $zero, $zero
/* D7BFB0 80240D10 00A0302D */  daddu     $a2, $a1, $zero
/* D7BFB4 80240D14 0C0B7710 */  jal       render_sprite
/* D7BFB8 80240D18 00A0382D */   daddu    $a3, $a1, $zero
/* D7BFBC 80240D1C 26730001 */  addiu     $s3, $s3, 1
/* D7BFC0 80240D20 2A620002 */  slti      $v0, $s3, 2
/* D7BFC4 80240D24 1440FEF6 */  bnez      $v0, .L80240900
/* D7BFC8 80240D28 00000000 */   nop      
/* D7BFCC 80240D2C 8FBF014C */  lw        $ra, 0x14c($sp)
/* D7BFD0 80240D30 8FB60148 */  lw        $s6, 0x148($sp)
/* D7BFD4 80240D34 8FB50144 */  lw        $s5, 0x144($sp)
/* D7BFD8 80240D38 8FB40140 */  lw        $s4, 0x140($sp)
/* D7BFDC 80240D3C 8FB3013C */  lw        $s3, 0x13c($sp)
/* D7BFE0 80240D40 8FB20138 */  lw        $s2, 0x138($sp)
/* D7BFE4 80240D44 8FB10134 */  lw        $s1, 0x134($sp)
/* D7BFE8 80240D48 8FB00130 */  lw        $s0, 0x130($sp)
/* D7BFEC 80240D4C D7BE0178 */  ldc1      $f30, 0x178($sp)
/* D7BFF0 80240D50 D7BC0170 */  ldc1      $f28, 0x170($sp)
/* D7BFF4 80240D54 D7BA0168 */  ldc1      $f26, 0x168($sp)
/* D7BFF8 80240D58 D7B80160 */  ldc1      $f24, 0x160($sp)
/* D7BFFC 80240D5C D7B60158 */  ldc1      $f22, 0x158($sp)
/* D7C000 80240D60 D7B40150 */  ldc1      $f20, 0x150($sp)
/* D7C004 80240D64 03E00008 */  jr        $ra
/* D7C008 80240D68 27BD0180 */   addiu    $sp, $sp, 0x180
