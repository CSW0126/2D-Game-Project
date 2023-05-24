/// @description attack state
image_speed = .5
if animation_hit_frame(2) {	
	var _angle = skeleton_direction_facing*90 ;
	var _damage = damage_;
	var _knockback = knockback_;
	var _frame  = frame_;
	var skeletion_hitbox = create_hitbox(sprite_index,x,y,_angle,_frame,[o_player],_damage,_knockback);
	audio_play_sound(a_skeleton_attack,5,false);
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
	state_ = skeleton.idle;
	sprite_index = Skeleton_right;
	alarm[1] = 2*global.one_second;
}