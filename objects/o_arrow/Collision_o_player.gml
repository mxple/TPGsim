if has_hit exit;
has_hit = true;

if condition = CONDITIONS.BLEED {
	o_player.bleed = 180;
}
o_player.hp -= damage * max(1,(1.25*sign(o_player.curse)));	

o_player.flash = 4;
 