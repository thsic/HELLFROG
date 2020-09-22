// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_bullet_erasure(_enemy_id){
	var _bullet_number = instance_number(o_enemyBullet);
	var _erasure_number = 0;
	for(var i=0; i<_bullet_number; i++){
		var _bullet_id = instance_find(o_enemyBullet, i);
		
		//弾を発射した敵のidがスタンした敵のidと同じなら弾を消す
		if(_bullet_id.enemy_id = _enemy_id){
			_bullet_id.erasure_start = true;
			_erasure_number++;
		}
	}
	return _erasure_number
}