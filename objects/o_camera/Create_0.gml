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
rotation_speed = 2;

event_user(0);
input = {};
check_input();