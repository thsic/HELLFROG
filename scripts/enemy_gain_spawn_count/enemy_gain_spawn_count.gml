//スポーン時間を進める
function enemy_gain_spawn_count(_count){
	o_lockMgr.lock_spawn_count += _count;
}