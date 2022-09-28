solo_mode = true;
difficulty = 5;

// tendrils
tendril_count = instance_number(o_tendril);
alarm[0] = 1;

// shades 
blue_spikes = {
	sprite : s_spike_blue,
	damage : 70,
	condition : CONDITIONS.PIERCE
}

red_spikes = {
	sprite : s_spike_red,
	damage : 100,
	condition : CONDITIONS.CURSE
}

// timeline
shade_shoot_delay = 180;
shade_reset_delay = 600;
shoot_delay = 60;
reset_delay = 300;

current_shot = 0;
frames = 0;