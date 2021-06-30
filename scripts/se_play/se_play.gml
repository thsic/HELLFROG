//効果音の再生 _simul_playは同時に再生した時に音量をそのままにするか小さくするかどうか
function se_play(_index, _priority, _simul_decay){
	//リストの取得
	var _smgr = o_soundMgr;
	var _list_id = _smgr.sound_playtime_list[_index];
	var _list_size = ds_list_size(_list_id);
	
	//同時再生数が多すぎる場合は再生しない
	if(_list_size < 6 and audio_exists(_index)){
		
		if(_simul_decay != 1){
			//同時再生すると音量が下がる場合
			if(!ds_list_empty(_list_id)){
				//既に再生されている
				var _volume = _smgr.sound_default_volume[_index] * power(_simul_decay, _list_size) * global.se_volume;
				
			}
			else{
				var _volume = _smgr.sound_default_volume[_index] * global.se_volume;
			}
			
	
		}
		else{
			//同時再生有効の場合
			var _volume = _smgr.sound_default_volume[_index] * global.se_volume;
			
		}
		
		audio_sound_gain(_index, _volume, 0);//音量の設定

		//リストに追加 一応ソートもする
		var _sound_length = _smgr.sound_default_length[_index];
		ds_list_sort(_list_id, true);
		ds_list_add(_list_id, _sound_length);
		
		//再生
		audio_play_sound(_index, _priority, false);
	}
}