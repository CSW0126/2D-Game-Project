/// @description idle state

image_index = 0;
image_speed = 0;

if alarm[1] <=0 
{
	alarm[1] = random_range(2,4)*global.one_second;
	state_ = skeleton.move;
	direction_ = random(360);
}

skeleton_attack();