// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_gun_manage(){
	if(gun_cooldown <= 0 and gun_charge_enable == false){
		gun_charge_start();
	}
	else{
		//サプレッション中はリロードも遅く
		if(supp_point <= 0){
			gun_cooldown--;
		}
		else{
			gun_cooldown -= 0.33;
		}
	}
	
	if(gun_charge_enable == true){
		gun_charging();
	}
}