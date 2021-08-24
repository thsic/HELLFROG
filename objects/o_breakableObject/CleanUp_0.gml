
if(variable_instance_exists(dust_param, "dust_param")
and ds_exists(dust_param, ds_type_grid)){
	ds_grid_destroy(dust_param);
}