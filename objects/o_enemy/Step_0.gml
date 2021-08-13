h_speed = 0;
v_speed = 0;


if(object_check_within_view_range(0, id)){
	on_screen = true;
}
else{
	on_screen = false;
}

//プレイヤーと距離が離れているとアイドルモードにする
var _dis_for_player = point_distance(x, y, o_player.x, o_player.y);
if(_dis_for_player < 400){
	idle_mode = false;
}
else{
	idle_mode = true;
}




if(!global.gamestop){
	if(idle_mode == false){
		if(knockback_enable == true
		and invincible_enable == false
		and hitstop_time == -1){
			enemy_knockbacking();
		}
		if(collision_repulsive){//敵同士がぶつかったときに移動させるかどうか
			enemies_collision();
		}

		enemy_dead_check();
		enemy_effect_manage()//エフェクト管理
		enemy_param_manage()//敵パラメーター管理
	
	}
	enemy_state_manage();//ステート管理
	enemy_move_execution();//移動
}