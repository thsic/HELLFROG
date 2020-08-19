draw_self();

if(debug_mode or DEBUGMODE){
	draw_sprite(s_playerCollisionMask, 0, x, y);
}

//フック描画
switch(hook_state){
case hookState.Shooting:
case hookState.GrabWall:
case hookState.GrabEnemy:
case hookState.Shrink:
	draw_set_color(c_green);
	draw_line(x, y, hook_point_x, hook_point_y);
}
	
if(gun_charge_enable == true){
	draw_charge_bar();
}
draw_set_color(c_white);
