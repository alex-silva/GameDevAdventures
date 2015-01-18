/// StopSound();
//
//  Toca som que já não estiver tocando
//  argument0 - sound
//
//

if (global.enableAudio)
    {
    if (audio_is_playing(argument0))
        audio_stop_sound(argument0);
    }