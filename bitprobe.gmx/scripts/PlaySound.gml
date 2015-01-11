/// PlaySound();
//
//  Toca som que já não estiver tocando
//  argument0 - sound
//  argument1 - loop
//  argument2 - verifica se esta tocando
//
//

if (global.enableAudio)
    {
    var notPlaying = true;
    if (argument2)
        notPlaying = !audio_is_playing(argument0);
        
    if (notPlaying) audio_play_sound(argument0, 0, argument1);
    }
