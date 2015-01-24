if (!instance_exists(objPlayer))
    exit;

var sprite = "sprPlayer"
switch (objPlayer.cor)
{
    case Cor.White : sprite += "White"; break;
    case Cor.Red   : sprite += "Red"  ; break;
    case Cor.Green : sprite += "Green"; break;
    case Cor.Blue  : sprite += "Blue" ; break; 
}
if (objPlayer.move == 0)
{
    sprite+= "Idle";
    exit;
}


switch (global.playerDirection)
{
    case Direction.Left       : sprite += "Move"; image_xscale = -1; break;
    case Direction.Right      : sprite += "Move"; image_xscale =  1; break;
    case Direction.JumpLeft   : sprite += "Jump"; image_xscale = -1; break;
    case Direction.JumpRight  : sprite += "Jump"; image_xscale =  1; break;
}
sprite_index = ds_map_find_value(global.mapSprites, sprite);
