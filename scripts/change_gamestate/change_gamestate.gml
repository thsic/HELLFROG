///@param gamestate
function change_gamestate(argument0) {
	//ステートの変更
	var _state = argument0;
	//ラグがあるなら消す ラグがある時にメニューとかひらくとラグが発生しっぱなしのため
	if(o_gameMgr.lag_time > 0 or room_speed != 60){
		o_gameMgr.lag_time = 0;
		room_speed = 60
		lag_enable = false;
	}
	
	
	if(state_priority_comparison(_state) == true){
		global.nextstate = _state;
		/*switch(_state){
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
		case gamestate.waitforkeyinput:
			global.nextstate = gamestate.waitforkeyinput;
		break
		case gamestate.incheckpointbarrier:
			global.nextstate = gamestate.waitforkeyinput;
		break
		default:
			sdm("Error! change_gamestate")
		break
		}*/
	}


}
enum gamestate{
	stagestart,
	main,
	pause,
	menu,
	gameover,
	stageclear,
	waitforkeyinput,
	incheckpointbarrier,
}