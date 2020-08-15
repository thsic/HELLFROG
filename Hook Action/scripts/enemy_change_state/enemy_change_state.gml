///@param state
//敵のステート変更

var _state = argument0;

//ステートの競合が発生していないかチェック
if(enemy_state_priority_comparison(_state) == true){
	switch(_state){
	case EnemyState.Dead:
		next_state = EnemyState.Dead;
	break
	case EnemyState.Knockback:
		next_state = EnemyState.Knockback;
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
	case EnemyState.Move:
		next_state = EnemyState.Move;
	break
	case EnemyState.Idle:
		next_state = EnemyState.Idle;
	break
	default:
		sdm("Error! enemy_change_EnemyState")
	break
	}
}

