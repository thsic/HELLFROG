//時間数える
function count_time(){
	
	if(global.now_stage_param[STAGEPARAM.STAGETYPE] != STAGETYPE.TUTORIAL
	and global.now_stage_param[STAGEPARAM.STAGETYPE] != STAGETYPE.VOID){
		var _add_milisecond = 1 / room_speed;
		global.time_milisecond += _add_milisecond;
	
		if(global.time_milisecond >= 1){
			global.time_second = clamp(global.time_second + 1, 0, 35999);//9h59m59s以上は増えない
			global.time_milisecond -= 1;
		
		}
	}
}