
function data_set_player_gun(_gun_type, _charge_time, _charge_count, _charge_time_limit, _cooldown, _knockback_type,
_bullet_type_1, _bullet_type_2, _bullet_type_3, _sprite) {
	//プレイヤーの銃設定
	

	ds_grid_set(global.ds_player_gun, _gun_type, eG_param.ChargeTime, _charge_time);
	ds_grid_set(global.ds_player_gun, _gun_type, eG_param.ChargeCount, _charge_count);
	ds_grid_set(global.ds_player_gun, _gun_type, eG_param.ChargeTimeLimit, _charge_time_limit);
	ds_grid_set(global.ds_player_gun, _gun_type, eG_param.Cooldown, _cooldown);
	ds_grid_set(global.ds_player_gun, _gun_type, eG_param.KnockbackType, _knockback_type);
	ds_grid_set(global.ds_player_gun, _gun_type, eG_param.BulletType1, _bullet_type_1);
	ds_grid_set(global.ds_player_gun, _gun_type, eG_param.BulletType2, _bullet_type_2);
	ds_grid_set(global.ds_player_gun, _gun_type, eG_param.BulletType3, _bullet_type_3);
	ds_grid_set(global.ds_player_gun, _gun_type, eG_param.Sprite, _sprite);

	enum eG_type{
		CursedGun,
		TutorialGun,
		Empty,
	}

	enum eG_param{
		ChargeTime,
		ChargeCount,
		ChargeTimeLimit,
		Cooldown,
		KnockbackType,
		BulletType1,
		BulletType2,
		BulletType3,
		Sprite,
	}


}
