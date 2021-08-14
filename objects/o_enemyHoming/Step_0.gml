// Inherit the parent event
event_inherited();

if(global.game_time mod 4 == 0){
	
	
	var _len = 48;
	var _dir = point_direction(x, y, o_player.x, o_player.y) + 180;
	var _to_x = lengthdir_x(_len, _dir)+x;
	var _to_y = lengthdir_y(_len, _dir)+y;
	
	var _smog_x = irandom_range(x - 8, x + 8);
	var _smog_y = irandom_range(y - 8, y - 8);
	
	var _smog_dir = point_direction(_smog_x, _smog_y, _to_x, _to_y);
	part_type_direction(pt_type, _smog_dir, _smog_dir, 0, 0);
	
	var _color = merge_color(smog_color1, smog_color2, random(1));
		
	part_particles_create_color(pt_sys, _smog_x, _smog_y, pt_type, _color, 1);
	
}

