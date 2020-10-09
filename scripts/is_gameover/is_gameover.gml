// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function is_gameover(){
	if(global.player_hp <= 0){
		return true
	}
	else{
		return false
	}
}