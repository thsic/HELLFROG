
scene_time++
var _px = o_player.x;
var _py = o_player.y;
var _scene_1 = 10//


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
	
	
	goal_sequence_element = layer_sequence_create("UnderTile", _sequence_x, _sequence_y, sq_goal);
	
	//インスタンスを上書き
	var _seq_inst = layer_sequence_get_instance(goal_sequence_element);
	sequence_instance_override_object(_seq_inst, o_player, _player_inst);
	
	layer_sequence_play(goal_sequence_element);
}
if(layer_sequence_exists("UnderTile", goal_sequence_element)){
	if(layer_sequence_is_finished(goal_sequence_element)){
		var _next_room = goal_id.next_room;
		room_goto(_next_room);
	}
	
	//プレイヤーが穴に落ちたらプレイヤー消す
	if(o_player.y > o_goal.y + 12){
		o_player.draw_player = false;
	}

}

