var _key_direction = player_move_direction_acquisition()//押してるキーからの移動方向取得 キーが押されていないと-1が出力される
var _player_speed = PLAYER_SPEED_DEFAULT;
if(_key_direction = -1){
	var _player_speed = 0;
}


if(knockbacking == true){
	//ノックバック中なら速度の合成
	var _synthesized_speed = player_move_speed_synthesis(_player_speed, _key_direction, knockback_speed, knockback_direction, knockback_power);
	var _synthesized_direction = player_move_direction_synthesis(_player_speed, _key_direction, knockback_speed, knockback_direction, knockback_power, _synthesized_speed);
}
else{
	//ノックバック中じゃないなら速度の合成をしない
	var _synthesized_speed = _player_speed;
	var _synthesized_direction = _key_direction;
}

draw_synspd = _synthesized_speed;
draw_movespd = _player_speed;
draw_knockbackspd = knockback_speed;
draw_direction = _synthesized_direction;


player_move_execution(_synthesized_direction, false, _synthesized_speed);//移動の実行
