
var _px = o_player.x;
var _py = o_player.y;
var _ui_x = _px-30//+46;
var _ui_y = _py+30//-10;


if(draw_move_ui){
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_set_font(fo_uiText);
	draw_set_valign(fa_middle)
	var _text = global.ds_text[# TEXT.TUTORIAL_MOVE, global.launguage];
	
	draw_sprite(s_moveUi, 0, _ui_x, _ui_y);
	draw_text(_ui_x+20, _ui_y, _text);
	
}

if(draw_hook_ui){
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_set_font(fo_uiText);
	draw_set_valign(fa_middle)
	var _text = global.ds_text[# TEXT.TUTORIAL_HOOK, global.launguage];
	
	draw_sprite(s_rightClick, 0, _ui_x, _ui_y);
	draw_text(_ui_x+20, _ui_y, _text);
}

if(draw_shot_ui){
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_set_font(fo_uiText);
	draw_set_valign(fa_middle)
	var _text = global.ds_text[# TEXT.TUTORIAL_SHOT, global.launguage];
	
	draw_sprite(s_leftClick, 0,_ui_x, _ui_y);
	draw_text(_ui_x+20, _ui_y, _text);
}

if(draw_kill_ui){
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_set_font(fo_uiText);
	draw_set_valign(fa_middle)
	var _text = global.ds_text[# TEXT.TUTORIAL_KILL, global.launguage];
	
	draw_sprite(s_leftClick, 0, _ui_x, _ui_y);
	//draw_set_color(c_red);
	draw_text(_ui_x+20, _ui_y, _text);
}

draw_set_font(fo_uiText);

draw_set_halign(fa_middle);
draw_set_valign(fa_top);


var _num = instance_number(o_goal);
for(var i=0; i<_num; i++){
	var _id = instance_find(o_goal, i);
	
	if(_id.hidden_goal){
		draw_set_color(c_white);
		var _text = global.ds_text[# TEXT.TUTORIAL_HIDDENGOAL, global.launguage];
	}
	else{
		draw_set_color(c_red);
		var _text = global.ds_text[# TEXT.TUTORIAL_HELL, global.launguage];
	}
	draw_text(_id.x, _id.y-24, _text);
}



draw_set_default();