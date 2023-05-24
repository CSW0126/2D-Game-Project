if instance_exists(o_w_bomb) {
		if o_w_bomb.picked_up_ = true {
			with o_w_bomb{
				instance_destroy();
			}
		}
}
