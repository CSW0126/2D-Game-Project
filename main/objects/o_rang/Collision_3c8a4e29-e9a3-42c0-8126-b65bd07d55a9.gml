//if o_player.z_ <-15{
//	o_player.z_speed_ -=4;
//	instance_destroy();
//}


if pick_up_ = true{
	//audio
	instance_destroy();
}

if global.player_stamina < global.player_max_stamina and state_ = rang.back_ {
	global.player_stamina +=1;
}
	
if global.player_stamina < global.player_max_stamina and state_ = rang.land {
	global.player_stamina +=1;
}