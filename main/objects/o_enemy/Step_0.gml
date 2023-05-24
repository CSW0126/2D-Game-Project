
if health_ <=0  and state_ != enemy.hit{
	instance_destroy();
}

if state_ != noone {
	event_user(state_);
}

 xd_ = 36;
 ran_x_ = random_range(-xd_,xd_);
 ran_y_ = random_range(-xd_,xd_);