create_animation_effect(s_death_effect,x,y-8,1,true);
if chance(.5) {
	var _item = choose (o_bullet_pack, o_hp_item);
	instance_create_layer(x,y-8,"player",_item)
}

/*
if chance(.01) {
	var _item = choose (o_key_pick_up);
	instance_create_layer(x,y-8,"player",_item)
}
*/
if chance(.10) {
	var _item = choose (o_flame_pickup);
	instance_create_layer(x,y-8,"player",_item)
}


