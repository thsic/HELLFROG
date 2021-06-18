set_default_keyconfig();//キーコンフィグ設定
set_window_size(WINDOW_SIZE_MAGNIFICATION)
instance_create_layer(0, 0, "Instances", o_debugMgr);
instance_create_layer(0, 0, "Instances", o_soundMgr);


room_goto(FIRST_ROOM);
