//カーソル描画
if(virtual_cursol_enable){
	draw_sprite_ext(s_cursor, 0, global.vmouse_x, global.vmouse_y, 1, 1, 0, c_white, 1);
	draw_set_default();
	
}

if(fade_alpha != 0 and global.gamestate == gamestate.stagestartscene){
	draw_set_color(c_black);
	draw_set_alpha(fade_alpha);
	draw_rectangle(0, 0, global.camera_width, global.camera_height, false);
	
	draw_set_default();
}
