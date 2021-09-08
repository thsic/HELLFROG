
var _px = o_player.x;
var _py = o_player.y;

if(is_in_place(bbox_left, bbox_top, bbox_right, bbox_bottom, _px, _py)
and !o_player.invincible_enable
and !o_player.inertia_enable
and o_player.hook_state != hookState.Shrink
and !global.gamestop){
	damage_to_player(damage, 0.25, o_player.player_direction+180);
	player_start_knockback(eK_type.Spike);
}
//debug_draw_rectnagle(bbox_left, bbox_top, bbox_right, bbox_bottom, true, c_white, 1)