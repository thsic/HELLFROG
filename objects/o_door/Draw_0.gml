
var _lock = false;
if(!exit_door and wall_enable){
	_lock = true;
}

if(door_lock or _lock){
	draw_sprite_ext(door_sprite, subimage, x, y, 1, 1, 0, c_white, 1);
}
