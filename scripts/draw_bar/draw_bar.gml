///@param num,max,x,y,w,h,colUnder,colFront,middle
function draw_bar(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8) {
	//ゲージを描画

	var _number = argument0;
	var _max = argument1;
	var _x = argument2;
	var _y = argument3;
	var _width = argument4;
	var _height = argument5;
	var _under_color = argument6;
	var _front_color = argument7;
	var _middle = argument8;

	//ゲージのパーセンテージ
	var _per = _number / _max;
	var _front_bar_width = _width * _per;

	if(_middle == true){
		_x -= _width/2;
		_y -= _height/2;
	}
	//下地描画
	draw_set_color(_under_color);
	draw_rectangle(_x, _y, _x+_width, _y+_height, false);

	//ゲージ描画
	draw_set_color(_front_color);
	draw_rectangle(_x, _y, _x+_front_bar_width, _y+_height, false);




}
