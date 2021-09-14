
//hpゲージ描画
if(state != EnemyState.WaitForSpawn){//スポーン待ちのときは透明
	if(blue_aura){
		var _bar_color = buleaura_hp_bar_color;
	}
	else{
		var _bar_color = hp_bar_color;
	}
	
	var _bar_width = 10;
	if(!soul_enemy){
		var _bar_color = totem_hp_color;
	}
	
	var _x = x;
	var _y = y-28;
	
	draw_bar(hp, max_hp, _x, _y, _bar_width, 0, 0, _bar_color, true);
}


if(state == EnemyState.Stun){
	//スタンスプライト描画
	
	var _stun_imagespeed = 4;
	var _t = life_time mod (_stun_imagespeed * sprite_get_number(s_stun));
	var _subimage = _t / _stun_imagespeed;
	draw_sprite_ext(s_stun, _subimage, x, y-32, 1, 1, 0, c_white, 1);
	
	
	
	//スタン時はスプライトが灰色に
	//var _uniform = shader_get_uniform(sh_enemy, "saturation")
	//shader_set_uniform_f(_uniform, 0.3);
}

