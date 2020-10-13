// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_dead(_id, _do_dead_script){
	//死亡時処理 強制的に殺すこともできる
	if(_do_dead_script){
		stop_cursed_damage(ds_grid_get(global.ds_player_hp, o_gameMgr.now_hp_type, ePHP_param.KillStopCurseTime));
		create_lifesteal_orb()
	}
	
	instance_destroy(_id);
}