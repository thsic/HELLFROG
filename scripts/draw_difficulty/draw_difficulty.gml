//
function draw_difficulty(){
	//難易度描画
	if(global.difficulty == Difficulty.Normal){
		var _difficulty = "NORMAL"
		draw_set_color(diff_normal_col);
	}
	else{
		var _difficulty = "VERYHARD"
		draw_set_color(diff_vh_col);
	}
	draw_set_halign(fa_right);
	draw_set_valign(fa_bottom);
	
	draw_set_font(fo_kagurazaka12);
	draw_text(global.camera_width-64, global.camera_height-16, _difficulty);
	
}