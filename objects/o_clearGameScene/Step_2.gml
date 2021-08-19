
if(now_scene == GAMECLEARSCENE.FADEIN){
	room_speed = 5;
}
else{
	room_speed = 60;
	if(global.gamestate != gamestate.event){
		change_gamestate(gamestate.event);
	}
}
	
