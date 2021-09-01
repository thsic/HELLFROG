
camera_w = GAMESCREEN_WSIZE;
camera_h = GAMESCREEN_HSIZE;
var _cw = camera_w;
var _ch = camera_h;
global.camera_width = _cw;
global.camera_height = _ch;
global.camera_x = x+_cw/2;
global.camera_y = y+_ch/2
global.gamestate = gamestate.main;

with(instance_create_layer(0, 0, "Instances", o_menuMgr)){
	state = Menustate.Closing;
}

put_stage_param();

var _grid_width = 20;
var _button_width = room_width/2;
var _button_height = room_height/16;
var _button_y_offset = room_height/5*3;

var _language_button_w = room_width*0.4;
var _diff_button_h = room_height*0.42;
title_param = ds_grid_create(_grid_width, 10);

savedata_enable = file_exists("save");



title_param[# TITLENAME.GAMESTART, TITLEPARAM.SCREEN] = TITLESCREEN.MAIN;
title_param[# TITLENAME.LOADGAME, TITLEPARAM.SCREEN] = TITLESCREEN.MAIN;
title_param[# TITLENAME.OPTION, TITLEPARAM.SCREEN] = TITLESCREEN.MAIN;
title_param[# TITLENAME.ASSISTMODE, TITLEPARAM.SCREEN] = TITLESCREEN.MAIN;
title_param[# TITLENAME.EXITGAME, TITLEPARAM.SCREEN] = TITLESCREEN.MAIN;

title_param[# TITLENAME.LANGUAGE_EN, TITLEPARAM.SCREEN] = TITLESCREEN.SETLANGUAGE;
title_param[# TITLENAME.LANGUAGE_JP, TITLEPARAM.SCREEN] = TITLESCREEN.SETLANGUAGE;

title_param[# TITLENAME.DIFF_NORMAL, TITLEPARAM.SCREEN] = TITLESCREEN.DIFFICULTY;
title_param[# TITLENAME.DIFF_HARD, TITLEPARAM.SCREEN] = TITLESCREEN.DIFFICULTY;


for(var i=0; i<_grid_width; i++){
	switch(title_param[# i, TITLEPARAM.SCREEN]){
	case TITLESCREEN.MAIN:
		title_param[# i, TITLEPARAM.X] = room_width/2;
		title_param[# i, TITLEPARAM.WIDTH] = _button_width;
		title_param[# i, TITLEPARAM.HEIGHT] = _button_height;
		title_param[# i, TITLEPARAM.ONMOUSE] = false;
		title_param[# i, TITLEPARAM.ENABLE] = true;
	break;
	case TITLESCREEN.SETLANGUAGE:
		title_param[# i, TITLEPARAM.Y] = room_height/2;
		title_param[# i, TITLEPARAM.WIDTH] = _language_button_w;
		title_param[# i, TITLEPARAM.HEIGHT] = room_height*0.2;
		title_param[# i, TITLEPARAM.ONMOUSE] = false;
		title_param[# i, TITLEPARAM.ENABLE] = false;
	break
	case TITLESCREEN.DIFFICULTY:
		title_param[# i, TITLEPARAM.X] = room_width/2;
		title_param[# i, TITLEPARAM.WIDTH] = room_width*0.9;
		title_param[# i, TITLEPARAM.HEIGHT] = _diff_button_h;
		title_param[# i, TITLEPARAM.ONMOUSE] = false;
		title_param[# i, TITLEPARAM.ENABLE] = false;
	break
	}
}

title_param[# TITLENAME.GAMESTART, TITLEPARAM.Y] = _button_y_offset+_button_height*1;
title_param[# TITLENAME.LOADGAME, TITLEPARAM.Y] = _button_y_offset+_button_height*2;
title_param[# TITLENAME.OPTION, TITLEPARAM.Y] = _button_y_offset+_button_height*3;
title_param[# TITLENAME.ASSISTMODE, TITLEPARAM.Y] = _button_y_offset+_button_height*4;
title_param[# TITLENAME.EXITGAME, TITLEPARAM.Y] = _button_y_offset+_button_height*5;


title_param[# TITLENAME.GAMESTART, TITLEPARAM.TEXT] = global.ds_text[# TEXT.TITLETEXT_GAMESTART, language.English];
title_param[# TITLENAME.LOADGAME, TITLEPARAM.TEXT] = global.ds_text[# TEXT.TITLETEXT_LOADGAME, language.English];
title_param[# TITLENAME.OPTION, TITLEPARAM.TEXT] = global.ds_text[# TEXT.TITLETEXT_OPTION, language.English];
title_param[# TITLENAME.ASSISTMODE, TITLEPARAM.TEXT] = global.ds_text[# TEXT.TITLETEXT_ASSISTMODE, language.English];
title_param[# TITLENAME.EXITGAME, TITLEPARAM.TEXT] = global.ds_text[# TEXT.TITLETEXT_EXITGAME, language.English];

title_param[# TITLENAME.GAMESTART, TITLEPARAM.TEXTJP] = global.ds_text[# TEXT.TITLETEXT_GAMESTART, language.Japanese];
title_param[# TITLENAME.LOADGAME, TITLEPARAM.TEXTJP] = global.ds_text[# TEXT.TITLETEXT_LOADGAME, language.Japanese];
title_param[# TITLENAME.OPTION, TITLEPARAM.TEXTJP] = global.ds_text[# TEXT.TITLETEXT_OPTION, language.Japanese];
title_param[# TITLENAME.ASSISTMODE, TITLEPARAM.TEXTJP] = global.ds_text[# TEXT.TITLETEXT_ASSISTMODE, language.Japanese];
title_param[# TITLENAME.EXITGAME, TITLEPARAM.TEXTJP] = global.ds_text[# TEXT.TITLETEXT_EXITGAME, language.Japanese];

//初回言語設定
title_param[# TITLENAME.LANGUAGE_EN, TITLEPARAM.X] =  room_width/2-_language_button_w/2;
title_param[# TITLENAME.LANGUAGE_JP, TITLEPARAM.X] =  room_width/2+_language_button_w/2;
title_param[# TITLENAME.LANGUAGE_EN, TITLEPARAM.TEXT] =  "English";
title_param[# TITLENAME.LANGUAGE_JP, TITLEPARAM.TEXT] =  "日本語";
//難易度設定 widthは言語設定と同じなので同じ変数使う
title_param[# TITLENAME.DIFF_NORMAL, TITLEPARAM.Y] =  room_height/2-_diff_button_h/2;
title_param[# TITLENAME.DIFF_HARD, TITLEPARAM.Y] =  room_height/2+_diff_button_h/2;


on_mouse_button = -1;

if(global.language_setting_done){
	now_screen = TITLESCREEN.MAIN;
}
else{
	now_screen = TITLESCREEN.SETLANGUAGE;
}


fade_time = 240;
fade_time_base = 180;

fadein_time = 60;
fadein_time_base = 60

pressed_button = -1;

//パーティクル
pt_type = part_type_create()
pt_sys = part_system_create()

part_type_alpha2(pt_type, 1, 1);
part_type_color1(pt_type, part_color);
part_type_life(pt_type, 400, 400);
part_type_speed(pt_type, 0.6, 1.2, 0, 0);
part_type_sprite(pt_type, s_whiteCircle, 0, 0, 0);
part_type_direction(pt_type, 80, 100, 0, 0.1);
part_type_size(pt_type, 0.5, 0.9, -0.0012, 0);

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
enum TITLENAME{
	GAMESTART,
	LOADGAME,
	OPTION,
	ASSISTMODE,
	EXITGAME,
	
	DIFF_NORMAL,
	DIFF_HARD,
	
	LANGUAGE_EN,
	LANGUAGE_JP,
}

enum TITLEPARAM{
	ENABLE,
	X,
	Y,
	WIDTH,
	HEIGHT,
	ONMOUSE,
	TEXT,
	TEXTJP,
	SCREEN,
}
enum TITLESCREEN{
	MAIN,
	OPTION,
	ASSISTMODE,
	DIFFICULTY,
	SETLANGUAGE,
	
}