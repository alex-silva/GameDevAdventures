// scr_Colide_Spike(spike_Cor)
if ((global.player_Cor == argument0)
  && global.player_Vivo == true)
{
    scr_Player_Death();
    alarm[0] = global.alarm_Player_Death;
}
