depth = -1000;

if instance_exists(o_rang){
	if letsgo_ = true and o_rang.x = x and  o_rang.y = y{
		sexy_ -=1;
		if sexy_ = 0 instance_destroy();
	}
}


if global.yellow_life = false{
	instance_destroy();
}

if image_alpha <=.8{
	image_alpha +=0.05
}

var _box_x = instance_nearest(x,y,o_wall).x+8;
var _box_y = instance_nearest(x,y,o_wall).y+8;
distance_ = point_distance(x,y,_box_x,_box_y);
//show_debug_message(string(distance_));

if distance_ <= 20{
	image_speed = 0.5;
}