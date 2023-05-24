/// @description boss_dead
image_speed = .7;

invincible_ = true;



if animation_hit_frame(image_number - 1)
{
	image_speed = 0;	
	if o_cam.camtargets_ = o_boss
	{
		o_cam.camtargets_ = o_player;
	}
}else{
	screen_shake(7,2);
}


if !instance_exists(o_game_win) {
	instance_create_layer(x,y,P,o_game_win);
}

