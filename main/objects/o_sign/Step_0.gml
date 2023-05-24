if (point_in_circle(o_player.x,o_player.y,x,y,64)) && (! instance_exists(o_text))
{
	with(instance_create_layer(x,y-32,P,o_text))
	{
		text_ = other.text_;
		length_ = string_length(text_);
	}
	
}