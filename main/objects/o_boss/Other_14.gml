/// @description fireball
if !instance_exists(o_player)
{
	exit;
}

last_state_ = boss.fireball;



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


if alarm[3] = -1 and z_  =0 and instance_exists(o_player){
	alarm[3] = global.one_second*0.25;
	
		var _dire = point_direction(x,y,o_player.x,o_player.y);
		var _fire = instance_create_layer(x,y,P,o_fire_ball);
		audio_play_sound(a_fireball,2,false);
		_fire.state_ = fire.levitating;
		_fire.image_angle = _dire;
		_fire.alarm[0] = global.one_second*3;
		_fire.accel_ = 3.5;
		_fire.max_speed_ = 3.5;
		_fire.point_player_ = true;
		_fire.point_a_ = o_boss;
		_fire.random_ = true;
}

if z_ = 0{
	var _damage = 1;
	var _knockback = 10
	apply_friction_to_movement_entity();
	create_hitbox(s_b__shadow,x,y+10,0,1,[o_player],_damage,_knockback);
}


if alarm [2] = -1{
	alarm[1] = global.one_second*2;
	state_ = boss.idle;
}

