set_default_keyconfig();//キーコンフィグ設定
set_window_size(WINDOW_SIZE_MAGNIFICATION)
instance_create_layer(0, 0, "Instances", o_debugMgr);
instance_create_layer(0, 0, "Instances", o_soundMgr);
text();
stage_param();

global.game_time = 0;

global.time_milisecond = 0;
global.time_second = 0;
global.draw_time_enable = true;

//アシストモード関連
global.enemy_damage = 1;
global.dot_damage = 1;
global.player_damage = 1;
global.assist_mode = 0;

global.assist_level_enemy_damage = 0;
global.assist_level_dot_damage = 0;
global.assist_level_player_damage = 0;
	
global.hell_enemy_damage_enable = false;
global.hell_dot_damage_enable = false;
global.hell_player_damage_enable = false;

global.true_hell = false;



//オプション
global.se_volume = 0.2;
global.bgm_volume = 0.2;
global.launguage = Launguage.English;
global.timer_enable = false;

room_goto(FIRST_ROOM);

enum Launguage{
	Japanese,
	English,
}