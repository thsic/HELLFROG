
if(!goal_enable){
	goal_enable_time--;
	
	if(goal_enable_time <= 0){
		goal_enable = true;
	}
}