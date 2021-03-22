if(!global.gamestop){
	life_time--;
	if(life_time < 0){
		instance_destroy();
	}

	//出現するときは透明状態から徐々にalpha値があがっていく
	var _t = life_time_default - 10;

	if(life_time > _t){
		scale = (life_time_default - life_time) / 10;
	}
	else{
		scale = 1;	
	}
}
