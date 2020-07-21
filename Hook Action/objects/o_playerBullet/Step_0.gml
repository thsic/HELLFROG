speed -= speed_attenuation;
speed *= bullet_speed_mag;
if(speed < 0){
	instance_destroy();
}