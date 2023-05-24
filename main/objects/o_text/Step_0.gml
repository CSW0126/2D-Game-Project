letters_  += spd_;
text_current_ = string_copy(text_,1,floor(letters_));

draw_set_font(fnt1);
if (h_ ==0)  h_  =  string_height(text_);
w_ = string_width(text_current_);


//destroy  when  down
if  (letters_  >=  length_)  && keyboard_check_pressed(vk_anykey)
{
instance_destroy();
}