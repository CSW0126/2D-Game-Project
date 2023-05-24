if global.rang_use_ = false{
	exit;
}


if !instance_exists(o_rang) and instance_exists(o_yellow_box) {
	instance_create_layer(o_player.x,o_player.y-7,"player",o_rang);
	o_yellow_box.letsgo_ = true;
	global.arrow_ = false;
}

if state_  != player.move and instance_exists(o_rang)  {
state_ = player.move;
}
