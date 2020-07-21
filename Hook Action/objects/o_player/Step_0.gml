if(live_call()) return live_result;
player_move()
player_param_manage();

if(mouse_check_button_pressed(mb_left)){
	player_shotgun_fire();
}
player_do_knockback();
