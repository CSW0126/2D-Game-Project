if global.rang_use_ = false{
	exit;
}

global.yellow_life = true;
if instance_exists(o_yellow_box) and instance_exists(o_red) and !instance_exists(o_rang)  {
	far_ = point_distance(mouse_x,mouse_y,yellow_.x,yellow_.y);
	dire_ = point_direction(mouse_x,mouse_y,yellow_.x,yellow_.y);
	
	red_far_ = point_distance(mouse_x,mouse_y,red_.x,red_.y);
	red_dire_ = point_direction(mouse_x,mouse_y,red_.x,red_.y);
	red_ = instance_create_layer(mouse_x,mouse_y,"player",o_red);
}

if !instance_exists(o_rang) and instance_exists(o_red) and far_>=15 {
	yellow_ = instance_create_layer(mouse_x,mouse_y,"player",o_yellow_box);
	yellow_.image_angle = dire_;
	o_arrow.image_angle  = dire_;
	global.arrow_ = true;
	
}
	
	state_ = player.move;
	