magnet_time = 0;
life_time = 90;

effect_number = 3;
var _dir = point_direction(x, y, o_player.x, o_player.y);
for(var i=0; i<effect_number; i++){
	effect_x[i] = x;
	effect_y[i] = y;
	effect_dir[i] = _dir;
}

orb_speed = 0;

