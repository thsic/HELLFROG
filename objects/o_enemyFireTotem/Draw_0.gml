// Inherit the parent event
event_inherited();

draw_set_alpha(0.5);
draw_set_color(c_red);
draw_circle(x, y, weapon_range, true);
draw_set_default();