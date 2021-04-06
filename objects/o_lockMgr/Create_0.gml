
//リスト生成
lock_list_data = ds_list_create();
repeat(10){
	ds_list_add(lock_list_data, 0);
}

lock_spawn_count = 1;//1フレームに進めるロック中の敵スポーン時間
