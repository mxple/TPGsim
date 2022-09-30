var c1 = #010101;
var c2 = #62E448;
var x2 = (o_player.hp/global.init_hp) * 66;
draw_rectangle_color(GUI_W/2 - 30, GUI_H/2 + 33+ (225*o_camera.offset), GUI_W/2 + 36,GUI_H/2 + 41 + (225*o_camera.offset),c1,c1,c1,c1,false);
draw_rectangle_color(GUI_W/2 - 29, GUI_H/2 + 34 + (225*o_camera.offset), GUI_W/2 - 30 + x2, GUI_H/2 + 40 + (225*o_camera.offset),c2,c2,c2,c2,false);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

var c = c_white;
if o_patience.frames > 1800 c = c_lime;

draw_text_ext_transformed_color(10,10,"score: "+string(o_patience.frames),1,1000,.5,.5,0,c,c,c,c,1);
draw_text_ext_transformed(10,40,"fps: "+string(fps),1,1000,.5,.5,0);



if global.game_end {
	var c1 = $000000;
	draw_set_alpha(0.8);
	draw_rectangle_color(GUI_W/2 - 300, GUI_H/2 - 400, GUI_W/2 + 300, GUI_H/2 + 400, c1,c1,c1,c1,false);
	draw_set_alpha(1);

	draw_sprite_ext(s_arrow_red,0,GUI_W/2 - 250, GUI_H/2 - 300,3,3,0,c_white,1);
	draw_text_ext_transformed(GUI_W/2 - 200, GUI_H/2 - 310, string(red_arrow_dmg),1,1000,.5,.5,0);

	draw_sprite_ext(s_arrow_blue,0,GUI_W/2 - 250, GUI_H/2 - 200,3,3,0,c_white,1);
	draw_text_ext_transformed(GUI_W/2 - 200, GUI_H/2 - 210, string(blue_arrow_dmg),1,1000,.5,.5,0);

	draw_sprite_ext(s_spike_red,0,GUI_W/2 - 250, GUI_H/2 - 100,3,3,0,c_white,1);
	draw_text_ext_transformed(GUI_W/2 - 200, GUI_H/2 - 110, string(red_spike_dmg),1,1000,.5,.5,0);

	draw_sprite_ext(s_spike_blue,0,GUI_W/2 - 250, GUI_H/2 - 0,3,3,0,c_white,1);
	draw_text_ext_transformed(GUI_W/2 - 200, GUI_H/2 - 10, string(blue_spike_dmg),1,1000,.5,.5,0);

	draw_text_ext_transformed(GUI_W/2 - 250, GUI_H/2 + 100, "bleed: " + string(bleed_dmg),1,1000,.5,.5,0);

	draw_text_ext_transformed(GUI_W/2 - 250, GUI_H/2 + 200, "curse (amplified): " +string(curse_dmg),1,1000,.5,.5,0);

	draw_text_ext_transformed(GUI_W/2 - 200, GUI_H/2 + 300, "Click anywhere to restart",1,1000,.5,.5,0);
}