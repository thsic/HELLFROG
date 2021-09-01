//
function draw_stage_name(){
	if(!instance_exists(o_stageStartScene)
	and global.gamestate != gamestate.stagestartscene){
		var _center_x = global.camera_width/2;
		var _y = 6;
	
		draw_set_color(c_white);
		draw_set_valign(fa_top);
		draw_set_halign(fa_middle);
		draw_set_font(fo_dougenzaka16);
	
		if(global.language == language.English){
			var _stage_name = string(global.now_stage_param[STAGEPARAM.NAMEEN]);
		}
		else{
			var _stage_name = string(global.now_stage_param[STAGEPARAM.NAMEJP]);
		}
		_stage_name = string_replace(_stage_name, "@", "");
	
		if(global.now_stage_param[STAGEPARAM.STAGENUM] == 0){
			var _stage_num = "";
		}
		else{
			var _stage_num = string(global.now_stage_param[STAGEPARAM.STAGENUM]);
		}
	
		var _text = _stage_name+" "+_stage_num;
	
		draw_text(_center_x, _y, _text);
	}
	
	
}