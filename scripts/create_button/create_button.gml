//spriteはnooneでもok width/heightは-1でもok
function create_button(_sprite, _x, _y, _w, _h, _var, _type, _center, _layer, _color){
	if(!_center){
		_x -= _w/2;
		_y -= _h/2;
	}
	with(instance_create_layer(_x, _y, _layer, o_button)){
		sprite = _sprite;
		center = _center;
		follow_variable = _var;
		width = _w;
		height = _h;
		button_color = _color
	}
	enum ButtonType{
		DebugWindow,
	}
}