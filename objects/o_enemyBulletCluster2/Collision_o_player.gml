
if(damage_enable == true 
and o_player.invincible_enable == false){
	damage_to_player(damage, 1, direction);
	damage_enable = false;
	
	//一度ダメージをくらうと画面上にあるすべてのクラスター弾はダメージを与えなくなる
	with(o_enemyBulletCluster2){
		damage_enable = false;
	}
	
}

