event_inherited(); //read the parent event, (if no this over write the create event)
while distance_to_object(o_player)<50 or distance_to_object(o_wall) <16
{	x = random(room_width);
	y = random( room_height);
}
initialize_movement_entity(0.5,.5,o_wall);
skeleton_direction_facing = dir1.right;
max_health_ =2;
health_ = max_health_;
damage_ = 1
knockback_ = 4;
frame_ = 2

enum skeleton {
	hit,
	idle,
	move,
	attack,
	wait
}

enum dir1 {  //num *90 =direction
	right, //0
	up,	   //1
	left,  //2
	down   //3
}
sprite_[skeleton.hit,dir1.right] = Skeleton_right;
sprite_[skeleton.hit,dir1.up] = Skeleton_up;
sprite_[skeleton.hit,dir1.left] = Skeleton_right;
sprite_[skeleton.hit,dir1.down] = Skeleton_down;



sprite_[skeleton.idle,dir1.right] = Skeleton_right;
sprite_[skeleton.idle,dir1.up] = Skeleton_up;
sprite_[skeleton.idle,dir1.left] = Skeleton_right;
sprite_[skeleton.idle,dir1.down] = Skeleton_down;


sprite_[skeleton.move,dir1.right] = Skeleton_right;
sprite_[skeleton.move,dir1.up] = Skeleton_up;
sprite_[skeleton.move,dir1.left] = Skeleton_right;
sprite_[skeleton.move,dir1.down] = Skeleton_down;

sprite_[skeleton.attack,dir1.right] = Skeleton_right;
sprite_[skeleton.attack,dir1.up] = Skeleton_up;
sprite_[skeleton.attack,dir1.left] = Skeleton_right;
sprite_[skeleton.attack,dir1.down] = Skeleton_down;

starting_state_ = skeleton.idle;
state_ = starting_state_;

image_index = 0
image_xscale = choose(1,-1);
alarm[1]  = random_range(0,1)*global.one_second;
