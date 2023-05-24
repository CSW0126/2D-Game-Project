initialize_hurtbox_entity();
initialize_movement_entity(0,1,noone);
start_ =false ; 
rang_acceleration_ = 1;
rang_max_speed_ = 5;
//start_path_ = 0;
image_speed = 2;
speed_ =18;
start_state_ = rang.follow;
state_ = start_state_;

real_speed_ = 3;
de_accel = 0.000002;
//0.0002;
///sound effect
a_effect = true;

pick_up_ = false;



enum rang{
	follow,
	land,
	back_ 
}

//pick up variables

z_ = 0;
z_speed_ = -3;
gravity_ = 0.2;
alarm[1] = -1;
alarm[3] = -1