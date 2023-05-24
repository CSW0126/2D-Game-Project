x=mouse_x;
y=mouse_y;

if mouse_check_button(mb_left)and !instance_exists(o_game_cursor_x){
	global.cursor_1_ = true;
	var _cursor = instance_create_layer(mouse_x,mouse_y,P,o_game_cursor_x);
	_cursor.x = mouse_x;
	_cursor.y = mouse_y;
}else{
	global.cursor_1_ = false;
}