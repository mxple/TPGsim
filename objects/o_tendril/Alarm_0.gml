alarm[0] = 37;
with instance_create_layer(x,y,"projectiles", o_arrow) {
	sprite_index = s_arrow_blue;
	direction = 180 + other.facing;
	speed = .6;
	damage = 45;
	lifetime = 260;
	condition = CONDITIONS.PIERCE;
}