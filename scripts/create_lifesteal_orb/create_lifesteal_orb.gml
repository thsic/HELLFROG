
function create_lifesteal_orb(_x, _y, _increase_orb_quantity, _orb_quantity_mag){
	var _now_hp = global.player_hp
	var _max_hp = ds_grid_get(global.ds_player_hp, o_gameMgr.now_hp_type, ePHP_param.MaxHp);
	var _hp_ratio = _now_hp/_max_hp;
	
	var _anim_curve = animcurve_get_channel(ac_lifestealQuantity, 0);
	var _heal_ratio = animcurve_channel_evaluate(_anim_curve, _hp_ratio);//ヒールしたあとのhpratio
	var _after_heal_hp = _max_hp*_heal_ratio;//ヒール後のhp
	var _heal_point = _after_heal_hp - _now_hp;//回復量
	
	//-----回復量増加などのバフがあるならここで入れる--------
	
	//----
	
	var _orb_heal_point = 5;
	var _speed_max = 12;
	var _speed_min = 6;
	var _min_angle_size = 45;
	
	if(_increase_orb_quantity){
		var _orb_quantity = ceil(_heal_point/_orb_heal_point * _orb_quantity_mag);
	}
	else{
		var _orb_quantity = ceil(1 * _orb_quantity_mag);
	}
	
	debug_draw_variable(x, y, _orb_quantity, c_white, 60);
	var _base_direction = random(360);
	var _angle_size = clamp(360 / _orb_quantity, _min_angle_size, 360);
	
	//オーブ生成
	//いい感じにバラけるようにかつランダムに
	for(var i=0; i<_orb_quantity; i++){
		var _base_direction = _base_direction + i * _angle_size;
		var _direction = random_range(_base_direction+_angle_size/2, _base_direction-_angle_size/2);
		var _speed = random_range(_speed_max, _speed_min);
		
		with(instance_create_layer(_x, _y, "Effects", o_lifestealOrb)){
			diffusion_speed = _speed;
			diffusion_direction = _direction;
			heal_point = _orb_heal_point;
		}
	}
}