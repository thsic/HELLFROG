
global.game_time++;
global.gamestop = true;

global.vmouse_x = mouse_x;
global.vmouse_y = mouse_y;
	

var _rnd = random(1);
var _num = 25;

if(_rnd < 0.5){
	repeat(_num){
		var _x = irandom_range(0, room_width);
		part_particles_create(pt_sys, _x, room_height+16, pt_type, 1);
	}
}
