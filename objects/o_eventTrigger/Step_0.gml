
if(trigger_num == -1){
	instance_destroy()//設定されてないならミスなので消す
}

var _px = o_player.x;
var _py = o_player.y;

if(is_in_place(bbox_left, bbox_top, bbox_right, bbox_bottom, _px, _py)){
	switch(room){
	case r_tutorial:
		o_tutorialMgr.trigger[trigger_num] = 1;
	break
	case r_tutorial2:
		o_tutorial2Mgr.trigger[trigger_num] = 1;
	break
	}
	
	instance_destroy();
}
