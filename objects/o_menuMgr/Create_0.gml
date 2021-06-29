enum Menustate{
	OpenStart,
	OpenSequence,
	Main,
	CloseStart,
	CloseSequence,
	Closing,
	Option,
	AssistMode,
	SaveAndQuit,
}
enum ButtonName{
	Resume,
	Retry,
	Option,
	SaveAndQuit,
	AssistMode,
	SEVol,
	BGMVol,
	Launguage,
	EnemyDamage,
	DotDamage,
	PlayerAttackDamage,
}
enum ButtonParam{
	X,
	Y,
	Width,
	Height,
	Text,
	OnCursor,
}
state = Menustate.Closing;
openmenu_sequence_element = noone;
closemenu_sequence_element = noone;
after_menu_gamestate = gamestate.main;

grab_bar = noone;
button_param = ds_grid_create(15, 10);
#region ボタンパラメータ設定
	var _cw = global.camera_width;
	var _ch = global.camera_height;
	var _button_height_base = 24;
	
	var _button_name;
	_button_name[0] = ButtonName.Resume;
	_button_name[1] = ButtonName.Option;
	_button_name[2] = ButtonName.Retry;
	_button_name[3] = ButtonName.AssistMode;
	_button_name[4] = ButtonName.SaveAndQuit;
	for(var i=0; i<array_length(_button_name); i++){
		button_param[# _button_name[i], ButtonParam.X] = _cw/2;
		button_param[# _button_name[i], ButtonParam.Width] = _cw/2;
		button_param[# _button_name[i], ButtonParam.Height] = _button_height_base;
	}
	
	
	button_param[# ButtonName.Resume, ButtonParam.Y] = _ch /3;
	button_param[# ButtonName.Retry, ButtonParam.Y] = _ch /3 + _button_height_base * 1;
	button_param[# ButtonName.Option, ButtonParam.Y] = _ch /3 + _button_height_base * 2;
	button_param[# ButtonName.AssistMode, ButtonParam.Y] = _ch /3 + _button_height_base * 3;
	button_param[# ButtonName.SaveAndQuit, ButtonParam.Y] = _ch /3 + _button_height_base * 4;
	
	button_param[# ButtonName.Resume, ButtonParam.Text] = "RESUME";
	button_param[# ButtonName.Retry, ButtonParam.Text] = "RETRY";
	button_param[# ButtonName.Option, ButtonParam.Text] = "OPTION";
	button_param[# ButtonName.AssistMode, ButtonParam.Text] = "ASSIST MODE";
	button_param[# ButtonName.SaveAndQuit, ButtonParam.Text] = "SAVE AND QUIT";
	
	
	//option
	var _bar_height_base = 12;
	var _button_name_option;
	_button_name_option[0] = ButtonName.SEVol;
	_button_name_option[1] = ButtonName.BGMVol;
	_button_name_option[2] = ButtonName.Launguage;
	for(var i=0; i<array_length(_button_name_option); i++){
		button_param[# _button_name_option[i], ButtonParam.X] = _cw*0.6;
		button_param[# _button_name_option[i], ButtonParam.Width] = _cw/2;
		button_param[# _button_name_option[i], ButtonParam.Height] = _bar_height_base;
	}
	
	button_param[# ButtonName.SEVol, ButtonParam.Y] = _ch /3;
	button_param[# ButtonName.BGMVol, ButtonParam.Y] = _ch /3 + _bar_height_base * 2;
	button_param[# ButtonName.Launguage, ButtonParam.Y] = _ch /3 + _bar_height_base * 8;
	
	button_param[# ButtonName.SEVol, ButtonParam.Text] = "SE";
	button_param[# ButtonName.BGMVol, ButtonParam.Text] = "BGM";
	button_param[# ButtonName.Launguage, ButtonParam.Text] = "LAUNGUAGE";
	button_param[# ButtonName.Launguage, ButtonParam.X] = _cw * 0.5;
	button_param[# ButtonName.Launguage, ButtonParam.Height] = _bar_height_base*2;
	
	
	
	//assistmode
	var _button_name_assist;
	_button_name_assist[0] = ButtonName.EnemyDamage;
	_button_name_assist[1] = ButtonName.DotDamage;
	_button_name_assist[2] = ButtonName.PlayerAttackDamage;
	for(var i=0; i<array_length(_button_name_assist); i++){
		button_param[# _button_name_assist[i], ButtonParam.X] = _cw/6;
		button_param[# _button_name_assist[i], ButtonParam.Width] = _cw/12;
		button_param[# _button_name_assist[i], ButtonParam.Height] = _button_height_base;
	}
	
	
	
#endregion