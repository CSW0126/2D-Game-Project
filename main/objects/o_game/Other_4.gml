if instance_exists(global.player_start_position){
	if instance_exists(o_player) {
		o_player.persistent = false;
		o_player.x = global.player_start_position.x;
		o_player.y = global.player_start_position.y;
		o_player.layer = layer_get_id("player");
		o_cam.x = global.player_start_position.x;
		o_cam.y = global.player_start_position.y;
		} 
		else {
			var _start_x =global.player_start_position.x;;
			var _start_y = global.player_start_position.y;
			instance_create_layer(_start_x,_start_y,P,o_player);
		}
	global.player_start_position = noone;
}

if room = rm1_2{
audio_stop_all();
audio_play_sound(a_room_2,1000,true);
}

if room = rm1_1{
audio_stop_all();
audio_play_sound(a_little_town,1000,true);
}

if room = rm1_3 or room = rm1_3_test{
audio_stop_all();
audio_play_sound(a_room_3,1000,true);
}