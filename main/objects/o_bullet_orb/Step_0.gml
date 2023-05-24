event_inherited();

if not instance_exists(o_player){
	exit;
}

move_movement_entity(false);


if instance_exists(o_player)  {
	ye_x_ = o_player.x;
	ye_y_ = o_player.y;
	
	
	distance_ = point_distance(x,y,ye_x_,ye_y_);
	direction_ = point_direction(x,y,ye_x_,ye_y_);
	xdir_ = lengthdir_x(distance_,direction_);
	ydir_ = lengthdir_y(distance_,direction_);
	
		x_spd_ = lengthdir_x(speed_,direction_);
		y_spd_ = lengthdir_y(speed_,direction_);
		
		x_acceleration_ =lengthdir_x(acceleration_,direction_);
		y_acceleration_ = lengthdir_y(acceleration_,direction_);
		
		
		//make the bomb follow the trail
		
		if x != ye_x_ and y != ye_y_ {
			y_spd_ += x_acceleration_;
			y_spd_ += y_acceleration_;
			
			speed_ = point_distance(0,0,x_spd_,y_spd_);
			direction_ = point_direction(0,0,x_spd_,y_spd_);
			speed_ = min(speed_,max_speed_);
			apply_friction_to_movement_entity();
		}
}