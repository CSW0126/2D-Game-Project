draw_sprite(s_m__shadow,0,x,y+9);
draw_self();
draw_self_flash(c_white,12,alarm[0]);




if keyboard_check(ord("Z")) {
	draw_line_color(o_player.x,o_player.y,mouse_x,mouse_y,c_aqua,c_aqua);
	part_particles_create(global.ps,mouse_x,mouse_y,global.beam,1);
}

