//
function create_enemy_corpse(_x, _y, _sprite, _direction, _default_speed){
	with(instance_create_layer(_x, _y, "Enemies", o_enemyCorpse)){
		sprite = _sprite;
		direction = _direction;
		default_speed = _default_speed;
		corpse_speed = _default_speed;
	}
}