image_speed = 1;
//event_inherited();
initialize_movement_entity(.1,1,noone);
initialize_hurtbox_entity();
move_movement_entity(true);
apply_friction_to_movement_entity();

damage_ = 1;
knockback_ = 5;
explo_damage_ = 2;
fall_knockback_ = 10;

z_= -2;
z_speed_ = 0;
gravity_ = .25;
state_ = noone;
boom_ = true;
accel_ = 0.5;
max_speed_ = 2;

enum fire{
	falling,
	levitating
}

if instance_exists(o_player) {
	ran_num_ = 95;
	ran_ = random_range(-ran_num_,ran_num_);
	x_add_ = o_player._x_input*70;
	y_add_ = o_player._x_input*70;
	
	direction_to_player_ = point_direction(x,y,o_player.x+ran_+x_add_,o_player.y+ran_+y_add_);
	
}


point_player_ = false;
if point_player_ = true {
	point_a_ = noone;
	var _dire = point_direction(point_a_.x,point_a_.y,o_player.x,o_player.y);
	image_angle = _dire;
}

///audio


