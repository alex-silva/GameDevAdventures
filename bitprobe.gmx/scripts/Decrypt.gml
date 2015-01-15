///Decripta string
//
// argument0 = variavel a decriptar
// argument1 = numero de ciclos a encodar
//
var decode = argument0;
repeat(argument1)
    decode = base64_decode(string(decode));
return real(decode);
