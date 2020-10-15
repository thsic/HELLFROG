
plx = o_player.x;
ply = o_player.y;

var _angle_base = random(360);
var _circle_size = 60;
var _angle = _angle_base;
var _light_length;
//円
for(var i=0; i<vertices_number; i++){
	
	var _vx = lengthdir_x(_circle_size, _angle) + plx;
	var _vy = lengthdir_y(_circle_size, _angle) + ply;
	
	if(collision_line(plx, ply, _vx, _vy, o_wall, false, true)){
		//線が壁に当たっている
		var _length_for_wall = collision_length_check(plx, ply, _circle_size, _angle, o_wall);
		_light_length = _length_for_wall
	}
	else{
		_light_length = _circle_size;
	}
	
	vert_x[i] = lengthdir_x(_light_length, _angle) + plx;
	vert_y[i] = lengthdir_y(_light_length, _angle) + ply;
	_angle += 360/vertices_number;
	
}
vert_x[vertices_number] = lengthdir_x(_circle_size, _angle) + plx;
vert_y[vertices_number] = lengthdir_y(_circle_size, _angle) + ply;
