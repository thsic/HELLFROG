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
	language,
	Timer,
	EnemyDamage,
	DotDamage,
	PlayerAttackDamage,
	ToggleAssistMode,
	MaxLevelText,
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

if(room == r_void){
	instance_destroy();
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
	
	button_param[# ButtonName.Resume, ButtonParam.TextEn] = EN_MENU_RESUME;
	button_param[# ButtonName.Retry, ButtonParam.TextEn] = EN_MENU_RETRY;
	button_param[# ButtonName.Option, ButtonParam.TextEn] = EN_MENU_OPTION;
	button_param[# ButtonName.AssistMode, ButtonParam.TextEn] = EN_MENU_ASSISTMODE;
	button_param[# ButtonName.SaveAndQuit, ButtonParam.TextEn] = EN_MENU_SAVEANDQUIT;
	
	button_param[# ButtonName.Resume, ButtonParam.TextJp] = JP_MENU_RESUME;
	button_param[# ButtonName.Retry, ButtonParam.TextJp] = JP_MENU_RETRY;
	button_param[# ButtonName.Option, ButtonParam.TextJp] = JP_MENU_OPTION;
	button_param[# ButtonName.AssistMode, ButtonParam.TextJp] = JP_MENU_ASSISTMODE;
	button_param[# ButtonName.SaveAndQuit, ButtonParam.TextJp] = JP_MENU_SAVEANDQUIT;
	
	menu_hell_button_text_en = EN_MENU_HELLMODE;
	menu_hell_button_text_jp = JP_MENU_HELLMODE;
	
	//option
	var _bar_height_base = 12;
	var _button_name_option;
	_button_name_option[0] = ButtonName.SEVol;
	_button_name_option[1] = ButtonName.BGMVol;
	_button_name_option[2] = ButtonName.language;
	_button_name_option[3] = ButtonName.Timer;
	for(var i=0; i<array_length(_button_name_option); i++){
		button_param[# _button_name_option[i], ButtonParam.X] = _cw*0.6;
		button_param[# _button_name_option[i], ButtonParam.Width] = _cw/2;
		button_param[# _button_name_option[i], ButtonParam.Height] = _bar_height_base;
	}
	
	button_param[# ButtonName.SEVol, ButtonParam.Y] = _ch /3 -  _bar_height_base * 2;
	button_param[# ButtonName.BGMVol, ButtonParam.Y] = _ch /3;
	button_param[# ButtonName.language, ButtonParam.Y] = _ch /3 + _bar_height_base * 5;
	button_param[# ButtonName.Timer, ButtonParam.Y] = _ch /3 + _bar_height_base * 10;
	
	button_param[# ButtonName.SEVol, ButtonParam.TextEn] = EN_MENU_SE;
	button_param[# ButtonName.BGMVol, ButtonParam.TextEn] = EN_MENU_BGM;
	button_param[# ButtonName.language, ButtonParam.TextEn] = EN_MENU_language;
	button_param[# ButtonName.Timer, ButtonParam.TextEn] = EN_MENU_TIMER;
	
	button_param[# ButtonName.SEVol, ButtonParam.TextJp] = JP_MENU_SE;
	button_param[# ButtonName.BGMVol, ButtonParam.TextJp] = JP_MENU_BGM;
	button_param[# ButtonName.language, ButtonParam.TextJp] = JP_MENU_language;
	button_param[# ButtonName.Timer, ButtonParam.TextJp] = JP_MENU_TIMER;
	
	button_param[# ButtonName.language, ButtonParam.X] = _cw * 0.5;
	button_param[# ButtonName.language, ButtonParam.Height] = _bar_height_base*2;
	
	button_param[# ButtonName.Timer, ButtonParam.X] = _cw * 0.5;
	button_param[# ButtonName.Timer, ButtonParam.Height] = _bar_height_base*2;
	
	
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
	button_param[# ButtonName.MaxLevelText, ButtonParam.Y] = 32;
		
	button_param[# ButtonName.EnemyDamage, ButtonParam.TextEn] = EN_MENU_ENEMYDAMAGE;
	button_param[# ButtonName.DotDamage, ButtonParam.TextEn] = EN_MENU_DOTDAMAGE;
	button_param[# ButtonName.PlayerAttackDamage, ButtonParam.TextEn] = EN_MENU_PLAYERDAMAGE;
	button_param[# ButtonName.ToggleAssistMode, ButtonParam.TextEn] = EN_MENU_TOGGLEASSISTMODE;
	button_param[# ButtonName.MaxLevelText, ButtonParam.TextEn] = EN_MENU_ASSISTLEVEL_MAX;
	
	button_param[# ButtonName.EnemyDamage, ButtonParam.TextJp] = JP_MENU_ENEMYDAMAGE;
	button_param[# ButtonName.DotDamage, ButtonParam.TextJp] = JP_MENU_DOTDAMAGE;
	button_param[# ButtonName.PlayerAttackDamage, ButtonParam.TextJp] = JP_MENU_PLAYERDAMAGE;
	button_param[# ButtonName.ToggleAssistMode, ButtonParam.TextJp] = JP_MENU_TOGGLEASSISTMODE;
	button_param[# ButtonName.MaxLevelText, ButtonParam.TextJp] = JP_MENU_ASSISTLEVEL_MAX;

	button_param[# ButtonName.MaxLevelText, ButtonParam.X] = _cw/2;
	button_param[# ButtonName.ToggleAssistMode, ButtonParam.X] = _cw/2;
	
	
	am_enemy_damage[0] = ASSIST_ENEMY_DAMAGE_LV0;
	am_enemy_damage[1] = ASSIST_ENEMY_DAMAGE_LV1;
	am_enemy_damage[2] = ASSIST_ENEMY_DAMAGE_LV2;
	am_enemy_damage[3] = ASSIST_ENEMY_DAMAGE_LV3;
	am_dot_damage[0] = ASSIST_DOT_DAMAGE_LV0;
	am_dot_damage[1] = ASSIST_DOT_DAMAGE_LV1;
	am_dot_damage[2] = ASSIST_DOT_DAMAGE_LV2;
	am_dot_damage[3] = ASSIST_DOT_DAMAGE_LV3;
	am_player_damage[0] = ASSIST_PLAYER_DAMAGE_LV0;
	am_player_damage[1] = ASSIST_PLAYER_DAMAGE_LV1;
	am_player_damage[2] = ASSIST_PLAYER_DAMAGE_LV2;
	am_player_damage[3] = ASSIST_PLAYER_DAMAGE_LV3;
	
	button_param[# ButtonName.EnemyDamage, ButtonParam.Variable] = am_enemy_damage;
	button_param[# ButtonName.DotDamage, ButtonParam.Variable] = am_dot_damage;
	button_param[# ButtonName.PlayerAttackDamage, ButtonParam.Variable] = am_player_damage;
	
	
	hell_mode_pixel = _cw/2 - (_cw - (_cw*0.65 + _cw/4)) * 2;
	
#endregion