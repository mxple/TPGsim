alarm[0] = irandom_range(4*(11-difficulty),12*(11-difficulty));
// tendril shooting
repeat irandom(4) {
	instance_find(o_tendril,irandom(tendril_count-1)).shoot();
}