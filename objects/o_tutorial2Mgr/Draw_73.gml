

var _num = instance_number(o_goal);
for(var i=0; i<_num; i++){
	var _id = instance_find(o_goal, i);
	
	if(_id.hidden_goal){
		draw_set_color(c_white);
		draw_set_halign(fa_middle);
		draw_set_font(fo_kagurazaka12);
		var _text = global.ds_text[# TEXT.TUTORIAL_HIDDENGOAL, global.language];
		draw_text(_id.x, _id.y-24, _text);
	}
}
