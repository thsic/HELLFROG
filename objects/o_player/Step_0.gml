//if(live_call()) return live_result;
if(global.gamestop == false){
	hook_state_manage();
	player_move();
	player_param_manage();
	player_gun_manage()

	player_do_knockback();
}