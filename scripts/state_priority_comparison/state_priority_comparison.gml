///@param state
function state_priority_comparison(argument0) {
	//ステートが同時に変更されたときどちらを優先するか処理、ほぼ使われない
	//ステージ開始 > ステージクリア > ゲームオーバー > ポーズ > メニュー > メイン

	var _state = argument0;
	var _state_priority_1 = 0;
	var _state_priority_2 = 0;
	var _changeable = true;

	if(global.nextstate != noone and _state != global.nextstate){
		
	
		switch(_state){
		case gamestate.stagestart:
			_state_priority_1 = 100;
		break
		case gamestate.stagestartscene:
			_state_priority_1 = 98;
		break
		case gamestate.goalscene:
			_state_priority_1 = 97;
		break
		case gamestate.stageclear:
			_state_priority_1 = 95;
		break
		case gamestate.waitforkeyinput:
			_state_priority_1 = 90;
		break
		case gamestate.gameover:
			_state_priority_1 = 80;
		break
		case gamestate.pause:
			_state_priority_1 = 60;
		break
		case gamestate.menu:
			_state_priority_1 = 50;
		break
		case gamestate.incheckpointbarrier:
			_state_priority_1 = 40;
		break
		case gamestate.main:
			_state_priority_1 = 30;
		break
		default:
			debug_message("Error! state_priority_comparison");
			_state_priority_1 = 0;
		break
		}
	
		switch(global.nextstate){
		case gamestate.stagestart:
			_state_priority_2 = 100;
		break
		case gamestate.stagestartscene:
			_state_priority_2 = 98;
		break
		case gamestate.goalscene:
			_state_priority_2 = 97;
		break
		case gamestate.stageclear:
			_state_priority_2 = 95;
		break
		case gamestate.waitforkeyinput:
			_state_priority_2 = 90;
		break
		case gamestate.gameover:
			_state_priority_2 = 80;
		break
		case gamestate.pause:
			_state_priority_2 = 60;
		break
		case gamestate.menu:
			_state_priority_2 = 50;
		break
		case gamestate.incheckpointbarrier:
			_state_priority_2 = 40;
		break
		case gamestate.main:
			_state_priority_2 = 30;
		break
		default:
			debug_message("Error! state_priority_comparison");
			_state_priority_2 = 0;
		break
		}
	
		//比較 1が今から変更しようとしているやつ 2がnextstateにあったやつ
		if(_state_priority_1 < _state_priority_2){
			//元のほうがプライオリティが高いので変更をやめる
			_changeable = false;
			debug_message("ゲームステート"+string(global.nextstate)+"と"+string(_state)+"の変更が競合し、ステート"+string(global.nextstate)+"が優先されました")
		}
		else{
			debug_message("ゲームステート"+string(global.nextstate)+"と"+string(_state)+"の変更が競合し、ステート"+string(_state)+"が優先されました");
		}
	}
	return _changeable



}
