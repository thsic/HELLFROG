// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_heal_hp(_heal_point){
	var _max_hp = ds_grid_get(global.ds_player_hp, ePHP_type.normal_hp, ePHP_param.MaxHp);
	global.player_hp += _heal_point;
	if(global.player_hp > _max_hp){
		global.player_hp = _max_hp;
	}
}