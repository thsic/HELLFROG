//ノックバックとは逆方向のキー入力が一定時間内に押されたかどうか

var _frame = 10;
var _knockback_opposite_key = player_get_knockback_opposite_direction_key();
//var _check_knockback_opposite_key = keyboard_check_pressed(_knockback_opposite_key);

switch(_knockback_opposite_key){
case global.up_key:
	var _number = eKLPF.up;
break
case global.down_key:
	var _number = eKLPF.down;
break
case global.left_key:
	var _number = eKLPF.left;
break
case global.right_key:
	var _number = eKLPF.right;
break
default:
	sdm("Error! knockback_opposite_key_check_pressed");
	var _number = noone;
break
}
if(_number != noone){
	var result = key_check_pressed_within_certain_frame(_number, _frame);
}
else{
	var result = false;
}
return result
