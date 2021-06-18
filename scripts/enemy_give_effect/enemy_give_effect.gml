//敵にエフェクトを付与
function enemy_give_effect(_enemy_id, _effect, _time){
	_enemy_id.effect_list[| _effect] = _time;
}