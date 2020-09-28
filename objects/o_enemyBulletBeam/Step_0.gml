/// @description Insert description here
// You can write your code in this editor

life_time--;
if(life_time <= 0){
	instance_destroy();
}

if(beforebeam_drawtime <= 0){
	beam_enable = true;
	afterbeam_drawtime--;
}
else{
	beforebeam_drawtime--;
}

//弾強制消滅フラグ
if(erasure_start == true and erasure_enable == false){
	erasure_enable = true;
}
if(erasure_enable == true){
	erasure_time--;
	speed = 0;
	if(erasure_time < 0){
		instance_destroy();
	}
}
