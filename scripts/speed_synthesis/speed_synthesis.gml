//2つの方角の速度合成 amountが高いほど2側の影響が強くなる
//そんなに難しいことしてない
function speed_synthesis(_id, _spd1, _dir1, _spd2, _dir2, _amount){
	var _x1 = lengthdir_x(_spd1, _dir1);
	var _y1 = lengthdir_y(_spd1, _dir1);
	var _x2 = lengthdir_x(_spd2, _dir2);
	var _y2 = lengthdir_y(_spd2, _dir2);
	var _object_x = _id.x;
	var _object_y = _id.y;
	
	var _both_point_distance = point_distance(_x1, _y1, _x2, _y2);
	var _both_point_direction = point_direction(_x1, _y1, _x2, _y2);
	var _distance_multiplication_amount = _both_point_distance*_amount;
	
	var	_x3 = lengthdir_x(_distance_multiplication_amount, _both_point_direction) + _x1 + _object_x;
	var _y3 = lengthdir_y(_distance_multiplication_amount, _both_point_direction) + _y1 + _object_y;
	
	var _speed = point_distance(_object_x, _object_y, _x3, _y3);
	var _direction = point_direction(_object_x, _object_y, _x3, _y3);

	_id.speed = _speed;
	_id.direction = _direction;
}