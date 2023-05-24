/// @description key

image_speed = 1.8;

if animation_hit_frame(1) {
	var _angle = direction_facing *90;

	var _key = instance_create_layer(x,y,P,o_key_used)
	audio_play_sound(a_key,8,false);

//tune the hitbox area
	switch direction_facing{
		case dir.up : _key.y -=4;break;
		case dir.down : _key.y +=4;break;
		case dir.right : _key.x +=4;break;
		case dir.left : _key.x -=4;break;
	}
}
if animation_hit_frame(image_number -1) {
	state_ = player.move;
}
