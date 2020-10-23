// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function is_gameover(){
	//ライフスティールオーブがそんざいすると死なない
	var _lifesteal_orb_number = instance_number(o_lifestealOrb);
	if(global.player_hp <= 0 and _lifesteal_orb_number == 0){
		return true
	}
	else{
		return false
	}
}