

surface_filename = noone;

if(keyboard_check_pressed(vk_f12)){
	
	var _limit = 100;
	for(var i=0; i<_limit; i++){
		
		if(!file_exists("screenshot_" + string(i)+ ".png")){
			surface_filename = "screenshot_" + string(i)+ ".png";
			se_play(a_getgun, 0.5, 1);
			break;
		}
	}
}