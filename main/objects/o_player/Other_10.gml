/// @description move state
image_speed = 0;
var _animation_speed = 0.6;
 _x_input =o_input.right_ - o_input.left_; //e.g.:1-0=1
 _y_input =o_input.down_ - o_input.up_;
var _input_direction = point_direction(0,0,_x_input,_y_input);
var _attack_input = o_input.attack_;
var _dash_input = o_input.dash_;
dash_direction_ =  direction_facing*90 ;
//show_debug_message(string(_input_direction));


if _x_input == 0 and _y_input ==0 {
	image_index = 0;
	image_speed = 0;
	apply_friction_to_movement_entity();
}else{
	image_speed = _animation_speed;
	if _x_input  != 0{
		image_xscale = _x_input;
	}
	get_direction_facing(_input_direction);
	add_movement_maxspeed(_input_direction,acceleration_,max_speed)
	dash_direction_ =  direction_;
}




//item1
//use_item(o_input.key_shoot,global.item[0]);

//show_debug_message(string(global.item[0]));
//item2
use_item(o_input.key_shoot,global.item[1]);


// sword attack state
					if _attack_input == true and global.sword_use == true  {
							if sword_combo_ == 1{
						image_index = 0;
						state_ = player.sword;
						alarm[8]= global.one_second;
						sword_combo_ = 2;
							}else 
						if sword_combo_ != 1 
						{
								image_index = 0;
						state_ = player.sword_2;
						sword_combo_ = 1;
							
						}
						
					}
						
					




//show_debug_message(string(global.player_stamina));

if _dash_input == true and global.player_stamina	>= dash_cost_  and global.dash_use == true {	
	
		state_ = player.dash;
		invincible_ =  true;
		global.player_stamina = max(0,global.player_stamina-dash_cost_);
	    alarm[11] = global.one_second/4;
		alarm[1] = global.one_second;
}



move_movement_entity(false);