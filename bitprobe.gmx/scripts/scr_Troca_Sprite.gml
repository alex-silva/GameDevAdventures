var sprite_Name = "spr_Player_"
switch (global.player_Cor)
{
    case global.cor_White: 
        sprite_Name += "W_"; 
        global.player_Red = true;
        global.player_Green = true;
        global.player_Blue = true;
        break;
    case global.cor_Red : 
        sprite_Name += "R_"; 
        global.player_Red = true;
        global.player_Green = false;
        global.player_Blue = false;
        break;
    case global.cor_Green : 
        sprite_Name += "G_"; 
        global.player_Red = false;
        global.player_Green = true;
        global.player_Blue = false;
        break;
    case global.cor_Blue : 
        sprite_Name += "B_"; 
        global.player_Red = false;
        global.player_Green = false;
        global.player_Blue = true;
        break;
}
switch (global.player_Direction)
{
    case global.left : sprite_Name += "L"; break;
    case global.right : sprite_Name += "R"; break;
    case global.jump_Left : sprite_Name += "JL"; break;
    case global.jump_Right : sprite_Name += "JR"; break;
}

return ds_map_find_value(global.map_Sprites,sprite_Name);

