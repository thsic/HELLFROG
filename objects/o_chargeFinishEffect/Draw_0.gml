

if(current_time mod 3 != 0){
	draw_set_color(color);
	var _left_x = x - rectangle_width/2;
	var _right_x = x + rectangle_width/2;


	draw_rectangle(_left_x, top_side_y, _right_x, bottom_side_y, false);

	draw_set_default();
}
