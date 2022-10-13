draw_set_font(f_chronotype);
draw_set_color(c_white);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_ext(457,395,string(global.init_spd),1,1000);
draw_text_ext(455,544,string(global.init_hp),1,1000);
draw_text_ext(455,695,string(global.init_def),1,1000);
draw_text_ext(455,836,string(global.init_lvl),1,1000);

var _rspeed = "slow";
if global.rspeed == 1 {
	_rspeed = "normal";	
} else if global.rspeed == 2 {
	_rspeed = "fast";
}
draw_set_halign(fa_left);
draw_text_ext_transformed(30,920,"rotation " + string(_rspeed), 1, 1000,1.3,1.3,0);
draw_set_halign(fa_center);

var _mode = "solo";
if global.mode == MODES.GROUP {
	_mode = "group";
} else if global.mode == MODES.RAILS {
	_mode = "rails";
}
draw_text_ext_transformed(1055,350,string(_mode),1,1000,1.4,1.4,0);

var _hard_mode = "normal";
if global.hard_mode {
	_hard_mode = "hard";	
}

draw_text_ext_transformed(1055,504,string(_hard_mode),1,1000,1.4,1.4,0);