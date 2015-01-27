var sprite = "sprPlayer"
if (instance_exists(objPlayer))
            {
            with (objPlayer){
switch (cor)
{
    case Cor.White : sprite += "White"; break;
    case Cor.Red   : sprite += "Red"  ; break;
    case Cor.Green : sprite += "Green"; break;
    case Cor.Blue  : sprite += "Blue" ; break; 
}
switch (playerDirection)
{
    case Direcao.Left       : sprite += "Move"; image_xscale = -1; break;
    case Direcao.Right      : sprite += "Move"; image_xscale =  1; break;
    case Direcao.JumpLeft   : sprite += "Jump"; image_xscale = -1; break;
    case Direcao.JumpRight  : sprite += "Jump"; image_xscale =  1; break;
}

sprite_index = ds_map_find_value(global.mapSprites, sprite);
}
}