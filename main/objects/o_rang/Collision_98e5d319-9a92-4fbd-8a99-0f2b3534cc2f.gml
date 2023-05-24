if a_effect = true {
	audio_play_sound(a_item,9,false);
	a_effect = false;
}


global.yellow_life = false;

state_ = rang.land;

if instance_exists(o_w_bomb){
	if o_w_bomb.picked_up_ = true{
		with (o_w_bomb) {
			instance_destroy();
		}
	}
}


