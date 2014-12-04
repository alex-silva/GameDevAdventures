// scr_Collision_Cor(obj_Cor)
if (scr_Collision_Cor(argument0))
{
    global.player_Vivo = false;
    scr_Particle_Death();
    alarm[0] = alarm_Player_Death;
}
