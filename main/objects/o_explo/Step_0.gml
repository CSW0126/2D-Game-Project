if !instance_exists(o_skull_red){
instance_destroy();
exit;
}

if instance_exists(o_skull_red){
o_explo.x = o_skull_red.x;
o_explo.y = o_skull_red.y;
create_hitbox(s_explo_rang_hitbox,x,y,1,1,[o_player,o_flower_p],damage_,1);
screen_shake(2,2);
}