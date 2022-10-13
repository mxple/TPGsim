mask_index = s_player;
hp = 0;

// player variables
vel = 0;
hsp = 0;
vsp = 0;
hsp_remaining = 0;
vsp_remaining = 0;
dir = 0;
flash = 0;

facing = DIRECTIONS.RIGHT;
bleed = 0;
curse = 0;

// adjustable constants
spd = 60
walk_speed = 8 * (4 + 5.6 * (spd / 75)) / 60;

hp = 1000;
def = 40;

// controls
_right = "D";
_left = "A";
_down = "S";
_up = "W";

ini_open("./controls.ini");
_right = ini_read_string("player","right","D");
_left = ini_read_string("player","left","A");
_down = ini_read_string("player","down","S");
_up = ini_read_string("player","up","W");
ini_close();

event_user(0);
input = {};
check_input();

enum DIRECTIONS {
	RIGHT,
	UP,
	LEFT,
	DOWN
}

do_hit = true;