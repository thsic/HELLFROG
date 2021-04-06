subimage = 0;
door_lock = false;
lock_time = 0;
wall_enable = false;
door_reset = false;


if(frontside){
	door_sprite = s_door1;
}
else{
	door_sprite = s_door2;
}

for(var i=0 ; i<2; i++){
	wall_id[i] = noone;
}

