/// @description fire_fall
if !instance_exists(o_player)
{
	exit;
}

last_state_ = boss.fire_fall;

z_ += z_speed_;
z_speed_ += gravity_;

if z_ >= 0{
	var _bounce_amount = 0.15;
	z_speed_ = -z_speed_ * _bounce_amount;
		if z_speed_ > -1{
			z_speed_ =0;
			z_ = 0;
		}
}

if z_ = 0 and alarm[2] >0 and  instance_exists(o_player){
	ran_1_ = random_range(-15,15);
	ran_2_ =	random_range(-15,15);
		if alarm[3] = -1{
			alarm[3] = global.one_second *0.25;
					var _x_add = o_player._x_input*58;
					var _y_add = o_player._y_input*58;
					var _fire = instance_create_layer(o_player.x+_x_add +ran_1_,o_player.y+_y_add+ran_2_,"player",o_fire_ball);
						audio_play_sound(a_thunder,2,false);
					_fire.z_ = -400;
					_fire.z_speed_ = 0;
					_fire.gravity_ = 0.3;
					_fire.state_ = fire.falling;
		}
}

if z_ = 0{
	var _damage = 1;
	var _knockback = 10
	apply_friction_to_movement_entity();
	create_hitbox(s_b__shadow,x,y+10,0,1,[o_player],_damage,_knockback);

}

// attack is over

if alarm[2] = -1{
	state_ = boss.idle
//idle alarm
alarm[1] = global.one_second*2;
}