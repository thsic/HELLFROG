
if(variable_instance_exists(id, ds_out_of_screen_enemy)
and ds_exists(ds_out_of_screen_enemy, ds_type_grid)){
	ds_grid_destroy(ds_out_of_screen_enemy);
}

if(variable_instance_exists(id, ds_direction_arrow)
and ds_exists(ds_direction_arrow, ds_type_grid)){
	ds_grid_destroy(ds_direction_arrow);
}
