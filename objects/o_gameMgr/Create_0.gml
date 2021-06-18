random_set_seed(date_current_datetime());
randomize();

global.vmouse_x = window_mouse_get_x() / global.window_magnification;
global.vmouse_y = window_mouse_get_y() / global.window_magnification;

//ステート設定
global.gamestate = gamestate.stagestart;
global.nextstate = noone;

instance_create_layer(0, 0, "GameObjects", o_menuMgr);
instance_create_layer(0, 0, "UI", o_uiMgr);
instance_create_layer(0, 0, "UI", o_shaderMgr);
instance_create_layer(0, 0, "GameObjects", o_lockMgr);

if(!instance_exists(o_persistentObject)){
	instance_create_layer(0, 0, "GameObjects", o_persistentObject);//無いなら生成
}

//instance_create_layer(0, 0, "Shaders", o_surfaceLight);

global.gamestop = false;
global.playerstop = false;

//ラグ関連
lag_time = 0;
lag_time_default = 0;
lag_curve = noone;
lag_enable = false;

cursed_damage_enable = true;
stop_cursed_damage_time = 0;

mouse_x_prev = display_mouse_get_x();
mouse_y_prev = display_mouse_get_y();

//ゲームオーバー
gameover_effect_time = -1;
gameover_sequence_element = noone;
waitfor_key_enable = false;//ゲームオーバーから復活したときはキー入力待つ、ステージ開始時は待たない

//リスポーン
respawn_time = 0;
respawn_sequence_element = noone;

//ゴール
near_goal_id = noone;

//エフェクト
global.slow_enable = false;
fade_alpha = 1;


//マウスカーソル
virtual_cursol_enable = false;

enum EnemyDefaultPosition{
	ObjectIndex,
	XPosition,
	YPosition,
	LockNumber,
	LockSpawnTime,
}