/// @description falling

z_ += z_speed_;
z_speed_ += gravity_;

if z_ >= 0{
	can_pickup_ = true;
	var _bounce_amount = 0.0;
	z_speed_ = -z_speed_ * _bounce_amount;
		if z_speed_ > -1{
			z_speed_ =0;
			z_ = 0;
		}
}

if z_ = 0{
	instance_destroy();
//	create_animation_effect(s_explo_s,x,y,1,false);
//	create_hitbox(s_fire_fall,x,y,0,1,[o_player,o_flower_p],explo_damage_,fall_knockback_);
	screen_shake(10,2);

	
}