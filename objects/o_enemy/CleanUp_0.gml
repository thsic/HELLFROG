
if(variable_instance_exists(id, "effect_list")
and ds_exists(effect_list, ds_type_grid)){
	ds_list_destroy(effect_list);
}