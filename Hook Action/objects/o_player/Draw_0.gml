draw_self();

//フック描画
//if(hook_state = hookState.Shooting){
switch(hook_state){
case hookState.Shooting:
case hookState.GrabWall:
case hookState.GrabEnemy:
	draw_set_color(c_green);
	draw_line(x, y, hook_point_x, hook_point_y);
}
	
//}
draw_set_color(c_white);
