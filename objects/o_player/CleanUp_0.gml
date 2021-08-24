
if(variable_instance_exists(id, trail_data)
and ds_exists(trail_data, ds_type_grid)){
	ds_grid_destroy(trail_data);
}
