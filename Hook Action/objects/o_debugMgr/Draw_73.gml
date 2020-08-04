if(debug_draw_movement){
	draw_line(pl.x, pl.y, pl.x+lengthdir_x(pl.debug_draw_synspd*15, pl.debug_draw_direction), pl.y+lengthdir_y(pl.debug_draw_synspd*15, pl.debug_draw_direction));
	if(pl.inertia_enable){
		draw_set_color(c_orange);
		draw_line(pl.x, pl.y, pl.x+lengthdir_x(pl.inertia_speed*15, pl.inertia_direction), pl.y+lengthdir_y(pl.inertia_speed*15, pl.inertia_direction));
		draw_circle(pl.x+pl.debug_intermediate_point_x*15, pl.y+pl.debug_intermediate_point_y*15, 3, false);
		draw_circle(pl.x, pl.y, 3*15, true);
	}
}

draw_set_color(c_white);
