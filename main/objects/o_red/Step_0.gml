if instance_exists(o_rang){
	if letsgo_ = true and o_rang.x = x and  o_rang.y = y{
		sexy_ -=1;
		if sexy_ = 0 instance_destroy();
	}
}


if global.yellow_life = false{
	instance_destroy();
}

