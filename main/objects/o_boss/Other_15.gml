/// @description move
if !instance_exists(o_player)
{
	exit;
}


last_state_ = boss.move;


var _direction = point_direction(x,y,o_player.x, o_player.y);
var _x_speed = lengthdir_x(speed_,_direction);



add_movement_maxspeed(_direction,0.25,2.5);
move_movement_entity(false);




var _distance_to_player = point_in_circle(x,y,o_player.x,o_player.y,60);

if _distance_to_player {
	state_ = boss.attack;
	image_index = 0;
//	sprite_index = 
}

if alarm[5]	= -1{
	alarm[1] = global.one_second*2;
	state_ = boss.idle;
	}