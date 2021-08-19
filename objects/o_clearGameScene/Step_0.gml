
scene_time_total++;

switch(now_scene){
case GAMECLEARSCENE.FADEIN:
	if(scene_time_total >= fadein_end){
		now_scene = GAMECLEARSCENE.BETWEENTIME1;
	}
break
case GAMECLEARSCENE.BETWEENTIME1:
	if(scene_time_total >= draw_developer_start){
		now_scene = GAMECLEARSCENE.DEVELOPER;
	}
break
case GAMECLEARSCENE.DEVELOPER:
	if(scene_time_total >= draw_developer_end){
		now_scene = GAMECLEARSCENE.BETWEENTIME2;
	}
break
case GAMECLEARSCENE.BETWEENTIME2:
	if(scene_time_total >= draw_tool_start){
		now_scene = GAMECLEARSCENE.TOOL;
	}
break
case GAMECLEARSCENE.TOOL:
	if(scene_time_total >= draw_tool_end){
		now_scene = GAMECLEARSCENE.BETWEENTIME3;
	}
break
case GAMECLEARSCENE.BETWEENTIME3:
	if(scene_time_total >= draw_hellfrog){
		now_scene = GAMECLEARSCENE.HELLFROG;
	}
break
case GAMECLEARSCENE.HELLFROG:
	if(scene_time_total >= draw_timer_start){
		now_scene = GAMECLEARSCENE.TIMER;
	}
break
case GAMECLEARSCENE.TIMER:

break

}
