
if(global.gamestate == gamestate.main){
	se_play(break_se, 0.4, 0.6);
	break_enable = true;
	dust_speed_base = o_player.player_move_speed*0.66;
	dust_direction_base = o_player.player_move_direction;
}