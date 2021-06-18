h_speed = 0;
v_speed = 0;


if(object_check_within_view_range(0, id)){
	on_screen = true;
}
else{
	on_screen = false;
}


if(knockback_enable == true
and invincible_enable == false
and hitstop_time == -1){
	enemy_knockbacking();
}
enemies_collision();

enemy_dead_check();

if(global.gamestop == false){
	enemy_effect_manage()//エフェクト管理
	enemy_state_manage();//ステート管理
	enemy_param_manage()//敵パラメーター管理
	enemy_move_execution();//移動
}