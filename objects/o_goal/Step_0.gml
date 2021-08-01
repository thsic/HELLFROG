
if(!goal_enable){
	goal_enable_time--;
	
	if(goal_enable_time <= 0){
		goal_enable = true;
	}
}

if(object_check_within_view_range(0, id)){
	on_screen = true;
}
else{
	on_screen = false;
}