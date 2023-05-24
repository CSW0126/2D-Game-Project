if !instance_exists(o_player)
{
	exit;
}


image_speed = 1;
sprite_index = sprite_[state_,boss_direction_facing_];

if global.boss_health_ <=	global.boss_max_health_*0.75{
	o_sp_1_ = true;
}

if global.boss_health_ <=	global.boss_max_health_*0.5{
	o_sp_2_ = true;
	}

if global.boss_health_ <=	global.boss_max_health_*0.25{
	o_sp_3_ = true;
	}
	

if !instance_exists(o_enemy_spawn_1) and o_sp_1_ = true and instance_exists(o_player) and state_ != boss.dead
{ 
	instance_create_layer(o_player.x,o_player.y,P,o_enemy_spawn_1);
}

if !instance_exists(o_enemy_spawn_2) and o_sp_2_ = true and instance_exists(o_player)and state_ != boss.dead
{ 
	instance_create_layer(o_player.x,o_player.y,P,o_enemy_spawn_2);
}

if !instance_exists(o_enemy_spawn_3) and o_sp_3_ = true and instance_exists(o_player)and state_ != boss.dead
{ 
	instance_create_layer(o_player.x,o_player.y,P,o_enemy_spawn_3);
}



//var _x_speed = lengthdir_x(speed_,direction_);
//var _y_speed = lengthdir_y(speed_,direction_);
var _speed_direction = point_direction(x,y,o_player.x,o_player.y)/90;
boss_direction_facing_ = _speed_direction;

//depth = -y;
if global.boss_health_ <=0 and dead_effect_ = true{
	o_cam.camtargets_ = o_boss;
	instance_create_layer(x,y-90,P,o_text_boss);
	state_ = boss.dead;
	dead_effect_ = false;
//	create_animation_effect(s_boss_dead,x,y,1,false);
//	global.boss_survive = false;
//	instance_create_layer(x,y,P,o_game_win);
}

if state_ != noone{
	event_user(state_);
}

z_ += z_speed_;
z_speed_ += gravity_;

if z_ >=0 {
//	can_pickup_ = true;
	var _bounce_amount =0.25;
	z_speed_ =-z_speed_ *_bounce_amount;
	if z_speed_ >-1{
		z_speed_ = 0;
		z_ = 0;
	}
}




 xd_ = 36;
 ran_x_ = random_range(-xd_,xd_);
 ran_y_ = random_range(-xd_,xd_);

