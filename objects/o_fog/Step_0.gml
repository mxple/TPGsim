var offset_vector = {
	x : lengthdir_x(32 * o_camera.offset, -o_camera.rotation+90),
	y : lengthdir_y(32 * o_camera.offset, -o_camera.rotation+90)
}


x = o_player.x + offset_vector.x;
y = o_player.y + offset_vector.y;

x = x - (x mod 8);
y = y - (y mod 8);