// camera variables
view_width = 184;
view_height= 144;

window_scale = 7;

window_set_size(view_width * window_scale, view_height * window_scale);
alarm[0] = 1;

surface_resize(application_surface, view_width * window_scale, view_height * window_scale);

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