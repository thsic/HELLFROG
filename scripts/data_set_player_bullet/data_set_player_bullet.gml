///@param type,maxspd,minspd,attespd,magspd,diff,dmg,amount,script,Kpower
function data_set_player_bullet(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10) {
	//プレイヤーの弾
	var _bullet_type = argument0;//弾タイプ
	var _maxspeed = argument1;//初期スピード最大値
	var _minspeed = argument2;//初期スピード最低値
	var _attenuation_speed = argument3;//1fで減衰するスピード
	var _magnification_speed = argument4;//1fごとにこの値だけ乗算される
	var _diffusivity = argument5;//拡散度
	var _damage = argument6;//弾ダメージ
	var _amount = argument7;//一度に発射される数
	var _script = argument8;//弾の発射に使用するスクリプト
	var _knockback_power = argument9;//ノックバックさせる力
	var _stun_damage = argument10;//スタン値

	ds_grid_set(global.ds_player_bullet, _bullet_type, ePB_param.MaxSpeed, _maxspeed);
	ds_grid_set(global.ds_player_bullet, _bullet_type, ePB_param.MinSpeed, _minspeed);
	ds_grid_set(global.ds_player_bullet, _bullet_type, ePB_param.AtteSpeed, _attenuation_speed);
	ds_grid_set(global.ds_player_bullet, _bullet_type, ePB_param.MagSpeed, _magnification_speed);
	ds_grid_set(global.ds_player_bullet, _bullet_type, ePB_param.Diffusivity, _diffusivity);
	ds_grid_set(global.ds_player_bullet, _bullet_type, ePB_param.Damage, _damage);
	ds_grid_set(global.ds_player_bullet, _bullet_type, ePB_param.Amount, _amount);
	ds_grid_set(global.ds_player_bullet, _bullet_type, ePB_param.Script, _script);
	ds_grid_set(global.ds_player_bullet, _bullet_type, ePB_param.KnockbackPower, _knockback_power);
	ds_grid_set(global.ds_player_bullet, _bullet_type, ePB_param.StunDamage, _stun_damage);
	

	enum ePB_type{
		Empty,
		BulletRed,
		BulletYellow,
	
	}

	enum ePB_param{
		MaxSpeed,
		MinSpeed,
		AtteSpeed,
		MagSpeed,
		Diffusivity,
		Damage,
		Amount,
		Script,
		KnockbackPower,
		StunDamage,
	
	}


}
