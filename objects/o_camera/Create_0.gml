camera = camera_create();

camera_w = GAMESCREEN_WSIZE;
camera_h = GAMESCREEN_HSIZE;

//viewを有効にする
view_enabled = true;
view_visible[0] = true;

camera = camera_create_view(0, 0, camera_w, camera_h);

view_set_camera(0, camera);

//ウィンドウのリサイズはbootMgrでやってる

//surface_resize(application_surface, camera_w, camera_h);

//下のはピクセルパーフェクトじゃないバージョン
var _win_scale = global.window_magnification;
//surface_resize(application_surface, camera_w*_win_scale, camera_h*_win_scale);

display_set_gui_size(camera_w, camera_h);


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


//カメラのロック
camera_lock = false;
lock_pos_x = 0;
lock_pos_y = 0;

//画面振動
screen_shake_power = 0;
screen_shake_time = 0;
screen_shake_time_base = 0;
screen_shake_direction = 0;

/*
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