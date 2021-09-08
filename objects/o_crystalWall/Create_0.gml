
if(crystal_num == -1){
	debug_message("crystal_numが設定されてません");
	instance_destroy();
	
}

pair_wall = instance_create_layer(x, y, "MapObject", o_normalWall);