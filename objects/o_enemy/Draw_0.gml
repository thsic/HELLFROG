
//hpゲージ描画
if(state != EnemyState.WaitForSpawn){//スポーン待ちのときは透明
	draw_bar(hp, max_hp, x, y-sprite_height/2-4, 20, 0, c_gray, c_red, true);
}


//スプライトの方向決め
switch(state){
case EnemyState.Movement:
	if(sign(h_speed) = 1){
		sprite_rightward = true;
	}
	else{
		sprite_rightward = false;
	}
break;
case EnemyState.Approach:
case EnemyState.Charging:
	var _dir_for_player = point_direction(x, y, o_player.x, o_player.y);
	if(is_in_range(90, 270, _dir_for_player)){
		sprite_rightward = false;
	}
	else{
		sprite_rightward = true;
	}
break;
case EnemyState.Aim:
	if(is_in_range(90, 270, fire_direction)){
		sprite_rightward = false;
	}
	else{
		sprite_rightward = true;
	}
}

var _sprite = sprite_index;
var _color = c_white;
var _image_speed = 10;
var _alpha = 1;

//描画
switch(state){
	case EnemyState.Approach:
	case EnemyState.Idle:
	case EnemyState.Movement:
		if(walk_sprite != noone){
			_sprite = walk_sprite;
		}
	break;
	case EnemyState.Aim:
	case EnemyState.Charging:
		if(chargeing_sprite != noone){
			_sprite = chargeing_sprite;
		}
	break;
	case EnemyState.WaitForMovement:
	case EnemyState.Fire:
	case EnemyState.AfterFire:
		if(attack_sprite != noone){
			_sprite = attack_sprite;
		}
	break
	case EnemyState.Stun:
		if(attack_sprite != noone){
			_sprite = walk_sprite;
			_color = c_gray;
		}
	break
	case EnemyState.Invincible:
		if(walk_sprite != noone){
			_sprite = walk_sprite;
			_alpha = 0.5;
		}
	break
	case EnemyState.WaitForSpawn://スポーン待ちの時は透明
		_alpha = 0;
	break
}

#region 例外処理
//ビーム
if(object_index = o_enemyBeam){
	if(beam_enabled){
		_sprite = attack_sprite;
	}
	else{
		switch(state){
			case EnemyState.Approach:
			case EnemyState.Idle:
			case EnemyState.Movement:
			case EnemyState.Aim:
			case EnemyState.Charging:
			case EnemyState.WaitForMovement:
				if(walk_sprite != noone){
					_sprite = walk_sprite;
					_image_speed = 20;
				}
			break;
			
			case EnemyState.Fire:
			case EnemyState.AfterFire:
				if(attack_sprite != noone){
					_sprite = chargeing_sprite;
					_image_speed = 5;
				}
			break
			case EnemyState.Stun:
				if(attack_sprite != noone){
					_sprite = walk_sprite;
					_color = c_gray;
				}
			break
		}
	}
}
#endregion

if(state == EnemyState.Stun){
	//スタンスプライト描画
	var _spr_h = sprite_get_height(_sprite);
	var _stun_imagespeed = 4;
	var _t = life_time mod (_stun_imagespeed * sprite_get_number(s_stun));
	var _subimage = _t / _stun_imagespeed;
	draw_sprite_ext(s_stun, _subimage, x, y-_spr_h/2-12, 1, 1, 0, c_white, 1);
	
	//スタン時はスプライトが灰色に
	shader_set(sh_decrementSaturation);
	var _uniform = shader_get_uniform(sh_decrementSaturation, "saturation")
	shader_set_uniform_f(_uniform, 0.3);
	sdm("stun!")
}


//スプライトのどのsubimageを描画するか決める
var _subimage_num = sprite_get_number(_sprite);

var _t = life_time mod (_subimage_num*_image_speed);
var _subimage = _t/_image_speed; 

//ダメージくらったとき光る
shader_set(sh_changeValue);
var _flash_ratio = sign(damage_flash_time);
shader_set_uniform_f(uni_add, _flash_ratio);

if(sprite_rightward){
	draw_sprite_ext(_sprite, _subimage, x, y, -1, 1, 0, _color, _alpha);
}
else{
	draw_sprite_ext(_sprite, _subimage, x, y, 1, 1, 0, _color, _alpha);
}
shader_reset();

