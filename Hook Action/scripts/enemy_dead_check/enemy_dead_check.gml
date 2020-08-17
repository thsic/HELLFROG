//敵死亡判定

var _enemy_hp = hp;

if(_enemy_hp <= 0){
	var _result = true;
	enemy_change_state(EnemyState.Dead);
}
else{
	var _result = false;
}

return _result