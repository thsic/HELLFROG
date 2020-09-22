function create_data_structures() {
	//ds_gridの作成と
	global.ds_player_bullet = ds_grid_create(5, 15);
	global.ds_player_knockback = ds_grid_create(5, 15);
	global.ds_player_hook = ds_grid_create(2, 15);
	global.ds_player_gun = ds_grid_create(2, 15);

	global.ds_keyboard_last_pressed_frame = ds_grid_create(1, 10);
	for(var i=0; i<9; i++){//初期値を100で埋め立て
		ds_grid_set(global.ds_keyboard_last_pressed_frame, 0, i, 100);
	}





}
