// scr_Colide_Sphere(sphere_Cor, other.x, other.y, moving) 
if (global.player_Cor == argument0)
{
    coordenadas = string(argument1) + "," + string(argument2)
    coordenadas_Saida = string(ds_map_find_value(global.map_Spheres,coordenadas));
    if (coordenadas_Saida != "0")
    {
        if (!argument3)
        {
            x = real(string_copy(coordenadas_Saida, 1, 3));
            y = real(string_copy(coordenadas_Saida, 5, 3));
        }
    }
}
