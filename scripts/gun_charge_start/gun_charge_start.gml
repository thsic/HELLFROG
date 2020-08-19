function gun_charge_start() {
	//銃の溜め開始

	gun_charge_enable = true;
	gun_charge_level = 0;
	gun_charge_time = 0;
	gun_cooldown = ds_grid_get(global.ds_player_gun, now_shotgun, eG_param.Cooldown);




}
