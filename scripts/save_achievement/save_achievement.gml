//
function save_achievement(){
	
	var _savedata = array_create(0);
	
	var _length = ds_grid_width(global.achievement_param);
	for(var i=0; i<_length; i++){
		var _save_entity =
		{
			achiev_acquired : global.achievement_param[# i, ACHIEVEMENT_PARAM.ACQUIRED],
			achiev_draw_description : global.achievement_param[# i, ACHIEVEMENT_PARAM.DRAWDESCRIPTION],
			achiev_id : i,
		}
		array_push(_savedata, _save_entity);
	}
	
	var _string = json_stringify(_savedata);
	var _buffer = buffer_create(string_byte_length(_string) +1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "achievements");
	buffer_delete(_buffer);

	show_debug_message("achievementsがセーブされました！"+ _string);
}