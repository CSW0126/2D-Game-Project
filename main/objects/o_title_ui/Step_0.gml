/// @description 
var _last_index = index_;

if o_input.up_pressed_{
	index_ = max(--index_,0);
}

if o_input.down_pressed_{
	index_ = min(++index_,option_length_-1);
}


if _last_index != index_{
	audio_play_sound(a_select,1,false);
}


if o_input.action_two_pressed_ {
	switch(index_) {
/*		
		case options.continue_game:
		audio_play_sound(a_select_move,1,false);
		show_debug_message("C");
		break;
*/		
		case options.new_game:
		audio_play_sound(a_select_move,1,false);
		room_goto(rm1_1);
		audio_stop_sound(a_little_town);
		break;
/*		
		case options.credits:
		audio_play_sound(a_select_move,1,false);
		show_debug_message("C");
		break;
*/		
		case options.quit:
		audio_play_sound(a_select_move,1,false);
		game_end();
		break;
	}
}

