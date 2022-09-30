if global.game_end {
	if mouse_check_button(mb_any) {
		room_goto(menu);	
		global.game_end = false;
	}
}