/// @description sword state _2


// sword  state
image_speed = 1.8;

if animation_hit_frame(1) {
	 _angle = direction_facing *90;
	var _frame  = 3;
	var _damage = 2;   
	var _knockback = 4;
	var _hitbox = create_hitbox(s_sword_effect_2_2_hitbox,x,y,_angle,_frame,[o_enemy,o_flower_p],_damage,_knockback);
	
	var _sword_effect = instance_create_layer(x,y,P,o_sword_effect_2);
	_sword_effect.direction = _angle;
	_sword_effect.image_angle = _angle;
	audio_play_sound(a_swipe,8,false);
	screen_shake(10,2);

//tune the hitbox area
	switch direction_facing{
		case dir.up : 
		{		
		_hitbox.y -=10;
		_sword_effect.x-=0;
		_sword_effect.y-=15;
		break;
		}
		
		case dir.down : 
		{
		_hitbox.y +=10;
		_sword_effect.x-=0;
		_sword_effect.y+=15;
		break;
		}		
		case dir.right : 
		{
		_hitbox.x +=10;
		_sword_effect.x+=15;
		_sword_effect.y+=2;
		break;
		}
		
		
		case dir.left : 
		{	_hitbox.x -=10;
			_sword_effect.x-=15;
			_sword_effect.y+=2;
		break;
		}
		
	}
}
if animation_hit_frame(image_number -1) {
	state_ = player.move;
	
}
