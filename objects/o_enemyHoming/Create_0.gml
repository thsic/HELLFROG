// Inherit the parent event
event_inherited();

pt_type = part_type_create();
pt_sys = part_system_create();


part_type_size(pt_type, 1, 2.5, -0.08, 0);
part_type_speed(pt_type, 1, 1.5, 0, 0);
part_type_life(pt_type, 60, 60);
part_type_sprite(pt_type, s_whiteCircle, 0, 0, 0);

used_blink = false;
