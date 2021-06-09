//ゲームオーバー時処理
function gameover_script(_gameover_knockback_dir){
	change_gamestate(gamestate.gameover);
	if(!layer_sequence_exists("Flont", o_gameMgr.gameover_sequence_element)){
		global.player_hp = 0;
		var _gameover_effect_time = 120;
		var _gameover_knockup_time = 60;
		o_player.gameover_knockback_direction = _gameover_knockback_dir;
		o_gameMgr.gameover_effect_time_default = _gameover_effect_time;
		o_gameMgr.gameover_effect_time = _gameover_effect_time;
		
		o_player.gameover_knockup_time = _gameover_knockup_time;
		o_player.gameover_knockup_time_default = _gameover_knockup_time
		
		//死体を消す
		with(o_enemyCorpse){
			instance_destroy();
		}
		
		//音
		audio_play_sound(SE_GAMEOVER, 90, false);
		
		//シーケンス
		var _sequence_x = o_camera.x;
		var _sequence_y = o_camera.y;
		o_gameMgr.gameover_sequence_element = layer_sequence_create("Flont", _sequence_x, _sequence_y, sq_gameover);
		layer_sequence_speedscale(o_gameMgr.gameover_sequence_element, 0.5);
		layer_sequence_play(o_gameMgr.gameover_sequence_element);
	}
}