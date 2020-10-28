enum Menustate{
	OpenStart,
	OpenSequence,
	Main,
	CloseStart,
	CloseSequence,
	Closing,
}
state = Menustate.Closing;
openmenu_sequence_element = noone;
closemenu_sequence_element = noone;
after_menu_gamestate = gamestate.main;
