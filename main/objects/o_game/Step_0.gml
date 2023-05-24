
if room = title {
	exit;
}


if global.player_health <= 0
{
	exit;
}





if paused_  {
	var _array_size = array_length_1d(global.inventory);
	if o_input.right_pressed_{
		item_index_ = min(item_index_+1,_array_size -1);
		///audio_plaly_sound();
	}
	
		if o_input.left_pressed_{
		item_index_ = max(item_index_-1,0);
		///audio_plaly_sound();
	}
	

		if o_input.action_two_pressed_ {
		global.item[1] = global.inventory[item_index_];
		//audio_play_sound()
	}

}

if o_input.vk_pause_ {
	
	if paused_  == false {


		paused_ = true;
		paused_sprite_ = sprite_create_from_surface(application_surface,0,0, view_wport[0],view_hport[0],false,false,0,0,);
		
		instance_deactivate_all(true);
		var _array_size = array_length_1d(global.inventory);
		for(var _i = 0;_i < _array_size;_i++){
			instance_activate_object(global.inventory[_i]);
		}
		instance_activate_object(o_input);

	}else{
		paused_ = false;
		if sprite_exists(paused_sprite_) {
			sprite_delete(paused_sprite_);
		}
		
		instance_activate_all();
	}
}

