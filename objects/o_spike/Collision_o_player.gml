if has_hit exit;
has_hit = true;
if condition = CONDITIONS.PIERCE {
	o_player.hp -= damage * (1.25*sign(o_player.curse));	
} else {
	o_player.hp -= max(damage - o_player.def, damage / 10)  * (1.25*sign(o_player.curse));
	o_player.curse = 180;
}
o_player.flash = 4;
