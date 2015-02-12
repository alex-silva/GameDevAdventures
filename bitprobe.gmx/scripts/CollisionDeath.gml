/// CollisionDeath()
//
// Mata player caso colida com objetos "mortais"
//
//
if (instance_exists(objPlayer))
{
    with (objPlayer){
        playerVivo = false;
        ParticleDeath();
        alarm[1] = alarmPlayerDeath;
        PlaySound(sndDying,false,false);
        TrocaSpritePlayer(); 
    }
}
