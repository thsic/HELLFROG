/// @description Change State

if(next_state != noone){
	state = next_state;
}
next_state = noone;



if(!check_difficulty){
	check_difficulty = true;
	
	//ハードモード限定の敵ならノーマルでは消す
	if(global.difficulty == Difficulty.Normal
	and hard_only_enemy == true){
		enemy_dead(id, false);	
	}

	//ステージ14では特別仕様でハード限定の敵以外は消す
	if(room == r_stage14
	and global.difficulty == Difficulty.VeryHard
	and hard_only_enemy == false){
		//instance_destroy();
		enemy_dead(id, false);
	}
}