
if(global.floor_enemy_number_now <= 0){
	//敵が全滅
	instance_create_layer(0, 0, "GameObjects", o_clearGameScene);
}