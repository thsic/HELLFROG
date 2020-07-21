///@param type,spd,totaltime,cantactiontime
//プレイヤーの弾
var _shotgun_type = argument0;//ショットガンタイプ
var _speed = argument1;//ノックバック距離
var _totaltime = argument2;//ノックバック終了までの時間
var _cant_action_time = argument3;//1fごとにこの値だけ乗算される


ds_grid_set(global.ds_player_knockback, _shotgun_type, eSGK_param.Speed, _speed);
ds_grid_set(global.ds_player_knockback, _shotgun_type, eSGK_param.TotalTime, _totaltime);
ds_grid_set(global.ds_player_knockback, _shotgun_type, eSGK_param.CantActionTime, _cant_action_time);


enum eSGK_type{
	cursed_gun,
	tutorial_gun,
}

enum eSGK_param{
	Speed,
	TotalTime,
	CantActionTime,
}