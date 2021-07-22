//ステージ情報を変数に入れる
function put_stage_param(){
	
	var _param_width = ds_grid_width(global.ds_stage_param);
	var _now_stage_number = noone;
	for(var i=0; i<_param_width; i++){
		var _id = global.ds_stage_param[# i, STAGEPARAM.STAGEID];
		if(_id == room){
			_now_stage_number = i;
			break
		}
		
	}
	
	if(_now_stage_number == noone){
		debug_message("Error! put_stage_param")
		_now_stage_number = STAGENAME.HELLCAVE1;
		
	}
	
	global.now_stage_param = 0;
	
	var _stage_id = global.ds_stage_param[# _now_stage_number, STAGEPARAM.STAGEID];
	var _stage_name_en = global.ds_stage_param[# _now_stage_number, STAGEPARAM.NAMEEN];
	var _stage_name_jp = global.ds_stage_param[# _now_stage_number, STAGEPARAM.NAMEJP];
	var _stage_bgm = global.ds_stage_param[# _now_stage_number, STAGEPARAM.BGM];
	var _next_stage = global.ds_stage_param[# _now_stage_number, STAGEPARAM.NEXTSTAGE];
	
		
	global.now_stage_param[STAGEPARAM.STAGEID] = _stage_id;
	global.now_stage_param[STAGEPARAM.NAMEEN] = _stage_name_en;
	global.now_stage_param[STAGEPARAM.NAMEJP] = _stage_name_jp;
	global.now_stage_param[STAGEPARAM.BGM] = _stage_bgm;
	global.now_stage_param[STAGEPARAM.NEXTSTAGE] = _next_stage;
	
}