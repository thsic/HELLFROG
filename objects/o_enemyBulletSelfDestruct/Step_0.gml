if(global.gamestop == false){
	var _dis = point_distance(x, y, o_player.x, o_player.y);
	if(_dis < blast_size
	and !o_player.invincible_enable){
		var _dir = point_direction(x, y, o_player.x, o_player.y);
		damage_to_player(damage, 1, _dir);
	}
	
	var _x = x - blast_size;
	var _y = y - blast_size;
	effect_create_blast(_x, _y, blast_size, 15, 5, blast_color, 1, 12);
	instance_destroy();
}
