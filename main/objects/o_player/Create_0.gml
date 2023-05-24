scr_beam();


initialize_movement_entity(0.5,1,o_wall);
initialize_hurtbox_entity();

image_speed = 0;
acceleration_ = 0.5;
max_speed =1.5;
direction_facing = dir.right;
dash_direction_ = 0;
dash_speed_ = 3;
dash_cost_ = 3;
attack_cost_ = 0;
stamina_recover_rate = 1;
sword_combo_ = 1;


//


enum player {
	move,  //0
	sword, //1
	dash,   //2
	bomb,	//3
	gun,	//4
	flame_gun, //5
	hit,  //6
	dead, //7
	key, //8
	sword_2,
}

enum dir {  //num *90 =direction
	right, //0
	up,	   //1
	left,  //2
	down   //3
}
playerstarting_state_ = player.move;
state_ = player.move;

//sprite move lookup table

sprite_[player.move,dir.right] = s_player_right;
sprite_[player.move,dir.up] = s_player_up;
sprite_[player.move,dir.left] = s_player_right;
sprite_[player.move,dir.down] = s_player_down;

sprite_[player.sword,dir.right] = s_player_attack_right;
sprite_[player.sword,dir.up] = s_player_attack_up;
sprite_[player.sword,dir.left] = s_player_attack_right;
sprite_[player.sword,dir.down] = s_player_attack_down;

sprite_[player.dash,dir.right] = s_player_right;
sprite_[player.dash,dir.up] = s_player_up;
sprite_[player.dash,dir.left] = s_player_right;
sprite_[player.dash,dir.down] = s_player_down;

sprite_[player.hit,dir.right] = s_player_right;
sprite_[player.hit,dir.up] = s_player_up;
sprite_[player.hit,dir.left] = s_player_right;
sprite_[player.hit,dir.down] = s_player_down;

sprite_[player.bomb,dir.right] = s_player_right;
sprite_[player.bomb,dir.up] = s_player_up;
sprite_[player.bomb,dir.left] = s_player_right;
sprite_[player.bomb,dir.down] = s_player_down;

sprite_[player.gun,dir.right] = s_player_right;
sprite_[player.gun,dir.up] = s_player_up;
sprite_[player.gun,dir.left] = s_player_right;
sprite_[player.gun,dir.down] = s_player_down;

sprite_[player.flame_gun,dir.right] = s_player_right;
sprite_[player.flame_gun,dir.up] = s_player_up;
sprite_[player.flame_gun,dir.left] = s_player_right;
sprite_[player.flame_gun,dir.down] = s_player_down;

sprite_[player.dead,dir.right] = s_player_dead;
sprite_[player.dead,dir.up] = s_player_dead;
sprite_[player.dead,dir.left] = s_player_dead;
sprite_[player.dead,dir.down] = s_player_dead;

sprite_[player.key,dir.right] = s_player_right;
sprite_[player.key,dir.up] = s_player_up;
sprite_[player.key,dir.left] = s_player_right;
sprite_[player.key,dir.down] = s_player_down;


sprite_[player.sword_2,dir.right] = s_player_attack_right;
sprite_[player.sword_2,dir.up] = s_player_attack_up;
sprite_[player.sword_2,dir.left] = s_player_attack_right;
sprite_[player.sword_2,dir.down] = s_player_attack_down;

