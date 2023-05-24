///@param _bounce
///@param _dash_face
var _bounce = argument0;
//var _face = _dash_face *90;
// Apply friction when sliding on walls
if place_meeting(x+lengthdir_x(speed_, direction_), y+lengthdir_y(speed_, direction_), collision_object_) and !_bounce {
	speed_ = approach(speed_, 0, friction_/2);
}

var _x_speed = lengthdir_x(speed_, direction_);
var _y_speed = lengthdir_y(speed_, direction_);


//show_debug_message(string(_x_speed));
var  dash =instance_create_layer(x,y,"player",o_dash_effect);

if _x_speed <0 {
	dash.sprite_index = sprite_index;
	dash.image_index =image_index;
	dash.image_xscale = -1;
	}else {	
		dash.sprite_index = sprite_index;
		dash.image_index =image_index;
}


if speed_ <= 0 exit; // No need to check for collisions

if place_meeting(x+_x_speed, y, collision_object_) {
	while !place_meeting(x+sign(_x_speed), y, collision_object_) {
		x += sign(_x_speed);
	}
	
	if _bounce {
		_x_speed = -(_x_speed)*bounce_amount_;
	} else {
		_x_speed = 0;
	}
	
}
x += _x_speed;

if place_meeting(x, y+_y_speed, collision_object_) {
	while !place_meeting(x, y+sign(_y_speed), collision_object_) {
		y += sign(_y_speed);
	}
	
	if _bounce {
		_y_speed = -(_y_speed)*bounce_amount_;
	} else {
		_y_speed = 0;
	}
	
}
y += _y_speed;

// Make sure to update speed and direction
speed_ = point_distance(0, 0, _x_speed, _y_speed);
direction_ = point_direction(0, 0, _x_speed, _y_speed);

