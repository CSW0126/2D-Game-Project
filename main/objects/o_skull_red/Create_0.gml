event_inherited();
while distance_to_object(o_player)<50 or distance_to_object(o_wall) <16
{	x = random(room_width);
	y = random(room_height);
}

initialize_movement_entity(.25,.5,o_wall);
damage_ = 1;
knockback_ = 3;
frame_ = 5;
max_health_ =20;
health_ = max_health_;
enum skull_red{
	hit,
	move,
	attack
}






starting_state_  =skull_red.move;
state_ = starting_state_;
alarm[1] = global.one_second*random_range(0,1);
range_ = 128;
atk_range_ = 10;
image_index = 0;
image_xscale = choose(1,-1);
image_speed = .5