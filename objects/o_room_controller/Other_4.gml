with instance_create_layer(139,235,"player",o_player) {
	spd = global.init_spd;
	walk_speed = 8 * (4 + 5.6 * (global.init_spd / 75)) / 60;
	def = global.init_def;
	hp = global.init_hp;
}
with instance_create_layer(0,0,"controllers",o_patience) {
	difficulty = global.init_lvl;
	solo_mode = global.init_solo;
}