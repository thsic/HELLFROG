// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function data_set_player_other(_type, _inv_time, _knockback_inv_time, _hook_inv_time){
	ds_grid_set(global.ds_player_other, _type, ePO_param.InvincibleTime, _inv_time);
	ds_grid_set(global.ds_player_other, _type, ePO_param.GunInvTime, _knockback_inv_time);
	ds_grid_set(global.ds_player_other, _type, ePO_param.HookInvTime, _hook_inv_time);


	enum ePO_type{
		normal,
	}

	enum ePO_param{
		InvincibleTime,
		GunInvTime,
		HookInvTime,
	}
}

