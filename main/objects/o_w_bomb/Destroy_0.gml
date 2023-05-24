create_animation_effect(s_bomb_effect,x,y,1,false);
create_hitbox(s_bomb_hitbox,x,y-4,0,3,[o_enemy,o_flower_p],bomb_damage_,bomb_knockback);
audio_play_sound(a_explosion,7,false);