/// @description gun State
if !instance_exists(o_player){
	
	exit;
}

var _x_input =o_input.right_ - o_input.left_; //e.g.:1-0=1
	var _y_input =o_input.down_ - o_input.up_;
	var _input_direction = point_direction(0,0,_x_input,_y_input);
	
	if _x_input == 0 and _y_input ==0 {
	image_index = 0;
	image_speed = 1;
//		apply_friction_to_movement_entity();
	}else{
		if _x_input  != 0{
		image_xscale = _x_input;
	}
	get_direction_facing(_input_direction);
	add_movement_maxspeed(_input_direction,1,1);
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
	

	if global.firingdelay <0 and global.player_bullet >= o_gun.cost_{
	var _direction = point_direction(o_player.x,o_player.y,mouse_x,mouse_y) ;	
	var _projectiles = instance_create_layer(_x,_y,_layer,o_gun_b);
	audio_play_sound(a_shoot,3,false);
	_projectiles.direction = _direction;
	_projectiles.image_angle = _direction;
	_projectiles.speed = 5;
	global.firingdelay = 10;
	global.player_bullet = max(0,global.player_bullet- 1);
	
	}else {
		global.firingdelay =global.firingdelay-1;
	}
	
	

if !o_input.key_shoot {
	state_ = player.move;
} 
//test ^^






















/*





//		speed_ = 0;
//		var _bow_speed = 0.5;
//		image_speed = 0.5;
		//		if animation_hit_frame(2) {
		//			var _gun_bullet = instance_create_layer(x,y,"player",o_gun_b);
		//			_gun_bullet.direction = point_direction(o_player.x,o_player.y,mouse_x,mouse_y);
		//			o_gun_b.image_angle  =  _gun_bullet.direction;
		//			instance_create_layer(x,y,"player",o_gun_b);		
		//			}

		//firingdelay_gun = firingdelay_gun -1;
		//if firingdelay_gun <0 {
//		var _direction = point_direction(x,y,mouse_x,mouse_y);
//		var _gun_b = instance_create_layer(x,y,"player",o_gun_b);
//			_gun_b.direction = _direction;
//			_gun_b.image_angle = _direction;
//			_gun_b.speed = 3;
		//}

//		if animation_hit_frame(image_number -1) {
//			state_ = player.move;
//			image_index = 0;
//			}
	
	var _direction = point_direction(o_player.x,o_player.y,mouse_x,mouse_y);
	var _gun_b = instance_create_layer(o_player.x,o_player.y,P,o_gun_b);
	_gun_b.direction = _direction;
	_gun_b.image_angle = _direction;
	_gun_b.speed = 5;
	audio_play_sound(a_shoot,3,false);
//	part_particles_create(global.ps,x,y,global.pt_fire_ball,10);
	
//instance_create_layer(x,y+2,"player",o_gun_b);
state_ = player.move;


//ev_global_left_press
//ev_global_left_button
//ev_global_left_release


