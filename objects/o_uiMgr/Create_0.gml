if(room == r_void){
	instance_destroy();
}

ds_out_of_screen_enemy = ds_grid_create(8, 100);
ds_direction_arrow = ds_grid_create(8, 15);
detect_length = 500;
detect_draw_time_default = 30;
popup_damage = 0;
popup_time = 0;

var _ds_height = ds_grid_height(ds_direction_arrow);
for(var i=0; i<_ds_height; i++){
	ds_grid_set(ds_direction_arrow, DirectionIndicator.Id, i, noone);
	ds_grid_set(ds_direction_arrow, DirectionIndicator.Direction, i, noone);
	ds_grid_set(ds_direction_arrow, DirectionIndicator.Distance, i, noone);
	ds_grid_set(ds_direction_arrow, DirectionIndicator.Color, i, noone);
	ds_grid_set(ds_direction_arrow, DirectionIndicator.DrawTime, i, 0);
}


//アルターではめっちゃ遠いやつも見える
if(variable_global_exists("now_stage_param")){
	if(global.now_stage_param[STAGEPARAM.STAGETYPE] == STAGETYPE.ALTAR){
		detect_length = 2000;
	}
}
enum DirectionIndicator{
	Id,
	Distance,
	Direction,
	DrawTime,
	Color,
	FarDetect,
}
