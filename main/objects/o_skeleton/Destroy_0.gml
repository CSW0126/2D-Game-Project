create_animation_effect(s_death_effect,x,y-8,1,true);
if chance(.5) {
	var _item = choose (o_bullet_pack, o_hp_item);
	instance_create_layer(x,y-8,"player",_item)
}

if room = rm1_2 
	{
		 if chance(.1) {
			 var _item = choose (o_flame_pickup);
	instance_create_layer(x,y-8,"player",_item)
		}
	}