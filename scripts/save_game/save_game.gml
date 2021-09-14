//
function save_game(){
	var _savedata = array_create(0);
	var _save_entity =
	{
		stage : room,
		time_milisecond : global.time_milisecond,
		time_second : global.time_second,
		death_count : global.death_count,
		difficulty : global.difficulty,
		
		gettable_hellmode_clear : global.achievement_param[# ACHIEVEMENT_NAME.CLEAR_HELLMODE, ACHIEVEMENT_PARAM.GETTABLE],
		gettable_truehell : global.achievement_param[# ACHIEVEMENT_NAME.ALLCLEAR_TRUEHELLMODE, ACHIEVEMENT_PARAM.GETTABLE],
		gettable_no_movekey_clear : global.achievement_param[# ACHIEVEMENT_NAME.CLEAR_NO_MOVEKEY, ACHIEVEMENT_PARAM.GETTABLE],
		used_super_assistmode : global.used_super_assistmode,
		true_hell : global.true_hell,
		
		lic : "セーブファイルの暗号化を解いちゃうなんて！！！！",
	}
	
	array_push(_savedata, _save_entity);

	var _string = json_stringify(_savedata);
	var _buffer = buffer_create(string_byte_length(_string) +1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	var _buffer_str = buffer_base64_encode(_buffer, 0, buffer_get_size(_buffer))
	buffer_delete(_buffer);
	
	var _file = file_text_open_write("save");
	file_text_write_string(_file, _buffer_str);
	file_text_close(_file);
	
	show_debug_message("gamedataがセーブされました！"+ _string);

}