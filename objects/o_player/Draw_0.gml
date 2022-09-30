// facing
switch facing {
	case DIRECTIONS.RIGHT:
		sprite_index = s_player_right;
	break;
	case DIRECTIONS.UP:
		sprite_index = s_player_up;
	break;
	case DIRECTIONS.LEFT:
		sprite_index = s_player_left;
	break;
	case DIRECTIONS.DOWN:
		sprite_index = s_player_down;
	break;
	default:
	break;
}

// idle?
if vel == 0 {
	image_index = 0;
}

if keyboard_check_pressed(ord("W")) or keyboard_check_pressed(ord("A")) or keyboard_check_pressed(ord("S")) or keyboard_check_pressed(ord("D")) {
	image_index += 1;
}

// animation speed
image_speed = spd/60;

image_xscale = 0.85;
image_yscale = 0.85;
// shaders etc
var texture = sprite_get_texture(sprite_index, image_index);
var pixelH = texture_get_texel_height(texture);
var pixelW = texture_get_texel_width(texture);
shader_set(shd_pixel_outline);
shader_set_uniform_f(shader_get_uniform(shd_pixel_outline, "texel"), pixelW, pixelH);
draw_sprite_ext(sprite_index, image_index, x,y, image_xscale, image_yscale, -1 * o_camera.rotation, c_white, image_alpha);
if flash {
	shader_set(shd_flash);
	shader_set_uniform_f(shader_get_uniform(shd_flash, "texel"), pixelW, pixelH);
	draw_sprite_ext(sprite_index, image_index, x,y, image_xscale, image_yscale, -1 * o_camera.rotation, c_white, image_alpha);
}
shader_reset();