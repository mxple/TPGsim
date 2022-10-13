/// @description init local scripts
check_input = function() {
	with (input) {
		hdir = keyboard_check(ord(other._right))-keyboard_check(ord(other._left));
		vdir = keyboard_check(ord(other._down))-keyboard_check(ord(other._up));
	}
}