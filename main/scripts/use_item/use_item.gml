///@arg input_key_use
///@arg item

var _input = argument0;
var _item = argument1;
global.firingdelay =global.firingdelay-1;

if global.firingdelay < -20 {
	global.firingdelay = 0;
}


if _input && global.firingdelay <0 {

if instance_exists(_item) and global.player_bullet >= _item.cost_ {
		state_ = _item.action_;
		
		global.firingdelay = _item.firingrate;
		global.player_bullet = max(0,global.player_bullet- _item.cost_);
		image_index = 0;
	}
}

	