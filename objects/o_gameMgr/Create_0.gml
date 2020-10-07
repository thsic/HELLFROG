random_set_seed(date_current_datetime());
randomize();

//ステート設定
global.gamestate = gamestate.stagestart;
global.nextstate = noone;

instance_create_layer(0, 0, "Instances", o_menuMgr);