// camera variables
view_widths = [18.23 * 8, 23.5 * 8, 31 * 8];
view_heights= [12.8 * 8, 16.5 * 8, 21.77 *8];
zoom = 1;

window_scale = 7;

window_set_size(1288, 1008);
alarm[0] = 1;

surface_resize(application_surface, view_widths[zoom] * window_scale, view_heights[zoom] * window_scale);

follow_target = o_player;
current_x = 0;
current_y = 0;
target_x = 0;
target_y = 0;
rotation = 0;
offset = false;

// adjustable values
rotation_speeds = [2,3,4];


// controls

_rotate_right = "E";
_rotate_left = "Q";
_reset_rot = "C";
_reset_all = "Z";
_offset = "X";
_zoom_in = "P";
_zoom_out = "O";

ini_open("./controls.ini");
_rotate_right = ini_read_string("camera","rotate right","E");
_rotate_left = ini_read_string("camera","rotate left","Q");
_reset_rot = ini_read_string("camera","reset rotation","C");
_reset_all = ini_read_string("camera","reset to default camera angle","Z");
_offset = ini_read_string("camera","toggle centering on player","X");
_zoom_in = ini_read_string("camera","zoom in","P");
_zoom_out = ini_read_string("camera","zoom out","O");
ini_close();

event_user(0);
input = {};
check_input();