if o_patience.solo_mode {
	switch state {
		case SHADE_STATES.CHASING:
			targetx = o_player.x;
			targety = o_player.y;
		
			if distance_to_object(o_player) < 100 {
				var xmove = lengthdir_x(chase_spd, point_direction(x,y,targetx,targety));
				x += xmove;
				var ymove = lengthdir_y(chase_spd, point_direction(x,y,targetx,targety));
				y += ymove;
			}
		break;
	
		case SHADE_STATES.RESET:
			targetx = ogx;
			targety = ogy;
			var xmove = lengthdir_x(reset_spd, point_direction(x,y,targetx,targety));
			x += xmove;
			var ymove = lengthdir_y(reset_spd, point_direction(x,y,targetx,targety));
			y += ymove;
		
			if abs(targetx - x) < 2 x = targetx;
			if abs(targety - y) < 2 y = targety;
		break;
	
		default:
		break;
	}
} else {
	switch state {
		case SHADE_STATES.CHASING:
			if o_patience.frames mod 30 == 0 {
				if shade_id == 0 {
					if num_resets mod 2 == 1 {
						targetx = x+20;
						targety = random_range(y-10, y+10);
					} else {
						targetx = random_range(x-10, x+10);
						targety = y+20;
					}
				} else if shade_id == 1 {
					if num_resets mod 2 == 1 {
						targetx = random_range(x-10, x+10);
						targety = y+20
					} else {
						targetx = x-20;
						targety = random_range(y-10, y+10);
					}
				} else if shade_id == 2 {
					if num_resets mod 2 == 1 {
						targetx = random_range(x-10, x+10);
						targety = y-20
					} else {
						targetx = x+20;
						targety = random_range(y-10, y+10);
					}
				} else if shade_id == 3 {
					if num_resets mod 2 == 1 {
						targetx = x-20;
						targety = random_range(y-10, y+10);
					} else {
						targetx = random_range(x-10, x+10);
						targety = y-20;
					}
				}
			}

			var xmove = lengthdir_x(chase_spd, point_direction(x,y,targetx,targety));
			x += xmove;
			var ymove = lengthdir_y(chase_spd, point_direction(x,y,targetx,targety));
			y += ymove;

		break;
	
		case SHADE_STATES.RESET:
			targetx = ogx;
			targety = ogy;
			var xmove = lengthdir_x(reset_spd, point_direction(x,y,targetx,targety));
			x += xmove;
			var ymove = lengthdir_y(reset_spd, point_direction(x,y,targetx,targety));
			y += ymove;
		
			if abs(targetx - x) < 2 x = targetx;
			if abs(targety - y) < 2 y = targety;
		break;
	
		default:
		break;
	}
}
	