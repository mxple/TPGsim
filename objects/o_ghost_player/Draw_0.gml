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

// shaders etc
draw_sprite_ext(sprite_index, image_index, x,y, 1, 1, -1 * o_camera.rotation, c_white, 0.14);
