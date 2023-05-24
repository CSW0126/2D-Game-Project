/// @description 
if o_input.dash_ {
	dash_used_ = true;
}

if o_input.attack_ {
	sword_used_ = true;
}

if (point_in_circle(o_player.x,o_player.y,x,y,64)) && (dash_used_ == true) && (sword_used_ == true)
{
	instance_destroy();
}
