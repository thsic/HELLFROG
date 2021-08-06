ds_out_of_screen_enemy = ds_grid_create(8, 100);
ds_direction_arrow = ds_grid_create(8, 15);
detect_length = 400;
detect_draw_time_default = 30;

var _ds_height = ds_grid_height(ds_direction_arrow);
for(var i=0; i<_ds_height; i++){
	ds_grid_set(ds_direction_arrow, DirectionIndicator.Id, i, noone);
	ds_grid_set(ds_direction_arrow, DirectionIndicator.Direction, i, noone);
	ds_grid_set(ds_direction_arrow, DirectionIndicator.Distance, i, noone);
	ds_grid_set(ds_direction_arrow, DirectionIndicator.Color, i, noone);
	ds_grid_set(ds_direction_arrow, DirectionIndicator.DrawTime, i, 0);
}

enum DirectionIndicator{
	Id,
	Distance,
	Direction,
	DrawTime,
	Color,
	FarDetect,
}
