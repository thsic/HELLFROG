
if(global.floor_enemy_number_now <= 0){
	//敵が全滅
	if(!instance_exists(o_clearGameScene)){
		instance_create_layer(0, 0, "GameObjects", o_clearGameScene);
	}
}