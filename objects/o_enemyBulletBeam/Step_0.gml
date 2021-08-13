/// @description Insert description here
// You can write your code in this editor
if(global.gamestop == false){
	life_time--;
	if(life_time <= 0){
		if(instance_exists(enemy_id)){
			enemy_id.beam_enabled = false;//攻撃発射終わったと本体に知らせる
		}
		instance_destroy();
	}

	if(beforebeam_drawtime <= 0){
		if(afterbeam_drawtime = afterbeam_drawtime_default
		and instance_exists(enemy_id)){
			enemy_id.beam_enabled = true;//攻撃を発射したと本体に知らせる
			//音ならす
			se_play(bullet_fire_sound, 60, AUDIO_SIMUL_DECAY_DEFAULT)
		}
		
		beam_enable = true;
		afterbeam_drawtime--;
		
		//ビーム当たり判定
		var _x2 = lengthdir_x(length, direction) + x;
		var _y2 = lengthdir_y(length, direction) + y;
		if(collision_line(x, y, _x2, _y2, o_player, false, true) and damage_enable and o_player.invincible_enable == false){
			if(global.gamestate != gamestate.gameover){
				damage_to_player(damage, 1, direction);
				damage_enable = false;
			}
		}
		
		
	}
	else{
		beam_enable = false;
		beforebeam_drawtime--;
	}
	
	if(!instance_exists(enemy_id)
	and !erasure_start){
		erasure_start = true;
	}
	
	//弾強制消滅フラグ
	if(erasure_start == true and erasure_enable == false){
		erasure_enable = true;
		enemy_id.beam_enabled = false;
	}
	if(erasure_enable == true){
		
		erasure_time--;
		speed = 0;
		if(erasure_time < 0){
			instance_destroy();
		}
	}
}