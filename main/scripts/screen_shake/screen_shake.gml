///@desc screen_shake(magnitude,frame)
///@arg Magnitude sets the strength of the shake
///@arg frame set the length of the shake in frame 60=1s

with (o_cam)
{
	if(argument0 >shake_remain_)
	{
		shake_magnitude_ = argument0;
		shake_remain_ = argument0;
		shake_length_ = argument1;
		
	}
}

