//最後にキーが入力されてからの時間を入れる処理
//ボタン設定の数値とenum.eKLPFの順番は合わせること！！！

var _ds_klpf = global.ds_keyboard_last_pressed_frame
var _ds_height = ds_grid_height(_ds_klpf);

for(var i=0; i<_ds_height; i++){
	ds_grid_add(_ds_klpf, 0, i, 1);
}

var _button_type = -1;
var _button = "";

for(var i=0; i<_ds_height; i++){
	#region ボタン設定
	switch(i){
	case 0:
		_button_type = 0;
		_button = global.up_key;
	break
	case 1:
		_button_type = 0;
		_button = global.down_key;
	break
	case 2:
		_button_type = 0;
		_button = global.left_key;
	break
	case 3:
		_button_type = 0;
		_button = global.right_key;
	break
	case 4:
		_button_type = 0;
		_button = global.interact_key;
	break
	case 5:
		_button_type = 0;
		_button = global.menu_key;
	break
	case 6:
		_button_type = 1;
		_button = global.shotgun_button;
	break
	case 7:
		_button_type = 1;
		_button = global.hook_button;
	break
	default:
		_button_type = -1;
		_button = noone;
	break
	}
	#endregion
	switch(_button_type){
	case 0://キーボード
		if(keyboard_check_pressed(_button)){
			ds_grid_set(_ds_klpf, 0, i, 0);
		}
	break
	case 1://マウス
		if(mouse_check_button_pressed(_button)){
			ds_grid_set(_ds_klpf, 0, i, 0);
		}
	break
	default:
		//:)
	break
	}
}


enum eKLPF{
	up,
	down,
	left,
	right,
	interact,
	menu,
	m_shotgun,
	m_hook,
	
}