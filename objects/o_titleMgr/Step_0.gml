
global.game_time++;
//ボタン設定

if(pressed_button = -1){
	var _button_num = ds_grid_width(title_param);
	on_mouse_button = -1;

	for(var i=0; i<_button_num; i++){
		var _x = title_param[# i, TITLEPARAM.X];
		var _y = title_param[# i, TITLEPARAM.Y];
		var _w = title_param[# i, TITLEPARAM.WIDTH];
		var _h = title_param[# i, TITLEPARAM.HEIGHT];
	
		if(is_in_place(_x-_w/2, _y-_h/2, _x+_w/2, _y+_h/2, mouse_x, mouse_y)
		and title_screen_button){
			title_param[# i, TITLEPARAM.ONMOUSE] = true;
			on_mouse_button = i;
		}
		else{
			title_param[# i, TITLEPARAM.ONMOUSE] = false;
		}
	}
}

if(mouse_check_button(global.shotgun_button)){
	switch(on_mouse_button){
	case TITLENAME.GAMESTART:
		pressed_button = TITLENAME.GAMESTART;
	break
	case TITLENAME.LOADGAME:
		if(savedata_enable){
			pressed_button = TITLENAME.LOADGAME;
		}
	break
	case TITLENAME.OPTION:
		title_screen_button = false;
		o_menuMgr.state = Menustate.Option;
	break
	case TITLENAME.ASSISTMODE:
		title_screen_button = false;
		o_menuMgr.state = Menustate.AssistMode;
	break
	case TITLENAME.EXITGAME:
		game_end();
	break
	default:
		
	break
	}
}

switch(pressed_button){
case TITLENAME.GAMESTART:
	if(fadein_time <= 0){
		start_game();
	}
	else{
		fadein_time--;
	}
	
break
case TITLENAME.LOADGAME:
	if(fadein_time <= 0){
		load_game(true);
	}
	else{
		fadein_time--;
	}
break
}

if(o_menuMgr.state != Menustate.Option
and o_menuMgr.state != Menustate.AssistMode){
	title_screen_button = true;
}

var _rnd = random(1);
var _num = 50;

if(_rnd < 0.5){
	repeat(_num){
		var _x = irandom_range(0, room_width);
		part_particles_create(pt_sys, _x, room_height+16, pt_type, 1);
	}
}

global.vmouse_x = mouse_x;
global.vmouse_y = mouse_y;

if(fade_time > 0){
	fade_time--;
}

