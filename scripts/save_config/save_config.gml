//
function save_config(){
	var _savedata = array_create(0);
	var _save_entity =
	{
		language_setting_done : global.language_setting_done,
		se_volume : global.se_volume,
		bgm_volume : global.bgm_volume,
		language_setting : global.language,
		timer_enable : global.timer_enable,
		assist_level_enemy_damage : global.assist_level_enemy_damage,
		assist_level_dot_damage : global.assist_level_dot_damage,
		assist_level_player_damage : global.assist_level_player_damage,
		
	}
	
	array_push(_savedata, _save_entity);
	
	var _string = json_stringify(_savedata);
	var _buffer = buffer_create(string_byte_length(_string) +1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "config");
	buffer_delete(_buffer);

	//show_debug_message("configがセーブされました！"+ _string);
	
}