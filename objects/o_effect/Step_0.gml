if(global.gamestop == false){
	life_time --;
	if(life_time <= 0){
		instance_destroy();
	}

	switch(effect_type){
	case EffectType.Brink:
		//ライフタイムによって長さ変える
		length = life_time/life_time_default*length_default;
	break
	}

}
enum EffectType{
	Brink,
	
}