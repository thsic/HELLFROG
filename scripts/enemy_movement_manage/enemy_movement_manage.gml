// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_movement_manage(_player_finded, _probability_mag){
	//クールダウンがあるならそれ減らす
	if(movement_cooldown > 0){
		movement_cooldown--;
	}
	else{
		var _random_var = random(1);
		if(_player_finded == true){
			if(movement_probability*_probability_mag > _random_var){//毎フレーム低確率で移動を実行 プレイヤーを見つけてる場合は確率2倍
				_movement_length = irandom_range(movement_length_max, movement_length_min);
				enemy_set_movement(_movement_length, movement_speed, true, noone);
			}
		}
		else{
			if(movement_probability*_probability_mag > _random_var){//毎フレーム低確率で移動を実行
				_movement_length = irandom_range(movement_length_max, movement_length_min);
				enemy_set_movement(_movement_length, movement_speed, false, irandom(360));
			}
		}
	}
}
