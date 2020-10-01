// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_fire_dispersion_bullet(){
	var _direction = random_range(-8, 8) + fire_direction;
	e_bullet_create_normal(o_enemyBulletNormal, 8, _direction-35, 30, ac_enemyBullet, id);
	//e_bullet_create_normal(o_enemyBulletNormal, 8, _direction, 20, ac_enemyBullet, id);
	e_bullet_create_normal(o_enemyBulletNormal, 8, _direction+35, 30, ac_enemyBullet, id);
}