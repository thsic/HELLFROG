///@param state
function enemy_change_state(argument0) {
	//敵のステート変更

	var _state = argument0;

	//ステートの競合が発生していないかチェック
	if(enemy_state_priority_comparison(_state) == true){
		switch(_state){
		case EnemyState.Dead:
			next_state = EnemyState.Dead;
		break
		case EnemyState.Stun:
			next_state = EnemyState.Stun;
		break
		case EnemyState.Charging:
			next_state = EnemyState.Charging;
		break
		case EnemyState.Aim:
			next_state = EnemyState.Aim;
		break
		case EnemyState.Fire:
			next_state = EnemyState.Fire;
		break
		case EnemyState.Approach:
			next_state = EnemyState.Approach;
		break
		case EnemyState.Idle:
			next_state = EnemyState.Idle;
		break
		default:
			sdm("Error! enemy_change_EnemyState")
		break
		}
	}




}
enum EnemyState{
	Idle,
	Stun,
	Charging,
	Aim,
	Fire,
	Dead,
	Approach,
}