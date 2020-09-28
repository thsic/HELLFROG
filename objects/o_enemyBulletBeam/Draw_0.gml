var _alpha = erasure_time/erasure_time_default;
draw_set_color(c_white);

if(beam_enable == false){
	var _tex = sprite_get_texture(s_beforeBeamEffect, 0);
	var _beam_height = sprite_get_height(s_beforeBeamEffect)/3;
	_beam_height *= beforebeam_drawtime/beforebeam_drawtime_default;
	_alpha *= 0.3
}
else{
	var _tex = sprite_get_texture(s_beamEffect, 0);
	var _beam_height = sprite_get_height(s_beamEffect)/2;
	_beam_height *= afterbeam_drawtime/afterbeam_drawtime_default;
}

draw_primitive_begin_texture(pr_trianglestrip, _tex);

draw_set_alpha(_alpha);


//開始時点
var _xx1 = lengthdir_x(_beam_height, direction+90) + x;
var _yy1 = lengthdir_y(_beam_height, direction+90) + y;
var _xx2 = lengthdir_x(_beam_height, direction-90) + x;
var _yy2 = lengthdir_y(_beam_height, direction-90) + y;

draw_vertex_texture(_xx1, _yy1, 0, 0);
draw_vertex_texture(_xx2, _yy2, 0, 1);

//最終地点
var _endpoint_x = lengthdir_x(length, direction) + x;
var _endpoint_y = lengthdir_y(length, direction) + y;

var _xx1 = lengthdir_x(_beam_height, direction+90) + _endpoint_x;
var _yy1 = lengthdir_y(_beam_height, direction+90) + _endpoint_y;
var _xx2 = lengthdir_x(_beam_height, direction-90) + _endpoint_x;
var _yy2 = lengthdir_y(_beam_height, direction-90) + _endpoint_y;

draw_vertex_texture(_xx1, _yy1, 1, 0);
draw_vertex_texture(_xx2, _yy2, 1, 1);

draw_primitive_end();

draw_set_alpha(1);
//draw_sprite_ext(sprite_index, _subimage, x, y, 1, 1, direction, c_white, _alpha);
