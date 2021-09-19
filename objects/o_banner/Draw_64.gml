
draw_set_alpha(1);
draw_set_font(fo_menu);
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);
draw_set_font(fo_ending32);

var _height = string_height("HELLFROG");

draw_set_color(banner_color);
//draw_rectangle(0, room_height/2-_height/4+1, room_width, room_height/2+_height/4-3, false);
//draw_rectangle(0, room_height/4, room_width, room_height/4*3, false);


draw_set_color(banner_color);
var _logo_x = room_width/2;
var _logo_y = room_height/2;
draw_text(_logo_x+1, _logo_y+1, "HELLFROG");
draw_set_color(banner_text_color);
draw_text(_logo_x, _logo_y, "HELLFROG");
	




