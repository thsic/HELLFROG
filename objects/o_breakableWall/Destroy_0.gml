
var _size = random_range(14, 18);
var _color = c_white;
effect_create_blast(x-_size, y-_size, _size, 15, 5, _color, 1, 12);
se_play(a_breakBlock, 0.4, 0.6);

instance_destroy(pair_wall);