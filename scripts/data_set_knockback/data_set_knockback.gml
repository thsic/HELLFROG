///@param type,spd,decayFixedValue,decayPer,cantActionTime,inertiaForMovePower
function data_set_knockback(argument0, argument1, argument2, argument3, argument4, argument5) {
	//プレイヤーの弾
	var _knockback_type = argument0;//ノックバックタイプ
	var _speed = argument1;//ノックバック距離
	var _decay_fixed_value = argument2;//固定減衰値
	var _decay_per = argument3;//割合減衰値
	var _cant_action_time = argument4;//ノックバック開始からキー入力が効かないフレーム数
	var _inertia_for_move_power = argument5//慣性に対するキー移動の影響力

	ds_grid_set(global.ds_player_knockback, _knockback_type, eK_param.Speed, _speed);
	ds_grid_set(global.ds_player_knockback, _knockback_type, eK_param.decay_fixed_value, _decay_fixed_value);
	ds_grid_set(global.ds_player_knockback, _knockback_type, eK_param.decay_per, _decay_per);
	ds_grid_set(global.ds_player_knockback, _knockback_type, eK_param.CantActionTime, _cant_action_time);
	ds_grid_set(global.ds_player_knockback, _knockback_type, eK_param.InertiaForMovePower, _inertia_for_move_power);


	enum eK_type{
		CursedGun,
		TutorialGun,
		Hook,
		HookSmall,
		Empty,
		Spike,
	}

	enum eK_param{
		Speed,
		decay_fixed_value,
		decay_per,
		CantActionTime,
		InertiaForMovePower
	}


}
