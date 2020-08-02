///@param eHKtype,range,cd,shootspd,shrinkspd,coSize4enemy,coSize4wall
//プレイヤーの弾
var _hook_type = argument0;//フックタイプ
var _range = argument1;//射程
var _cooldown = argument2;//クールダウン
var _shooting_speed = argument3;//発射スピード
var _shrink_speed = argument4;//ロープを巻き取るスピード
var _collision_size_for_enemy = argument5//敵に対しての当たり判定
var _collision_size_for_wall = argument6//壁に対しての当たり判定、ロープが伸び切った瞬間にしか使われない

ds_grid_set(global.ds_player_hook, _hook_type, eHK_param.Range, _range);
ds_grid_set(global.ds_player_hook, _hook_type, eHK_param.Cooldown, _cooldown);
ds_grid_set(global.ds_player_hook, _hook_type, eHK_param.ShootingSpeed, _shooting_speed);
ds_grid_set(global.ds_player_hook, _hook_type, eHK_param.ShrinkSpeed, _shrink_speed);
ds_grid_set(global.ds_player_hook, _hook_type, eHK_param.CollisionSizeForEnemy, _collision_size_for_enemy);
ds_grid_set(global.ds_player_hook, _hook_type, eHK_param.CollisionSizeForWall, _collision_size_for_wall);


enum eHK_type{
	normal_hook,
}

enum eHK_param{
	Range,
	Cooldown,
	ShootingSpeed,
	ShrinkSpeed,
	CollisionSizeForEnemy,
	CollisionSizeForWall,
	
}