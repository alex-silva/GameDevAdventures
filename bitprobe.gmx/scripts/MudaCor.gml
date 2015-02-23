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
    //shader_set_uniform_f(shader_get_uniform(shader0,"light"),128);
    draw_self();
    shader_reset();
}else{
    show_debug_message("shaTrocaCor nao compilou");
}
