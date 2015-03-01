//Seletor de controle 
// argument0 = alpha do controle
//TODO Falta criar opções para seleção de controle
instance_create(0,0,objDigitalController);
if(instance_exists(objDigitalController)) objDigitalController.alpha = argument0;
