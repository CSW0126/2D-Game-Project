/// @description 
enum options {
//	continue_game,
	new_game,
//	credits,
	quit
}
	
//	option_[options.continue_game] = "Continue";
	option_[options.new_game] = "New Game";
//	option_[options.credits] = "Credits";
	option_[options.quit] = "Quit";
	
	option_length_ = array_length_1d(option_);
//	index_ = options.continue_game;

	index_ = options.new_game;
	
meun_color_ = make_color_rgb(247,243,143); 
meun_dark_color_ = make_color_rgb(126,127,81);

audio_play_sound(a_little_town,1000,true);