draw_set_font(f_chronotype);
draw_set_color(c_white);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_ext(457,395,string(global.init_spd),1,1000);
draw_text_ext(455,544,string(global.init_hp),1,1000);
draw_text_ext(455,695,string(global.init_def),1,1000);
draw_text_ext(455,836,string(global.init_lvl),1,1000);

var _mode = "solo";
if global.init_solo == false {
	_mode = "group";
}
draw_text_ext_transformed(1055,350,string(_mode),1,1000,1.4,1.4,0);