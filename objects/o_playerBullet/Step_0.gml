if(global.playerstop == false){
	bullet_speed -= speed_attenuation;
	bullet_speed *= bullet_speed_mag;
	if(bullet_speed < 0){
		instance_destroy();
	}
	speed = bullet_speed;
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

var _id = instance_nearest(x, y, o_normalWall);
if(is_in_place(_id.bbox_left, _id.bbox_top, _id.bbox_right, _id.bbox_bottom, x, y)){
	instance_destroy();
}

