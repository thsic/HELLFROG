player_direction = point_direction(x, y, mouse_x, mouse_y);

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

//test
debug_draw_inertiaspd = 0;
debug_draw_movespd = 0;
debug_draw_synspd = 0;
inertia_direction = 0;
debug_intermediate_point_x = 0;
debug_intermediate_point_y = 0;
