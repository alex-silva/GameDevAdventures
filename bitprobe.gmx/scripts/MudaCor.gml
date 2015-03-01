//Manipulação do modelo HSV em qualquer objeto (shader)
//
// argument0 - cor
//

var hue = 255;
switch (argument0)
{
    case Cor.Red   : hue = 0; break;
    case Cor.Green : hue = 80; break;
    case Cor.Blue  : hue = 160; break; 
    case Cor.White : hue = 255; break;
}
if( shader_is_compiled(shaTrocaCor) )
{    
    shader_set(shaTrocaCor);
    shader_set_uniform_f(shader_get_uniform(shaTrocaCor,"hue"),hue);
    if (instance_exists(objPlayer))
    {
        if (object_get_name(object_index) == "objPlayer")
            shader_set_uniform_f(shader_get_uniform(shaTrocaCor,"light"),0.0);            
        else if (objPlayer.cor != argument0)
            shader_set_uniform_f(shader_get_uniform(shaTrocaCor,"light"),0.5);
        else
            shader_set_uniform_f(shader_get_uniform(shaTrocaCor,"light"),1.0);
    }
    else
        shader_set_uniform_f(shader_get_uniform(shaTrocaCor,"light"),0.0);
    draw_self();
    shader_reset();
}else{
    show_debug_message("shaTrocaCor nao compilou");
}
