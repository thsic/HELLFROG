


var sh_texel_handle = shader_get_uniform(sh_outline, "inTexel");
var sh_outline_color_handle = shader_get_uniform(sh_outline, "outlineColor");

var _stagecolor = global.now_stage_param[STAGEPARAM.STAGECOLOR];
var _stagecolor_r = color_get_red(_stagecolor)/255;
var _stagecolor_g = color_get_green(_stagecolor)/255;
var _stagecolor_b = color_get_blue(_stagecolor)/255;
var _rate = (sin(global.game_time/12)/2+0.5)
_rate = floor(_rate*5)/5;

var _r = lerp(_stagecolor_r, 1, _rate);
var _g = lerp(_stagecolor_g, 1, _rate);
var _b = lerp(_stagecolor_b, 1, _rate);
var _a = 1;

_a = floor(_a*5)/5;

var _tex = sprite_get_texture(sprite_index, 0);
var _tWidth = texture_get_texel_width(_tex);
var _tHeight = texture_get_texel_height(_tex);


shader_set(sh_outline);

shader_set_uniform_f(sh_texel_handle, _tWidth, _tHeight);
shader_set_uniform_f(sh_outline_color_handle, _r, _g, _b, _a);

draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, _stagecolor, 1);

shader_reset();