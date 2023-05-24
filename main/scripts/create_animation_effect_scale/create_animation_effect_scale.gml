///@arg sprite
///@arg x
///@arg y
///@arg image_speed
///@arg has_depth
///@arg xscale
///@arg yscale

var _sprite = argument0;
var _x = argument1;
var _y = argument2;
var _speed = argument3;
var _has_depth = argument4;
var _xscale = argument5;
var _yscale = argument6;

var _effect = instance_create_layer(_x,_y,"Effect",o_animation_effect);
_effect.sprite_index = _sprite;
_effect.image_speed = _speed;
_effect.image_xscale = _xscale;
_effect.image_yscale = _yscale;


if _has_depth{
	_effect.depth = -_y;
}

return _effect;