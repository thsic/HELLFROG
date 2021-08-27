//
function load_game(_change_room){
	if(file_exists("save")){
		
		var _room = r_stage1;
		var _buffer = buffer_load("save");
		var _string = buffer_read(_buffer, buffer_string);
		buffer_delete(_buffer);
	
		var _loaddata = json_parse(_string);
		var _load_entity = array_pop(_loaddata);
		
		_room = _load_entity.stage;
		global.time_milisecond = _load_entity.time_milisecond;
		global.time_second = _load_entity.time_second;
		global.death_count = _load_entity.death_count;
		global.difficulty = _load_entity.difficulty;
			
		show_debug_message("gamedataをロードしました！" +_string);
		
		if(_change_room){
			room_goto(_room);
		}
	}
}