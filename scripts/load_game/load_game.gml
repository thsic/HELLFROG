//
function load_game(_change_room){
	if(file_exists("save")){
		
		var _room = r_stage1;
		//ファイル読み込み
		var _file = file_text_open_read("save");
		var _buffer_str = file_text_read_string(_file);
		file_text_open_read(_file);
		
		//bufferに変換
		var _buffer = buffer_base64_decode(_buffer_str);
		var _string = buffer_read(_buffer, buffer_string);
		buffer_delete(_buffer);
	
		var _loaddata = json_parse(_string);
		var _load_entity = array_pop(_loaddata);
		
		_room = _load_entity.stage;
		global.time_milisecond = _load_entity.time_milisecond;
		global.time_second = _load_entity.time_second;
		global.death_count = _load_entity.death_count;
		global.difficulty = _load_entity.difficulty;
		
		//実績関連
		global.achievement_param[# ACHIEVEMENT_NAME.CLEAR_HELLMODE, ACHIEVEMENT_PARAM.GETTABLE] = _load_entity.gettable_hellmode_clear;
		global.achievement_param[# ACHIEVEMENT_NAME.ALLCLEAR_TRUEHELLMODE, ACHIEVEMENT_PARAM.GETTABLE] = _load_entity.gettable_truehell;
		global.achievement_param[# ACHIEVEMENT_NAME.CLEAR_NO_MOVEKEY, ACHIEVEMENT_PARAM.GETTABLE] = _load_entity.gettable_no_movekey_clear;
		
		//ロードしたデータがアシストレベルmaxをしたデータだった場合実績取得不可になる
		global.used_super_assistmode = _load_entity.used_super_assistmode;
		if(global.used_super_assistmode){
			var _length = ds_grid_width(global.achievement_param);
			for(var i=0; i<_length; i++){
				if(global.achievement_param[# i, ACHIEVEMENT_PARAM.ENABLE]){
					global.achievement_param[# i, ACHIEVEMENT_PARAM.GETTABLE] = false;
				}
			}
		}
		
		show_debug_message("gamedataをロードしました！" +_string);
		
		if(_change_room){
			room_goto(_room);
		}
	}
}