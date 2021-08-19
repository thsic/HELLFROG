

switch(now_scene){
case GAMECLEARSCENE.FADEIN:
	var _fade_alpha = ceil(scene_time_total / fadein_end * 8)/8;
	
	draw_set_alpha(_fade_alpha);
	draw_set_color(bg_color);
	draw_rectangle(0, 0, global.camera_width, global.camera_height, false);
	
break
case GAMECLEARSCENE.BETWEENTIME1:
case GAMECLEARSCENE.BETWEENTIME2:
case GAMECLEARSCENE.BETWEENTIME3:
	draw_set_color(bg_color);
	draw_rectangle(0, 0, global.camera_width, global.camera_height, false);
break
case GAMECLEARSCENE.DEVELOPER:
	
	draw_set_color(bg_color);
	draw_rectangle(0, 0, global.camera_width, global.camera_height, false);
	
	var _text1 = global.ds_text[# TEXT.CLEARTEXT_DEVELOPER1, Launguage.English];
	var _text2 = global.ds_text[# TEXT.CLEARTEXT_DEVELOPER2, Launguage.English];
	var _text1_y = global.camera_height/4;
	var _text2_y = global.camera_height/5*3;
	
	draw_set_color(text_color);
	draw_set_halign(fa_middle);
	draw_set_font(fo_stageTitle32);
	draw_text(global.camera_width/2, _text1_y, _text1);
	
	draw_set_font(fo_stageTitle58);
	draw_text(global.camera_width/2, _text2_y, _text2);
break
case GAMECLEARSCENE.TOOL:
	draw_set_color(bg_color);
	draw_rectangle(0, 0, global.camera_width, global.camera_height, false);
	
	var _text1 = global.ds_text[# TEXT.CLEARTEXT_TOOL1, Launguage.English];
	var _text2 = global.ds_text[# TEXT.CLEARTEXT_TOOL2, Launguage.English];
	var _text1_y = global.camera_height/4;
	var _text2_y = global.camera_height/5*3;
	
	draw_set_color(text_color);
	draw_set_halign(fa_middle);
	draw_set_font(fo_stageTitle32);
	draw_text(global.camera_width/2, _text1_y, _text1);
	
	draw_set_font(fo_stageTitle32);
	draw_text(global.camera_width/2, _text2_y, _text2);
break
case GAMECLEARSCENE.HELLFROG:
	draw_set_color(bg_color);
	draw_rectangle(0, 0, global.camera_width, global.camera_height, false);
	
	var _text1 = global.ds_text[# TEXT.CLEARTEXT_HELLFROG, Launguage.English];
	var _text1_y = global.camera_height/2;
	
	draw_set_color(text_color);
	draw_set_halign(fa_middle);
	draw_set_font(fo_stageTitle32);
	draw_text(global.camera_width/2, _text1_y, _text1);
	
break
case GAMECLEARSCENE.TIMER:
	draw_set_color(bg_color);
	draw_rectangle(0, 0, global.camera_width, global.camera_height, false);
	
	var _text1 = global.ds_text[# TEXT.CLEARTEXT_HELLFROG, Launguage.English];
	var _text2 = global.ds_text[# TEXT.CLEARTEXT_TIMER, Launguage.English];
	var _text3 = get_timer_string(global.time_second, global.time_milisecond);
	var _text1_y = global.camera_height/2;
	var _text2_y = global.camera_height/5*4;
	var _text3_y = global.camera_height/5*4+32;
	
	draw_set_color(text_color);
	draw_set_halign(fa_middle);
	draw_set_font(fo_stageTitle48);
	draw_text(global.camera_width/2, _text1_y, _text1);
	
	draw_set_font(fo_stageTitle32);
	draw_text(global.camera_width/2, _text2_y, _text2);
	draw_text(global.camera_width/2, _text3_y, _text3);
break
}

draw_set_default();

draw_text(0, 0, scene_time_total)