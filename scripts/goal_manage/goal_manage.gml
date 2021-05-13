//
function goal_manage(){
	var _goal_num = instance_number(o_goal);
	var _goal_size = 48;
	
	for(var i=0; i<_goal_num; i++){
		var _id = instance_find(o_goal, i);
		var _dis = point_distance(o_player.x, o_player.y, _id.x, _id.y);
		
		if(_dis < _goal_size){
			near_goal_id = _id;
			change_gamestate(gamestate.goalscene);
			create_change_stage_scene(_id);
			break;
		}
	}
}