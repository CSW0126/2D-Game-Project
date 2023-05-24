/// @description attack state
if not instance_exists(o_player){
	state_ = priest.move;
	exit;
}

apply_friction_to_movement_entity();
move_movement_entity(true);

if speed_ == 0{
	alarm[2] = global.one_second*random_range(1,8);
	var _direction = point_direction(x,y,o_player.x,o_player.y) + random_range(-30,30);
	var _priest_projectiles = instance_create_layer(x,y,"player",o_priest_projectiles);
	_priest_projectiles.direction = _direction;
	_priest_projectiles.image_angle = _direction;
	_priest_projectiles.speed = 3;

	_direction +=25;
	_priest_projectiles  = instance_create_layer(x,y,"player",o_priest_projectiles);
	_priest_projectiles.direction = _direction;
	_priest_projectiles.image_angle = _direction;
	_priest_projectiles.speed = 3;

	_direction -=50;
	_priest_projectiles = instance_create_layer(x,y,"player",o_priest_projectiles);
	_priest_projectiles.direction = _direction;
	_priest_projectiles.image_angle = _direction;
	_priest_projectiles.speed = 3;
	
	//audio_play_sound();
//	show_debug_message(string(_direction));
	state_ = priest.move;
}