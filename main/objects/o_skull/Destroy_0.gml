/// @description Insert description here
// You can write your code in this editor
if chance(.1) {
	var _item = choose (o_bullet_pack, o_hp_item);
	instance_create_layer(x,y-8,"player",_item)
}