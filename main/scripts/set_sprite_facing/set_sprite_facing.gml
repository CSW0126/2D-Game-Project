
var _x_speed = lengthdir_x(speed_,direction_);
var _y_speed = lengthdir_y(speed_,direction_);
var _speed_direction = point_direction(0,0,_x_speed,_y_speed)/90;

		if _x_speed !=0 {
			image_xscale = sign(_x_speed);
		}