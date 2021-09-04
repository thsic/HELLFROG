
scene_time_total++;

switch(now_scene){
case GAMECLEARSCENE.FADEIN:
	if(scene_time_total >= fadein_end){
		now_scene = GAMECLEARSCENE.BETWEENTIME1;
	}
break
case GAMECLEARSCENE.BETWEENTIME1:
	if(scene_time_total >= draw_tk4p_start){
		now_scene = GAMECLEARSCENE.THANKYOU;
		se_play(a_clearSound, 90, 1);
	}
break
case GAMECLEARSCENE.THANKYOU:
	if(scene_time_total >= draw_tk4p_end){
		now_scene = GAMECLEARSCENE.BETWEENTIME2;
	}
break
case GAMECLEARSCENE.BETWEENTIME2:
	if(scene_time_total >= draw_developer_start){
		now_scene = GAMECLEARSCENE.DEVELOPER;
		se_play(a_clearSound, 90, 1);
	}
break
case GAMECLEARSCENE.DEVELOPER:
	if(scene_time_total >= draw_developer_end){
		now_scene = GAMECLEARSCENE.BETWEENTIME3;
	}
break
case GAMECLEARSCENE.BETWEENTIME3:
	if(scene_time_total >= draw_tool_start){
		now_scene = GAMECLEARSCENE.TOOL;
		se_play(a_clearSound, 90, 1);
	}
break
case GAMECLEARSCENE.TOOL:
	if(scene_time_total >= draw_tool_end){
		now_scene = GAMECLEARSCENE.BETWEENTIME4;
	}
break
case GAMECLEARSCENE.BETWEENTIME4:
	if(scene_time_total >= draw_hellfrog){
		now_scene = GAMECLEARSCENE.HELLFROG;
		se_play(a_clearSoundLast, 90, 1);
	}
break
case GAMECLEARSCENE.HELLFROG:
	if(scene_time_total >= draw_timer_start){
		now_scene = GAMECLEARSCENE.TIMER;
	}
break
case GAMECLEARSCENE.TIMER:
	if(mouse_check_button_pressed(global.shotgun_button)
	and !back_to_title){
		back_to_title = true;
	}
break

}

//タイトルに戻る
if(back_to_title){
	if(title_fade_time > 0){
		title_fade_time--
	}
	else{
		reset_game();
	}
}
