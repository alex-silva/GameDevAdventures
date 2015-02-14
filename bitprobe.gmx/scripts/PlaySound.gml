/// PlaySound();
//
//  Toca som que já não estiver tocando
//  argument0 - sound
//  argument1 - loop
//  argument2 - verifica se esta tocando
//
//

var soundType = Sound.SFX;
var canPlay = true;
if (is_undefined(ds_map_find_value(global.mapSound, argument0)))
    canPlay = true;
else
{
     soundType = ds_map_find_value(global.mapSound, argument0);
     if (soundType == Sound.SFX)
         canPlay = global.enableSFX;
     else
         canPlay = global.enableMusic;
} 
if (canPlay)
    {
    var notPlaying = true;
    if (argument2)
        notPlaying = !audio_is_playing(argument0);
        
    if (notPlaying) audio_play_sound(argument0, 0, argument1);
    }