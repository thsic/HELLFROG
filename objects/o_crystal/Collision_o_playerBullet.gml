
//対応した壁を消す
var _crystal_wall_num = instance_number(o_crystalWall);
for(var i=0; i<_crystal_wall_num; i++){
	
	var _cry_num = crystal_num;
	with(o_crystalWall){
		if(_cry_num == crystal_num){
			instance_destroy()
		}
	}
}
instance_destroy();
