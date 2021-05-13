//
function create_change_stage_scene(_goal_id){
	with(instance_create_layer(0, 0, "GameObjects", o_changeStageScene)){
		goal_id = _goal_id;
	}
}