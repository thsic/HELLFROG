if(global.playerstop == false){
	//ヒットストップ
	if(hitstop_time >= 0){
		//ヒットストップ中は弾の速度が減衰しない
		speed = 0;
		if(hitstop_time == 0
		and collision_destroy){
			instance_destroy();
			
			
		}
		hitstop_time--;
	}
	else{
		bullet_speed -= speed_attenuation;
		bullet_speed *= bullet_speed_mag;
		if(bullet_speed < 0){
			instance_destroy();
		}
		speed = bullet_speed;
	}
	
	
}
else{
	speed = 0;
}

//チェックポイントバリアの中に居るときはバリアの外の弾が消える
if(global.gamestate == gamestate.incheckpointbarrier){
	var _nearest_cm = instance_nearest(x, y, o_checkPointMarker);
	var _cm_size = _nearest_cm.barrier_size;
	var _cm_x = _nearest_cm.x - _cm_size/2;
	var _cm_y = _nearest_cm.y - _cm_size/2;
	
	if(!is_in_place(_cm_x, _cm_y, _cm_x+_cm_size, _cm_y+_cm_size, x, y)){
		instance_destroy()
	}
}

//壁に衝突
if(instance_exists(o_normalWall)){
	var _id = instance_nearest(x, y, o_normalWall);
	if(is_in_place(_id.bbox_left, _id.bbox_top, _id.bbox_right, _id.bbox_bottom, x, y)){
		instance_destroy();
		var _size = random_range(6, 10);
		effect_create_blast(x, y, _size, 10, 5, wall_collision_effect_color, 1, 10);
	}


	//スピードが一定以上の場合弾判定を大きく 若干重いぞ！
	var _wallsize = abs(ceil(abs(_id.bbox_left) - abs(_id.bbox_right)))/2;
	if(speed >= _wallsize){
	
		var _count = ceil(speed / _wallsize);
	
		for(var i=0; i<_count; i++){
			var _xx = x+lengthdir_x(speed*(i/_count), direction);
			var _yy = y+lengthdir_y(speed*(i/_count), direction);
			var _id = instance_nearest(_xx, _yy, o_normalWall);
		
			if(is_in_place(_id.bbox_left, _id.bbox_top, _id.bbox_right, _id.bbox_bottom, _xx, _yy)){
				instance_destroy();
				var _size = random_range(6, 10);
				effect_create_blast(_xx, _yy, _size, 10, 5, wall_collision_effect_color, 1, 10);
			}
		}
	}
}

var _trail_diff = 20;
var _dis = point_distance(start_pos_x, start_pos_y, x, y);
if(charge_level == 2 
and _dis > trail_num * _trail_diff
and !collision_destroy){
	var _pt_type = part_type_create()
	var _pt_sys = part_system_create();
	part_type_sprite(_pt_type, sprite_index, 0, 0, false);
	part_type_alpha2(_pt_type, 0.5, 0);
	part_type_life(_pt_type, 20, 20);
	part_type_orientation(_pt_type, direction, direction, 0, 0, 0);
	
	var _x = start_pos_x + lengthdir_x(trail_num*_trail_diff, direction);
	var _y = start_pos_y + lengthdir_y(trail_num*_trail_diff, direction);
	part_particles_create(_pt_sys, _x, _y, _pt_type, 1);
	trail_num++;
}

