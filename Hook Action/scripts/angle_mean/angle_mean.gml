///@param ang1, ang2
//角度の平均

var _angle1 = argument0;
var _angle2 = argument1;

var _dif = angle_difference(_angle1, _angle2);
var _min = min(_angle1, _angle2);

var _result = _min + _dif/2;
return _result

