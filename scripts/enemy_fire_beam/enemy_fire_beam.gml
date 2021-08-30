
function enemy_fire_beam(){
	if(global.difficulty == Difficulty.VeryHard){
		e_bullet_create_beam(o_enemyBulletBeam, 35, 15, fire_direction, id, 8, 500, fire_damage);
	}
	else{
		e_bullet_create_beam(o_enemyBulletBeam, 60, 15, fire_direction, id, 8, 500, fire_damage);
	}
}