function data_set_player_hp(_hp_type, _max_hp, _lifesteel_base, _dec_phase1, _dec_phase2, _dec_phase3, _dec_phase4) {

	ds_grid_set(global.ds_player_hp, _hp_type, ePHP_param.MaxHp, _max_hp);
	ds_grid_set(global.ds_player_hp, _hp_type, ePHP_param.LifeSteemBase, _lifesteel_base);
	ds_grid_set(global.ds_player_hp, _hp_type, ePHP_param.Dec1, _dec_phase1);
	ds_grid_set(global.ds_player_hp, _hp_type, ePHP_param.Dec2, _dec_phase2);
	ds_grid_set(global.ds_player_hp, _hp_type, ePHP_param.Dec3, _dec_phase3);
	ds_grid_set(global.ds_player_hp, _hp_type, ePHP_param.Dec4, _dec_phase4);


	enum ePHP_type{
		normal_hp,
	}

	enum ePHP_param{
		MaxHp,
		LifeSteemBase,
		Dec1,
		Dec2,
		Dec3,
		Dec4,
	}


}
