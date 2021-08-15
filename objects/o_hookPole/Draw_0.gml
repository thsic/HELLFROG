if(state = EnemyState.Aim){
	var _subimage = 1;
}
else{
	var _subimage = 0;
}

//アウトライン
var sh_texel_handle = shader_get_uniform(sh_outline, "inTexel");
var sh_outline_color_handle = shader_get_uniform(sh_outline, "outlineColor");

var _tex = sprite_get_texture(sprite_index, 0);
var _tWidth = texture_get_texel_width(_tex);
var _tHeight = texture_get_texel_height(_tex);

var _r = 0.3;
var _g = 0.3;
var _b = 0.3;
var _a = 1.0;

shader_set(sh_outline);

shader_set_uniform_f(sh_texel_handle, _tWidth, _tHeight);
shader_set_uniform_f(sh_outline_color_handle, _r, _g, _b, _a);

draw_sprite(sprite, _subimage, x, y);

shader_reset();