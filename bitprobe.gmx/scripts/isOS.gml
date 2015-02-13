//Checa com lógica OR se contém algum S.O. passado por parâmetro e retorn 1 se possuir.
var i;
for (i = 0; i < argument_count; i++)
{
    if(os_type == argument[i]) return 1;
}
return 0;