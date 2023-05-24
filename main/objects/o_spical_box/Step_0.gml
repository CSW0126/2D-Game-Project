if  o_input.left_  
{ 
	a_  = true;
}

if  o_input.up_  
{ 
	w_  = true;
}
if  o_input.down_ 
{ 
	s_  = true;
}

if  o_input.right_
{ 
	d_  = true;
}

if a_ = true and w_ = true and s_ =  true  and   d_ =  true
{
instance_destroy()	;
}
