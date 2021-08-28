var _text = global.ds_text[# TEXT.TUTORIAL_HELLGUN, global.language];

draw_set_font(fo_maruMonica);
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);

var _rec_w = string_width(_text)+4;
var _rec_h = string_height(_text)-2;
var _rec_x = x-_rec_w/2;
var _rec_y = y-_rec_h/2-26;

draw_set_color(c_white);
draw_rectangle(_rec_x, _rec_y, _rec_x+_rec_w, _rec_y+_rec_h, false);

draw_set_color(c_black);
draw_text(x, y-26, _text);

draw_set_default();