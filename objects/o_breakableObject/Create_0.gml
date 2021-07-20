
if(sprite_index == noone){
	instance_destroy();
}

break_enable = false;
dust_setting_enable = false;
wall_collision = false;

subimage = irandom(sprite_get_number(sprite_index));
dust_number = irandom_range(dust_num_min, dust_num_max);

dust_param = ds_grid_create(dust_number, 10);
var _spr_w = sprite_get_width(sprite_index);
var _spr_h = sprite_get_height(sprite_index);

for(var i=0; i<dust_number; i++){
	dust_param[# i, DUSTPARAM.X] = random_range(x-_spr_w/2, x+_spr_w/2);
	dust_param[# i, DUSTPARAM.Y] = random_range(y-_spr_h/2, y+_spr_h/2);
	dust_param[# i, DUSTPARAM.ENABLE] = false;
	dust_param[# i, DUSTPARAM.SPRITE_DIR] = irandom(360);
}


enum DUSTPARAM{
	X,
	Y,
	SPEED,
	DIRECTION,
	ENABLE,
	SPRITE_DIR
}