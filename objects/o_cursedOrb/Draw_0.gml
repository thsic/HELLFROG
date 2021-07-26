
//なんか軌道エフェクトだけの方がかっこいいのでそれで
var _spr_w = sprite_get_width(sprite_index);
var _xscale = orb_size/_spr_w;
var _yscale = orb_size/_spr_w;

//draw_sprite_ext(sprite_index, 0, x, y, _xscale, _yscale, 0, c_white, 1);
draw_set_color(effect_color);
draw_set_alpha(alpha);
//draw_circle(x, y, orb_size/2, false);

//軌道エフェクト描画
draw_primitive_begin(pr_trianglestrip);


for(var i=0; i<effect_number; i++){
	var _dir1 = effect_dir[i] + 90;
	var _dir2 = effect_dir[i] - 90;
	var _size = (orb_size/2)*(1-(i*1.1)/effect_number);
	var _x1 = effect_x[i] + lengthdir_x(_size, _dir1);
	var _y1 = effect_y[i] + lengthdir_y(_size, _dir1);
	var _x2 = effect_x[i] + lengthdir_x(_size, _dir2);
	var _y2 = effect_y[i] + lengthdir_x(_size, _dir2);
	draw_vertex(_x1, _y1);
	draw_vertex(_x2, _y2);
	
}



draw_primitive_end();
draw_set_default();

