random_set_seed(date_current_datetime());
randomize();

//ステート設定
global.gamestate = gamestate.stagestart;
global.nextstate = noone;

instance_create_layer(0, 0, "Instances", o_menuMgr);
instance_create_layer(0, 0, "UI", o_uiMgr);
instance_create_layer(0, 0, "UI", o_shaderMgr);
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

//リスポーン
respawn_time = 0;
respawn_sequence_element = noone;

enum EnemyDefaultPosition{
	ObjectIndex,
	XPosition,
	YPosition,
}