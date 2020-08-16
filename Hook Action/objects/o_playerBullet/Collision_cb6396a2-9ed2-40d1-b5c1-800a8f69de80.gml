
var _collided = false;
//衝突した敵idの中からいま当たった敵を探す
for(var _number=0; _number<30; _number++){
	if(collided_enemy[_number] != 0){
		if(collided_enemy[_number] = other){
			_collided = true;
			//すでに衝突済みのため衝突判定をスルー
			break
		}
	}
	else{
		//衝突していなかったため衝突
		_collided = false;
		break
	}
	
}
if(_collided == false){
	
	collided_enemy[_number] = other;
	var _knockback_speed = ds_grid_get(global.ds_player_bullet, bullet_type, ePB_param.KnockbackPower);
	enemy_knockback_start(other, _knockback_speed, knockback_direction_for_enemy);
	if(collision_destroy == true){
		instance_destroy()
	}
}

