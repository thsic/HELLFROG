//慣性速度の減衰

var _inertia_default_speed = inertia_speed;

var _decay_value = ds_grid_get(global.ds_player_knockback, eSGK_type.cursed_gun, eSGK_param.decay_fixed_value);
var _decay_per = ds_grid_get(global.ds_player_knockback, eSGK_type.cursed_gun, eSGK_param.decay_per);


var _inertia_speed = _inertia_default_speed;
_inertia_speed *= _decay_per;
_inertia_speed -= _decay_value;

if(_inertia_speed < 0){
	_inertia_speed = 0;
	inertia_enable = false;
}
inertia_speed = _inertia_speed;

