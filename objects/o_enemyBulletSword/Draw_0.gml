
var _p = (1-life_time/life_time_default)*100;
var _subimage = floor(_p/25);
var _alpha = erasure_time/erasure_time_default;
draw_sprite_ext(sprite_index, _subimage, x, y, 1, 1, direction, c_white, _alpha);
