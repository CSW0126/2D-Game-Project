
	if o_input.back_to_meun_key_{
		game_restart();
		//room_restart();
	}
	
	
	if sound_ = 1 
{
audio_stop_all();
audio_play_sound(a_game_over,1000,false);
sound_ += 1;
}
	
	
	
	
/*	
	if o_input.restart_key_{
		room_restart();
		global.player_health=global.player_max_health;
	}
	
	