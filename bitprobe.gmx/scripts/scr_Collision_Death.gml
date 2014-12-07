/// scrCollisionDeath(obj_Cor)
//
// Mata player caso colida com objetos "mortais"
//
//

if (scrCollisionCor(argument0))
{
    global.player_Vivo = false;
    scr_Particle_Death();
    alarm[0] = alarm_Player_Death;
}
