
draw_sprite_ext(sprite, 0, x, y, 1, 1, sprite_direction, c_white, alpha);


var _dead_blast_enable = false;

if(life_time <= 14){
	var _dead_blast_color = blast_color_2;
	var _dead_blast_enable = true;
}
if(life_time <= 7){
	var _dead_blast_color = c_white;
	var _dead_blast_enable = true;
}



//死亡時に一瞬円映る
if(_dead_blast_enable){
	var _r = 16;
	draw_circle_color(blast_x, blast_y, _r, _dead_blast_color, _dead_blast_color, false);
	
}

if(life_time = 10){
	var _pt_type = part_type_create();
	var _pt_sys = part_system_create();

	part_type_color1(_pt_type, blast_color_2);
	part_type_life(_pt_type, 10, 20);
	part_type_alpha3(_pt_type, 1, 1, 1);
	part_type_sprite(_pt_type, s_whiteCircle, false, false, false);
	part_type_size(_pt_type, 0.3, 0.7, 0.005, 0);
	part_type_speed(_pt_type, 1.2, 1.6, -0.04, 0.0015);
	part_type_direction(_pt_type, 0, 360, 0, 0);
	part_particles_create(_pt_sys, blast_x, blast_y, _pt_type, 10);
	
	part_type_destroy(_pt_type);
	part_system_destroy(_pt_sys);
}
