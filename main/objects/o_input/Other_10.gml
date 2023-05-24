/// @description get_input
right_ =keyboard_check(ord("D"));
left_ =keyboard_check(ord("A"));
up_ =keyboard_check(ord("W"));
down_ =keyboard_check(ord("S"));
vk_pause_ = keyboard_check_pressed(ord("E"));

right_pressed_ = keyboard_check_pressed(ord("D"));
left_pressed_ = keyboard_check_pressed(ord("A"));
up_pressed_ = keyboard_check_pressed(ord("W"));
down_pressed_ = keyboard_check_pressed(ord("S"));


restart_key_ = keyboard_check(ord("R"));
back_to_meun_key_ = keyboard_check(ord("B"));

//action_one_pressed_ = keyboard_check_pressed(ord("1"));
action_two_pressed_ = keyboard_check_pressed(ord("1"));

//sword
attack_= keyboard_check_pressed(vk_space);
dash_ = keyboard_check_pressed(vk_shift);

//attack_left= mouse_check_button_pressed(mb_left);
attack_right= mouse_check_button_pressed(mb_right);

key_shoot = mouse_check_button(mb_right);


