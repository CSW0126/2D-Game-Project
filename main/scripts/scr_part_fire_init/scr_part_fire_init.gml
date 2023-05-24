global.pt_fire = part_type_create()
var  _pt  =  global.pt_fire;


part_type_shape(_pt,pt_shape_explosion);
part_type_size(_pt,0.05,0.1,0,0);
part_type_color3(_pt,c_yellow,c_red,c_maroon);
part_type_speed(_pt,1,3,0,0);
part_type_direction(_pt,0,360,0,0);
part_type_blend(_pt,true);
part_type_life(_pt,4,8);
part_type_alpha2(_pt,1,.5);