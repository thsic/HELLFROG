
global.gamestop = false;

switch(global.gamestate){
#region stagestart
case gamestate.stagestart:

change_gamestate(gamestate.main);
#endregion
#region main
case gamestate.main:

break
#endregion

case gamestate.pause:
	global.gamestop = true;
break
case gamestate.menu:
	global.gamestop = true;
break
case gamestate.lagging:
	
	if(lag_time <= 0){
		change_gamestate(gamestate.main);
		room_speed = 60;
	}
	else{
		lag_time--;
		lagging_game();
	}
	
break

}