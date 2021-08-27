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
	}
	
	array_push(_savedata, _save_entity);

	var _string = json_stringify(_savedata);
	var _buffer = buffer_create(string_byte_length(_string) +1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "save");
	buffer_delete(_buffer);

	show_debug_message("gamedataがセーブされました！"+ _string);

}