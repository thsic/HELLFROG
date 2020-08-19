///@param gamestate
function change_gamestate(argument0) {
	//ステートの変更
	var _state = argument0;

	if(state_priority_comparison(_state) == true){
		switch(_state){
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


}
