if(damage_enable == true 
and o_player.invincible_enable == false){
	damage_to_player(damage, 1, direction);
	damage_enable = false;
	debug_draw_variable(x, y, object_get_name(object_index), c_white, 20)
}
