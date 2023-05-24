draw_self();
draw_self_flash(c_white,12,alarm[0]);
if (health_ <max_health_){
		draw_healthbar(x-12,y-16,x+12,y-14,(health_/max_health_)*100,c_black,c_red,c_green,0,true,true);
}