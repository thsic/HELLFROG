
if(!collision_player
and global.gamestate == gamestate.main){
	collision_player = true;
	se_play(a_findHiddenRoom, 90, 1);
}

