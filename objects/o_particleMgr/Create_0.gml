
dust_part_type = part_type_create();
dust_part_sys = part_system_create();

part_type_sprite(dust_part_type, s_whiteCircle, 0, 0, 0);
part_type_color1(dust_part_type, dust_color);
part_type_size(dust_part_type, 0.1, 0.2, 0, 0);
part_type_alpha3(dust_part_type, 0, 1, 0);
part_type_life(dust_part_type, 120, 360);
part_type_speed(dust_part_type, 0.1, 0.3, 0, 0);
part_type_direction(dust_part_type, 0, 360, 0, 0);
