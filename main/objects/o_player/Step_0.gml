//depth = -y;
event_user(state_);
sprite_index = sprite_[state_,direction_facing];

if global.player_health <= 0{ 
	state_  = player.dead;
	global.rang_use_  =  false;
	invincible_  = true;
	global.yellow_life  = false;
	if !instance_exists(o_game_over){	
	instance_create_layer(x,y,E,o_game_over);
	}
}
if global.player_stamina == global.player_max_stamina {
	stamina_recover_rate = 1;
}
/*
if state_ = player.flame_gun and alarm[5] = -1

{
	alarm =[5] = global.one_second*5;
	global.player_bullet = max(0,global.player_bullet - 5)
}
	


//show_debug_message(string(o_rang_item));
//show_debug_message(string(global.item[0]));



	