random_set_seed(date_current_datetime());
randomize();

//ステート設定
global.gamestate = gamestate.stagestart;
global.nextstate = noone;

instance_create_layer(0, 0, "Instances", o_menuMgr);

global.gamestop = false;

//ラグ関連
lag_time = 0;
lag_time_default = 0;
lag_curve = noone;

//now_hp_type = ePHP_type.normal_hp;

cursed_damage_enable = true;
stop_cursed_damage_time = 0;