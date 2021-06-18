
//再生時間をすすめる
for(var i=0; i<sound_num; i++){
	var _list_id = sound_playtime_list[i];
	if(!ds_list_empty(_list_id)){//リストの中に要素があるかチェック

		//音が再生されている
		var _list_size = ds_list_size(_list_id);
			
		for(var j=0; j<_list_size; j++){
			_list_id[| j] = _list_id[| j]-1;//時間をすすめていく
				
			if(_list_id[| j] <= 0){
				//再生が終了したので削除するために一旦キューに入れる for文の外で消す
				ds_queue_enqueue(sound_delete_queue, j);
					
			}
		}
			
		if(!ds_queue_empty(sound_delete_queue)){
			//削除する
			var _queue_size = ds_queue_size(sound_delete_queue);
			for(var j=0; j<_queue_size; j++){
				//キューから値を取り出して削除
				var _delete_number = ds_queue_dequeue(sound_delete_queue);
				ds_list_delete(_list_id, _delete_number);
					
			}
			ds_queue_clear(sound_delete_queue);
		}
		//リストの中身ソート(deleteしたとこもソートされて穴埋めになる？)
		ds_list_sort(_list_id, true);
	}
}
