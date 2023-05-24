
draw_sprite(s_inventory_box,0,4,4);
draw_sprite(s_inventory_box,0,36,4);

//if instance_exists(global.item[0]){
//	draw_sprite(global.item[0].sprite_,0,20,20);
//}
//item2
if instance_exists(global.item[1]){
	draw_sprite(global.item[1].sprite_,0,52,20);
}

