initialize_movement_entity(0.5,.5,o_wall);
boss_direction_facing_   = dir_boss.down;
image_speed = 1;
attack_damage_ = 5;
knockback_ = 5;
range_ = 400;
last_state_ = boss.asleep;
initialize_hurtbox_entity();
initialize_movement_entity(0.2,0,s_wall);
o_sp_1_ = false;
o_sp_2_ = false;
o_sp_3_ = false;
hit_ = 0;
dead_effect_ = true;

enum boss {
	hit,  //0
	asleep,
	idle,
	fire_fall,
	fireball,
	move,  //5
	attack, //6
	dead, //7
}

enum dir_boss {  //num *90 =direction
	right, //0
	up,	   //1
	left,  //2
	down   //3
}

starting_state_ = boss.asleep;
state_ = starting_state_;
//image_index = 0;


z_= 0;
z_speed_ = 0;
gravity_ =.25;


sprite_[boss.hit,dir_boss.right] = s_boss_right;
sprite_[boss.hit,dir_boss.up] = s_boss_up;
sprite_[boss.hit,dir_boss.left] = s_boss_left;
sprite_[boss.hit,dir_boss.down] = s_boss_down;

sprite_[boss.asleep,dir_boss.right] = s_boss_down;
sprite_[boss.asleep,dir_boss.up] = s_boss_down;
sprite_[boss.asleep,dir_boss.left] = s_boss_down;
sprite_[boss.asleep,dir_boss.down] = s_boss_down;

sprite_[boss.idle,dir_boss.right] = s_boss_right;
sprite_[boss.idle,dir_boss.up] = s_boss_up;
sprite_[boss.idle,dir_boss.left] = s_boss_left;
sprite_[boss.idle,dir_boss.down] = s_boss_down;

sprite_[boss.fire_fall,dir_boss.right] = s_boss_right;
sprite_[boss.fire_fall,dir_boss.up] = s_boss_up;
sprite_[boss.fire_fall,dir_boss.left] = s_boss_left;
sprite_[boss.fire_fall,dir_boss.down] = s_boss_down;

sprite_[boss.fireball,dir_boss.right] = s_boss_right;
sprite_[boss.fireball,dir_boss.up] = s_boss_up;
sprite_[boss.fireball,dir_boss.left] = s_boss_left;
sprite_[boss.fireball,dir_boss.down] = s_boss_down;


sprite_[boss.move,dir_boss.right] = s_boss_right;
sprite_[boss.move,dir_boss.up] = s_boss_up;
sprite_[boss.move,dir_boss.left] = s_boss_left;
sprite_[boss.move,dir_boss.down] = s_boss_down;

sprite_[boss.attack,dir_boss.right] = s_boss_right_attack;
sprite_[boss.attack,dir_boss.up] = s_boss_top_attack;
sprite_[boss.attack,dir_boss.left] = s_boss_left_attack;
sprite_[boss.attack,dir_boss.down] = s_boss_down_attack;

sprite_[boss.dead,dir_boss.right] = s_boss_dead;
sprite_[boss.dead,dir_boss.up] = s_boss_dead;
sprite_[boss.dead,dir_boss.left] = s_boss_dead;
sprite_[boss.dead,dir_boss.down] = s_boss_dead;

