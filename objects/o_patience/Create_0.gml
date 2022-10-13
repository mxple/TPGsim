difficulty = 5;

// tendrils
tendril_count = instance_number(o_tendril);
alarm[0] = 1;

// shades 

var _dmg = 70;
if global.hard_mode {
	_dmg += 20;
}
blue_spikes = {
	sprite : s_spike_blue,
	damage : _dmg,
	condition : CONDITIONS.PIERCE
}

var _dmg = 100;
if global.hard_mode {
	_dmg += 20;
}
red_spikes = {
	sprite : s_spike_red,
	damage : _dmg,
	condition : CONDITIONS.CURSE
}

// timeline
shade_shoot_delay = 180;
shade_reset_delay = 600;
shoot_delay = 60;
reset_delay = 300;

current_shot = 0;
frames = 0;