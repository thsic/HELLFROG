
scene_time++
var _px = o_player.x;
var _py = o_player.y;
var _scene_1 = 10


if(scene_time < _scene_1){
	
	var _fall_pos_y = goal_id.y-8;
	
	var _dis = point_distance(_px, _py, goal_id.x, _fall_pos_y);
	var _dir = point_direction(_px, _py, goal_id.x, _fall_pos_y);
	o_player.x = _px + lengthdir_x(_dis*0.2, _dir);
	o_player.y = _py + lengthdir_y(_dis*0.2, _dir);
	
	
}
if(scene_time = _scene_1){
	var _sequence_x = goal_id.x;
	var _sequence_y = goal_id.y;
	var _player_inst = instance_find(o_player, 0);
	
	//音
	se_play(a_goalsound, 90, 1);
	
	
	goal_sequence_element = layer_sequence_create("UnderTile", _sequence_x, _sequence_y, sq_goal);
	
	//インスタンスを上書き
	var _seq_inst = layer_sequence_get_instance(goal_sequence_element);
	sequence_instance_override_object(_seq_inst, o_player, _player_inst);
	
	layer_sequence_play(goal_sequence_element);
}
if(layer_sequence_exists("UnderTile", goal_sequence_element)){
	
	//プレイヤーが穴に落ちたらプレイヤー消す
	if(o_player.y > o_goal.y + 12){
		o_player.draw_player = false;
	}

}
if(layer_sequence_is_finished(goal_sequence_element)){
	
	o_player.y += hole_fall_speed_base * power(1.015, fall_time);
	fall_time++
}

//フェードインの透明度

if(scene_time > fadein_start_time){
	fade_alpha = clamp((scene_time - fadein_start_time) /fadein_end_time, 0, 1);
	fade_alpha = floor(fade_alpha * 8) / 8;
}
if(scene_time >= change_stage_time){
	//ステージ移行
	//プレイヤーがどっち向いてるかの情報を引き継ぐ
	o_persistentObject.player_look_right = o_player.look_right;
	o_persistentObject.player_direction = o_player.player_direction;
	
	var _next_room = goal_id.next_room;
	room_goto(_next_room);
}

if(!change_bgm){
	change_bgm = true;
	//bgmが違う面に行く時はここでbgmを消す
	var _now_bgm = global.now_stage_param[STAGEPARAM.BGM];
	
	//次ステージのid探す
	var _param_width = ds_grid_width(global.ds_stage_param);
	var _next_stage_number = noone;
	for(var i=0; i<_param_width; i++){
		var _id = global.ds_stage_param[# i, STAGEPARAM.STAGEID];
		if(_id == goal_id.next_room){
			_next_stage_number = i;
			break
		}
		
	}

	//次のステージのbgm取得
	if(_next_stage_number != noone){
		var _stage_type = global.ds_stage_param[# _next_stage_number, STAGEPARAM.STAGETYPE];
		var _next_bgm = global.ds_stage_type_param[# _stage_type, STAGEPARAM.BGM];
	}

	//bgm消す
	if(_now_bgm != _next_bgm){
		audio_sound_gain(_now_bgm, 0, 1000);
	}
	debug_draw_variable(o_player.x, o_player.y, string(_next_stage_number)+"  "+string(_next_bgm), c_white, 100)

}