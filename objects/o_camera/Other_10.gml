/// @description init local scripts
check_input = function() {
	with (input) {
		rotate = keyboard_check(ord("E"))-keyboard_check(ord("Q"));
		reset_rotation = keyboard_check_pressed(ord("C"));
		reset_all = keyboard_check_pressed(ord("Z"));
		offset = keyboard_check_pressed(ord("X"));
		zoom_in = keyboard_check_pressed(ord("P"));
		zoom_out = keyboard_check_pressed(ord("O"));	
	}
}