var _checkpoint_width_half = 40;
var _checkpoint_height_half = 40;
var _x1 = x-_checkpoint_width_half;
var _x2 = _checkpoint_width_half+x;
var _y1 = y-_checkpoint_height_half;
var _y2 = _checkpoint_height_half+y;
var _x3 = x-_checkpoint_width_half/2;
var _x4 = _checkpoint_width_half/2+x;
var _y3 = y-_checkpoint_height_half/2;
var _y4 = _checkpoint_height_half/2+y;
var _px = o_player.x;
var _py = o_player.y;

//一番プレイヤーに近いマーカーの範囲内にプレイヤーが入っているかどうか
if(instance_nearest(o_player.x, o_player.y, o_checkPointMarker) == id){
	
	if(is_in_place(_x3, _y3, _x4, _y4, _px, _py) and global.gamestate == gamestate.main){
		//ゲームステートがmainでチェックポイントに近づいていたらステートかえる
		change_gamestate(gamestate.incheckpointbarrier);
	}
	if(global.gamestate == gamestate.incheckpointbarrier){
		//hp回復とかいれる
		if(heal_cooldown = 0){
			heal_cooldown = 8;
			
			player_heal_hp(1, 1);
		}
		else{
			heal_cooldown--;
		}
		/*//動くともっと早く回復する
		var _px = o_player.x;
		var _py = o_player.y;
		if(point_distance(player_heal_point_x_prev, player_heal_point_y_prev, _px, _py) > 5){
			player_heal_hp(3);
			player_heal_point_x_prev = _px;
			player_heal_point_y_prev = _py;
		}*/

		
		//
		//停止するとはやく回復
		var _px = o_player.x;
		var _py = o_player.y;
		var _max_hp = ds_grid_get(global.ds_player_hp, o_gameMgr.now_hp_type, ePHP_param.MaxHp);
		if(stoppingheal_cooldown = 0){
			if(_px = player_x_prev and _py = player_y_prev
			and global.player_hp < _max_hp){
				player_heal_hp(1, 2);
				stoppingheal_cooldown = 2;
			}
		}
		else{
			stoppingheal_cooldown--;
		}
		
		player_x_prev = _px;
		player_y_prev = _py;
	
		if(checkpoint_active == false){
			//チェックポイントを設定
			set_respawn_point(x, y);
			var _checkpoint_number = instance_number(o_checkPointMarker);
		
			//全てのチェックポイントを一旦パッシブにする
			for(var i=0; i<_checkpoint_number; i++){
				var _id = instance_find(o_checkPointMarker, i);
				_id.checkpoint_active = false;
			}
			checkpoint_active = true
		}
		
		//バリアから出たらステート変える
		if(!is_in_place(_x1, _y1, _x2, _y2, _px, _py)){
			change_gamestate(gamestate.main);
		}
	}
}


if(checkpoint_active == true){
	if(subimage_change_time >= 0){
		subimage_change_time--;
	}
	else{
		subimage_change_time = subimage_change_time_default;
		if(subimage < subimage_total){
			subimage++;
		}
		else{
			subimage = 0;
		}
	}
}


