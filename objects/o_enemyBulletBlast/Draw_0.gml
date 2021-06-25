
var _angle = aim_time*2;

var _cross_sprite = s_fireSkeletonBlastCross;
var _channel = animcurve_get_channel(ac_blastBulletCrossPos, 0);
var _time_ratio = ((1-aim_time/aim_time_default));
var _ratio = animcurve_channel_evaluate(_channel, _time_ratio);
var _dis = (1-_ratio) * blast_size*2;
var _color = merge_color(blast_cross_color1, blast_cross_color2, _ratio);
var _line_color = blast_cross_color1;

for(var i=0; i<4; i++){
	var _x = lengthdir_x(_dis, _angle)+x;
	var _y = lengthdir_y(_dis, _angle)+y;
	draw_sprite_ext(_cross_sprite, 0, _x, _y, 1, 1, _angle+180, _color, 1);
	
	var _diff = aim_time_default - aim_time; 
	if(_diff < 10){
		//少しの時間だけ本体の方向に線を出す
		draw_set_color(_line_color);
		var _line_len = 50;
		var _line_dir = point_direction(_x, _y, enemy_id.x, enemy_id.y);
		var _line_x = lengthdir_x(_line_len, _line_dir)+_x;
		var _line_y = lengthdir_y(_line_len, _line_dir)+_y;
		draw_line(_x, _y, _line_x, _line_y);
	}
	_angle += 90;
}

draw_set_default();