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
