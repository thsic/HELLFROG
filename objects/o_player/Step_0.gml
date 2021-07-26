//if(live_call()) return live_result;
if(global.gamestop == false or global.playerstop == false){
	player_effect_manage();
	hook_state_manage();
	player_move();
	player_param_manage();
	player_gun_manage()
	
	player_do_knockback();
	player_tackle_manage();
	
	//effect
	player_trail_manage();
	player_dust_manage();
}
if(global.gamestate == gamestate.gameover){
	player_gameover_knockback(1.2);
}

