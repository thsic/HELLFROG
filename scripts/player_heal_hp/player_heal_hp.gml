// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_heal_hp(_heal_point, _effect_number){
	var _max_hp = ds_grid_get(global.ds_player_hp, o_gameMgr.now_hp_type, ePHP_param.MaxHp);
	global.player_hp += _heal_point;
	if(global.player_hp > _max_hp){
		global.player_hp = _max_hp;
	}
	
	//ライフスティール時のプレイヤーのグラ変化
	o_player.subimage = 1;
	var _color = $FF37992D;
	var _part_system = part_system_create()
	var _part = part_type_create();
	part_type_sprite(_part, s_lightEffect, false, false, false);
	part_type_scale(_part, 0.3, 0.3);
	part_type_color1(_part, _color);
	part_type_speed(_part, 0.8, 1.2, 0, 0);
	part_type_direction(_part, 85, 95, 0, 0);
	part_type_life(_part, 8, 16);
	
	var _px = o_player.x;
	var _py = o_player.y-8;
	var _range = 8;
	repeat(_effect_number){
		var _x = irandom_range(_px-_range, _px+_range);
		var _y = irandom_range(_py-_range, _py+_range);
		/*_x = o_player.x;
		_y = o_player.y;*/
		part_particles_create(_part_system, _x, _y, _part, 1);
	}
	
}