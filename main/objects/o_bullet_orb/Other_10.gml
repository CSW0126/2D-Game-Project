instance_destroy();
global.player_bullet +=  1;
if global.player_bullet > global.player_max_bullet {
	global.player_bullet = global.player_max_bullet;
}
//audio_play_sound(a_collect_item,2,false);
