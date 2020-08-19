///@param eGtype,chargeTime,chargeCount,chargeTimeLimit,cd,knockbackType,bullet1,bullet2,bullet3
function data_set_player_gun() {
	//プレイヤーの銃設定
	var _gun_type = argument[0];//銃タイプ
	var _charge_time = argument[1];//1チャージの時間
	var _charge_count = argument[2];//チャージ段階の数 最低でも1
	var _charge_time_limit = argument[3];//チャージし続けれる時間、チャージが最大まで溜まってから開始する
	var _cooldown = argument[4];//クールダウン、チャージ開始からタイマーがスタートする
	var _knockback_type = argument[5];//ノックバックの種類
	var _bullet_type_1 = argument[6];//弾1
	var _bullet_type_2 = argument[7];//2
	var _bullet_type_3 = argument[8];//3

	switch(argument_count){
	case 7:
		_bullet_type_2 = ePB_type.Empty;
	case 8:
		_bullet_type_3 = ePB_type.Empty;
	break
	}

	ds_grid_set(global.ds_player_gun, _gun_type, eG_param.ChargeTime, _charge_time);
	ds_grid_set(global.ds_player_gun, _gun_type, eG_param.ChargeCount, _charge_count);
	ds_grid_set(global.ds_player_gun, _gun_type, eG_param.ChargeTimeLimit, _charge_time_limit);
	ds_grid_set(global.ds_player_gun, _gun_type, eG_param.Cooldown, _cooldown);
	ds_grid_set(global.ds_player_gun, _gun_type, eG_param.KnockbackType, _knockback_type);
	ds_grid_set(global.ds_player_gun, _gun_type, eG_param.BulletType1, _bullet_type_1);
	ds_grid_set(global.ds_player_gun, _gun_type, eG_param.BulletType2, _bullet_type_2);
	ds_grid_set(global.ds_player_gun, _gun_type, eG_param.BulletType3, _bullet_type_3);


	enum eG_type{
		CursedGun,
		TutorialGun,
	
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
	}


}
