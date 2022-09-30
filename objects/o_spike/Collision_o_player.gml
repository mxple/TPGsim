if has_hit exit;
if o_player.hp < 0 exit;
if global.game_end exit;
if instance_place(x,y,o_player).do_hit == false exit;
has_hit = true;
if condition = CONDITIONS.PIERCE {
	o_player.hp -= damage + max(1,(1.25*sign(o_player.curse)));	
	o_gui.blue_spike_dmg += damage;
	o_gui.curse_dmg += .25*sign(o_player.curse)*damage;
} else {
	o_player.hp -= max(damage - o_player.def, damage / 10) * max(1,(1.25*sign(o_player.curse)));
	o_gui.red_spike_dmg +=  max(damage - o_player.def, damage / 10);
	o_gui.curse_dmg += .25*sign(o_player.curse)*max(damage - o_player.def, damage / 10);
	o_player.curse = 180;
}


o_player.flash = 4;
