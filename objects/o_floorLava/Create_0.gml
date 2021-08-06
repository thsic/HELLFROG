
var _w = abs(bbox_left - bbox_right);
var _h = abs(bbox_bottom - bbox_top);

//スローフィールドの大きさと位置きめる

with(instance_create_layer(x, y, "MapObject", o_damageField)){
	field_width = _w;
	field_height = _h;
}