
if(global.gamestate == gamestate.main){
	se_play(break_se, 0.4, 0.6);
	break_enable = true;
	dust_speed_base = other.speed/3;
	dust_direction_base = other.direction;
}
