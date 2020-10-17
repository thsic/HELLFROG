
plx = o_player.x;
ply = o_player.y;

var _angle_base = 0;
var _circle_size = 120;
var _angle = _angle_base;
var _light_length;
//円
for(var i=0; i<vertices_number; i++){
	
	var _vx = lengthdir_x(_circle_size, _angle) + plx;
	var _vy = lengthdir_y(_circle_size, _angle) + ply;
	
	if(collision_line(plx, ply, _vx, _vy, o_wall, false, true)){
		//線が壁に当たっているので光の距離を短く
		var _length_for_wall = collision_length_check(plx, ply, _circle_size, _angle, o_wall);
		_light_length = clamp(_length_for_wall+(_circle_size/1.5), 0, _circle_size);
	}
	else{
		_light_length = _circle_size;
	}
	
	//位置決定
	vert_x[i] = lengthdir_x(_light_length, _angle) + plx;
	vert_y[i] = lengthdir_y(_light_length, _angle) + ply;
	x_tex[i] = (lengthdir_x(1, _angle)+1)/2;
	y_tex[i] = (lengthdir_y(1, _angle)+1)/2;
	_angle += 360/(vertices_number-1);
	
}
