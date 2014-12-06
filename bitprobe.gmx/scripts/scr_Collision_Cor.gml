// scr_Collision_Cor(obj_Cor)
if (global.player_Vivo 
&& (global.player_Cor == argument0 
 || global.player_Cor == cor_White
 || argument0 == cor_White ))
    return true;
else
    return false;
