function enemy_state_manage() {
	//敵のステート管理

	switch(state){
	case EnemyState.Idle:

	break
	case EnemyState.Move:
		//未実装
	break
	case EnemyState.Knockback:

	break
	case EnemyState.Charging:

	break
	case EnemyState.Aim:

	break
	case EnemyState.Fire:

	break
	case EnemyState.Dead:
		instance_destroy();
	break
	}

	enum EnemyState{
		Idle,
		Knockback,
		Charging,
		Aim,
		Fire,
		Dead,
		Move,
	
	}


}
