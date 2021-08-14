
var _half = rectangle_height_base / 2;
var _effect_y = y - 28;
top_side_y = _effect_y - _half;
bottom_side_y = _effect_y + _half;

if(room == r_tutorial2){
	se_play(a_chargeEndTutorial, 40, 1);
}
else{
	se_play(a_chargeEnd, 40, 1);
}