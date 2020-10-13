
global.gamestop = false;

switch(global.gamestate){
#region stagestart
case gamestate.stagestart:
	now_hp_type = ePHP_type.normal_hp;
	global.player_hp = ds_grid_get(global.ds_player_hp, now_hp_type, ePHP_param.MaxHp);
	set_respawn_point(o_player.x, o_player.y);
	
change_gamestate(gamestate.main);
#endregion
#region main
case gamestate.main:
	if(cursed_damage_enable == true){
		player_cursed_damage();
	}
	if(stop_cursed_damage_time > 0){
		stop_cursed_damage_time--;
		cursed_damage_enable = false;
	}
	else{
		cursed_damage_enable = true;
	}
	
break
#endregion

case gamestate.pause:
	global.gamestop = true;
break
case gamestate.menu:
	global.gamestop = true;
break
case gamestate.lagging:
	
	if(lag_time <= 0){
		change_gamestate(gamestate.main);
		room_speed = 60;
	}
	else{
		lag_time--;
		lagging_game();
	}
	
break
case gamestate.gameover:
	change_gamestate(gamestate.main);
break

}