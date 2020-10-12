// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_invincible_time(_time){
	if(o_player.invincible_time < _time){
		o_player.invincible_time = _time;
		o_player.invincible_time_default = _time;
	}
}