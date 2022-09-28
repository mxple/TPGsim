var c1 = #010101;
var c2 = #62E448;
var x2 = (o_player.hp/global.init_hp) * 69;
draw_rectangle_color(GUI_W/2 - 29, GUI_H/2 + 36 + (225*o_camera.offset), GUI_W/2 + 36,GUI_H/2 + 44 + (225*o_camera.offset),c1,c1,c1,c1,false);
draw_rectangle_color(GUI_W/2 - 30, GUI_H/2 + 37 + (225*o_camera.offset), GUI_W/2 - 30 + x2, GUI_H/2 + 43 + (225*o_camera.offset),c2,c2,c2,c2,false);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text_ext_transformed(10,10,"score: "+string(o_patience.frames),1,1000,.5,.5,0);