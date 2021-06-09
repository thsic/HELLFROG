/// @description Insert description here
// You can write your code in this editor
speed_control_curve = ac_enemyBullet;
damage_enable = true;

erasure_start = false;//trueになると弾が消える
erasure_enable = false;
erasure_time_default = 15;
erasure_time = erasure_time_default;


//音再生
if(bullet_create_sound != noone
and !audio_is_playing(bullet_create_sound)){
	audio_play_sound(bullet_create_sound, 60, false);
}