camera = camera_create();

camera_w = GAMESCREEN_WSIZE;
camera_h = GAMESCREEN_HSIZE;
var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var pm = matrix_build_projection_ortho(GAMESCREEN_WSIZE, GAMESCREEN_HSIZE, 1, 10000);

camera_set_view_mat(camera, vm);
camera_set_proj_mat(camera, pm);

view_camera[0] = camera;

follow = o_player;

xTo = x;
yTo = y;
follow_xprev = follow.x;
follow_yprev = follow.y;

var _cw = camera_w;
var _ch = camera_h;
global.camera_width = _cw;
global.camera_height = _ch;
global.camera_x = x+_cw/2;
global.camera_y = y+_ch/2