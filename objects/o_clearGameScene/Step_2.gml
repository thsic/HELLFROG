if(global.gamestate != gamestate.event){
	change_gamestate(gamestate.event);
}
if(now_scene == GAMECLEARSCENE.FADEIN){
	var _per = scene_time_total/fadein_end;
	var _y_limit = 90;
	var _player_y = o_clearObject.y-_per*_y_limit;
	var _player_x = lerp(player_x_default, o_clearObject.x, _per);
	
	with(o_player){
		x = _player_x;
		y = _player_y
	}
	
}

/*
if(now_scene == GAMECLEARSCENE.FADEIN){
	room_speed = 8;
}
else{
	room_speed = 60;
	if(global.gamestate != gamestate.event){
		change_gamestate(gamestate.event);
	}
}
	
