

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
case GAMECLEARSCENE.BETWEENTIME4:
	draw_set_color(bg_color);
	draw_rectangle(0, 0, global.camera_width, global.camera_height, false);
	
	/*var _alpha = ceil((scene_time_total-draw_tool_end)/(draw_hellfrog-draw_tool_end-30)*16)/16;
	draw_set_color(bg_color2);
	draw_set_alpha(_alpha);
	draw_rectangle(0, 0, global.camera_width, global.camera_height, false);*/
	
break
case GAMECLEARSCENE.THANKYOU:
	draw_set_color(bg_color);
	draw_rectangle(0, 0, global.camera_width, global.camera_height, false);
	
	var _text1 = global.ds_text[# TEXT.CLEARTEXT_THANKYOU, language.English];
	var _text1_y = global.camera_height/2;
	
	//二回
	_text1 = string_replace(_text1, "@", chr(13));
	_text1 = string_replace(_text1, "@", chr(13));
	
	draw_set_color(text_color);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_middle);
	draw_set_font(fo_ending32);
	draw_text(global.camera_width/2, _text1_y, _text1);
	
break
case GAMECLEARSCENE.DEVELOPER:
	
	draw_set_color(bg_color);
	draw_rectangle(0, 0, global.camera_width, global.camera_height, false);
	
	var _text1 = global.ds_text[# TEXT.CLEARTEXT_DEVELOPER1, language.English];
	var _text2 = global.ds_text[# TEXT.CLEARTEXT_DEVELOPER2, language.English];
	var _text1_y = global.camera_height/4;
	var _text2_y = global.camera_height/5*3;
	
	draw_set_color(text_color2);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_middle);
	draw_set_font(fo_ending12);
	draw_text(global.camera_width/2, _text1_y, _text1);
	
	draw_set_color(text_color);
	draw_set_font(fo_ending72);
	draw_text(global.camera_width/2, _text2_y, _text2);
break
case GAMECLEARSCENE.TOOL:
	draw_set_color(bg_color);
	draw_rectangle(0, 0, global.camera_width, global.camera_height, false);
	
	var _text1 = global.ds_text[# TEXT.CLEARTEXT_TOOL1, language.English];
	var _text2 = global.ds_text[# TEXT.CLEARTEXT_TOOL2, language.English];
	var _text1_y = global.camera_height/8;
	var _text2_y = global.camera_height/5*3;
	
	//二回
	_text2 = string_replace(_text2, "@", chr(13));
	_text2 = string_replace(_text2, "@", chr(13));
	
	draw_set_color(text_color2);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_middle);
	draw_set_font(fo_ending12);
	draw_text(global.camera_width/2, _text1_y, _text1);
	
	draw_set_color(text_color);
	draw_set_font(fo_ending24);
	draw_text(global.camera_width/2, _text2_y, _text2);
break
case GAMECLEARSCENE.HELLFROG:
	draw_set_color(bg_color2);
	draw_rectangle(0, 0, global.camera_width, global.camera_height, false);
	
	
	var _text1 = global.ds_text[# TEXT.CLEARTEXT_HELLFROG, language.English];
	var _text1_y = global.camera_height/10*4;;
	
	draw_set_color(text_color3);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_middle);
	draw_set_font(fo_ending32);
	draw_text(global.camera_width/2, _text1_y, _text1);
	
break
case GAMECLEARSCENE.TIMER:
	draw_set_color(bg_color2);
	draw_rectangle(0, 0, global.camera_width, global.camera_height, false);
	
	var _text1 = global.ds_text[# TEXT.CLEARTEXT_HELLFROG, language.English];
	var _text2 = global.ds_text[# TEXT.CLEARTEXT_TIMER, language.English];
	var _text3 = get_timer_string(global.time_second, global.time_milisecond);
	var _text1_y = global.camera_height/10*4;
	var _text2_y = global.camera_height/5*4;
	var _text3_y = global.camera_height/5*4+32;
	
	draw_set_color(text_color3);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_middle);
	draw_set_font(fo_ending32);
	draw_text(global.camera_width/2, _text1_y, _text1);
	
	draw_set_color(text_color2);
	draw_set_font(fo_ending12);
	draw_text(global.camera_width/2, _text2_y, _text2);
	draw_text(global.camera_width/2, _text3_y, _text3);
break
}

if(back_to_title){
	var _alpha = 1-title_fade_time / title_fade_time_base;
	_alpha = ceil(_alpha*8)/8;
	draw_set_alpha(_alpha);
	draw_set_color(bg_color2);
	
	draw_rectangle(0, 0, global.camera_width, global.camera_height, false);
	
}

draw_set_default();
