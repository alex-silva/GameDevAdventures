/// CollisionDeath()
//
// Mata player caso colida com objetos "mortais"
//
//
if (instance_exists(objPlayer))
{
with (objPlayer)
{
    if (!isInPortal)
    {
        //cancela path se está seguindo
        if (isInPath)
        {
            path_end();
            path_position = 0;
            isInPortal = false;
            isInRailsPortal = false;   
        }
        playerVivo = false;
        ParticleDeath();
        alarm[0] = alarmPlayerDeath;
        PlaySound(sndDying,false,false);
        TrocaSpritePlayer();
    }
}
}
