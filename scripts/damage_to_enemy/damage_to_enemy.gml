function damage_to_enemy(_enemy_id, _damage, _stun_damage) {
	//敵にダメージをあたえる

	//スタンダメージ与える
	stun_to_enemy(_enemy_id, _stun_damage);
	
	with(_enemy_id){
		hp -= _damage;
		enemy_dead_check();
	}



}
