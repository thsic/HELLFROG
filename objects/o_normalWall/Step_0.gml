
if(tutorial_wall){
	var _px = o_player.x;
	var _py = o_player.y;
	var _x_diff = abs(_px - x);
	var _y_diff = abs(_py - y);

	alpha = 1;
	var _distance_for_player = 1000;
	if(_x_diff < visible_range 
	and _y_diff < visible_range){
		_distance_for_player = point_distance(x, y, _px, _py);
		if(_distance_for_player < visible_range){
			alpha = 0;
		}
	}
}
