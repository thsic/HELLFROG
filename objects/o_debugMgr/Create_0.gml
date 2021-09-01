

pl = o_player;
debug_draw_movement = false;
debug_window = false;

invincible_button = noone;
stop_curse_button = noone;

global.debug_invincible_mode = false;
global.debug_stop_curse_mode = false;
global.debug_wall_collision = false;

if(!debug_mode){
	instance_destroy();
}