//プレイヤーの初期データ入れる

data_set_player_bullet(ePB_type.BulletRed, 20, 20, 0.3, 0.92, 6, 50, 3, fire_straight_ammo, 3);
data_set_player_bullet(ePB_type.BulletYellow, 17, 13, 0.3, 0.9, 70, 20, 10, fire_spread_ammo, 2);

data_set_player_gun(eG_type.CursedGun, 15, 2, 120, 15, eK_type.CursedGun, ePB_type.BulletRed, ePB_type.BulletYellow, ePB_type.Empty);

data_set_knockback(eK_type.CursedGun, 9, 0.04, 0.95, 7, 0.15);
data_set_knockback(eK_type.Hook, 6, 0.05, 0.93, 3, 0.18);
data_set_knockback(eK_type.HookSmall, 2, 0.04, 0.95, 0, 0.25);

data_set_hookshot(eHK_type.normal_hook, 90, 30, 10, 5, 1, 16, 24, 1);

