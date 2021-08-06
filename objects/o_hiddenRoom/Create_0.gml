
collision_player = false;

mask_width = abs(bbox_left - bbox_right);
mask_height = abs(bbox_top - bbox_bottom);

///dust_create_ratio_base = 0.005;
dust_create_ratio = dust_create_ratio_base * (mask_width * mask_height / 16);

dust_part_type = part_type_create();
dust_part_sys = part_system_create();

part_type_sprite(dust_part_type, s_whiteCircle, 0, 0, 0);
part_type_color1(dust_part_type, dust_color);
part_type_size(dust_part_type, 0.2, 0.5, 0, 0);
part_type_alpha3(dust_part_type, 0, 0.1, 0);
part_type_life(dust_part_type, 60, 180);
part_type_speed(dust_part_type, 0.05, 0.1, 0, 0);
part_type_direction(dust_part_type, 0, 360, 0, 0);

