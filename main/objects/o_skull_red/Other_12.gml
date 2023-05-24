///@description attack state
set_sprite_facing();

if not instance_exists(o_player){
	start_ = skull_red.move;
	exit;
}

if distance_to_object(o_player)> range_{
	state_ = skull_red.move;
}

var _direction = point_direction(x,y,o_player.x, o_player.y);

if !instance_exists(o_explo){
instance_create_layer(x,y,P,o_explo);
}


add_movement_maxspeed(_direction,0.25,1);
move_movement_entity(false);
		
/*
else {

alarm[2] = global.one_second/4;
	
//	sprite_index = slime_down;
//	state_ = slime.move;
}