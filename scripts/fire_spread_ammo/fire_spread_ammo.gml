///@param ePB_type
function fire_spread_ammo(argument0) {

	var _bullet_type = argument0;

	var _bullet_speed_max = ds_grid_get(global.ds_player_bullet, _bullet_type, ePB_param.MaxSpeed);
	var _bullet_speed_min = ds_grid_get(global.ds_player_bullet, _bullet_type, ePB_param.MinSpeed);
	var _bullet_diffusivity = ds_grid_get(global.ds_player_bullet, _bullet_type, ePB_param.Diffusivity);
	var _bullet_damage = ds_grid_get(global.ds_player_bullet, _bullet_type, ePB_param.Damage);
	var _bullet_speed_mag = ds_grid_get(global.ds_player_bullet, _bullet_type, ePB_param.MagSpeed);
	var _bullet_speed_atte = ds_grid_get(global.ds_player_bullet, _bullet_type, ePB_param.AtteSpeed);
	var _bullet_amount = ds_grid_get(global.ds_player_bullet, _bullet_type, ePB_param.Amount);

	switch(gun_charge_level){
	case 0:
		//弾の数を半減させる、切り捨て
		_bullet_amount = floor(_bullet_amount/2);
		_bullet_speed_max *= 0.5;
		_bullet_speed_min *= 0.5;
	break
	case 1:
		_bullet_speed_max *= 0.9;
		_bullet_speed_min *= 0.9;
	break
	}

	//ここらへんに追加の処理いれて

	for(var i=0; i<_bullet_amount; i++){
		var _bullet_speed = irandom_range(_bullet_speed_max, _bullet_speed_min);//速度決定
		var _bullet_direction = irandom_range(-_bullet_diffusivity/2, _bullet_diffusivity/2)+player_direction;//角度決定
		var _knockback_direction = player_direction//angle_difference(_bullet_direction, player_direction);
	
		create_bullet(_bullet_speed, _bullet_direction, _bullet_type, _bullet_damage, _bullet_speed_atte, _bullet_speed_mag, _knockback_direction, true, o_playerBulletYellow);
	}



}
