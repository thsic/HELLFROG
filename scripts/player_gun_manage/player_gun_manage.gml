// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_gun_manage(){
	if(gun_cooldown <= 0 and gun_charge_enable == false){
		gun_charge_start();
	}
	else{
		gun_cooldown--;
	}
	
	if(gun_charge_enable == true){
		gun_charging();
	}
}