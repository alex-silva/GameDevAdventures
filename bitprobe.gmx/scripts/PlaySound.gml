/// PlaySound();
//
//  Just a conditional sound playing script...
//
//*****************************************************************************

if (global.enableAudio)
    {
    if (!audio_is_playing(argument0))
        audio_play_sound(argument0, 0, false);
    }