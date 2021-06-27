function enemy_fire_fire_skeleton(){
	if(effect_list[| EnemyEffect.UltraFire] > 0){
		//炎トーテム内
		
		var _bullet_num = 18;
		var _delay_time = 2;
		var _blast_size = 48;
		var _marker_length_max = 92;
	}
	else{
		var _bullet_num = 6;
		var _delay_time = 5;
		var _blast_size = 16;
		var _marker_length_max = 32;
	}
	for(var i=0; i<_bullet_num; i++){
		e_bullet_create_blast(o_enemyBulletBlast, x, y+8, _blast_size, _delay_time*i, id, _marker_length_max, fire_damage);
	}
}