//
function player_dust_manage(){
	var _dust_enable = false;
	if(walk_time > 0){
		if(random(1) < 0.1){
			_dust_enable = true
			var _dust_size = random_range(0.6, 0.8);
			var _dust_life = random_range(20, 30);
			var _dust_speed = random_range(0.5, 0.9);
			var _dust_dir = player_move_direction + 180 + random_range(-30, 30);
		}
		
	}
	if(inertia_enable and hook_state != hookState.Shrink){
		if(random(1) < 0.1 * (player_move_speed / PLAYER_SPEED_DEFAULT) * 1.5){
			_dust_enable = true
			var _dust_size = random_range(0.7, 0.9);
			var _dust_life = random_range(25, 35);
			var _dust_speed = random_range(1, 1.7);
			var _dust_dir = player_move_direction + random_range(-30, 30);
		}
	}
	
	if(_dust_enable){
		
		
		var _ptype = part_type_create();
		var _psys = part_system_create();
		part_type_size(_ptype, _dust_size, _dust_size, -0.02, 0);
		part_type_life(_ptype, _dust_life, _dust_life);
		part_type_color1(_ptype, dust_color);
		part_type_speed(_ptype, _dust_speed, _dust_speed, -0.03, 0);
		part_type_direction(_ptype, _dust_dir, _dust_dir, 0, 0);
		part_type_alpha1(_ptype, 1);
		part_type_sprite(_ptype, s_whiteCircle, false, false, false);
		
		part_system_layer(_psys, "MapObject");
		
		part_particles_create(_psys, x, y+8, _ptype, 1);
		
		part_type_destroy(_ptype);
		part_system_destroy(_psys);
		
	}
}