set_default_keyconfig();//キーコンフィグ設定
set_window_size(WINDOW_SIZE_MAGNIFICATION)
instance_create_layer(0, 0, "Instances", o_debugMgr);
instance_create_layer(0, 0, "Instances", o_soundMgr);
instance_create_layer(0, 0, "Instances", o_achievementMgr);
text();
stage_param();
put_stage_param();


global.game_time = 0;

global.time_milisecond = 0;
global.time_second = 0;
global.draw_time_enable = true;
global.difficulty = Difficulty.Normal;

global.language_setting_done = false;

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
global.assist_level_max = false;
global.used_super_assistmode = false;



//オプション
global.se_volume = 0.2;
global.bgm_volume = 0.2;
global.language = language.English;
global.timer_enable = false;

global.now_bgm = noone;

//設定をロード
load_config();
//実績をロード
load_achievement();

//実績を取得可能にする
var _achievement_num = ds_grid_width(global.achievement_param);
for(var i=0; i<_achievement_num; i++){
	global.achievement_param[# i, ACHIEVEMENT_PARAM.GETTABLE] = true;
}

room_goto(FIRST_ROOM);

enum language{
	Japanese,
	English,
}

enum Difficulty{
	Normal,
	VeryHard,
}