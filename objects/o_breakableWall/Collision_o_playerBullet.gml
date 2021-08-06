
if(!break_enable){
	with(other){
		hitstop_time = PLAYER_BULLET_HITSTOP_TIME;
		var _bullet_damage = ds_grid_get(global.ds_player_bullet, bullet_type, ePB_param.Damage);
	
	}
	
	hp -= _bullet_damage;
	flash_time = flash_time_base;
	
	//壁を消す
	if(hp <= 0){
		break_enable = true;
		dust_speed_base = other.speed;
		dust_direction_base = other.direction;
		
		instance_destroy();
	}
	
	
}