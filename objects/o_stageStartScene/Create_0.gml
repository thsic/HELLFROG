//プレイヤーが着地してからのエフェクト等

draw_stage_name_time = draw_stage_name_time_base;
stagestart_lag = true;

//音
se_play(a_landing, 80, 1);

//砂埃生成
repeat(20){
	var _dust_size = random_range(0.7, 0.9);
	var _dust_life = random_range(25, 55);
	var _dust_speed = random_range(1, 3);
	var _dust_dir = random_range(-10, 10);
	if(irandom(1)){
		 _dust_dir += 180
	}

	
	
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
		
	part_particles_create(_psys, o_player.x, o_player.y+8, _ptype, 1);
}

