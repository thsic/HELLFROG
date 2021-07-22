//
function draw_enemy_number(){
	var _center_x = 50;
	var _y = 6;
	
	draw_set_color(c_white);
	draw_set_valign(fa_top);
	draw_set_halign(fa_middle);
	draw_set_font(fo_hpUi);
	
	draw_text(_center_x-14, _y, global.floor_enemy_number_now);
	draw_text(_center_x, _y, "/");
	draw_text(_center_x+14, _y, global.floor_enemy_number_total);
	
}