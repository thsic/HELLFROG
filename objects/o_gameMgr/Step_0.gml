
global.gamestop = false;
global.playerstop = false;

switch(global.gamestate){
#region stagestart
case gamestate.stagestart:
	global.gamestop = true;
	global.playerstop = true;

	now_hp_type = ePHP_type.normal_hp;
	global.player_hp = ds_grid_get(global.ds_player_hp, now_hp_type, ePHP_param.MaxHp);
	set_respawn_point(o_player.x, o_player.y);
	
	//ステージスタートシーンのためにyを高くする
	player_start_y_pos = o_player.y - (startscene_player_fall_speed*startscene_time);
	player_default_y_pos = o_player.y;
	o_player.y = player_start_y_pos;
	
	//カメラ初期位置
	o_camera.x = o_player.x;
	o_camera.y = o_player.y;
	
	
	//敵初期位置保存
	var _enemy_number = instance_number(o_enemy);
	var _enemy_id, _enemy_index, _enemy_x, _enemy_y;
	ds_enemy_default_position = ds_grid_create(5, _enemy_number);
	for(var i=0; i<_enemy_number; i++){
		_enemy_id = instance_find(o_enemy, i);
		_enemy_x = _enemy_id.x;
		_enemy_y = _enemy_id.y;
		_enemy_index = _enemy_id.object_index;
		var _enemy_lock_num = _enemy_id.lock_number;
		var _enemy_lock_spawn_time = _enemy_id.lock_spawn_time;
		
		ds_grid_set(ds_enemy_default_position, EnemyDefaultPosition.ObjectIndex, i, _enemy_index);
		ds_grid_set(ds_enemy_default_position, EnemyDefaultPosition.XPosition, i, _enemy_x);
		ds_grid_set(ds_enemy_default_position, EnemyDefaultPosition.YPosition, i, _enemy_y);
		ds_grid_set(ds_enemy_default_position, EnemyDefaultPosition.LockNumber, i, _enemy_lock_num);
		ds_grid_set(ds_enemy_default_position, EnemyDefaultPosition.LockSpawnTime, i, _enemy_lock_spawn_time);
	}
	
	//プレイヤー向き変更
	o_player.look_right = o_persistentObject.player_look_right;
	o_player.player_direction = o_persistentObject.player_direction;
	
	stagestart_scene_time = 0;
	change_gamestate(gamestate.stagestartscene);
break
case gamestate.stagestartscene:
	global.gamestop = true;
	global.playerstop = true;
	stagestart_scene_time++;
	if(stagestart_scene_time < 100){
		o_player.y = player_start_y_pos + stagestart_scene_time*startscene_player_fall_speed;
	}
	else{
		start_screen_shake(10, 5, random_range(270-8, 270+8));
		o_player.y = player_default_y_pos;
		instance_create_layer(0, 0, "Effects", o_stageStartScene);
		
		change_gamestate(gamestate.main);
	}
	
	var _fadeout_time = 80;
	if(_fadeout_time > stagestart_scene_time){
		fade_alpha = 1 - stagestart_scene_time / _fadeout_time;
		fade_alpha = fade_alpha*0.3 + 0.7;
	}
	else{
		fade_alpha = 0.7;
	}
	//フェードを段階的に
	fade_alpha = floor(fade_alpha * 16) / 16;
	
break

case gamestate.waitforkeyinput:
	global.gamestop = true;
	global.playerstop = false;
	
	
	if(respawn_time > 0){
		//リスポーンシーケンスが表示されている時間
		respawn_time--;
		
		//ゲームオーバーシーケンスはこのタイミングで消す
		if(layer_sequence_exists("Flont", gameover_sequence_element)){
			layer_sequence_destroy(gameover_sequence_element);
		}
	}
	else if(respawn_time != -1){
		//リスポーンシーケンス表示終わり
		if(layer_sequence_exists("Flont", respawn_sequence_element)){
			layer_sequence_destroy(respawn_sequence_element);
		}
		
		//銃のチャージを最大にする
		var _charge_count = ds_grid_get(global.ds_player_gun, o_player.now_shotgun, eG_param.ChargeCount);
		var _charge_time = ds_grid_get(global.ds_player_gun, o_player.now_shotgun, eG_param.ChargeTime);
		o_player.gun_charge_time = _charge_count * _charge_time;
	
		
	
		var _up		= keyboard_check(global.up_key);
		var _down	= keyboard_check(global.down_key);
		var _left	= keyboard_check(global.left_key);
		var _right	= keyboard_check(global.right_key);
		var _shotgun = mouse_check_button(global.shotgun_button);
		var _hook = mouse_check_button(global.hook_button);
	
		//なにかキーが押されたらゲーム開始
		if(_up or _down or _left or _right or _shotgun or _hook){
			change_gamestate(gamestate.main);
		}
	}
	if(respawn_time = -1){
		//リスポーン直後
		var _sequence_x = o_camera.x;
		var _sequence_y = o_camera.y;
		
		//ラグがあるなら消す
		if(lag_enable or room_speed != 60){
			room_speed = 60;
			lag_enable = false;
			lag_time = 0;
		}
		
		respawn_time = 20;
		if(!layer_sequence_exists("Flont", respawn_sequence_element)){
			respawn_sequence_element = layer_sequence_create("Flont", _sequence_x, _sequence_y, sq_respawn);
			//layer_sequence_speedscale(o_gameMgr.respawn_sequence_element, 0.5);
			layer_sequence_play(respawn_sequence_element);
			
		}
		
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
	
	goal_manage();
	
break
#endregion

case gamestate.pause:
	global.gamestop = true;
	global.playerstop = true;
break

case gamestate.menu:
	global.gamestop = true;
	global.playerstop = true;
break

case gamestate.incheckpointbarrier:
	global.gamestop = true;
	global.playerstop = false;
break

case gamestate.gameover:
	gameover_effect_time--;
	global.gamestop = true;
	global.playerstop = true;
	if(gameover_effect_time <= 0){
		reset_stage();
		return_to_checkpoint();
		change_gamestate(gamestate.waitforkeyinput);
		//ゲームオーバーシーケンスを消す処理はリスポーン後
	}
	
break

case gamestate.goalscene:
	//ステージクリア時のステージ以降シーン
	global.gamestop = true;
	global.playerstop = true;
break


}