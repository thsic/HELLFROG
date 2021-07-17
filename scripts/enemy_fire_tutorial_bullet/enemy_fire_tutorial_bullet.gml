// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_fire_tutorial_bullet(){
	var _dis = point_distance(x, y, o_player.x, o_player.y);
	var _dir = 12;
	se_play(a_tutorialEnemyShot, 60, AUDIO_SIMUL_DECAY_DEFAULT);
	
	if(_dis > 50){
		e_bullet_create_normal(o_enemyBulletTutorial, 3, fire_direction+_dir, 60, ac_enemyBullet, id, fire_damage);
		e_bullet_create_normal(o_enemyBulletTutorial, 3, fire_direction, 60, ac_enemyBullet, id, fire_damage);
		e_bullet_create_normal(o_enemyBulletTutorial, 3, fire_direction-_dir, 60, ac_enemyBullet, id, fire_damage);
	}
}