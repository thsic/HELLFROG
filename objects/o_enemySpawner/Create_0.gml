
spawn_count = 0;

//アルターでは難易度によってスポーン頻度が変わる
if(room == r_stage21
and global.difficulty == Difficulty.VeryHard){
	if(global.true_hell){
		spawn_count = spawn_count*0.75;
	}
	else{
		spawn_count = spawn_count*0.85;
	}
	
}
