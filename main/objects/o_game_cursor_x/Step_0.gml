
 if instance_exists(o_game_cursor_x)  {
	 x= mouse_x
	 y=mouse_y
	 image_speed = 1 ;
 }
 if  mouse_check_button(mb_left){
	 part_particles_create(global.ps,x,y,global.pt_fire,10);
 }
 
 
 if !mouse_check_button(mb_left) and instance_exists(o_game_cursor_x){
	 instance_destroy();
 }
 
////beam test
/*
beam_.x = x+lengthdir_x(lendis_,gunrot_);
beam_.y = x+lengthdir_y(lendis_,gunrot_);

gunrot_ = point_direction(o_player.x,o_player.y,mouse_x,mouse_y);
image_angle = gunrot_;

if mouse_check_button(mb_left)
	{
		part_particles_create(global.ps,beam_.x,beam_.y,global.beam,1);
	
		if length_ <2000
		{
			length_ +=10;
		}
	beam_.image_xscale = length_;
	
	}
	
	
	beam_.image_xscale = length_;
	beam_.image_angle = gunrot_;
	
	part_particles_create(global.ps,beam_.x+lengthdir_x(length_,gunrot_),beam_.y+lengthdir_y(length_,gunrot_),global.beam,1);
	 
	 