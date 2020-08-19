///@param num,min,max
function number_check_within_range(argument0, argument1, argument2) {
	//numberが範囲内にあるかどうかチェック
	var _number = argument0;
	var _min = argument1;
	var _max = argument2;
	var result = false;

	if(_min < _number and _number < _max){
		result = true;
	}
	return result


}
