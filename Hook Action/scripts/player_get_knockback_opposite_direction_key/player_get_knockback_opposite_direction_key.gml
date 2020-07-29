//ノックバック方向とは逆方向のキーを取得

var result = noone;
if(inertia_enable == true){
	var opposite_direction = knockback_direction+180;
	var closest_direction_test = 0;
	var closest_direction_type = 0;
	var test_direction = 0;
	
	//上下左右で一番近い角度のキーを求める
	for(var i=0; i<4; i++){
		closest_direction_test = i*90;
		test_direction = abs(angle_difference(closest_direction_test, opposite_direction));
		if(test_direction < 45){
			closest_direction_type = i;
			break
		}
	}
	
	
	switch(closest_direction_type){
	case 0:
		result = global.right_key;
	break
	case 1:
		result = global.up_key;
	break
	case 2:
		result = global.left_key;
	break
	case 3:
		result = global.down_key;
	break
	}
	
}
return result