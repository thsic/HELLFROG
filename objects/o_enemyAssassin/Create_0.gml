// Inherit the parent event
event_inherited();

if(global.difficulty == Difficulty.VeryHard){
	aim_time_default = aim_time_default*0.66;
}

//ステージ17では特別仕様でアサシンが青くなる
//ハード限定のアサシンは青くならない
if(room == r_stage17
and global.difficulty == Difficulty.VeryHard
and hard_only_enemy == false){
	blue_aura = true;
}