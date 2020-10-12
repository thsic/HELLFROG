// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function damage_to_player(_damage, _knockback){
	global.player_hp -= _damage;
	if(is_gameover() == true){
		gameover_script();
	}
	else{
		set_invincible_time(ds_grid_get(global.ds_player_other, ePO_type.normal, ePO_param.InvincibleTime));
	}
}