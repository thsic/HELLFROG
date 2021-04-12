//カーソル描画
if(virtual_cursol_enable){
	draw_sprite_ext(s_cursor, 0, global.vmouse_x, global.vmouse_y, 1, 1, 0, c_white, 1);
	draw_set_default();
	
}
