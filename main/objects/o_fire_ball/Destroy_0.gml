if boom_ = true{
	if state_ = fire.falling{
		create_animation_effect(s_thunder,x,y,1,false);
	}else if state_ = fire.levitating {
		create_animation_effect_scale(FireExplosion,x,y,1,false,.5,.5);
	}
	screen_shake(2,1);
}

if instance_exists(o_player){
	if state_ = fire.falling{
		create_hitbox(s_fire_fall,x,y,0,2,[o_player,o_flower_p],explo_damage_,fall_knockback_);
	}else if state_ = fire.levitating {
		create_hitbox(s_fire_ball,x,y,0,2,[o_player,o_flower_p],damage_,knockback_);
	}
}
		
	
	
