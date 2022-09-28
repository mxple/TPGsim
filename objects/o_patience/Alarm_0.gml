var _add_delay = (40 - 4 * difficulty)
alarm[0] = irandom_range(10 + _add_delay, 40 + _add_delay);

// tendril shooting
repeat irandom(10) {
	instance_find(o_tendril,irandom(tendril_count-1)).shoot();
}