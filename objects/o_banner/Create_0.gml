
camera_w = GAMESCREEN_WSIZE;
camera_h = GAMESCREEN_HSIZE;
var _cw = camera_w;
var _ch = camera_h;
global.camera_width = _cw;
global.camera_height = _ch;
global.camera_x = x+_cw/2;
global.camera_y = y+_ch/2
global.gamestate = gamestate.main;



//ヘルモード描画
draw_hell_menu_time = 0;

var _achievement_num = ds_grid_width(global.achievement_param);
var _achievement_acquired_num = 0;
for(var j=0; j<_achievement_num; j++){
	if(global.achievement_param[# j, ACHIEVEMENT_PARAM.ENABLE]){
		if(global.achievement_param[# j, ACHIEVEMENT_PARAM.ACQUIRED]){
			_achievement_acquired_num++;
		}
	}
}
if(_achievement_acquired_num > 6){
	draw_hell_menu_time = 90;
}
if(_achievement_acquired_num > 7){
	draw_hell_menu_time = 120;
}



//パーティクル
pt_type = part_type_create()
pt_sys = part_system_create()

part_type_alpha2(pt_type, 1, 1);
part_type_color1(pt_type, part_color);
part_type_life(pt_type, 400, 400);
part_type_speed(pt_type, 0.6, 1.2, 0, 0);
part_type_sprite(pt_type, s_whiteCircle, 0, 0, 0);
part_type_direction(pt_type, 80, 100, 0, 0.1);
part_type_size(pt_type, 0.6, 0.8, -0.0000, 0);

repeat(400){
	var _x = irandom_range(0, room_width);
	var _y = irandom_range(room_height/2, room_height);
	part_particles_create(pt_sys, _x, _y, pt_type, 2);
}
repeat(200){
	var _x = irandom_range(0, room_width);
	var _y = irandom_range(room_height/4*3, room_height);
	part_particles_create(pt_sys, _x, _y, pt_type, 2);
}

