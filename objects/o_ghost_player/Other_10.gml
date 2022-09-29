/// @description init local scripts
check_input = function() {
	with (input) {
		hdir = keyboard_check(ord("D"))-keyboard_check(ord("A"));
		vdir = keyboard_check(ord("S"))-keyboard_check(ord("W"));
	}
}