shoot = function(_shot) {
	for (var _i = 0; _i < 16; _i++) {
		with instance_create_layer(x,y,"projectiles",o_spike) {
			sprite_index = _shot.sprite;
			direction = _i * 22.5;
			speed = .5;
			damage = _shot.damage;
			lifetime = 260;
			condition = _shot.condition;
		}
	}
}

ogx = x;
ogy = y;

state = SHADE_STATES.RESET;

// movement
chase_spd = 8 * (1.8) / 60;
reset_spd = 8 * (2.5) / 60;

targetx = x;
targety = y;

num_resets = 0;