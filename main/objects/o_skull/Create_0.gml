event_inherited();

initialize_movement_entity(.25,.5,o_wall);
damage_ = 1;
knockback_ = 3;
frame_ = 5;
max_health_ =2;
health_ = max_health_;
enum skull{
	hit,
	move,
	attack
}






starting_state_  =skull.move;
state_ = starting_state_;
alarm[1] = global.one_second*random_range(0,1);
range_ = 2000;
atk_range_ = 10;
image_index = 0;
image_xscale = choose(1,-1);
image_speed = .5