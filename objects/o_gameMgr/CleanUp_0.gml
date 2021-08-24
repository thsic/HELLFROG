if(variable_instance_exists(id, ds_enemy_default_position)
and ds_exists(ds_enemy_default_position, ds_type_grid)){
	ds_grid_destroy(ds_enemy_default_position);
}
if(variable_instance_exists(id, ds_obj_default_position)
and ds_exists(ds_obj_default_position, ds_type_grid)){
	ds_grid_destroy(ds_obj_default_position);
}

