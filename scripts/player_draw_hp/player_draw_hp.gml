// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_draw_hp(){
	var _center_x = global.camera_width/2;
	var _center_y = global.camera_height;
	var _width = global.camera_width;
	var _height = 10;
	var _x = _center_x-_width/2;
	var _y = _center_y-_height;
	
	var _bar_color = hp_bar_color;
	var _under_color = hp_bar_under_color;
	var _text_color = c_white;
	
	var _max_hp = ds_grid_get(global.ds_player_hp, o_gameMgr.now_hp_type, ePHP_param.MaxHp);
	var _bar_percent = global.player_hp/_max_hp;
	_bar_percent = floor(_bar_percent*80)/80;
	var _bar_width = _bar_percent*_width;
	
	draw_set_color(_under_color);
	draw_rectangle(_x, _y, _x+_width, _y+_height, false);
	
	if(global.player_hp > 0){
		draw_set_color(_bar_color);
		draw_rectangle(_x, _y, _x+_bar_width, _y+_height, false);
	}
	
	//HPは整数で表示される
	draw_set_font(fo_hpUi);
	draw_set_valign(fa_bottom);
	draw_set_halign(fa_middle);
	draw_set_color(_text_color);
	draw_text(_x+_width/2, _y+_height+6, "/")
	draw_text(_x+_width/2-16, _y+_height+6, ceil(global.player_hp));
	draw_text(_x+_width/2+16, _y+_height+6, ceil(_max_hp));
	draw_set_default();
	
	
	/*var _x = 4;
	var _y = 225;
	var _width = 70;
	var _height = 10;
	var _bar_color = c_red;
	var _under_color = c_maroon;
	var _text_color = c_white;
	
	var _max_hp = ds_grid_get(global.ds_player_hp, o_gameMgr.now_hp_type, ePHP_param.MaxHp);
	var _bar_percent = global.player_hp/_max_hp;
	var _bar_width = _bar_percent*_width;
	
	draw_set_color(_under_color);
	draw_rectangle(_x, _y, _x+_width, _y+_height, false);
	
	draw_set_color(_bar_color);
	draw_rectangle(_x, _y, _x+_bar_width, _y+_height, false);
	
	//HPは整数で表示される
	draw_set_halign(fa_middle);
	draw_set_color(_text_color);
	var _hp_text = string(ceil(global.player_hp)) + "/" + string(ceil(_max_hp));
	draw_text(_x+_width/2, _y-4, _hp_text);
	draw_set_default();*/
	
	
}