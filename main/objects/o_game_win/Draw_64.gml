/// @description Insert description here
// You can write your code in this editor
if  use_  =  true{
	if sound_ = 1
	{
	audio_stop_all();
	audio_play_sound(a_game_win,1000,true);
	sound_ += 1;
	}
draw_set_font(fnt1_big);
draw_set_color(c_white);
draw_text(view_xport[0]+162,view_yport[0]+70,"You Win !");
draw_set_font(fnt1);
draw_text(view_xport[0]+162,view_yport[0]+120,"Press B to the meun screen");
}