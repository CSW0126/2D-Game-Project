///@description attack state


if not instance_exists(o_player){
	start_ = slime.move;
	exit;
}

if distance_to_object(o_player)> range_{
	state_ = slime.move;
}

var _direction = point_direction(x,y,o_player.x, o_player.y);
var _x_speed = lengthdir_x(speed_,_direction);



add_movement_maxspeed(_direction,0.12,1);
move_movement_entity(false);

var _player = instance_place(x,y,o_player);

if _player {
	speed_ = 0;
	sprite_index = slime_attack;
	if animation_hit_frame(7){
	var _slime_attack create_hitbox(slime_attack,x,y,0,5,[o_player],damage_,knockback_);
	alarm[2] = global.one_second*2;
	}
} 
var dir___ = distance_to_object(o_player)
		if  dir___ >= atk_range_ and alarm[2] <0 {
		sprite_index = slime_down;
		state_ = slime.move;
		}
		
		
		
/*
else {

alarm[2] = global.one_second/4;
	
//	sprite_index = slime_down;
//	state_ = slime.move;
}