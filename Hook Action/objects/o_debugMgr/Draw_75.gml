if(debug_draw_movement){
	draw_text(0, 0, "synspd"+string(pl.debug_draw_synspd));
	draw_text(0, 16, "movespd"+string(pl.debug_draw_movespd));
	draw_text(0, 16*2, "inertiaspd"+string(pl.inertia_speed));
	draw_text(0, 16*3, "direction"+string(pl.debug_draw_direction));	
	
}