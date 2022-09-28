shader_set(shd_pixel_outline);
var texture = sprite_get_texture(sprite_index, image_index);
var pixelH = texture_get_texel_height(texture);
var pixelW = texture_get_texel_width(texture);
shader_set_uniform_f(shader_get_uniform(shd_pixel_outline, "texel"), pixelW, pixelH);

draw_sprite_ext(sprite_index,image_index,x,y,1.35,1.35,-1*o_camera.rotation,c_white,1);
shader_reset();