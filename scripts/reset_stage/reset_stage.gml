// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function reset_stage(){
	global.player_hp = ds_grid_get(global.ds_player_hp, o_gameMgr.now_hp_type, ePHP_param.MaxHp);
	
	//フック消す
	with(o_player){
		hookshot_cooldown = 0;
		hook_state = hookState.Idle;
		can_hookshot = false;
		hook_point_x = x;
		hook_point_y = y;
		hook_length = 0;
	}
	//弾消し
	with(o_playerBullet){
		instance_destroy();
	}
	with(o_enemyBullet){
		instance_destroy();
	}
	//オブ消し
	with(o_lifestealOrb){
		instance_destroy();
	}
	//acid消し
	with(o_enemyBulletAcid){
		instance_destroy()
	}
	//ポップゴール消し
	with(o_goal){
		if(poped_goal){
			instance_destroy();
		}
	}
	//スローフィールド消し
	var _slow_field_num = instance_number(o_slowField);
	for(var i=0; i<_slow_field_num; i++){
		var _id = instance_find(o_slowField, i);
		
		if(_id.stage_reset_destroy){
			instance_destroy();
		}
	}
	//慣性消し スロー消し
	with(o_player){
		inertia_speed = 0;
		inertia_enable = false;
		
		player_slow_time = 0;
		on_slow_field_time = 0;
		
		curse_point = 0;
		curse_level = 0;
		
	}
	global.slow_enable = false;
	
	
	//敵を再生成
	with(o_enemy){
		instance_destroy();
	}
	var _enemy_number = ds_grid_height(ds_enemy_default_position);
	var _enemy_x, _enemy_y, _enemy_index, _enemy_lock_num, _enemy_lock_spawn_time, _enemy_blueaura;
	for(var i=0; i<_enemy_number; i++){
		_enemy_index = ds_grid_get(ds_enemy_default_position, EnemyDefaultPosition.ObjectIndex, i);
		_enemy_x = ds_grid_get(ds_enemy_default_position, EnemyDefaultPosition.XPosition, i);
		_enemy_y = ds_grid_get(ds_enemy_default_position, EnemyDefaultPosition.YPosition, i);
		_enemy_lock_num = ds_grid_get(ds_enemy_default_position, EnemyDefaultPosition.LockNumber, i);
		_enemy_lock_spawn_time = ds_grid_get(ds_enemy_default_position, EnemyDefaultPosition.LockSpawnTime, i);
		_enemy_blueaura = ds_grid_get(ds_enemy_default_position, EnemyDefaultPosition.BlueAura, i);
		with(instance_create_layer(_enemy_x, _enemy_y, "Enemies", _enemy_index)){
			
			//敵の初期値設定
			lock_number = _enemy_lock_num;
			lock_spawn_time = _enemy_lock_spawn_time;
			blue_aura = _enemy_blueaura;
			if(lock_spawn_time = -1){
				state = EnemyState.Idle;//通常
			}
			else{
				state = EnemyState.WaitForSpawn;//ロック中に出現する敵
			}
			
		}
	}
	global.floor_enemy_number_now = global.floor_enemy_number_total;
	
	//オブジェクトを再生成
	with(o_breakableObject){
		instance_destroy();
	}
	with(o_breakableWall){
		instance_destroy();
	}
	var _obj_num = ds_grid_height(ds_obj_default_position);
	var _obj_x, _obj_y, _obj_index, _obj_sprite;
	for(var i=0; i<_obj_num; i++){
		_obj_index = ds_obj_default_position[# ObjDefaultPosition.ObjectIndex, i];
		_obj_x = ds_obj_default_position[# ObjDefaultPosition.XPosition, i];
		_obj_y = ds_obj_default_position[# ObjDefaultPosition.YPosition, i];
		_obj_sprite = ds_obj_default_position[# ObjDefaultPosition.Sprite, i];
		
		with(instance_create_layer(_obj_x, _obj_y, "BreakableObjects", _obj_index)){
			sprite = _obj_sprite;
		}
	}
	
	//ルームのロック状態をリセットする
	room_lock_reset();
	
	
	respawn_time = -1;
}