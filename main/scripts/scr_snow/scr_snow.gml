{
global.pt_snow = part_type_create();
var _pt =global.pt_snow;


part_type_shape(_pt,pt_shape_snow);
part_type_size(_pt,0.2,0.5,0,0);
part_type_color1(_pt,c_white);
part_type_speed(_pt,2,3,0,0);
part_type_direction(_pt,270,270,0,60);
part_type_life(_pt,300,300);



}