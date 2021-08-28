


if(room == r_tutorial2){
	top_side_y -= top_side_speed/2;
	bottom_side_y -= bottom_side_speed/2;

	if(top_side_y > bottom_side_y){
		instance_destroy();
	}
	
	//color = tutorial_color;//うわがき
}
else{
	top_side_y -= top_side_speed;
	bottom_side_y -= bottom_side_speed;

	if(top_side_y > bottom_side_y){
		instance_destroy();
	}
}