/// @description 

draw_set_halign(fa_center);

draw_text(x,y+50,"Press 1 to select.");
//draw_text(x,y+30,"Only Boss Room Version.");




for (var _i = 0; _i < option_length_; _i ++) {
	if _i  == index_ {
		draw_set_color(meun_color_);
	}else {
		draw_set_color(meun_dark_color_);
	}
	draw_text(x,y+_i*12,option_[_i]);	
}


draw_set_color(c_white);
draw_set_halign(fa_left);
