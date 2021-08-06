// Inherit the parent event
event_inherited();

if(curse_enable
and global.game_time mod 12 == 0){
	instance_create_layer(x, y, "Effects", o_cursedOrb);
	
}
var _rnd = random(1)
if(curse_enable
and _rnd <= 0.2
and global.game_time mod 8 = 0){
	instance_create_layer(x, y, "Effects", o_cursedOrb);
}
