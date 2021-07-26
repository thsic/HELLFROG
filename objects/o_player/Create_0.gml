player_direction = 0;//point_direction(x, y, mouse_x, mouse_y);

can_knockback = true;
inertia_enable = false;
knockback_time = false;
knockback_power = 0;
inertia_speed = 0;
knockback_time_limit = 0;
knockback_speed = 0;

//現在の装備など
now_hook = eHK_type.normal_hook;
now_shotgun = eG_type.CursedGun;
now_knockback_type = noone;

//銃関連
gun_charge_level = noone;
gun_charge_enable = false;
gun_charge_time = 0;
gun_max_charge_time = 0;
gun_cooldown = 0;

hookshot_cooldown = 0;
hook_state = hookState.Idle;
can_hookshot = false;
hook_point_x = x;
hook_point_y = y;
hook_length = 0;

//移動
player_move_speed = 0;
player_move_direction = 0;

//その他
invincible_time = 0;
invincible_enable = false;
invincible_time_default = 0

//描画
look_right = true;
gameover_knockback_direction = 0;//ゲームオーバー時のノックバック方向
gameover_knockup_time = 0;
subimage = 0;
lifesteal_anim_time = 5;
walk_time = 0;//プレイヤーがあるき始めてからの時間
draw_player = true;//プレイヤーを描画するかどうか

//エフェクト
on_slow_field_time = 0;
player_slow_time = 0;
drawed_charge_fin_effect = false;
add_curse_point = false;
curse_point = 0;
curse_level = 0;

//残像
trail_time = 0;
trail_data = ds_grid_create(8, 30);
//タックル
tackle_time = 0;

//test
debug_draw_inertiaspd = 0;
debug_draw_movespd = 0;
debug_draw_synspd = 0;
inertia_direction = 0;
debug_intermediate_point_x = 0;
debug_intermediate_point_y = 0;

enum LookDirection{
	Right,
	Left,
}