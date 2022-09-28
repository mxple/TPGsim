camera_set_view_size(VIEW, view_width, view_height);

check_input();
// target position calculation
if instance_exists(follow_target) {
	target_x = follow_target.x;
	target_y = follow_target.y;
}

// rotation calculations
rotation += rotation_speed*input.rotate;
if input.reset_rotation or input.reset_all {
	rotation = 0;
}

// offset
if input.offset {
	offset = !offset;	
}

var offset_vector = {
	x : lengthdir_x(32 * offset, -rotation+90),
	y : lengthdir_y(32 * offset, -rotation+90)
}

// move camera
current_x += (target_x-current_x);
current_y += (target_y-current_y);

camera_set_view_angle(VIEW, rotation);
camera_set_view_pos(VIEW, current_x-VIEW_W/2 + offset_vector.x, current_y-VIEW_H/2 +offset_vector.y);