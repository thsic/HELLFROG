	//こぴぺした
if(!global.gamestop
and draw_power_bar_enable){
	var _bar_width = global.camera_width/2;
	var _bar_height = global.camera_height/32;

	var _bar_under_color = 0;
	var _bar_color_charged = o_uiMgr.charge_bar_charged_color;
	var _bar_color_charging = o_uiMgr.charge_bar_charging_color;
	var _bar_color_edge = c_white;
	
	var _base_point_x = 0 //o_player.x-_bar_width/2;
	var _base_point_y = global.camera_height/5*3//o_player.y-_bar_height/2 + global.camera_height/4;
	
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
	draw_set_color(charge_bar_under_color);
	//draw_rectangle(_base_point_x, _base_point_y, _base_point_x+_bar_width, _base_point_y+_bar_height, false);
	draw_set_color(_bar_color_edge);
	//draw_rectangle(_base_point_x, _base_point_y, _base_point_x+_bar_width, _base_point_y+_bar_height, true);

	
	for(var i=0; i<_charge_max_count; i++){
		var _temp_x = _bar_x[i] - _one_bar_width;//左上
	
		if(_charge_percent[i] = 1){
			draw_set_alpha(1);
			
			if(_charge_percent_total = 1){
				draw_set_color(charge_bar_full_charged_color);//パワー最大だと色変わる
			}
			else{
				draw_set_color(_bar_color_charged);
			}
			
			draw_rectangle(_temp_x, _base_point_y, _bar_x[i], _base_point_y+_bar_height, false);
		}
		else if(_charge_percent[i] > 0){
			draw_set_alpha(0.7);
			var _width_temp = _charge_percent[i]*_one_bar_width;
			draw_set_color(_bar_color_charging);
			draw_rectangle(_temp_x, _base_point_y, _temp_x+_width_temp, _base_point_y+_bar_height, false);
		}
	
	}
	
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_set_valign(fa_bottom);
	draw_set_halign(fa_left);
	draw_set_font(fo_maruMonica);
	draw_text(_base_point_x, _base_point_y, "POWER")

	draw_set_default();
}