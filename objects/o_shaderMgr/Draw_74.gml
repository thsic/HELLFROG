if(surface_exists(gray_surface)){
	draw_surface(gray_surface, 0, 0);
}

var _cx = camera_get_view_x(view_camera[0]);
var _cy = camera_get_view_y(view_camera[0]);
/*var _px = o_player.x-;
var _py = o_player.y-camera_get_view_y(o_camera.camera);
draw_circle(_px, _py, 20, false);*/


draw_circle(o_camera.x-_cx, o_camera.y-_cy, 10, true);
