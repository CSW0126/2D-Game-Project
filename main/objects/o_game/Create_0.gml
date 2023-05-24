global.one_second =game_get_speed(gamespeed_fps);
global.destroyed =[];
instance_create_layer(0,0,"player",o_input);

draw_set_font(fnt1);

global.player_max_health= 50;
global.player_health = global.player_max_health;
global.player_max_stamina = 50;
global.player_stamina = global.player_max_stamina;
global.player_max_bullet = 100;
global.player_bullet = 10;
global.player_start_position = noone;
global.inventory = [];
global.arrow_  =false;
global.firingdelay  =  0;

//unlock
global.rang_use_ = false;
global.sword_use =false;
global.dash_use = false;

//boss
global.boss_max_health_ = 150;
global.boss_health_ = global.boss_max_health_;

draw_health_ = 0;
draw_stamina_ = 0;
draw_bullet_ = 0;

//audio_play_sound(a_music,10,true);
var _view_width = camera_get_view_width(view_camera[0]);
var _view_height = camera_get_view_height(view_camera[0]);
display_set_gui_size(_view_width,_view_height);

paused_ = false;
paused_sprite_ = noone;
paused_sprite_scale_ = display_get_gui_width()/view_wport[0];


global.item[0] =noone;
//item2
global.item[1] = noone;
item_index_ = 0;

inventory_create(4);
//inventory_add_item(o_bomb); 
//inventory_add_item(o_gun);
//inventory_add_item(o_flame);



//toggle hsv_effect
hsv_effect=1;

//minimum hsv and max hsv, max 255
hsv_min=10; //red
hsv_max=255; //green
saturation=220; //default saturation
saturation_inc=25; //increased saturation
brightness=200
glow=55;
glow_speed=2; //percent


hsv=hsv_min; 
pos_shine[0]=0; //for shine effect
pos_shine[1]=global.boss_max_health_; //for shine effect


