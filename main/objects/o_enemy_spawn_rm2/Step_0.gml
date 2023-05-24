if instance_exists(o_player) {
	
	if instance_number(o_slime) < num_of_slime_
	{
		instance_create_layer(random(room_width),random(room_height),P,o_slime);
		count_ += 1;
	}
	
	if instance_number(o_priest) < num_of_priest_
	{
		instance_create_layer(random(room_width),random(room_height),P,o_priest);
		count_ += 1;
	}
	
	if instance_number(o_skeleton) < num_of_skeleton_
	{
		instance_create_layer(random(room_width),random(room_height),P,o_skeleton);
		count_ += 1;
	}
	if count_ >= 110 and !instance_exists(o_skull_red)
		{
		instance_create_layer(random(room_width),random(room_height),P,o_skull_red);
		o_cam.camtargets_ = o_skull_red;
		alarm[0]= global.one_second*2;
		count_ = 60;
		}
	
	
}

