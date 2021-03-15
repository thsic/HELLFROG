function draw_charge_bar() {
	//チャージの度合いを描画

	var _bar_width = 24;
	var _bar_height = 0;

	var _bar_under_color = c_black;
	var _bar_color_charged = c_green;
	var _bar_color_charging = c_blue;
	var _bar_color_edge = c_white;

	var _base_point_x = o_player.x-camera_get_view_x(view_camera[0])-_bar_width/2;
	var _base_point_y = o_player.y-camera_get_view_y(view_camera[0])-_bar_height-(o_player.sprite_height/2+2);
	
	var _now_shotgun = o_player.now_shotgun;
	var _gun_charge_time = o_player.gun_charge_time;

	var _charge_max_count = ds_grid_get(global.ds_player_gun, _now_shotgun, eG_param.ChargeCount);
	var _bar_x = 0;
	var _one_bar_width = _bar_width/_charge_max_count;

	var _one_charge_time = ds_grid_get(global.ds_player_gun, _now_shotgun, eG_param.ChargeTime);
	var _charge_percent_total = _gun_charge_time/(_charge_max_count*_one_charge_time);
	var _charge_percent = 0;

	for(var i=0; i<_charge_max_count; i++){
		_bar_x[i] = (i+1)*_one_bar_width + _base_point_x;
	
		if(_one_charge_time*(i+1) < _gun_charge_time){
			_charge_percent[i] = 1;
			//このゲージ(レベル)のチャージが完了している
		}
		else{
			_charge_percent[i] = (_gun_charge_time-_one_charge_time*(i))/(_one_charge_time);
		}
	}

	//下地描画
	draw_set_color(_bar_under_color);
	draw_rectangle(_base_point_x, _base_point_y, _base_point_x+_bar_width, _base_point_y+_bar_height, false);
	draw_set_color(_bar_color_edge);
	//draw_rectangle(_base_point_x, _base_point_y, _base_point_x+_bar_width, _base_point_y+_bar_height, true);


	for(var i=0; i<_charge_max_count; i++){
		var _temp_x = _bar_x[i] - _one_bar_width;//左上
	
		if(_charge_percent[i] = 1){
			draw_set_color(_bar_color_charged);
			draw_rectangle(_temp_x, _base_point_y, _bar_x[i], _base_point_y+_bar_height, false);
		}
		else if(_charge_percent[i] > 0){
			var _width_temp = _charge_percent[i]*_one_bar_width;
			draw_set_color(_bar_color_charging);
			draw_rectangle(_temp_x, _base_point_y, _temp_x+_width_temp, _base_point_y+_bar_height, false);
		}
	
	}

	draw_set_color(c_white);



}
