///@param type,maxspd,minspd,attespd,magspd,diff,dmg,amount
//プレイヤーの弾
var _bullet_type = argument0;//弾タイプ
var _maxspeed = argument1;//初期スピード最大値
var _minspeed = argument2;//初期スピード最低値
var _attenuation_speed = argument3;//1fで減衰するスピード
var _magnification_speed = argument4;//1fごとにこの値だけ乗算される
var _diffusivity = argument5;//拡散度
var _damage = argument6;//弾ダメージ
var _amount = argument7;

ds_grid_set(global.ds_player_bullet, _bullet_type, ePB_param.MaxSpeed, _maxspeed);
ds_grid_set(global.ds_player_bullet, _bullet_type, ePB_param.MinSpeed, _minspeed);
ds_grid_set(global.ds_player_bullet, _bullet_type, ePB_param.AtteSpeed, _attenuation_speed);
ds_grid_set(global.ds_player_bullet, _bullet_type, ePB_param.MagSpeed, _magnification_speed);
ds_grid_set(global.ds_player_bullet, _bullet_type, ePB_param.Diffusivity, _diffusivity);
ds_grid_set(global.ds_player_bullet, _bullet_type, ePB_param.Damage, _damage);
ds_grid_set(global.ds_player_bullet, _bullet_type, ePB_param.Amount, _amount);


enum ePB_color{
	BulletRed,
	BulletYellow,
}

enum ePB_param{
	MaxSpeed,
	MinSpeed,
	AtteSpeed,
	MagSpeed,
	Diffusivity,
	Damage,
	Amount,
}