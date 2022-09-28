var _add_delay = (40 - 4 * difficulty)
alarm[0] = irandom_range(5 + _add_delay, 20 + _add_delay);

// tendril shooting
repeat irandom(10+difficulty) {
	instance_find(o_tendril,irandom(tendril_count-1)).shoot();
}