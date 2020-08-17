///@param enemy_id,damage
//敵にダメージをあたえる

var _enemy_id = argument0;
var _damage = argument1;

with(_enemy_id){
	hp -= _damage;
	enemy_dead_check();
}
