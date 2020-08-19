///@param inputvalue,outputmin,outputmax,inputmax
function ease_out_quad(argument0, argument1, argument2, argument3) {

	argument0 /= argument3;
	return -argument2 * argument0 * (argument0 - 2) + argument1;


}
