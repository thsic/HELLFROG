
camera_w = GAMESCREEN_WSIZE;
camera_h = GAMESCREEN_HSIZE;
var _cw = camera_w;
var _ch = camera_h;
global.camera_width = _cw;
global.camera_height = _ch;
global.camera_x = x+_cw/2;
global.camera_y = y+_ch/2
global.gamestate = gamestate.main;

instance_create_layer(0, 0, "Instances", o_menuMgr);
var _grid_width = 20;
var _button_width = room_width/2;
var _button_height = room_height/16;
var _button_y_offset = room_height/5*3;
title_param = ds_grid_create(_grid_width, 10);

savedata_enable = file_exists("save");

for(var i=0; i<_grid_width; i++){
	title_param[# i, TITLEPARAM.X] = room_width/2;
	title_param[# i, TITLEPARAM.WIDTH] = _button_width;
	title_param[# i, TITLEPARAM.HEIGHT] = _button_height;
	title_param[# i, TITLEPARAM.ONMOUSE] = false;
	title_param[# i, TITLEPARAM.ENABLE] = true;
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


on_mouse_button = -1;
title_screen_button = true;

fade_time = 300;
fade_time_base = 240;

fadein_time = 120;
fadein_time_base = 120

pressed_button = -1;

//パーティクル
pt_type = part_type_create()
pt_sys = part_system_create()

part_type_alpha2(pt_type, 1, 0);
part_type_color1(pt_type, part_color);
part_type_life(pt_type, 200, 480);
part_type_speed(pt_type, 0.1, 1, 0, 0.03);
part_type_sprite(pt_type, s_whiteCircle, 0, 0, 0);
part_type_direction(pt_type, 80, 100, 0, 0.1);
part_type_size(pt_type, 0.4, 0.8, 0, 0);



enum TITLENAME{
	GAMESTART,
	LOADGAME,
	OPTION,
	ASSISTMODE,
	EXITGAME,
	
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
}