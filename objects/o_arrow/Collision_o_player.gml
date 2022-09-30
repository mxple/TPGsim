if has_hit exit;
if o_player.hp < 0 exit;
if global.game_end exit;
if instance_place(x,y,o_player).do_hit == false exit;
has_hit = true;

if condition = CONDITIONS.BLEED {
	o_player.bleed = 180;
}
o_player.hp -= damage * max(1,(1.25*sign(o_player.curse)));	

if sprite_index = s_arrow_red {
	o_gui.red_arrow_dmg += damage;
	o_gui.curse_dmg += .25*sign(o_player.curse)*damage;
} else {
	o_gui.blue_arrow_dmg += damage;
	o_gui.curse_dmg += .25*sign(o_player.curse)*damage;
}

o_player.flash = 4;
 