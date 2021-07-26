// Inherit the parent event
event_inherited();

if(curse_enable
and global.game_time mod 12 == 0){
	instance_create_layer(x, y, "Effects", o_cursedOrb);
	
}

