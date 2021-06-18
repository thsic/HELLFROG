//音 

//サウンドが何個あるか数える
for(var i=0; i<100; i++){
	if(!audio_exists(i)){
		sound_num = i
		break;
	}
}

for(var i=0; i<sound_num; i++){
	
	sound_playtime_list[i] = ds_list_create();//音の残り時間リストid
	sound_default_volume[i] = audio_sound_get_gain(i);//音のデフォルトボリューム
	sound_default_length[i] = ceil(audio_sound_length(i)*60);//音のデフォルト長さ 1秒単位でしかはかれないので60の倍数が入る
	sound_name[i] = audio_get_name(i);
	
}

sound_delete_queue =  ds_queue_create();

