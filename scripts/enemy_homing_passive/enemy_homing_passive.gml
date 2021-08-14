//
function enemy_homing_passive(){
	var _px = o_player.x;
	var _py = o_player.y;
	var _dis_for_player = point_distance(x, y, _px, _py);
	if(_dis_for_player < view_range
	and !used_blink){
		//プレイヤーの後ろ遠くに一度だけ瞬間移動
		var _dir = point_direction(_px, _py, x, y)+180;
		var _to_x = lengthdir_x(view_range, _dir) + _px;
		var _to_y = lengthdir_y(view_range, _dir) + _py;
		
		x = _to_x;
		y = _to_y;
		used_blink = true;
	}
}