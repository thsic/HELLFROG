// Inherit the parent event
if(o_player.inertia_enable){
	/*event_inherited();
	
	dust_speed_base = other.speed;
	dust_direction_base = other.direction;
	*/
	break_enable = true;
	instance_destroy(pair_wall);
	instance_destroy();
}
