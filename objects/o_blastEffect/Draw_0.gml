//if(total_time mod 5 != 0){
	//最初に広がる円
	
	var time_percent = 1-total_time/total_time_default;
	circle_size = (log2(time_percent*2)+5)/6*effect_size // "/￣" みたいなグラフ
	
	
	var blast_size = 0;
	
	if(blaststart_time <= 0){
		//中央の爆発設定
		var blast_time = total_time_default-total_time-blaststart_time_default;
		var blast_time_default = total_time_default-blaststart_time_default;
		var blast_time_percent = blast_time/blast_time_default;
		blast_size = (log2(blast_time_percent*2)+5)/6*effect_size;
		blast_size = blast_time_percent*effect_size
	}
	else{
		blaststart_time--;
	}
	
	//爆発の大きさを段階的にする
	var _a = effect_size / 4;
	circle_size = floor(circle_size / _a)*_a;
	blast_size = floor(blast_size / _a)*_a;
	
	//描画
	draw_set_color(color);
	draw_set_alpha(alpha);
	
	//if(blast_size > 0){
	var circle_smooth = polygon_number;//円の滑らかさ
	var circle_addangle = 360/circle_smooth;
	draw_primitive_begin(pr_trianglestrip);
	for(var i=0; i<circle_smooth+1; i++){
		//奇数の点設定 外側の円
		var angle = circle_addangle*i+circle_random_angle;
		var temp_x = lengthdir_x(circle_size, angle)+effect_size+x;
		var temp_y = lengthdir_y(circle_size, angle)+effect_size+y;
		draw_vertex(temp_x, temp_y);
		var angle2 = angle
		var angle2 = point_direction(blast_x, blast_y, temp_x-effect_size, temp_y-effect_size);
			
		//偶数 内側の円
		var temp_x2 = lengthdir_x(blast_size, angle2)+effect_size+blast_x;
		var temp_y2 = lengthdir_y(blast_size, angle2)+effect_size+blast_y;
		//draw_line_color(temp_x, temp_y, temp_x2, temp_y2, c_blue, c_blue) テスト用
		//内側の円が外側の円からはみ出ようとした時にはみ出ないように
		if(angle2 > 90 and angle2 < 270){
			if(temp_x > temp_x2){
				temp_x2 = temp_x;
			}
		}
		else{
			if(temp_x < temp_x2){
				temp_x2 = temp_x;
			}
		}
		if(angle2 < 180){
			if(temp_y > temp_y2){
				temp_y2 = temp_y
			}
		}
		else{
			if(temp_y < temp_y2){
				temp_y2 = temp_y
			}
		}
		//描画
		draw_vertex(temp_x2, temp_y2);
			
	}
	draw_primitive_end();
		/*
		draw_set_alpha(0);
		draw_set_color(c_black);
		draw_circle(effect_size, effect_size, blast_size, false);
		draw_set_alpha(1);*/
	/*}
	else{
		draw_circle(effect_size, effect_size, circle_size, false);
	}*/
	
	draw_set_color(color);
	draw_set_alpha(1);
	/*if(surface_half_size){
		draw_surface_ext(surface_id, x-effect_size*2, y-effect_size*2, 2, 2, 0, c_white, 1);
	}
	else{
		draw_surface_ext(surface_id, x-effect_size, y-effect_size, 1, 1, 0, c_white, 1);
	}*/
//}