// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_stun_start(){
	enemy_change_state(EnemyState.Stun);
	stun_time = stun_time_default;
	if(stun_bullet_erasure){
		enemy_bullet_erasure(id);
	}
	
	//スタン音
	//audio_play_sound(a_stun, 70, false);
}