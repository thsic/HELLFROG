// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function stun_to_enemy(_enemy_id, _stun_damage){
	//スタン耐性減らす
	_enemy_id.stun_resistance -= _stun_damage;
}