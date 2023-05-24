if state_ != rang.land {
	draw_sprite(s_s_shadow,0,x,y+10);
	draw_self();
	
}else {
	draw_sprite(s_s_shadow,0,x,y+5);
	draw_sprite(sprite_index,image_index,x,y+z_);
}