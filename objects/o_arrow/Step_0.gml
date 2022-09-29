lifetime -= 1;
if lifetime < 0 {
	instance_destroy();
}

