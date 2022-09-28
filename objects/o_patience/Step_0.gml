if shoot_delay <= 0 {
	if current_shot mod 2 == 0 {
		var _shot = blue_spikes;
	} else {
		var _shot = red_spikes;
	}
	with (o_shade) {
		shoot(_shot);	
	}
	current_shot += 1;
	shoot_delay = shade_shoot_delay;
}

if reset_delay == 300 {
	with (o_shade) {
		state = SHADE_STATES.RESET;	
		num_resets += 1;
	}
}

if reset_delay == 0 {
	with (o_shade) {
		state = SHADE_STATES.CHASING;	
	}
	reset_delay = shade_reset_delay;
}

shoot_delay -= 1;
reset_delay -= 1;
frames += 1;
