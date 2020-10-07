if(global.gamestop == false){
	bullet_speed -= speed_attenuation;
	bullet_speed *= bullet_speed_mag;
	if(bullet_speed < 0){
		instance_destroy();
	}
	speed = bullet_speed;
}
else{
	speed = 0;
}