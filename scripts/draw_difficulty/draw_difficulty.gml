//
function draw_difficulty(){
	//難易度描画
	if(global.difficulty == Difficulty.Normal){
		var _difficulty = "NORMAL"
		draw_set_color(diff_normal_col);
	}
	else{
		if(global.true_hell
		and global.achievement_param[# ACHIEVEMENT_NAME.ALLCLEAR_TRUEHELLMODE, ACHIEVEMENT_PARAM.GETTABLE]){
			var _difficulty = "TRUEHELL"
		}
		else{
			var _difficulty = "VERYHARD"
		}
		
		draw_set_color(diff_vh_col);
	}
	draw_set_halign(fa_right);
	draw_set_valign(fa_bottom);
	
	draw_set_font(fo_kagurazaka12);
	
	if(global.draw_time_enable){
		var _x = global.camera_width-64;
	}
	else{
		var _x = global.camera_width-16;
	}
	draw_text(_x, global.camera_height-16, _difficulty);
	
}