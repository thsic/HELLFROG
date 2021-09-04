//
function load_config(){
	if(file_exists("config")){
		
		var _buffer = buffer_load("config");
		var _string = buffer_read(_buffer, buffer_string);
		buffer_delete(_buffer);
	
		var _loaddata = json_parse(_string);
		var _load_entity = array_pop(_loaddata);
		
		global.language_setting_done = _load_entity.language_setting_done;
		global.se_volume = _load_entity.se_volume;
		global.bgm_volume = _load_entity.bgm_volume;
		global.language = _load_entity.language_setting;
		global.timer_enable = _load_entity.timer_enable;
		
		global.assist_level_enemy_damage = _load_entity.assist_level_enemy_damage;
		global.assist_level_dot_damage = _load_entity.assist_level_dot_damage;
		global.assist_level_player_damage = _load_entity.assist_level_player_damage;
		
		global.hell_enemy_damage_enable = _load_entity.hell_enemy_damage_enable;
		global.hell_dot_damage_enable = _load_entity.hell_dot_damage_enable;
		global.hell_player_damage_enable = _load_entity.hell_player_damage_enable;
		
		global.assist_mode = _load_entity.assist_mode;
		show_debug_message("configをロードしました！" +_string);
	}
}
