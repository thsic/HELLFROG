
if(is_in_place(bbox_left, bbox_top, bbox_right, bbox_bottom, o_player.x, o_player.y)
and !instance_exists(o_clearGameScene)){
	instance_create_layer(0, 0, "UI", o_clearGameScene);
	se_play(a_touchPortal, 90, 1);
}

if(time < fadeout_time){
	time++;
}
else{
	if(global.gamestate == gamestate.event
	and fadeout_end == false){
		change_gamestate(gamestate.main);
		fadeout_end = true;
	}
}