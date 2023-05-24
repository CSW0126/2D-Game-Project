/// @description follow state

if instance_exists(o_red) {
	ye_x_ = o_red.x;
	ye_y_ = o_red.y;
	
	
	distance_ = point_distance(x,y,ye_x_,ye_y_);
	direction_ = point_direction(x,y,ye_x_,ye_y_);
	xdir_ = lengthdir_x(distance_,direction_);
	ydir_ = lengthdir_y(distance_,direction_);
	
		x_spd_ = lengthdir_x(speed_,direction_);
		y_spd_ = lengthdir_y(speed_,direction_);
		
		x_acceleration_ =lengthdir_x(rang_acceleration_,direction_);
		y_acceleration_ = lengthdir_y(rang_acceleration_,direction_);
		
		
		//make the bomb follow the trail
		
		if x != ye_x_ and y != ye_y_ {
			y_spd_ += x_acceleration_;
			y_spd_ += y_acceleration_;
			
			speed_ = point_distance(0,0,x_spd_,y_spd_);
			direction_ = point_direction(0,0,x_spd_,y_spd_);
			speed_ = min(speed_,rang_max_speed_);
			apply_friction_to_movement_entity();
		}
}

if instance_exists(o_arrow) and !instance_exists(o_red){
	arr_x_ = o_arrow.x;
	arr_y_ = o_arrow.y;
	
			if x != arr_x_ and y != arr_y_ {
				
				x_spd_ += x_acceleration_;
				y_spd_ += y_acceleration_;
				
				
				speed_ = point_distance(0,0,x_spd_,y_spd_);
				direction_ = point_direction(0,0,x_spd_,y_spd_);
				speed_ = min(speed_,rang_max_speed_);
				
				apply_friction_to_movement_entity();
			}
}
	
	
if !instance_exists(o_red) and !instance_exists(o_arrow){
	state_ = rang.back_;
}

move_movement_entity(true);
	
	
	
	
	
	
	
	
	
	
	
	
	