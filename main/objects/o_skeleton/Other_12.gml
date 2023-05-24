/// @description move state
image_speed = .5;
var _x_speed = lengthdir_x(speed_,direction_);
var _y_speed = lengthdir_y(speed_,direction_);
var _speed_direction = point_direction(0,0,_x_speed,_y_speed)/90;
skeleton_direction_facing = _speed_direction;
//show_debug_message(string(_speed_direction));

//		if _x_speed  != 0{
//			image_xscale = sign (_x_speed);
//		}
//
//		if  alarm[1]<= 0 {
//			apply_friction_to_movement_entity();
//		}else{
//			get_direction_facing(_speed_direction);
//			add_movement_maxspeed(_speed_direction,0.05,.5)
//		}


		if _x_speed !=0 {
			image_xscale = sign(_x_speed);
		}

		if alarm[1] <= 0 {
			apply_friction_to_movement_entity();
		} else{
			get_direction_facing(direction_);
			add_movement_maxspeed(direction_,0.05,.5);
		}

move_movement_entity(true);

if speed_ == 0{
	alarm[1] = random_range(1,3) *global.one_second;
	state_ = skeleton.idle;
}

skeleton_attack();