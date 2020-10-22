
global.gamestop = false;

switch(global.gamestate){
#region stagestart
case gamestate.stagestart:
	now_hp_type = ePHP_type.normal_hp;
	global.player_hp = ds_grid_get(global.ds_player_hp, now_hp_type, ePHP_param.MaxHp);
	set_respawn_point(o_player.x, o_player.y);
	
	//敵初期位置保存
	var _enemy_number = instance_number(o_enemy);
	var _enemy_id, _enemy_index, _enemy_x, _enemy_y;
	ds_enemy_default_position = ds_grid_create(3, _enemy_number);
	for(var i=0; i<_enemy_number; i++){
		_enemy_id = instance_find(o_enemy, i);
		_enemy_x = _enemy_id.x;
		_enemy_y = _enemy_id.y;
		_enemy_index = _enemy_id.object_index;
		ds_grid_set(ds_enemy_default_position, EnemyDefaultPosition.ObjectIndex, i, _enemy_index);
		ds_grid_set(ds_enemy_default_position, EnemyDefaultPosition.XPosition, i, _enemy_x);
		ds_grid_set(ds_enemy_default_position, EnemyDefaultPosition.YPosition, i, _enemy_y);
	}
	
	change_gamestate(gamestate.waitforkeyinput);
break
case gamestate.waitforkeyinput:
	global.gamestop = true;
	
	//銃のチャージを最大にする
	var _charge_count = ds_grid_get(global.ds_player_gun, o_player.now_shotgun, eG_param.ChargeCount);
	var _charge_time = ds_grid_get(global.ds_player_gun, o_player.now_shotgun, eG_param.ChargeTime);
	o_player.gun_charge_time = _charge_count * _charge_time;
	
	//ラグがあるなら消す
	if(lag_enable or room_speed != 60){
		room_speed = 60;
		lag_enable = false;
		lag_time = 0;
	}
	
	var _up		= keyboard_check(global.up_key);
	var _down	= keyboard_check(global.down_key);
	var _left	= keyboard_check(global.left_key);
	var _right	= keyboard_check(global.right_key);
	var _shotgun = mouse_check_button(global.shotgun_button);
	var _hook = mouse_check_button(global.hook_button);
	
	//なにかキーが押されたらゲーム開始
	if(_up or _down or _left or _right or _shotgun or _hook){
		change_gamestate(gamestate.main)
	}
break
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
	
	//ラグ発生
	if(lag_time <= 0){
		lag_enable = false;
		room_speed = 60;
	}
	else{
		lag_time--;
		lagging_game();
	}
	
break
#endregion

case gamestate.pause:
	global.gamestop = true;
break
case gamestate.menu:
	global.gamestop = true;
break
break
case gamestate.gameover:
	gameover_effect_time--;
	global.gamestop = true;
	if(gameover_effect_time <= 0){
		reset_stage();
		return_to_checkpoint();
		change_gamestate(gamestate.waitforkeyinput);
		
		if(layer_sequence_exists("Flont", gameover_sequence_element)){
			layer_sequence_destroy(gameover_sequence_element);
		}
		
	}
	
break

}