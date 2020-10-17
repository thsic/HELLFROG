function damage_to_enemy(_enemy_id, _damage, _stun_damage) {
	//敵にダメージをあたえる

	//スタンダメージ与える
	if(!_enemy_id.invincible_enable){//敵が無敵ならダメージを与えられない
		stun_to_enemy(_enemy_id, _stun_damage);
	
		with(_enemy_id){
			hp -= _damage;
			enemy_dead_check();
		}
	}


}
