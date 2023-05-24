/// @description idel

if alarm[1] <=  0 {
	var _i = 0;
{	
	do
	{
		ran_state_ = choose(
					boss.fire_fall,
					boss.fireball,
					boss.move
						);
						_i +=1;
						
	}
	until (ran_state_ != last_state_) or _i >3;
	_i = 0;
}

state_ = ran_state_;
		
					
if state_ = boss.fire_fall {
	//audio
	//audio_play_sound
	
	// earthquake duration
	alarm[2] = global.one_second*10;
	alarm[3] = -1;
	z_ = 0;
	z_speed_ = -10.5;
	gravity_ = 0.22;

}

if state_ = boss.fireball {
	//audio_
	
	//duration
	alarm[2] =global.one_second *8;
	alarm[3] = -1;
	z_ = 0;
	z_speed_ = -10.5;
	gravity_ = 0.22;
}


if state_ = boss.move {
	//audio_
	
	//duration
	alarm[5] =global.one_second *8;
	alarm[3] = -1;
}

/*
if state_ = boss.firespin {
	//audio_
	
	//duration
	alarm[2] =global.one_second *8;
	alarm[3] = -1;
	alarm[4] = -1;
	z_ = 0;
	z_speed_ = -10.5;
	gravity_ = 0.22;
	jump_flag = true;
}
*/


}

