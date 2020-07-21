///@param direction,inertia
//移動の実行

var _direction = argument0;
var _inertia = argument1;//慣性がついてるかどうか
var _speed = argument2;

var _vspeed = lengthdir_y(_speed, _direction);
var _hspeed = lengthdir_x(_speed, _direction);

if(place_free(x+_hspeed, y) = false) {
    var dir = point_direction(0, 0, _hspeed, 0);
    move_contact_solid(dir, abs(_hspeed)); // 壁にぴったりくっつける
    _hspeed = 0;
}
if(place_free(x, y+_vspeed) = false) {
    var dir = point_direction(0, 0, 0, _vspeed);
    move_contact_solid(dir, abs(_vspeed)); // 壁にぴったりくっつける
    _vspeed = 0;
}


x += _hspeed;//壁に当たらなかった
y += _vspeed;



//var _collision_dicision = wall_collision_decision(x, y, _xtemp, _ytemp)
/*switch(_collision_dicision){
case 0:
	x = _xtemp;//壁に当たらなかった
	y = _ytemp;
	
break
case 1:
	move_contact_solid(_direction, abs(_speed));//壁にあたった
	x = _xtemp;
break
case 2:
	move_contact_solid(_direction, abs(_speed));
	y = _ytemp;
break
case 3:
	move_contact_solid(_direction, abs(_speed));
break	
}*/

