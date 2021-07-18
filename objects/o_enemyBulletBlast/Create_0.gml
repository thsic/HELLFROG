// Inherit the parent event
event_inherited();
life_time = 0;

damage_enable = false;

pt_sys = part_system_create();
pt_type = part_type_create();

part_type_color1(pt_type, trail_color);
part_type_life(pt_type, 8, 12);
part_type_size(pt_type, 1, 1, -0.075, 0.01);
part_type_scale(pt_type, 0.4, 0.4);
part_type_sprite(pt_type, s_whiteCircle, 0, 0, 0);
part_type_direction(pt_type, 0, 360, 0, 0);
part_type_speed(pt_type, 0.3, 0.3, -0.1, 0);

alpha = 0;