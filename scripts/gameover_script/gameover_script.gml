// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gameover_script(){
	global.gamestate = gamestate.gameover;
	return_to_checkpoint();
}