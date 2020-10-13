//spriteはnooneでもok width/heightは-1でもok 
//button_numberを介してボタンの情報を取得するかんじ
function create_button(_sprite, _x, _y, _w, _h, _def_state, _text, _type, _link, _center, _layer, _color){
	var _map_x = convert_window_coordinate_x(_x);
	var _map_y = convert_window_coordinate_y(_y);
	if(!_center){
		_map_x -= _w/2;
		_map_y -= _h/2;
	}
	
	//リスト
	var _list_size = ds_list_size(global.ds_button);
	var _button_number = noone;
	for(var i=0; i<_list_size; i++){
		//空のリスト探す
		if(ds_list_find_value(global.ds_button, i) == noone){
			global.ds_button[| i] = 0;
			_button_number = i;
			break
		}
	}
	if(_button_number = noone){
		return noone
	}
	
	with(instance_create_layer(_map_x, _map_y, _layer, o_button)){
		sprite = _sprite;
		center = _center;
		button_number = _button_number;
		width = _w;
		height = _h;
		button_color = _color
		window_x = _x;
		window_y = _y;
		b_type = _type;
		link = _link;
		state = _def_state;
		text = _text;
	}
	enum ButtonType{
		DebugWindow,
	}
	return _button_number
}