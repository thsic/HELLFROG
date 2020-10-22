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
		case gamestate.lagging:
			global.nextstate = gamestate.lagging;
		break
		case gamestate.waitforkeyinput:
			global.nextstate = gamestate.waitforkeyinput;
		break
		default:
			sdm("Error! change_gamestate")
		break
		}
	}


}
enum gamestate{
	stagestart,
	main,
	pause,
	menu,
	gameover,
	stageclear,
	lagging,
	waitforkeyinput,
}