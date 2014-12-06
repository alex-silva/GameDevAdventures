//scr_Spike_Troca_Cor(object_index, sprite_index)
objeto = argument0;
sprite = argument1;

if (objeto == obj_Spike_Alternating_Red_Green)
{
    if (sprite == spr_Spike_Red) return cor_Green;
    else return cor_Red;
}