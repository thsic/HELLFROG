
var _ds_w = 60;
global.ds_footprint = ds_grid_create(_ds_w, 10);

//埋める
for(var i=0; i<_ds_w; i++){
	global.ds_footprint[# i, FOOTPRINT.X] = 0;
	global.ds_footprint[# i, FOOTPRINT.Y] = 0;
	global.ds_footprint[# i, FOOTPRINT.NUMBER] = 0;
	global.ds_footprint[# i, FOOTPRINT.ENABLE] = false;
	
}


enum FOOTPRINT{
	X,
	Y,
	NUMBER,
	ENABLE,
	
}