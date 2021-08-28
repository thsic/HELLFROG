//
function draw_timer(){
	if(global.timer_enable){
		
		var _text = get_timer_string(global.time_second, global.time_milisecond);
		
		draw_set_color(c_white);
		draw_set_font(fo_maruMonica);
		draw_set_halign(fa_right);
		draw_set_valign(fa_bottom);
		draw_text(global.camera_width, global.camera_height-16, _text);
				
	}
}