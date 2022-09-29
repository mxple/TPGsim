vel = 0;
hsp = 0;
vsp = 0;
hsp_remaining = 0;
vsp_remaining = 0;
dir = 0;

angle = 0;

facing = DIRECTIONS.RIGHT;

// adjustable constants
spd = 60
walk_speed = 8 * (4 + 5.6 * (spd / 75)) / 60;

event_user(0);
input = {};
check_input();

do_hit = false;