//
function reset_game(){
	/*ds_grid_destroy(global.ds_player_bullet);
	ds_grid_destroy(global.ds_player_knockback);
	ds_grid_destroy(global.ds_player_hook);
	ds_grid_destroy(global.ds_player_gun);
	ds_grid_destroy(global.ds_player_hp);
	ds_grid_destroy(global.ds_player_other);
	ds_grid_destroy(global.ds_keyboard_last_pressed_frame);
	ds_list_destroy(global.ds_button);
	
	ds_grid_destroy(global.ds_stage_param);
	ds_grid_destroy(global.ds_stage_type_param);
	ds_grid_destroy(global.ds_text);*/
	
	save_game();
	save_config();
	save_achievement();
	room_goto(r_boot);
}