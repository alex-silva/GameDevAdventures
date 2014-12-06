/// SetSprite(objeto, cor);
//
//  Define cor para determinado objeto 
//
//*****************************************************************************

sprite = sprFloorWhite;

if (object_get_name(argument0) == "objFloor")
{
    if (argument1 == cor.Red)
        sprite = sprFloorRed;
    else if (argument1== cor.Green)
        sprite = sprFloorGreen;
    else if (argument1 == cor.Blue)
        sprite = sprFloorBlue;
    else
        sprite = sprFloorWhite;
}

else if (object_get_name(argument0) == "objSpike")
{
    if (argument1 == cor.Red)
        sprite = sprSpikeRed;
    else if (argument1 == cor.Green)
        sprite = sprSpikeGreen;
    else if (argument1 == cor.Blue)
        sprite = sprSpikeBlue;
    else
        sprite = sprSpikeWhite;
}
sprite_index = sprite;
