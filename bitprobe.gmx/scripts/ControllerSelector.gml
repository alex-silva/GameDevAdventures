//Seletor de controle para respectivo S.O.
switch (os_type)
{
    case os_android: 
    case os_ios:
    case os_winphone: 
        instance_create(0,0,objDigitalController);     break;
}       
