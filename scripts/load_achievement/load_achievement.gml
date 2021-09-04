//
function load_achievement(){
	if(file_exists("achievements")){
		
		
		//ファイル読み込み
		var _file = file_text_open_read("achievements");
		var _buffer_str = file_text_read_string(_file);
		file_text_open_read(_file);
		
		//bufferに変換
		var _buffer = buffer_base64_decode(_buffer_str);
		var _string = buffer_read(_buffer, buffer_string);
		buffer_delete(_buffer);
	
		var _loaddata = json_parse(_string);
		while(array_length(_loaddata) > 0){
			var _load_entity = array_pop(_loaddata);
			var _achiev_id = _load_entity.achiev_id;
		
			global.achievement_param[# _achiev_id, ACHIEVEMENT_PARAM.ACQUIRED] = _load_entity.achiev_acquired;
			global.achievement_param[# _achiev_id, ACHIEVEMENT_PARAM.DRAWDESCRIPTION] = _load_entity.achiev_draw_description;
		}
	
		
		show_debug_message("achievementsをロードしました！" +_string);
	}
}