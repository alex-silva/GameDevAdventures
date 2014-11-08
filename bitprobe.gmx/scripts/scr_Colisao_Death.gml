// scr_Colide_Spike(obj_Cor)
if (global.player_Vivo && (global.player_Cor == argument0 || argument0 == cor_White || global.player_Cor == cor_White))
{
    global.player_Vivo = false;
    scr_Particle_Death();
    alarm[0] = alarm_Player_Death;
}
