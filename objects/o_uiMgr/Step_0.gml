if(!global.gamestop){
	var _indicator_color, _indicator_instance;
	_indicator_instance[0] = o_enemy;
	_indicator_color[0] = c_red;
	_indicator_instance[1] = o_goal;
	_indicator_color[1] = c_green;
	instance_direction_indicator(_indicator_instance, _indicator_color);
	
	
	if(popup_time > 0){
		if(!instance_exists(o_lifestealOrb)){
			popup_time--;
		}
		
	}
	else{
		popup_damage = 0;
	}
	
	
}
