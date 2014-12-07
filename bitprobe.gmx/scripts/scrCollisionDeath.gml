/// scrCollisionDeath()
//
// Mata player caso colida com objetos "mortais"
//
//

global.player_Vivo = false;
scrParticleDeath();
alarm[0] = global.alarmPlayerDeath;
