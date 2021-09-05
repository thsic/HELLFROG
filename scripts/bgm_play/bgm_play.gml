//bgmの再生
function bgm_play(_index, _priority, _loops){
	
	//現在のbgmと再生したいbgmが違う場合のみ再生処理、同じ場合は音量調節のみ
	if(global.now_bgm != _index){
		
		//現在のbgmを止める
		if(global.now_bgm != noone){
			audio_stop_sound(global.now_bgm);
		}
		
		var _bgm_volume = global.bgm_volume * o_soundMgr.sound_default_volume[_index];
		global.now_bgm = _index;
	
		if(_index != noone){
			audio_sound_gain(_index, _bgm_volume, 0);//音量の設定
	
			//再生
			audio_play_sound(global.now_bgm, _priority, _loops);
		}
		else{
			audio_stop_sound(global.now_bgm);
		}
	}
	else{
		var _bgm_volume = global.bgm_volume * o_soundMgr.sound_default_volume[_index];
		audio_sound_gain(global.now_bgm, _bgm_volume, 0);
	}
}