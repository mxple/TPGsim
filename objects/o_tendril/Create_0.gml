s1 = 0.3;
s2 = 0.45;
s3 = 0.6;

facing = 0;
if x >= 40 and x <= 232 {
	if y == 24 {
		facing = 270;
	} else {
		facing = 90;
	}
} else {
	if x == 16 {
		facing = 0;
	} else {
		facing = 180;
	}
}

alarm[0] = 40;
alarm[1] = 30;
// animation
image_index = choose(0,2,4,6)
if !instance_position(x+8,y,o_tendril) == noone {
	choose_weighted(1,image_index,instance_position(x+8,y,o_tendril).image_index, 5);
}
if !instance_position(x-8,y,o_tendril) == noone {
	choose_weighted(1,image_index,instance_position(x-8,y,o_tendril).image_index, 5);
}
if !instance_position(x,y+8,o_tendril) == noone {
	choose_weighted(1,image_index,instance_position(x,y+8,o_tendril).image_index, 5);
}
if !instance_position(x,y-8,o_tendril) == noone {
	choose_weighted(1,image_index,instance_position(x,y-8,o_tendril).image_index, 5);
}


shoot = function() {
	if floor(current_time) mod 2 == 0 {
		var _shot = s_arrow_blue;
		var _condition = CONDITIONS.PIERCE;
		var _damage = 45;
		if global.hard_mode {
			_damage += 20;
		}
		
	} else {
		var _shot = s_arrow_red;
		var _condition = CONDITIONS.BLEED;
		var _damage = 20;
		if global.hard_mode {
			_damage += 20;
		}
	}

	// shoot
	with instance_create_layer(x,y,"projectiles",o_arrow) {
		sprite_index = _shot;
		direction = other.facing;
		speed = choose(other.s1, other.s2, other.s3);
		damage = _damage;
		lifetime = 600;
		condition = _condition;
	}
}