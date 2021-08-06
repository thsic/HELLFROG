
if(!global.gamestop){
	draw_instance_direction_indicator();
}

if(global.gamestate != gamestate.menu){
	//メニュー画面ではゲームuiは表示しない
	player_draw_hp();
	player_draw_hp_mini();
	draw_charge_bar();
	draw_player_effect_ui();
	draw_stage_name();
	
	if(global.now_stage_param[STAGEPARAM.STAGETYPE] != STAGETYPE.TUTORIAL){	
		draw_enemy_number();
	}
	
}
draw_timer();