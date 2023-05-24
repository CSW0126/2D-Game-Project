camtargets_ = o_player;
//screenshake_ = 0;
spd_ = .1;
alarm[0] = 0;

width_ =camera_get_view_width(view_camera[0]);
height_ = camera_get_view_height(view_camera[0])
scale_ = view_wport[0]/ width_;
//show_debug_message(string(scale_));


shake_length_ = 0;
shake_magnitude_ = 0;
shake_remain_ = 0;
//shake go ouside
buffer_ =0;