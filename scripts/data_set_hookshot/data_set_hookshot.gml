///@param eHKtype,range,cd,shootspd,shrinkspdMax,ShrinkSpdDef,coSize4enemy,coSize4wall,shrinkAcce,damage,KBforEnemyPower
function data_set_hookshot(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11) {
	//プレイヤーの弾
	var _hook_type = argument0;//フックタイプ
	var _range = argument1;//射程
	var _cooldown = argument2;//クールダウン
	var _shooting_speed = argument3;//発射スピード
	var _shrink_speed_max = argument4;//ロープを巻き取るスピード最大値
	var _shrink_speed_default = argument5
	var _collision_size_for_enemy = argument6//敵に対しての当たり判定
	var _collision_size_for_wall = argument7//壁に対しての当たり判定、ロープが伸び切った瞬間にしか使われない
	var _shrink_acceleration = argument8//巻き取りの加速度
	var _damage = argument9;
	var _knockback_for_enemy_power = argument10;
	var _stun_damage = argument11;//スタン値

	ds_grid_set(global.ds_player_hook, _hook_type, eHK_param.Range, _range);
	ds_grid_set(global.ds_player_hook, _hook_type, eHK_param.Cooldown, _cooldown);
	ds_grid_set(global.ds_player_hook, _hook_type, eHK_param.ShootingSpeed, _shooting_speed);
	ds_grid_set(global.ds_player_hook, _hook_type, eHK_param.ShrinkSpeedMax, _shrink_speed_max);
	ds_grid_set(global.ds_player_hook, _hook_type, eHK_param.ShrinkSpeedDefault, _shrink_speed_default);
	ds_grid_set(global.ds_player_hook, _hook_type, eHK_param.CollisionSizeForEnemy, _collision_size_for_enemy);
	ds_grid_set(global.ds_player_hook, _hook_type, eHK_param.CollisionSizeForWall, _collision_size_for_wall);
	ds_grid_set(global.ds_player_hook, _hook_type, eHK_param.ShrinkAcceleration, _shrink_acceleration);
	ds_grid_set(global.ds_player_hook, _hook_type, eHK_param.Damage, _damage);
	ds_grid_set(global.ds_player_hook, _hook_type, eHK_param.KnockbackForEnemyPower, _knockback_for_enemy_power);
	ds_grid_set(global.ds_player_hook, _hook_type, eHK_param.StunDamage, _stun_damage);

	enum eHK_type{
		normal_hook,
	}

	enum eHK_param{
		Range,
		Cooldown,
		ShootingSpeed,
		ShrinkSpeedMax,
		ShrinkSpeedDefault,
		CollisionSizeForEnemy,
		CollisionSizeForWall,
		ShrinkAcceleration,
		Damage,
		KnockbackForEnemyPower,
		StunDamage,
	}


}
