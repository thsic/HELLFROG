/// @description Insert description here
// You can write your code in this editor
speed_control_curve = ac_enemyBullet;
damage_enable = true;

erasure_start = false;//trueになると弾が消える
erasure_enable = false;
erasure_time_default = 15;
erasure_time = erasure_time_default;

//音再生
if(bullet_create_sound != noone){
	se_play(bullet_create_sound, 60, audio_simul_decay);
}