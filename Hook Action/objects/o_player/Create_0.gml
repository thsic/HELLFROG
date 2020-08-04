player_direction = point_direction(x, y, mouse_x, mouse_y);

can_knockback = true;
knockback_start = false;
inertia_enable = false;
knockback_time = false;
knockback_power = 0;
inertia_speed = 0;
knockback_time_limit = 0;
knockback_speed = 0;

now_hook = eHK_type.normal_hook;
now_shotgun = eSGK_type.cursed_gun;

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
debug_wall_corner_point_x = 0
debug_wall_corner_point_y = 0
