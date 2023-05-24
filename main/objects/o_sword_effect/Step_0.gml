/*
var _angle =o_player._angle;

if animation_hit_frame(10){
var _hitbox = create_hitbox(s_circle_hitbox_b,o_sword_effect.x,o_sword_effect.y,1,1,[o_enemy,o_flower_p],damage_,3);
	_hitbox.direction = _angle;
}

if animation_hit_frame(20){
	var _hitbox1 create_hitbox(s_circle_hitbox_b,o_sword_effect.x,o_sword_effect.y,1,1,[o_enemy,o_flower_p],damage_,3);
	_hitbox.direction = _angle;
}
/*
	switch o_player.direction_facing{
		case dir.up : _hitbox.y -=4;break;
		case dir.down : _hitbox.y +=4;break;
		case dir.right : _hitbox.x +=4;break;
		case dir.left : _hitbox.x -=4;break;
	}