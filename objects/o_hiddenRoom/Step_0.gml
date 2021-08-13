

if(!collision_player){
	var _rnd = random(1);

	if(_rnd < dust_create_ratio){
	
		var _x = irandom_range(bbox_left, bbox_right);
		var _y = irandom_range(bbox_top, bbox_bottom);
	
		part_particles_create(dust_part_sys, _x, _y, dust_part_type, 1);
	
	
	}
}
