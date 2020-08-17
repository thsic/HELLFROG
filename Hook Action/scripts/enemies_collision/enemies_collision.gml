//敵同士の距離が近い時に少し距離を離す

var _collision_length = mean(sprite_height, sprite_width)*1.5;
var _enemy_number = instance_number(o_enemy);
var _repulsive_force = 0.5;//反発力
var _hspeed_temp = 0;
var _vspeed_temp = 0;

for(var i=0; i<_enemy_number; i++){
	var _target_id = instance_find(o_enemy, i);
	
	//敵が画面内に居るかどうか確認　target_id が自分以外
	if(_target_id.on_screen == true and id != _target_id){
		var _target_x = _target_id.x;
		var _target_y = _target_id.y;
		var _distance = point_distance(x, y, _target_x, _target_y);
		
		//衝突が発生する距離内にいるかどうか確認
		if(_distance < _collision_length){
			
			//衝突している　近ければ近いほどspeedがrepulsive_forceの値で加算される
			var _direction = point_direction(x, y, _target_x, _target_y)+180;
			for(var j=0; j<3; j++){
				var _power = power(2, j+1);
				if(_distance < _collision_length/_power){
	
					_hspeed_temp += lengthdir_x(_repulsive_force, _direction);
					_vspeed_temp += lengthdir_y(_repulsive_force, _direction);
				}
				else{
					//forからぬける
					break
				}
			}
		}
	}
}

//軽いほど衝突の影響が多くなる
_hspeed_temp /= weight;
_vspeed_temp /= weight;

h_speed += _hspeed_temp;
v_speed += _vspeed_temp;
