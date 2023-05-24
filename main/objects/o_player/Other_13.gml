/// @description bomb state

instance_create_layer(x,y+2,"player",o_w_bomb);


audio_play_sound(a_drop,5,false);
state_ = player.move;
