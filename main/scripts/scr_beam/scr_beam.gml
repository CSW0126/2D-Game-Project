global.beam = part_type_create();
var _pt =  global.beam;
part_type_shape(_pt,pt_shape_sphere);
part_type_size(_pt,1,1.5,-0.4,0);
part_type_color2(_pt,c_white,c_blue);
part_type_alpha3(_pt,0.5,0.5,0);
part_type_blend(_pt,true);
part_type_life(_pt,3,5);

