// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_cursed_damage(){
	var _phase2_hpratio = 0.3;
	var _phase3_hpratio = 0.1;
	var _phase4_hpratio = 0.03;
	
	var _max_hp = ds_grid_get(global.ds_player_hp, o_gameMgr.now_hp_type, ePHP_param.MaxHp);
	var _now_hp_ratio = global.player_hp/_max_hp;
	
	var _now_phase = 1;
	if(_phase2_hpratio >= _now_hp_ratio){
		_now_phase = 2;
	}
	if(_phase3_hpratio >= _now_hp_ratio){
		_now_phase = 3;
	}
	if(_phase4_hpratio >= _now_hp_ratio){
		_now_phase = 4;
	}
 
	
	switch(_now_phase){
	case 1:
		var _damage_per_second = ds_grid_get(global.ds_player_hp, o_gameMgr.now_hp_type, ePHP_param.Dec1);
	break
	case 2:
		var _damage_per_second = ds_grid_get(global.ds_player_hp, o_gameMgr.now_hp_type, ePHP_param.Dec2);
	break
	case 3:
		var _damage_per_second = ds_grid_get(global.ds_player_hp, o_gameMgr.now_hp_type, ePHP_param.Dec3);
	break
	case 4:
		var _damage_per_second = ds_grid_get(global.ds_player_hp, o_gameMgr.now_hp_type, ePHP_param.Dec4);
	break
	}
	
	//アシストモードのダメージ軽減/増加
	_damage_per_second *= global.dot_damage;
	
	var _damage = _damage_per_second/60;
	
	damage_to_player(_damage, 0, o_player.player_direction+180);
}