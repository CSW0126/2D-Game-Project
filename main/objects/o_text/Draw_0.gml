var  halfw = w_* 0.5;


//draw box
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_roundrect_ext(x-halfw-border_,y-h_-(border_*2),x+halfw+border_,y,15,15,false);
draw_sprite(s_marker,0,x,y);
draw_set_alpha(1);


///draw text

draw_set_text(c_white,fnt1,fa_center,fa_top);
draw_text(x,y-h_-border_,text_current_);