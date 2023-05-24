if global.rang_use_ = false{
	exit;
}
///and state_
///and stamina 

if !instance_exists(o_rang) and !instance_exists(o_yellow_box) and !instance_exists(o_red) and global.player_stamina >=2  {
	yellow_ = instance_create_layer(mouse_x,mouse_y,"player",o_yellow_box);
	yellow_.image_alpha = 0;
	red_ = instance_create_layer(mouse_x,mouse_y,"player",o_red);
	
	po_ = instance_create_layer(x,y,"player",o_arrow);
		if instance_exists (o_arrow) {
			po_.image_alpha = 1;
			po_.x = mouse_x;
			po_.y = mouse_y;
			
		
		global.player_stamina -= 2
		alarm[1] = global.one_second*3;
		}
	
}	

