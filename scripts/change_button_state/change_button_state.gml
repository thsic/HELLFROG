// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function change_button_state(_type, _state){
	var _num = instance_number(o_button);
	for(var i=0; i<_num; i++){
		var _id = instance_find(o_button, i);
		if(_id.b_type == _type){
			state = _state;
		}
	}
}