//
function save_achievement(){
	ds_grid_
	var _string = json_stringify();
	var _buffer = buffer_create(string_byte_length(_string) +1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "config");
	buffer_delete(_buffer);
}