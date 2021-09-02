
if(global.gamestate == gamestate.event){
	if(fadeout_time > 0){
		fadeout_time--;
		fade_alpha = (fadeout_time / fadeout_time_default);
		fade_alpha = ceil(fade_alpha*6)/6;
		
		global.gamestop = true;
		global.playerstop = true;
		o_player.now_shotgun = eG_type.Empty;
	
	}
	else{
		if(playerstop_time > 0){
			playerstop_time--
			global.gamestop = true;
			global.playerstop = true;
		
		}
		else{
			change_gamestate(gamestate.main);
			draw_move_ui = true;
		}
	
	}
}

function tutorial_reset_trigger(){
	draw_move_ui = false;
	draw_hook_ui = false;
	draw_shot_ui = false;
	draw_kill_ui = false;
	draw_hell_ui = false;
	shot_ui_trigger = false;
	hook_ui_trigger = false;
}


if(draw_move_ui){
	
	if(o_player.player_move_speed != 0){
		hook_enable = true;
	}
	if(!hook_enable){
		//動かないとフックは撃てない
		//o_player.hookshot_cooldown = 1;
		o_player.now_shotgun = eG_type.Empty;
	}
	
}


if(hook_ui_trigger){
	if(ui_change_time > 0){
		ui_change_time--;
	}
	else{
		draw_hook_ui = true;
	}
}

if(shot_ui_trigger){
	if(ui_change_time > 0){
		ui_change_time--;
	}
	else{
		draw_shot_ui = true;
	}
}

for(var i=0; i<trigger_num; i++){
	if(trigger[i] == 1){
		trigger[i] = 2;
		switch(i){
		case 0:
			tutorial_reset_trigger();
			if(!hook_ui_trigger){
				hook_ui_trigger = true;
				draw_move_ui = false;
			}
		break
		case 1:
			tutorial_reset_trigger();
			draw_hook_ui = false;
		break
		case 2:
			tutorial_reset_trigger();
			if(!shot_ui_trigger){
				//銃ゲット
				shot_ui_trigger = true;
				ui_change_time = ui_change_time_base;
				o_player.now_shotgun = eG_type.CursedGun;
				instance_destroy(o_hellgun);
				se_play(a_getgun, 80, 1);
			}
		break
		case 3:
			tutorial_reset_trigger();
			draw_shot_ui = false;
		break
		case 4:
			tutorial_reset_trigger();
			draw_kill_ui = true;
		break
		case 5:
			tutorial_reset_trigger();
			draw_kill_ui = false;
		break
		case 6:
			/*//へるがん
			se_play(a_getgun, 80, 1);
			o_player.now_shotgun = eG_type.CursedGun;
			instance_destroy(o_hellgun);*/
		break
		}
	}
}




