h_speed = 0;
v_speed = 0;
life_time++;

if(object_check_within_view_range(0, id)){
	on_screen = true;
}
else{
	on_screen = false;
}


if(knockback_enable == true
and invincible_enable == false){
	enemy_knockbacking();
}
enemies_collision();

enemy_dead_check();

if(global.gamestop == false){
	invincible_enable = false;
	enemy_state_manage();//ステート管理

	enemy_move_execution();//移動
}