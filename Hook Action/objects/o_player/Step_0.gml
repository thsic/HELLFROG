if(live_call()) return live_result;
player_move();
player_param_manage();
hook_state_manage();

if(mouse_check_button_pressed(global.shotgun_button)){
	player_shotgun_fire();
}
/*if(mouse_check_button_pressed(global.hook_button)){
	player_shot_hook();
}
**/
player_do_knockback();
