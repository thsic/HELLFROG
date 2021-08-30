function enemy_fire_acid(){
	if(global.difficulty == Difficulty.VeryHard){
		e_bullet_create_acid(o_enemyBulletAcidGenerater, 2.5, fire_direction, 80, id);
	}
	else{
		e_bullet_create_acid(o_enemyBulletAcidGenerater, 3.5, fire_direction, 80, id);
	}
}