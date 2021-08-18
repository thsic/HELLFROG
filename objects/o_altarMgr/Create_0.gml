
//soulenemyをsoulenemyじゃなくする
var _enemy_num = instance_number(o_enemy);

for(var i=0; i<_enemy_num; i++){
	var _id = instance_find(o_enemy, i);
	if(_id.soul_enemy
	and _id.object_index != o_enemyAltarTotem){
		_id.soul_enemy = false;
	}
	
}
