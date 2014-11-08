// scr_Colide_Spike(spike_Cor)
if (((global.player_Cor == argument0)
   && global.player_Vivo == true)
   || argument0 == 666)
{
    scr_Player_Death();
    alarm[0] = alarm_Player_Death;
}
