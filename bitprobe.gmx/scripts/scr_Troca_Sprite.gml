var sprite_Name = "spr_Player_"
switch (global.player_Cor)
{
    case global.cor_White : sprite_Name += "White_"; break;
    case global.cor_Red   : sprite_Name += "Red_"  ; break;
    case global.cor_Green : sprite_Name += "Green_"; break;
    case global.cor_Blue  : sprite_Name += "Blue_" ; break; 
}
switch (global.player_Direction)
{
    case global.left       : sprite_Name += "Left"      ; break;
    case global.right      : sprite_Name += "Right"     ; break;
    case global.jump_Left  : sprite_Name += "Jump_Left" ; break;
    case global.jump_Right : sprite_Name += "Jump_Right"; break;
}

return ds_map_find_value(global.map_Sprites,sprite_Name);
