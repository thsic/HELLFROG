if(!global.gamestop){
	life_time--;
	if(life_time < 0){
		instance_destroy();
	}

	//出現するときは小さい状態から徐々に大きくなっていく
	var _t = life_time_default - scale_time;

	if(life_time > _t){
		scale = (life_time_default - life_time) / scale_time;
	}
	else{
		scale = 1;	
	}
	
	//スローフィールド生成 
	if(!created_slow_field){
		created_slow_field = true;
		with(instance_create_layer(x, y, "MapObject", o_slowField)){
			range = 10;
			life_time = other.life_time;
			range_square = false;
		}
		
	}
}
