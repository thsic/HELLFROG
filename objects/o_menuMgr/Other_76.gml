if(event_data[? "event_type"] == "sequence event"){
	switch (event_data[? "message"])
	{
	case "lagging start":
		change_gamestate(gamestate.main);
		lagging_start(10, ac_lagRatio);//メニューを閉じるときラグを発生させる
	break;
	}
}