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
	var _next_stage = global.ds_stage_param[# _now_stage_number, STAGEPARAM.NEXTSTAGE];
	var _stage_number = global.ds_stage_param[# _now_stage_number, STAGEPARAM.STAGENUM];
	var _stage_type = global.ds_stage_param[# _now_stage_number, STAGEPARAM.STAGETYPE];
	
	var _stage_name_en = global.ds_stage_type_param[# _stage_type, STAGEPARAM.NAMEEN];
	var _stage_name_jp = global.ds_stage_type_param[# _stage_type, STAGEPARAM.NAMEJP];
	var _stage_bgm = global.ds_stage_type_param[# _stage_type, STAGEPARAM.BGM];
	var _stage_color = global.ds_stage_type_param[# _stage_type, STAGEPARAM.STAGECOLOR];
	var _stage_fonten = global.ds_stage_type_param[# _stage_type, STAGEPARAM.FONTEN];
	var _stage_fontjp = global.ds_stage_type_param[# _stage_type, STAGEPARAM.FONTJP];
	
	global.now_stage_param[STAGEPARAM.STAGEID] = _stage_id;
	global.now_stage_param[STAGEPARAM.NAMEEN] = _stage_name_en;
	global.now_stage_param[STAGEPARAM.NAMEJP] = _stage_name_jp;
	global.now_stage_param[STAGEPARAM.BGM] = _stage_bgm;
	global.now_stage_param[STAGEPARAM.NEXTSTAGE] = _next_stage;
	global.now_stage_param[STAGEPARAM.STAGENUM] = _stage_number;
	global.now_stage_param[STAGEPARAM.STAGETYPE] = _stage_type;
	global.now_stage_param[STAGEPARAM.STAGECOLOR] = _stage_color;
	global.now_stage_param[STAGEPARAM.FONTEN] = _stage_fonten;
	global.now_stage_param[STAGEPARAM.FONTJP] = _stage_fontjp;
	
}