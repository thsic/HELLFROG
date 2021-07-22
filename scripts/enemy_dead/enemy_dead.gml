// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_dead(_id, _do_dead_script){
	//死亡時処理 強制的に殺すこともできる
	if(_do_dead_script){
		
		var _x = _id.x;
		var _y = _id.y;
		stop_cursed_damage(ds_grid_get(global.ds_player_hp, o_gameMgr.now_hp_type, ePHP_param.KillStopCurseTime));
		create_lifesteal_orb(_x, _y, true);
		create_enemy_corpse(_x, _y, _id.sprite_index, _id.knockback_direction, 13);
		
		//ロック中に出現する敵のみ ロックカウントを早める
		if(_id.lock_number != -1){
			enemy_gain_spawn_count(60);
		}
		
		//敵倒すとチャージが最大になってクールダウン解消
		gun_fullcharge();
		
		//死亡時のサウンド
		se_play(SE_ENEMYDESTROY, 50, 1);
		
		//エフェクトリストを削除
		ds_list_destroy(_id.effect_list);
		
		if(global.floor_enemy_number_now <= 1){
			//ゴールを出現させる
			pop_goal(_x, _y);
		}
	}
	
	if(_id.soul_enemy){
		global.floor_enemy_number_now--;
	}
	instance_destroy(_id);
}