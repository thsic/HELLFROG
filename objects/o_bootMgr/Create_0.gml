set_default_keyconfig();//キーコンフィグ設定
set_window_size(WINDOW_SIZE_MAGNIFICATION)
instance_create_layer(0, 0, "Instances", o_debugMgr);
instance_create_layer(0, 0, "Instances", o_soundMgr);
global.game_time = 0;
global.se_volume = 0.5;
global.bgm_volume = 0.5;
global.launguage = Launguage.Japanese;


room_goto(FIRST_ROOM);

enum Launguage{
	Japanese,
	English,
}