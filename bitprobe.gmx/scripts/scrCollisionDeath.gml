/// scrCollisionDeath()
//
// Mata player caso colida com objetos "mortais"
//
//

global.playerVivo = false;
scrParticleDeath();
alarm[0] = global.alarmPlayerDeath;
PlaySound(sndDying,false,true);