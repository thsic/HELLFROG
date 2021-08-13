
global.gamestop = false;
global.playerstop = false;
global.game_time++;

switch(global.gamestate){
#region stagestart
case gamestate.stagestart:
	global.gamestop = true;
	global.playerstop = true;
	
	//ステージ情報入れる
	put_stage_param();
	
	if(!instance_exists(o_menuMgr)){
		instance_create_layer(0, 0, "GameObjects", o_menuMgr);
	}
	now_hp_type = ePHP_type.normal_hp;
	global.player_hp = ds_grid_get(global.ds_player_hp, now_hp_type, ePHP_param.MaxHp);
	set_respawn_point(o_player.x, o_player.y);
	
	
	if(room == r_tutorial){
		var _next_game_state = gamestate.event;
	}
	else{
		var _next_game_state = gamestate.stagestartscene;
		//ステージスタートシーンのためにyを高くする
		player_start_y_pos = o_player.y - (startscene_player_fall_speed*startscene_time);
		player_default_y_pos = o_player.y;
		o_player.y = player_start_y_pos;
	}
	
	
	//カメラ初期位置
	o_camera.x = o_player.x;
	o_camera.y = o_player.y;
	
	//アシストモード等のダメージレシオ
	set_damage_ratio();
	
	//敵初期位置保存
	var _enemy_number = instance_number(o_enemy);
	var _enemy_id, _enemy_index, _enemy_x, _enemy_y;
	ds_enemy_default_position = ds_grid_create(8, _enemy_number);
	
	var _floor_enemy_num = 0;
	
	for(var i=0; i<_enemy_number; i++){
		_enemy_id = instance_find(o_enemy, i);
		_enemy_x = _enemy_id.x;
		_enemy_y = _enemy_id.y;
		_enemy_index = _enemy_id.object_index;
		var _enemy_lock_num = _enemy_id.lock_number;
		var _enemy_lock_spawn_time = _enemy_id.lock_spawn_time;
		var _enemy_blueaura = _enemy_id.blue_aura;
		
		ds_grid_set(ds_enemy_default_position, EnemyDefaultPosition.ObjectIndex, i, _enemy_index);
		ds_grid_set(ds_enemy_default_position, EnemyDefaultPosition.XPosition, i, _enemy_x);
		ds_grid_set(ds_enemy_default_position, EnemyDefaultPosition.YPosition, i, _enemy_y);
		ds_grid_set(ds_enemy_default_position, EnemyDefaultPosition.LockNumber, i, _enemy_lock_num);
		ds_grid_set(ds_enemy_default_position, EnemyDefaultPosition.LockSpawnTime, i, _enemy_lock_spawn_time);
		ds_grid_set(ds_enemy_default_position, EnemyDefaultPosition.BlueAura, i, _enemy_blueaura);
		
		if(_enemy_id.object_index != o_hookPole
		and _enemy_id.soul_enemy == true){
			_floor_enemy_num++;
		}
	}
	
	//敵の総数数える
	global.floor_enemy_number_total = _floor_enemy_num;
	global.floor_enemy_number_now = _floor_enemy_num;
	
	
	//ゲームオーバー時に再生成されるオブジェクトの初期位置保存
	var _obj_num = instance_number(o_breakableObject);
	var _wall_num = instance_number(o_breakableWall);
	ds_obj_default_position = ds_grid_create(5, _obj_num+_wall_num);
	
	for(var i=0; i<_obj_num; i++){
		var _obj_id = instance_find(o_breakableObject, i);
		var _obj_x = _obj_id.x;
		var _obj_y = _obj_id.y;
		var _obj_index = _obj_id.object_index;
		var _obj_sprite = _obj_id.sprite;
		
		ds_grid_set(ds_obj_default_position, ObjDefaultPosition.ObjectIndex, i, _obj_index);
		ds_grid_set(ds_obj_default_position, ObjDefaultPosition.XPosition, i, _obj_x);
		ds_grid_set(ds_obj_default_position, ObjDefaultPosition.YPosition, i, _obj_y);
		ds_grid_set(ds_obj_default_position, ObjDefaultPosition.Sprite, i, _obj_sprite);
	}
	
	
	
	
	for(var i=0; i<_wall_num; i++){
		var _obj_id = instance_find(o_breakableWall, i);
		var _obj_x = _obj_id.x;
		var _obj_y = _obj_id.y;
		var _obj_index = _obj_id.object_index;
		var _obj_sprite = _obj_id.sprite;
		
		ds_grid_set(ds_obj_default_position, ObjDefaultPosition.ObjectIndex, i+_obj_num, _obj_index);
		ds_grid_set(ds_obj_default_position, ObjDefaultPosition.XPosition, i+_obj_num, _obj_x);
		ds_grid_set(ds_obj_default_position, ObjDefaultPosition.YPosition, i+_obj_num, _obj_y);
		ds_grid_set(ds_obj_default_position, ObjDefaultPosition.Sprite, i+_obj_num, _obj_sprite);
	}
	
	
	
	//プレイヤー向き変更
	o_player.look_right = o_persistentObject.player_look_right;
	o_player.player_direction = o_persistentObject.player_direction;
	
	stagestart_scene_time = 0;
	change_gamestate(_next_game_state);
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
	global.playerstop = true;
	
	
	if(respawn_time > 0){
		//リスポーンシーケンスが表示されている時間
		respawn_time--;
		
		//ゲームオーバーシーケンスはこのタイミングで消す
		if(layer_sequence_exists("Flont", gameover_sequence_element)){
			layer_sequence_destroy(gameover_sequence_element);
		}
	}
	else if(respawn_time != -1){
		
		
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
			start_shockwave(o_player.x, o_player.y, 100, 50, 200, 4, true);
			
			
			//シーケンス消す
			if(layer_sequence_exists("Flont", respawn_sequence_element)){
				layer_sequence_destroy(respawn_sequence_element);
			}
		}
		
		//プレイヤーの向いてる方向
		with(o_player){
			//プレイヤー座標を画面座標に変換して向いている方角
			var _x = x - camera_get_view_x(view_camera[0]);
			var _y = y - camera_get_view_y(view_camera[0]);
			var _mx = global.vmouse_x;
			var _my = global.vmouse_y;
			player_direction = point_direction(_x, _y, _mx, _my);
		}
		
		if(_shotgun){
			//ショットガンボタンが押された時は銃の発射処理を行う ごりおし
			with(o_player){
				player_shotgun_fire();
				start_trail_time(10);
				gun_charge_time = 0;
				gun_charge_enable = false;
				gun_charge_level = 0;
				drawed_charge_fin_effect = false;
			}
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
		
		respawn_time = 5;
		if(!layer_sequence_exists("Flont", respawn_sequence_element)){
			respawn_sequence_element = layer_sequence_create("Flont", _sequence_x, _sequence_y, sq_respawn);
			//layer_sequence_speedscale(o_gameMgr.respawn_sequence_element, 0.5);
			layer_sequence_play(respawn_sequence_element);
			
		}
		
	}
	//リスポーンシーケンス表示終わり
	if(layer_sequence_exists("Flont", respawn_sequence_element)){
		if(layer_sequence_is_finished(respawn_sequence_element)){
			layer_sequence_destroy(respawn_sequence_element);
		}
	}
break

#endregion
#region main
case gamestate.main:
	if(cursed_damage_enable == true
	and global.floor_enemy_number_now > 0){
		player_cursed_damage();//敵が0体の時はドットダメージなし
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
	
	count_time();
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
case gamestate.event:
	//イベントシーン
	global.gamestop = true;
	global.playerstop = true;
break
}

