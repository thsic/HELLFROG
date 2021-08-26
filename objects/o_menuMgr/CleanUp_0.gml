if(variable_instance_exists(id, "button_param")
and ds_exists(button_param, ds_type_grid)){
	ds_grid_destroy(button_param);
}

