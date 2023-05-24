if room = title {
	exit;
}



var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();

if sprite_exists(paused_sprite_){
draw_sprite_ext(paused_sprite_,0,0,0,paused_sprite_scale_,paused_sprite_scale_,0,c_white,1)	;
draw_set_alpha(0.6);
draw_rectangle_color(0,0,_gui_width,_gui_height,c_black,c_black,c_black,c_black,false); 
}else
{
	draw_set_alpha(1);
}




//health
//		for (var _i =0; _i <global.player_max_health; _i++){
//			var _filled = _i < global.player_health;
//			draw_sprite(s_health,_filled,4+15*_i,_gui_height-29);
		draw_health_ = lerp(draw_health_,global.player_health,.25);
		draw_sprite(s_healthbar_border,1,view_xport[0],view_yport[0]+160);
			if global.player_health >=1 { 
				draw_set_color(c_green);
				draw_rectangle(x+4,y+164,x+68*draw_health_/global.player_max_health,y+171,false);
				draw_set_color(c_white);
			}
				draw_text(x+35,y+161,string(round((global.player_health/global.player_max_health)*100))+"%");
//			draw_sprite(s_healthbar_bg,1,view_xport[0],view_yport[0]+160);
//			draw_sprite_ext(s_healthbar_inner,1,view_xport[0],view_yport[0]+160,global.player_max_health/100,1,0,c_white,1);
//		}



//stamina
//		for (var _i =0; _i <global.player_max_stamina; _i++){
//			var _filled = _i < global.player_stamina;
//			draw_sprite(s_stamina,_filled,4+17*_i,_gui_height-17);
//		}

			draw_stamina_ = lerp(draw_stamina_,global.player_stamina,.25);
			draw_sprite(s_healthbar_border,1,view_xport[0],view_yport[0]+175);
			if global.player_stamina >=1 { 
			draw_set_color(c_orange);
			draw_rectangle(x+4,y+179,x+68*draw_stamina_/global.player_max_stamina,y+186,false);
			draw_set_color(c_white);
			}
			draw_text(x+35,y+176,string(round((global.player_stamina/global.player_max_stamina)*100))+"%");




//bullet 

var _bullet_string = string((round((global.player_bullet/global.player_max_bullet)*100)))+ " %";
var _text_width = string_width(_bullet_string);
var _x = _gui_width - _text_width + 4;
var _y = _gui_height  - 16+4;
//draw_sprite (s_bullet_pack,0,_x-30,_y+2);
draw_text (_x-15,_y-7,_bullet_string);
//*(3-(1+draw_bullet_/global.player_max_bullet))
//draw_bullet_/global.player_max_bullet



		draw_bullet_ = lerp(draw_bullet_,global.player_bullet,.25);
		draw_sprite(s_bullet_border,1,view_xport[0]+304,view_yport[0]+119);
			if global.player_bullet >0 { 
				draw_sprite_ext(s_bullet_bar,1,view_xport[0]+308,view_yport[0]+187,1,draw_bullet_/global.player_max_bullet,0,c_white,1);
//				s_bullet_bar.image_yscale = draw_bullet_/global.player_max_bullet;
//				draw_set_color(c_blue);
//				draw_rectangle(x+308,y+123,x+315,y+187*draw_bullet_/global.player_max_bullet,false);
//draw_rectangle(x+308,(y+123)*(1+draw_bullet_/global.player_max_bullet),x+315,y+187,false);
//draw_rectangle(x+308,y+187,x+315,y+123*1.9,false);
//show_debug_message(string(draw_bullet_));
//				draw_set_color(c_white);
			}



// inventory box
inventory_draw(75,160);
	draw_sprite(s_inventory_box,0,4,4);
	if global.rang_use_ = true and !instance_exists(o_rang) {
	draw_sprite(s_rang,0,20,20);
}
	
//item2
draw_sprite(s_inventory_box,0,36,4);

	if instance_exists(global.item[0]){
		draw_sprite(global.item[0].sprite_,0,20,20);
	}

// item2
	if instance_exists(global.item[1]){
		draw_sprite(global.item[1].sprite_,0,52,20);
	}
	

if instance_exists(o_boss_hp)
{
	//Health bar position
posx=view_xport[0]+110;
posy=view_yport[0]+15;


//glow length
glow_length=global.boss_max_health_/2; //glow

//hsv_inc
hsv_inc=abs(hsv_max-hsv_min)/global.boss_max_health_; //incremental hsv

//glow length
glow_length=global.boss_max_health_/2;

//glow speed
shine_speed=global.boss_max_health_*glow_speed*0.01

//max hp bug (if your hp max, it will stop at max_hp)
if global.boss_health_>global.boss_max_health_ global.boss_health_=global.boss_max_health_

pos_shine[0]-=shine_speed
if (pos_shine[0]<=-glow_length){
    pos_shine[0]=global.boss_max_health_+glow_length
}
if pos_shine[0]<global.boss_max_health_/2 {
    pos_shine[1]=pos_shine[0]+global.boss_max_health_
    if pos_shine[1]>global.boss_max_health_+glow_length+1 {
        pos_shine[1]=pos_shine[1]-global.boss_max_health_
    }
} else pos_shine[1]-=shine_speed;

hsv=hsv_min
for (i= 0;i<global.boss_health_;i++){
    //draw the color effect
    if hsv < hsv_max and hsv_effect { 
        hsv+=hsv_inc;
    }
    
    sat=saturation
    bright=brightness;
    for (j=0;j<=1;j++){
        if (pos_shine[j]-glow_length<=i and pos_shine[j]+glow_length>=i){ 
            sat=saturation+(glow_length-abs(pos_shine[j]-i))/glow_length *saturation_inc;
            bright=brightness+(glow_length-abs(pos_shine[j]-i))/glow_length *glow;
        }
    }
    
    //create the color
    col=make_colour_hsv(hsv,sat,bright)
    
    //draw the health fill
    draw_sprite_ext(spr_health_bar_fill,0,posx+i,posy,1,1,0,col,1);
}

//draw the health center
for (i= 0;i<global.boss_max_health_;i++){
    draw_sprite(spr_health_bar_center,0,posx+i,posy);
}

//draw the health left bar, adjust if needed
left_posx=0
left_posy=0
draw_sprite(spr_health_bar_left,0,posx+left_posx,posy+left_posy);

//draw the health right bar, adjust if needed
right_posx=0
right_posy=0
draw_sprite(spr_health_bar_right,0,posx+global.boss_max_health_+right_posx,posy+right_posy);
}