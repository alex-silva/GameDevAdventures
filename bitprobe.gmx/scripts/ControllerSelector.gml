//Seletor de controle para respectivo S.O.
switch (os_type)
{
    case os_macosx:
    case os_linux:
    case os_windows: instance_create(0,0,objKeyboard); break;
    case os_ios:
    case os_winphone:
    case os_android: 
        instance_create(0,0,objDigitalController);     break;
}       
