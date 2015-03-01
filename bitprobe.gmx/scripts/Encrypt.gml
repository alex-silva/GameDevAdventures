///Encripta string
//
// argument0 = variavel a encriptar
// argument1 = numero de ciclos a encriptar
//
var encode = argument0;
repeat(argument1)
    encode = base64_encode(string(encode));
    
    
//nao encripta
return string(argument0);
////return encode;