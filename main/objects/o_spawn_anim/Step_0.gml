image_xscale =  min(image_xscale+0.01,1);
image_yscale =	image_xscale;

if  (image_xscale  ==1)
{
  instance_change(o_skull,true);
 // instance_create_layer(x,y,P,obj_fire)
}