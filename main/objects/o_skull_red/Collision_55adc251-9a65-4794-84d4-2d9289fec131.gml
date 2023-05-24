if health_ <=0 exit;
if hurtbox_entity_hit_by(other){
	invincible_ = true;
	alarm[0] = global.one_second/4;
	health_ -= other.damage_;
	screen_shake(other.damage_+1,other.damage_+1);
	
	
	if chance(.5) 
	{
	var _item = choose (o_bullet_orb, o_hp_orb);
	instance_create_layer(x,y,"player",_item)
	}
	
	
	
	state_ = enemy.hit;
	var knockback_direction =point_direction(other.x,other.y,x,y)
	create_animation_effect(s_hit_effect,x,y-8,1,true);
	set_movement(knockback_direction,0);
	audio_play_sound(a_hit,7,false);
}
