///@param state
//ステートが同時に変更されたときどちらを優先するか処理、ほぼ使われない
//ステージ開始 > ステージクリア > ゲームオーバー > ポーズ > メニュー > メイン

var state = argument0;
var state_priority_1 = 0;
var state_priority_2 = 0;
var changeable = true;

if(global.nextstate != noone){
	sdm("ステートの変更が競合しました");
	
	switch(state){
	case gamestate.stagestart:
		state_priority_1 = 100;
	break
	case gamestate.stageclear:
		state_priority_1 = 95;
	break
	case gamestate.gameover:
		state_priority_1 = 80;
	break
	case gamestate.pause:
		state_priority_1 = 60;
	break
	case gamestate.menu:
		state_priority_1 = 50;
	break
	case gamestate.main:
		state_priority_1 = 30;
	break
	default:
		sdm("Error! state_priority_comparison");
	break
	}
	
	switch(global.nextstate){
	case gamestate.stagestart:
		state_priority_2 = 100;
	break
	case gamestate.stageclear:
		state_priority_2 = 95;
	break
	case gamestate.gameover:
		state_priority_2 = 80;
	break
	case gamestate.pause:
		state_priority_2 = 60;
	break
	case gamestate.menu:
		state_priority_2 = 50;
	break
	case gamestate.main:
		state_priority_2 = 30;
	break
	default:
		sdm("Error! state_priority_comparison");
	break
	}
	
	//比較 1が今から変更しようとしているやつ 2がnextstateにあったやつ
	if(state_priority_1 < state_priority_2){
		changeable = false;
	}
}
return changeable
