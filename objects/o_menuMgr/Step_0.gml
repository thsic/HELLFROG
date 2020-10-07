var _x = o_camera.x;
var _y = o_camera.y;


switch(state){
case Menustate.Closing://メニューが完全に閉じている

	if(keyboard_check_pressed(global.menu_key)) and global.gamestate == gamestate.main{
		change_gamestate(gamestate.menu);
		state = Menustate.OpenStart;
	}
	
break
case Menustate.OpenStart://開き始めた瞬間 1f

	openmenu_sequence_element = layer_sequence_create("UI", _x, _y, sq_openMenu);
	layer_sequence_play(openmenu_sequence_element);
	state = Menustate.OpenSequence;
	
break
case Menustate.OpenSequence://開くシーケンス描画中

	layer_sequence_x(openmenu_sequence_element, _x);
	layer_sequence_y(openmenu_sequence_element, _y);
	if(layer_sequence_is_finished(openmenu_sequence_element) == true){
		state = Menustate.Main;
	}	
	
break
case Menustate.Main://プレイヤーが操作できる メニューのいろいろ
	
	layer_sequence_x(openmenu_sequence_element, _x);
	layer_sequence_y(openmenu_sequence_element, _y);
	
	//メニューを閉じる
	if(keyboard_check_pressed(global.menu_key)){
		state = Menustate.CloseStart;
	}
	
break
case Menustate.CloseStart://閉じ始める 1f
	
	closemenu_sequence_element = layer_sequence_create("UI", _x, _y, sq_closeMenu);
	layer_sequence_play(closemenu_sequence_element);
	state = Menustate.CloseSequence;
	//lagging_start(10, ac_lagProbability);
	
	
break
case Menustate.CloseSequence://閉じるシーケンス描画中
	
	if(layer_sequence_exists("UI", openmenu_sequence_element)){
		layer_sequence_destroy(openmenu_sequence_element);
	}
	layer_sequence_x(closemenu_sequence_element, _x);
	layer_sequence_y(closemenu_sequence_element, _y);
	if(layer_sequence_is_finished(closemenu_sequence_element) == true){
		state = Menustate.Closing;
		//change_gamestate(gamestate.main);
		layer_sequence_destroy(closemenu_sequence_element);
	}	
	
break
default:
sdm("Error! o_menuMgr")
break
}
