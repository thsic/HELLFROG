function data_player_parameter_default() {
	//プレイヤーの初期データ入れる

	data_set_player_bullet(ePB_type.BulletRed, 20, 20, 0.3, 0.92, 6, 20, 3, fire_straight_ammo, 1, 25);
	data_set_player_bullet(ePB_type.BulletYellow, 17, 13, 0.3, 0.9, 70, 8, 10, fire_spread_ammo, 0.3, 10);

	data_set_player_gun(eG_type.CursedGun, 12, 2, 120, 15, eK_type.CursedGun, ePB_type.BulletRed, ePB_type.BulletYellow, ePB_type.Empty, s_cursedGun);
	data_set_player_gun(eG_type.TutorialGun, 60, 2, 120, 20, eK_type.CursedGun, ePB_type.BulletRed, ePB_type.BulletYellow, ePB_type.Empty, s_mozandiqueHand);
	data_set_player_gun(eG_type.Empty, 15, 2, 120, 20, eK_type.Empty, ePB_type.Empty, ePB_type.Empty, ePB_type.Empty, noone);
	
	data_set_knockback(eK_type.CursedGun, 9, 0.09, 0.9, 7, 0.15);
	data_set_knockback(eK_type.Empty, 0, 1, 0, 0, 0);
	data_set_knockback(eK_type.Hook, 6, 0.05, 0.93, 3, 0.18);
	data_set_knockback(eK_type.HookSmall, 2, 0.04, 0.95, 0, 0.25);
	data_set_knockback(eK_type.Spike, 9, 0.09, 0.9, 7, 0.15);
	
	data_set_hookshot(eHK_type.normal_hook, 100, 30, 10, 7, 1, 24, 36, 1, 10, 2, 200);

	data_set_player_hp(ePHP_type.normal_hp, 100, 30, 16, 8, 4, 2, 45);//lifestealRatioは現在いじっても意味ない
	data_set_player_other(ePO_type.normal, 70, 5, 0);
	
	//data_set_player_hp(ePHP_type.normal_hp, 100, 30, 20, 12, 6, 2, 45)
}
