if mouse_check_button_pressed(mb_left) and point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom)
{
	if keyboard_check(vk_shift) {
		repeat(4) {
			effect();
		}
	}
	effect();
}