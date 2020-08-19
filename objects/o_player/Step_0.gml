//if(live_call()) return live_result;
hook_state_manage();
player_move();
player_param_manage();


if(mouse_check_button_pressed(global.shotgun_button)){
	gun_charge_start();
}
if(gun_charge_enable == true){
	gun_charging();
}
/*if(mouse_check_button_pressed(global.hook_button)){
	player_shot_hook();
}
**/
player_do_knockback();
