
if(spawn_enemy == noone){
	instance_destroy();
}

var _t = bbox_top;
var _b = bbox_bottom;
var _l = bbox_left;
var _r = bbox_right;
var _do_spawn = false;

if(is_in_place(_l, _t, _r, _b, o_player.x, o_player.y)){
	if(spawn_count <= 0){
		spawn_count = spawn_span;
		
		//敵の数が多すぎると出現しない
		var _enemy_num = instance_number(o_enemy);
		
		if(_enemy_num < spawn_limit){
			_do_spawn = true;
		}
		
		
		
	}
	else{
		spawn_count--;
	}
}


if(_do_spawn){
	var _spr_w = sprite_get_width(object_get_sprite(spawn_enemy));
	var _spr_h = sprite_get_height(object_get_sprite(spawn_enemy));
	
	var _spawn_x = irandom_range(_l+_spr_w, _r-_spr_w);
	var _spawn_y = irandom_range(_t+_spr_h, _b-_spr_h);
	
	with(instance_create_layer(_spawn_x, _spawn_y, "Enemies", spawn_enemy)){
		lock_spawn_time = 30;
		state = EnemyState.WaitForSpawn;
		soul_enemy = false;
	}
}
