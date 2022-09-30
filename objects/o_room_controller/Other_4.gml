with instance_create_layer(141,200,"player",o_player) {
	spd = global.init_spd;
	walk_speed = 8 * (4 + 5.6 * (global.init_spd / 75)) / 60;
	def = global.init_def;
	hp = global.init_hp;
}
if global.mode == MODES.GROUP {
	with instance_create_layer(72,133,"player",o_ghost_player) {
		angle = 270;
		spd = global.init_spd;
		walk_speed = 8 * (4 + 5.6 * (global.init_spd / 75)) / 60;
	}
	with instance_create_layer(139,64,"player",o_ghost_player) {
		angle = 180;
		spd = global.init_spd;
		walk_speed = 8 * (4 + 5.6 * (global.init_spd / 75)) / 60;
	}
	with instance_create_layer(208,131,"player",o_ghost_player) {
		angle = 90;
		spd = global.init_spd;
		walk_speed = 8 * (4 + 5.6 * (global.init_spd / 75)) / 60;
	}
}
with instance_create_layer(0,0,"controllers",o_patience) {
	difficulty = global.init_lvl;
}
instance_create_layer(0,0,"controllers",o_fog);

global.game_end = false;
