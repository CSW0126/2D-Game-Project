/// @description attack
if !instance_exists(o_player)
{
	exit;
}



if animation_hit_frame(10) {	
	var _angle = boss_direction_facing_*90 ;
	var _damage = attack_damage_;
	var _knockback = knockback_+10;
	var _frame  = 14;
	var _hitbox = create_hitbox(sprite_index,x,y,_angle,_frame,[o_player],_damage,_knockback);
	audio_play_sound(a_boss_swipe,5,false);
//		show_debug_message(string(_angle));
		
//	switch skeleton_direction_facing{
//		case dir1.up : skeletion_hitbox.y -= 5;break;
//		case dir1.down : skeletion_hitbox.y +=5;break;
//		case dir1.right : skeletion_hitbox.x +=5;break;
//		case dir1.left : skeletion_hitbox.x -=5;break;
//		show_debug_message(string(skeleton_direction_facing));
//	}



}

if animation_hit_frame(image_number-1){
	state_ = boss.idle;
//	sprite_index = Skeleton_right;
	alarm[1] = global.one_second*2;
}
