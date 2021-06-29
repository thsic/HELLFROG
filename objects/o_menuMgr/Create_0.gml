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
	ToggleAssistMode,
}
enum ButtonParam{
	X,
	Y,
	Width,
	Height,
	TextEn,
	TextJp,
	OnCursor,
	Variable,
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
	
	button_param[# ButtonName.Resume, ButtonParam.TextEn] = "RESUME";
	button_param[# ButtonName.Retry, ButtonParam.TextEn] = "RETRY";
	button_param[# ButtonName.Option, ButtonParam.TextEn] = "OPTION";
	button_param[# ButtonName.AssistMode, ButtonParam.TextEn] = "ASSIST MODE";
	button_param[# ButtonName.SaveAndQuit, ButtonParam.TextEn] = "SAVE AND QUIT";
	
	button_param[# ButtonName.Resume, ButtonParam.TextJp] = "戻る";
	button_param[# ButtonName.Retry, ButtonParam.TextJp] = "リトライ";
	button_param[# ButtonName.Option, ButtonParam.TextJp] = "オプション";
	button_param[# ButtonName.AssistMode, ButtonParam.TextJp] = "アシストモード";
	button_param[# ButtonName.SaveAndQuit, ButtonParam.TextJp] = "セーブして終了";
	
	menu_hell_button_text_en = "HELL MODE";
	menu_hell_button_text_jp = "HELL MODE"
	
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
	
	button_param[# ButtonName.SEVol, ButtonParam.TextEn] = "SE";
	button_param[# ButtonName.BGMVol, ButtonParam.TextEn] = "BGM";
	button_param[# ButtonName.Launguage, ButtonParam.TextEn] = "LAUNGUAGE";
	
	button_param[# ButtonName.SEVol, ButtonParam.TextJp] = "SE";
	button_param[# ButtonName.BGMVol, ButtonParam.TextJp] = "BGM";
	button_param[# ButtonName.Launguage, ButtonParam.TextJp] = "言語";
	
	button_param[# ButtonName.Launguage, ButtonParam.X] = _cw * 0.5;
	button_param[# ButtonName.Launguage, ButtonParam.Height] = _bar_height_base*2;
	
	//assistmode
	var _bar_height_base = 48;
	var _button_name_assist;
	_button_name_assist[0] = ButtonName.EnemyDamage;
	_button_name_assist[1] = ButtonName.DotDamage;
	_button_name_assist[2] = ButtonName.PlayerAttackDamage;
	_button_name_assist[3] = ButtonName.ToggleAssistMode;
	for(var i=0; i<array_length(_button_name_assist); i++){
		button_param[# _button_name_assist[i], ButtonParam.X] = _cw * 0.65;
		button_param[# _button_name_assist[i], ButtonParam.Width] = _cw/2;
		button_param[# _button_name_assist[i], ButtonParam.Height] = _button_height_base;
	}
	
	button_param[# ButtonName.EnemyDamage, ButtonParam.Y] = _bar_height_base * 1;
	button_param[# ButtonName.DotDamage, ButtonParam.Y] = _bar_height_base * 2;
	button_param[# ButtonName.PlayerAttackDamage, ButtonParam.Y] = _bar_height_base * 3;
	button_param[# ButtonName.ToggleAssistMode, ButtonParam.Y] = 4;
	button_param[# ButtonName.ToggleAssistMode, ButtonParam.X] = _cw/2;
	
	
	button_param[# ButtonName.EnemyDamage, ButtonParam.TextEn] = "ENEMY ATTACK DAMAGE";
	button_param[# ButtonName.DotDamage, ButtonParam.TextEn] = "DOT DAMAGE";
	button_param[# ButtonName.PlayerAttackDamage, ButtonParam.TextEn] = "PLAYER ATTACK DAMAGE";
	button_param[# ButtonName.ToggleAssistMode, ButtonParam.TextEn] = "ASSIST MODE";
	
	button_param[# ButtonName.EnemyDamage, ButtonParam.TextJp] = "敵の攻撃力";
	button_param[# ButtonName.DotDamage, ButtonParam.TextJp] = "スリップダメージ";
	button_param[# ButtonName.PlayerAttackDamage, ButtonParam.TextJp] = "プレイヤーの攻撃力";
	button_param[# ButtonName.ToggleAssistMode, ButtonParam.TextJp] = "ASSIST MODE";
	
	
	am_enemy_damage[0] = 1;
	am_enemy_damage[1] = 0.75;
	am_enemy_damage[2] = 0.5;
	am_dot_damage[0] = 1;
	am_dot_damage[1] = 0.75;
	am_dot_damage[2] = 0.5;
	am_player_damage[0] = 1;
	am_player_damage[1] = 1.5;
	am_player_damage[2] = 2;
	
	button_param[# ButtonName.EnemyDamage, ButtonParam.Variable] = am_enemy_damage;
	button_param[# ButtonName.DotDamage, ButtonParam.Variable] = am_dot_damage;
	button_param[# ButtonName.PlayerAttackDamage, ButtonParam.Variable] = am_player_damage;
	
	
	hell_enemy_damage_ratio = 1.5;
	hell_dot_damage_ratio = 1.5;
	hell_player_damage_ratio = 0.66;
	
	
	
	hell_mode_pixel = _cw/2 - (_cw - (_cw*0.65 + _cw/4)) * 2;
	
	
#endregion