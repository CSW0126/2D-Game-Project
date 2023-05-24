if rang_max_speed_> real_speed_{
	rang_max_speed_ -= de_accel;
}

event_user(state_);


if state_ != rang.land  and  alarm[1] = -1 and speed_ >= 2{
	var _damage = 1;
	var _knockback = 4;
	var _frame = 1;
	create_hitbox(s_bomb_hitbox,x,y,0,1,[o_enemy,o_flower_p],_damage,_knockback);
//	create_animation_effect(s_explo_rang,x,y,1,false);
	alarm[1] = global.one_second*.20;
}
//	audio_effect(a_evade,false,1)


if state_ != rang.land {
	alarm[2] = global.one_second*0.001;
	trail_ = instance_create_layer(x,y,"player",o_rang_t);
	trail_.image_index = image_index;
}

if speed_ <= .3 {
	pick_up_ = true;
	global.yellow_life = false;
}
		
		if speed_ = 0	{
			image_speed = 0;
			global.yellow_life = false;
		}

