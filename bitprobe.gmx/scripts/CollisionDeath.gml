/// CollisionDeath()
//
// Mata player caso colida com objetos "mortais"
//
//
if (instance_exists(objPlayer))
{
with (objPlayer){
    if (!isInPortal)
    {
        playerVivo = false;
        ParticleDeath();
        alarm[0] = alarmPlayerDeath;
        PlaySound(sndDying,false,false);
        TrocaSpritePlayer();
    }
    }
}
