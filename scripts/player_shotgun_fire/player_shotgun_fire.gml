function player_shotgun_fire() {
	//ショットガン発射時の処理
	
	//弾を生成する
	var _bullet_type_1 = ds_grid_get(global.ds_player_gun, now_shotgun, eG_param.BulletType1);
	var _bullet_type_2 = ds_grid_get(global.ds_player_gun, now_shotgun, eG_param.BulletType2);
	var _bullet_type_3 = ds_grid_get(global.ds_player_gun, now_shotgun, eG_param.BulletType3);
	
	for(var i=0; i<3; i++){
		switch(i){
		case 0:
			var _bullet_type = _bullet_type_1;
		break
		case 1:
			var _bullet_type = _bullet_type_2;
		break
		case 2:
			var _bullet_type = _bullet_type_3;
		break
		}
	
		if(_bullet_type != ePB_type.Empty){
			var _script = ds_grid_get(global.ds_player_bullet, _bullet_type, ePB_param.Script);
			script_execute(_script, _bullet_type);
		}
	}

	if(can_knockback){
		var _knockback_type = ds_grid_get(global.ds_player_gun, now_shotgun, eG_param.KnockbackType);
		player_start_knockback(_knockback_type);
	}
	
	//銃撃ったときの振動と音
	var _shake_dir = player_direction+180;
	switch(gun_charge_level){
	case 0:
		se_play(SE_SHOTLV0, 50, AUDIO_SIMUL_DECAY_DEFAULT);
		start_screen_shake(3, 3, _shake_dir);
	break
	case 1:
		se_play(SE_SHOTLV1, 50, AUDIO_SIMUL_DECAY_DEFAULT);
		start_screen_shake(5, 4, _shake_dir);
	break
	case 2:
		se_play(SE_SHOTLV2, 50, AUDIO_SIMUL_DECAY_DEFAULT);
		start_screen_shake(12, 6, _shake_dir);
	break
	}
	
	//クールダウンセット
	gun_set_cooldown(ds_grid_get(global.ds_player_gun, now_shotgun, eG_param.Cooldown));
	//無敵時間
	set_invincible_time(ds_grid_get(global.ds_player_other, ePO_type.normal, ePO_param.GunInvTime));
}
