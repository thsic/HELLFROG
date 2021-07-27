
function e_bullet_create_self_destruct(_object_number, _enemy_id, _damage){
	with(instance_create_layer(_enemy_id.x, _enemy_id.y, "EnemyBullets", _object_number)){
		
		enemy_id = _enemy_id;
		damage = _damage;
	}
	
	//自爆なので攻撃したらしぬ
	enemy_dead(_enemy_id, false);
}