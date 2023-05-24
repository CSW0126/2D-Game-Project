if chance(.2) {
	var _item = choose (o_bullet_pack, o_hp_item);
	instance_create_layer(x,y,"player",_item)
}