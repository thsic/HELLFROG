
var _px = o_player.x;
var _py = o_player.y;

if(draw_move_ui){
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_set_font(fo_uiText);
	draw_set_valign(fa_middle)
	var _text = global.ds_text[# TEXT.TUTORIAL_MOVE, global.launguage];
	
	draw_sprite(s_moveUi, 0, _px+46, _py-10);
	draw_text(_px+66, _py-10, _text);
	
}

if(draw_hook_ui){
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_set_font(fo_uiText);
	draw_set_valign(fa_middle)
	var _text = global.ds_text[# TEXT.TUTORIAL_HOOK, global.launguage];
	
	draw_sprite(s_rightClick, 0, _px+46, _py-10);
	draw_text(_px+66, _py-10, _text);
}

if(draw_shot_ui){
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_set_font(fo_uiText);
	draw_set_valign(fa_middle)
	var _text = global.ds_text[# TEXT.TUTORIAL_SHOT, global.launguage];
	
	draw_sprite(s_leftClick, 0, _px+46, _py-10);
	draw_text(_px+66, _py-10, _text);
}

if(draw_kill_ui){
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_set_font(fo_uiText);
	draw_set_valign(fa_middle)
	var _text = global.ds_text[# TEXT.TUTORIAL_KILL, global.launguage];
	
	draw_sprite(s_leftClick, 0, _px+46, _py-10);
	//draw_set_color(c_red);
	draw_text(_px+66, _py-10, _text);
}

draw_set_font(fo_uiText);
draw_set_color(c_red);
draw_set_halign(fa_middle);
draw_set_valign(fa_top);
var _text = global.ds_text[# TEXT.TUTORIAL_HELL, global.launguage];
draw_text(o_goal.x, o_goal.y-24, _text);



draw_set_default();