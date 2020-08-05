//ショットガン発射時の処理

#region 赤い弾
var _bullet_speed_max = ds_grid_get(global.ds_player_bullet, ePB_color.BulletRed, ePB_param.MaxSpeed);
var _bullet_speed_min = ds_grid_get(global.ds_player_bullet, ePB_color.BulletRed, ePB_param.MinSpeed);
var _bullet_diffusivity = ds_grid_get(global.ds_player_bullet, ePB_color.BulletRed, ePB_param.Diffusivity);
var _bullet_damage = ds_grid_get(global.ds_player_bullet, ePB_color.BulletRed, ePB_param.Damage);
var _bullet_speed_mag = ds_grid_get(global.ds_player_bullet, ePB_color.BulletRed, ePB_param.MagSpeed);
var _bullet_speed_atte = ds_grid_get(global.ds_player_bullet, ePB_color.BulletRed, ePB_param.AtteSpeed);
var _bullet_amount = ds_grid_get(global.ds_player_bullet, ePB_color.BulletRed, ePB_param.Amount);

//ここらへんに追加の処理いれて

for(var i=0; i<_bullet_amount; i++){
	var _bullet_speed = irandom_range(_bullet_speed_max, _bullet_speed_min);//速度決定
	//赤い弾はきれいに並ぶ
	var _bullet_direction_interval = _bullet_diffusivity/(_bullet_amount-1);//間隔測定
	var _bullet_direction_1st = -_bullet_diffusivity/2 + player_direction;//基準になる角度
	var _bullet_direction = _bullet_direction_1st + i * _bullet_direction_interval//基準になる角度から間隔をあける
	
	with(instance_create_layer(x, y, "PlayerBullet", o_playerBulletRed)){
		speed = _bullet_speed;
		direction = _bullet_direction;
		damage = _bullet_damage;
		speed_attenuation = _bullet_speed_atte;
		bullet_speed_mag = _bullet_speed_mag;
	}
}
#endregion

#region 黄色

var _bullet_speed_max = ds_grid_get(global.ds_player_bullet, ePB_color.BulletYellow, ePB_param.MaxSpeed);
var _bullet_speed_min = ds_grid_get(global.ds_player_bullet, ePB_color.BulletYellow, ePB_param.MinSpeed);
var _bullet_diffusivity = ds_grid_get(global.ds_player_bullet, ePB_color.BulletYellow, ePB_param.Diffusivity);
var _bullet_damage = ds_grid_get(global.ds_player_bullet, ePB_color.BulletYellow, ePB_param.Damage);
var _bullet_speed_mag = ds_grid_get(global.ds_player_bullet, ePB_color.BulletYellow, ePB_param.MagSpeed);
var _bullet_speed_atte = ds_grid_get(global.ds_player_bullet, ePB_color.BulletYellow, ePB_param.AtteSpeed);
var _bullet_amount = ds_grid_get(global.ds_player_bullet, ePB_color.BulletYellow, ePB_param.Amount);

//ここらへんに追加の処理いれて

for(var i=0; i<_bullet_amount; i++){
	var _bullet_speed = irandom_range(_bullet_speed_max, _bullet_speed_min);//速度決定
	var _bullet_direction = irandom_range(-_bullet_diffusivity/2, _bullet_diffusivity/2)+player_direction;//角度決定

	with(instance_create_layer(x, y, "PlayerBullet", o_playerBulletYellow)){
		
		speed = _bullet_speed;
		direction = _bullet_direction;
		damage = _bullet_damage;
		speed_attenuation = _bullet_speed_atte;
		bullet_speed_mag = _bullet_speed_mag;
	}
}
#endregion

if(can_knockback){
	//switch(now_shotgun){
	player_start_knockback(eK_type.cursed_gun);
	//}
}