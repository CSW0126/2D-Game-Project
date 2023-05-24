 var  _xd  =  20;
  _ran1  = choose(-_xd,_xd);
  _ran2  = random_range(-_xd,_xd);
  
  if !instance_exists(o_boss)
  {
	  instance_destroy();
  }
  
  
  if instance_exists(o_boss)
  {
	  if o_boss.state_ = boss.dead{
	  instance_destroy();
	  }
  }