//
function effect_create_blast(_x, _y, _size, _total_time, _blast_time, _color, _alpha, _polygon_number){
	with(instance_create_layer(_x, _y, "Effects", o_blastEffect)){
		total_time_default = _total_time;
		total_time = _total_time;
		blaststart_time_default = _blast_time;
		blaststart_time = _blast_time;
		color = _color;
		alpha = _alpha;
		effect_size = _size;
		polygon_number = _polygon_number;
		
		circle_random_angle = random(360);
		
		var _rnd_range = effect_size / 3
		blast_x = x+irandom_range(-_rnd_range, _rnd_range);
		blast_y = y+irandom_range(-_rnd_range, _rnd_range);
	}
}