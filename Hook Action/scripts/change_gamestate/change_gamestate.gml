///@param gamestate
//ステートの変更
var state = argument0;

if(state_priority_comparison(state) == true){
	switch(state){
	case gamestate.stagestart:
		global.nextstate = gamestate.stagestart;
	break
	case gamestate.main:
		global.nextstate = gamestate.main;
	break
	case gamestate.pause:
		global.nextstate = gamestate.pause;
	break
	case gamestate.menu:
		global.nextstate = gamestate.menu;
	break
	case gamestate.gameover:
		global.nextstate = gamestate.gameover;
	break
	case gamestate.stageclear:
		global.nextstate = gamestate.stageclear;
	break
	default:
		sdm("Error! change_gamestate")
	break
	}
}