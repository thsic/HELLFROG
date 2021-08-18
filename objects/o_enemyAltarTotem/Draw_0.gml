// Inherit the parent event
event_inherited();

//範囲の円描画
//アウトライン
if(state != EnemyState.Stun){
	var _alpha1 = 0.5 + sin(global.game_time/8) * 0.25;
	var _alpha2 = 0.035 + sin(global.game_time/8) * 0.01;
	var _color = passive_range_color;
}
else{
	var _alpha1 = 0.3;
	var _alpha2 = 0.02;
	var _color = c_white;
}

draw_set_alpha(_alpha1);
draw_set_color(_color);
draw_circle(x, y, weapon_range, true);

//内部
draw_set_alpha(_alpha2);
draw_circle(x, y, weapon_range, false);


var _y = y-16 - cos(global.game_time/6)*3;
draw_sprite_ext(s_whiteArrow, 0, x, _y, 0.3, 0.3, 270, c_white, 0.5);


draw_set_default();