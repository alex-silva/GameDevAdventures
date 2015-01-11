var sprite = "sprPlayer"
switch (objPlayer.cor)
{
    case Cor.White : sprite += "White"; break;
    case Cor.Red   : sprite += "Red"  ; break;
    case Cor.Green : sprite += "Green"; break;
    case Cor.Blue  : sprite += "Blue" ; break; 
}
switch (global.playerDirection)
{
    case Direction.Left       : sprite += "Move"; image_xscale = -1; break;
    case Direction.Right      : sprite += "Move"; image_xscale =  1; break;
    case Direction.JumpLeft   : sprite += "Jump"; image_xscale = -1; break;
    case Direction.JumpRight  : sprite += "Jump"; image_xscale =  1; break;
}

<<<<<<< HEAD
sprite_index = ds_map_find_value(global.mapSprites, sprite);
=======
show_debug_message("sprite porra " + sprite);
sprite_index = ds_map_find_value(global.mapSprites, sprite);
>>>>>>> 5982428c91a312e332568b727cb421a0fbcd73b4
