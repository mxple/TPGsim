/// @description init local scripts
check_input = function() {
	with (input) {
		rotate = keyboard_check(ord(other._rotate_right))-keyboard_check(ord(other._rotate_left));
		reset_rotation = keyboard_check_pressed(ord(other._reset_rot));
		reset_all = keyboard_check_pressed(ord(other._reset_all));
		offset = keyboard_check_pressed(ord(other._offset));
		zoom_in = keyboard_check_pressed(ord(other._zoom_in));
		zoom_out = keyboard_check_pressed(ord(other._zoom_out));	
	}
}