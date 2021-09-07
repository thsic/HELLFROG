// Inherit the parent event
event_inherited();

if(global.difficulty == Difficulty.VeryHard){
	aim_time_default = aim_time_default*0.66;
}

//ステージ17では特別仕様ですべてのアサシンが青くなる
if(room == r_stage17
and global.difficulty == Difficulty.VeryHard){
	blue_aura = true;
}