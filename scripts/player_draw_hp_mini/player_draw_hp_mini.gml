// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_draw_hp_mini(){
	var _width = 24;
	var _height = 2;
	var _x = o_player.x - camera_get_view_x(view_camera[0]) - _width/2;
	var _y = o_player.y - camera_get_view_y(view_camera[0]) - 21;
	var _bar_color = hp_bar_color;
	var _under_color = hp_bar_under_color;
	
	
	var _max_hp = ds_grid_get(global.ds_player_hp, o_gameMgr.now_hp_type, ePHP_param.MaxHp);
	var _bar_percent = global.player_hp/_max_hp;
	var _bar_width = _bar_percent*_width;
	
	/*draw_set_color(_under_color);
	draw_rectangle(_x, _y, _x+_width, _y+_height, false);
	
	if(global.player_hp > 0){
		draw_set_color(_bar_color);
		draw_rectangle(_x, _y, _x+_bar_width, _y+_height, false);
	}*/
	//HPは整数で表示される
	
	var _channel = animcurve_get_channel(ac_hpUiMergeColor, 0);
	var _color_ratio = animcurve_channel_evaluate(_channel, _bar_percent);
	
	var _text_color = merge_color(hp_color1, hp_color2, _color_ratio);
	if(global.player_hp <= 0){
		_text_color = hp_color3;
	}
	
	draw_set_font(fo_hpUi);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_bottom)
	draw_set_color(_text_color);
	var _hp_text = string(clamp(ceil(global.player_hp), 0, _max_hp));
	draw_text(_x+_width/2, _y-2, _hp_text);
	draw_set_default();
}