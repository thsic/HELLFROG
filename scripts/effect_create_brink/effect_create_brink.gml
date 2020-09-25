function effect_create_brink(_x, _y, _direction, _lifetime, _length, _color){
	with(instance_create_layer(_x, _y, "Effects", o_effect)){
		effect_type = EffectType.Brink;
		direction = _direction;
		life_time = _lifetime;
		life_time_default = _lifetime;
		length = _length;
		length_default = _length;
		color = _color;
	}
}