var _rand = random_range(1,100);
alarm[1] = _rand;
if _rand > 90 {
	if floor(_rand) mod 2 == 0 {
		var _shot = s_arrow_blue;
		var _condition = CONDITIONS.PIERCE;
		var _damage = 45;
		
	} else {
		var _shot = s_arrow_red;
		var _condition = CONDITIONS.BLEED;
		var _damage = 20;
	}
} else {
	exit;
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