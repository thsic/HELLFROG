///@param enemy_id,damage
function damage_to_enemy(argument0, argument1) {
	//敵にダメージをあたえる

	var _enemy_id = argument0;
	var _damage = argument1;

	with(_enemy_id){
		hp -= _damage;
		enemy_dead_check();
	}



}
