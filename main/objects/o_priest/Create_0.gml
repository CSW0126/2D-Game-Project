event_inherited();

while distance_to_object(o_player)< 50 or distance_to_object(o_wall) < 16
{	x = random(room_width);
	y = random( room_height);
}


max_health_ =5;
health_ = max_health_;
range_ = 128;
enum priest {
	hit,
	move,
	attack,
}

starting_state_ = priest.move;
state_ = starting_state_;


alarm[1] = global.one_second * random_range(0,1);
alarm[2] = global.one_second * random_range(2,3);

image_index = 0;
image_xscale=choose(1,-1);