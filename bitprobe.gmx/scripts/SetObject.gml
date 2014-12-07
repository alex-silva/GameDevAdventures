/// SetObject(objeto, cor);
//
//  Define cor (sprite e variável) para determinado objeto 
//
//*****************************************************************************

sprite = sprFloorWhite;
cor = argument0;

if (object_get_name(object_index) == "objFloor")
{
    if (argument0 == Cor.Red)
        sprite = sprFloorRed;
    else if (argument0== Cor.Green)
        sprite = sprFloorGreen;
    else if (argument0 == Cor.Blue)
        sprite = sprFloorBlue;
    else
        sprite = sprFloorWhite;
}

else if (object_get_name(object_index) == "objSpike")
{
    if (argument0 == Cor.Red)
        sprite = sprSpikeRed;
    else if (argument0 == Cor.Green)
        sprite = sprSpikeGreen;
    else if (argument0 == Cor.Blue)
        sprite = sprSpikeBlue;
    else
        sprite = sprSpikeWhite;
}
sprite_index = sprite;
self.cor = cor;
