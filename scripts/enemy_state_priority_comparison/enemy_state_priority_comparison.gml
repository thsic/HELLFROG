///@param state
function enemy_state_priority_comparison(argument0) {
	//ステートが同時に変更されたときどちらを優先するか処理、ほぼ使われない
	// Dead > Knockback > Charging > Aim > Fire > Move > Idle

	var _state = argument0;
	var _state_priority_1 = 0;
	var _state_priority_2 = 0;
	var _changeable = true;

	if(next_state != noone){
		sdm("敵のステートの変更が競合しました");
	
		switch(_state){
		case EnemyState.Dead:
			_state_priority_1 = 100;
		break
		case EnemyState.Knockback:
			_state_priority_1 = 90;
		break
		case EnemyState.Charging:
			_state_priority_1 = 60;
		break
		case EnemyState.Aim:
			_state_priority_1 = 50;
		break
		case EnemyState.Fire:
			_state_priority_1 = 40;
		break
		case EnemyState.Move:
			_state_priority_1 = 25;
		break
		case EnemyState.Idle:
			_state_priority_1 = 10;
		break
		default:
			sdm("Error! state_priority_comparison");
			_state_priority_1 = 0;
		break
		}
	
		switch(next_state){
		case EnemyState.Dead:
			_state_priority_2 = 100;
		break
		case EnemyState.Knockback:
			_state_priority_2 = 90;
		break
		case EnemyState.Charging:
			_state_priority_2 = 60;
		break
		case EnemyState.Aim:
			_state_priority_2 = 50;
		break
		case EnemyState.Fire:
			_state_priority_2 = 40;
		break
		case EnemyState.Move:
			_state_priority_2 = 25;
		break
		case EnemyState.Idle:
			_state_priority_2 = 10;
		break
		default:
			sdm("Error! state_priority_comparison");
			_state_priority_2 = 0;
		break
		}
	
		//比較 1が今から変更しようとしているやつ 2がnextstateにあったやつ
		if(_state_priority_1 < _state_priority_2){
			_changeable = false;
		}
	}
	return _changeable



}
