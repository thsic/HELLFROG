/// @description ステートの変更

if(global.nextstate != noone){
	global.gamestate = global.nextstate;//ステートを変更
	global.nextstate = noone;
}