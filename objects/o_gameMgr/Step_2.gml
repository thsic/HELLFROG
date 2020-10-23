/// @description ステートの変更など

if(global.nextstate != noone){
	global.gamestate = global.nextstate;//ステートを変更
	global.nextstate = noone;
}

//ゲームオーバー時のシーケンスの位置移動
if(layer_sequence_exists("Flont", gameover_sequence_element)){
	layer_sequence_x(gameover_sequence_element, o_camera.x);
	layer_sequence_y(gameover_sequence_element, o_camera.y);
	
}
