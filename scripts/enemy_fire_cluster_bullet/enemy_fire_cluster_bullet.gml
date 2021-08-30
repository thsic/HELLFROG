// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_fire_cluster_bullet(){
	if(global.difficulty == Difficulty.VeryHard){
		//ハード
		e_bullet_create_cluster(o_enemyBulletCluster, 1.5, fire_direction, 60, ac_enemyBullet, id, 15, -22, 22, fire_damage);
	}
	else{
		e_bullet_create_cluster(o_enemyBulletCluster, 1.5, fire_direction, 60, ac_enemyBullet, id, 15, -15, 15, fire_damage);
	}
}