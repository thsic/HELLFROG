//
function enemy_cursed_totem_passive(){
	var _dis_for_player = point_distance(x, y, o_player.x, o_player.y);
	if(state != EnemyState.Stun
	and _dis_for_player < weapon_range){
		o_player.add_curse_point = true;
		curse_enable = true;
	}
	else{
		curse_enable = false;
	}
}