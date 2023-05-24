if not instance_exists(camtargets_) exit;


var _cam_x = mean(camtargets_.x,camtargets_.x,camtargets_.x,camtargets_.x,camtargets_.x,camtargets_.x,camtargets_.x,mouse_x);
var _cam_y = mean(camtargets_.y,camtargets_.y,camtargets_.y,camtargets_.y,camtargets_.y,camtargets_.y,camtargets_.y,mouse_y);

x = lerp(x,_cam_x,0.06);
y = lerp(y,_cam_y-8,0.06);
x = round_n(x,1/scale_);
y = round_n(y,1/scale_);
x = clamp(x,width_/2+buffer_, room_width-width_/2-buffer_);
y = clamp(y,height_/2+buffer_,room_height-height_/2-buffer_);

//shake
x +=random_range(-shake_remain_,shake_remain_);
y +=random_range(-shake_remain_,shake_remain_);
shake_remain_ = max(0,shake_remain_-((1/shake_length_)*shake_magnitude_));

camera_set_view_pos(view_camera[0],x-width_/2,y-height_/2);

