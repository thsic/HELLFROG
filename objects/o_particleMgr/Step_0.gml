

var _rnd = random(1);

if(_rnd < dust_create_ratio){
	
	var _x = global.camera_x - irandom_range(0, global.camera_width);
	var _y = global.camera_y - irandom_range(0, global.camera_height);
	
	part_particles_create(dust_part_sys, _x, _y, dust_part_type, 1);
	
	
}

//debug_draw_rectnagle(global.camera_x, global.camera_y, global.camera_x-global.camera_width, global.camera_y-global.camera_height, true, c_white, 3)