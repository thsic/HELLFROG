//敵、ドット、プレイヤーのダメージをセット
function set_damage_ratio(){
	if(global.assist_mode != -1){
		//通常/アシストモード 
		//くそ処理
		var _enemy_damage_ratio, _dot_damage_ratio, _player_damage_ratio;
		_enemy_damage_ratio[0] = ASSIST_ENEMY_DAMAGE_LV0;
		_enemy_damage_ratio[1] = ASSIST_ENEMY_DAMAGE_LV1;
		_enemy_damage_ratio[2] = ASSIST_ENEMY_DAMAGE_LV2;
		_dot_damage_ratio[0] = ASSIST_DOT_DAMAGE_LV0;
		_dot_damage_ratio[1] = ASSIST_DOT_DAMAGE_LV1;
		_dot_damage_ratio[2] = ASSIST_DOT_DAMAGE_LV2;
		_player_damage_ratio[0] = ASSIST_PLAYER_DAMAGE_LV0;
		_player_damage_ratio[1] = ASSIST_PLAYER_DAMAGE_LV1;
		_player_damage_ratio[2] = ASSIST_PLAYER_DAMAGE_LV2;
		
		global.enemy_damage = _enemy_damage_ratio[global.assist_level_enemy_damage];
		global.dot_damage = _dot_damage_ratio[global.assist_level_dot_damage];
		global.player_damage = _player_damage_ratio[global.assist_level_player_damage];
	}
	else{
		//ヘルモード
		global.enemy_damage = HELL_ENEMY_DAMAGE_RATIO;
		global.dot_damage = HELL_DOT_DAMAGE_RATIO;
		global.player_damage = HELL_PLAYER_DAMAGE_RATIO;
	}
}