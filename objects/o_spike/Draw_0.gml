if !instance_place(x,y,o_fog) exit;

image_xscale = .72;
image_yscale = .72;
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,direction-45,c_white,1);