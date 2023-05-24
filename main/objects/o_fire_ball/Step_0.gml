event_user(state_);


if state_ = fire.falling{
part_particles_create(global.ps,x,y+z_,global.pt_spark,10);
}

if  state_ = fire.levitating{
part_particles_create(global.ps,x,y,global.pt_fire_ball,10);
}
