//移動の実行

var _vspeed = v_speed;
var _hspeed = h_speed;
var _collision_wall_speed_magnification = 0.5;//壁にぶつかった時の減衰度合い

//最後に壁との当たり判定
//x軸で当たり判定確認して衝突したら壁にくっつける
if(place_free(x, y+_vspeed) == false) {
    var dir = point_direction(0, 0, 0, _vspeed);
    move_contact_solid(dir, abs(_vspeed)); // 壁にぴったりくっつける
    _vspeed = 0;
	_hspeed /= _collision_wall_speed_magnification;
}
//y軸で当たり判定
if(place_free(x+_hspeed, y) == false) {
    var dir = point_direction(0, 0, _hspeed, 0);
    move_contact_solid(dir, abs(_hspeed)); // 壁にぴったりくっつける
    _hspeed = 0;
	_hspeed /= _collision_wall_speed_magnification;
}

x += _hspeed;
y += _vspeed;


