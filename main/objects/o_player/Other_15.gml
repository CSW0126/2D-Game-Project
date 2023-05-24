/// @description flame_gun  state
if global.player_bullet <= 0 {
	state_ = player.move;
	exit;
}
speed___ = .5;




//if  o_input.key_shoot  {

//	state_ =  player.flame_gun  ;
	var _x_input =o_input.right_ - o_input.left_; //e.g.:1-0=1
	var _y_input =o_input.down_ - o_input.up_;
	var _input_direction = point_direction(0,0,_x_input,_y_input);
	
	if _x_input == 0 and _y_input ==0 {
	image_index = 0;
	image_speed = 1;
		apply_friction_to_movement_entity();
	}else{
		if _x_input  != 0{
		image_xscale = _x_input;
	}
	get_direction_facing(_input_direction);
	add_movement_maxspeed(_input_direction,1,speed___);
	move_movement_entity(false);
	}
	
	
	var _direction = point_direction(o_player.x,o_player.y,mouse_x,mouse_y);
	get_direction_facing(_direction);
	var  _image_dir  = round(_direction/90);
	if  _image_dir =  2{
		image_xscale  = -1
	}else{
		image_xscale = 1;
	}
	image_speed =  1;


	var _x = x;
	var _y = y;
	var _layer = "player";
	if _image_dir == 0 or _image_dir ==4 {
		_x +=5;
		_y +=3;
		_layer = "player";
	}
	
		if _image_dir == 2  {
		_x -=5;
		_y +=5;
		_layer = "player";
	}
	
		if _image_dir == 3  {
		_x +=1;
		_y +=5;
		_layer = "Effect";
	}
	
		if _image_dir == 1  {
		_x +=0;
		_y -=5;
		_layer = "player";
	}
	

	for (var  _i  = 0; _i <= 3;_i++){
	var _direction = point_direction(o_player.x,o_player.y,mouse_x,mouse_y) + random_range(-30,30);	
	var _projectiles = instance_create_layer(_x,_y,_layer,o_flame_b);
	_projectiles.direction = _direction;
	_projectiles.image_angle = _direction;
	_projectiles.speed = .9;
	global.player_bullet = max(0,global.player_bullet- 0.03);
	}
	

if !o_input.key_shoot {
	state_ = player.move;
} 

