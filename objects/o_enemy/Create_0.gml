next_state = noone;
//初期ステート
if(lock_spawn_time = -1){
	state = EnemyState.Idle;//通常
}
else{
	state = EnemyState.WaitForSpawn;//ロック中に出現する敵
}
knockback_enable = false;
h_speed = 0;
v_speed = 0;

blue_aura_effect_enable = false;

max_hp = hp;

collision_size_for_hook = 0;
on_screen = false;
idle_mode = false;

movement_enable = false;
movement_cooldown = 0;

stun_time = 0;
stun_resistance = stun_resistance_default;
fire_direction = 0;

sprite_rightward = true;

life_time = 0;

invincible_time = 0;
invincible_enable = false;

idle_mode = false;

damage_flash_time = 0;
uni_add = shader_get_uniform(sh_enemy, "addValue");
hitstop_time = -1;

tackle_regist_time = 0;
//エフェクト関連
effect_list = ds_list_create();

//ビームにのみ関係
beam_enabled = false