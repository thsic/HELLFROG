
draw_self();
draw_set_halign(fa_middle);
draw_set_font(fo_itemText);
draw_set_color(c_white);
//draw_text(x, y-64, "shot");

var _y = y-16 - cos(global.game_time/6)*3;
draw_sprite_ext(s_whiteArrow, 0, x, _y, 0.5, 0.5, 270, c_white, 1);

draw_set_default()
