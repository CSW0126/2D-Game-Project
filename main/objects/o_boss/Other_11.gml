/// @description asleep

if hit_ != 0 {
	
	state_ = boss.idle;
	instance_create_layer(x,y,P,o_boss_hp);
	audio_stop_sound(a_room_3);
	audio_play_sound(a_battle_music,1000,true);

	
}

alarm[1] = global.one_second;
///audio



