/// @description hit

if hurtbox_entity_hit_by(other){
	invincible_ =  true;
	alarm[0] = global.one_second/3;
	global.player_health -= other.damage_;
	screen_shake(other.damage_+1,other.damage_+1);
	var _direction = point_direction(other.x,other.y,x,y);
	set_movement(_direction,other.knockback_);
	state_ = player.hit;
	event_user(state_);
	audio_play_sound(a_hurt,6,false);
	if other.destroy_on_hit_ {
		instance_destroy(other);
	}
}
