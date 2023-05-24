global.pt_spark = part_type_create()
var  _pt  =  global.pt_spark;


part_type_shape(_pt,pt_shape_spark);
part_type_size(_pt,0.025,0.5,0,0);
part_type_color2(_pt,c_white,c_yellow);
part_type_speed(_pt,1,3,0,0);
part_type_direction(_pt,0,360,0,0);
part_type_blend(_pt,true);
part_type_life(_pt,4,8);
part_type_alpha2(_pt,1,.5);